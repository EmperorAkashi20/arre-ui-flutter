import 'dart:async';
import 'dart:developer';

import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/src/cs_models.dart';
import '../../utils/utils.dart';
import 'creator_studio_provider.dart';

const _LOG = "CS_ACTIVITY_PROVIDER";

const kCSRecordingDuration = Duration(seconds: 30);
const kCSMinRecordingDuration = Duration(seconds: 5);

final csActivityProvider = ChangeNotifierProvider<CSActivityProvider>((ref) {
  return CSActivityProvider(ref);
});

class CSActivityProvider with ChangeNotifier, CSFieldProvider, CSActivityTimer {
  final ChangeNotifierProviderRef _ref;

  List<CSIntegralActivity> _activities = [];
  CSLock? _locker;
  bool _obtainingLock = false;
  bool _hasStarted = false;

  CSActivityProvider(this._ref);

  String get sessionId => _ref.read(creatorStudioProvider).value.fileName!;

  List<CSIntegralActivity> get activities => _activities;

  ///Whether the activity has started, it can be any activity.
  ///This is used to show/hide Drafts button
  bool get hasStarted => _hasStarted;

  bool get hasActivitiesForPreview =>
      activities.isNotEmpty || _locker?.isGlobalEffectOrActivity == false;

  CSLock? get runningActivityPvd => _locker;

  ///This mixes bg music, voice filters and combines all the clips together

  List<double> steps() {
    if (activities.isEmpty) return [];
    List<double> _steps = [];
    var _cumulativeDuration = 0;
    for (var activity in activities) {
      _steps.add((activity.milliSeconds + _cumulativeDuration) /
          kCSRecordingDuration.inMilliseconds);
      _cumulativeDuration += activity.milliSeconds;
    }
    return _steps;
  }

  void _syncRecordedDuration() {
    final recordedMilliSeconds = activities
        .map((e) => e.milliSeconds)
        .fold<int>(0, (previousValue, element) => previousValue + element);
    log("Sync animation to ${recordedMilliSeconds / kCSRecordingDuration.inMilliseconds}",
        name: _LOG);
    resetTimer(Duration(milliseconds: recordedMilliSeconds));
    _ref.read(creatorStudioProvider).validate();
    notifyListeners();
  }

  void _switchToRecordingTab() {
    _ref.read(creatorStudioProvider).showRecordingTab();
  }

  ///Obtains the lock if this completes without any exceptions.
  ///
  /// if [releasePrevLock] is true, previous lock will be released before locking this.
  /// It is applicable only if the previous lock was held by [locker]
  Future<void> lock(CSLock locker, {bool releasePrevLock = false}) async {
    if (_obtainingLock) return;
    try {
      _hasStarted = true;
      _obtainingLock = true;
      if (isComplete && !locker.isGlobalEffectOrActivity) {
        throw CSTimeLimitException();
      } else if (_locker == null) {
        _locker = locker;
      } else if (locker == _locker) {
        if (releasePrevLock) {
          await unlock(_locker!, locker);
        }
        _locker = locker;
      } else if (await _locker!.canReleaseLock()) {
        await unlock(_locker!, locker);
        _locker = locker;
      } else {
        throw ArreException.key(AExceptionKey.CAN_NOT_RELEASE_LOCK);
      }
      log("Obtained lock $locker", name: _LOG);
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    } finally {
      _obtainingLock = false;
    }
  }

  ///If non-null value indicates can not release the lock. show it in error snack bar
  Future<String?> canReleaseActivity() async {
    try {
      await _locker?.canReleaseLock();
      return null;
    } catch (err) {
      return Utils.getMessage4mError(err);
    }
  }

  Future<void> unlock(CSLock csLock, [CSLock? nextLock]) async {
    if (this._locker != csLock) {
      throw ArreException.key(AExceptionKey.MISMATCH_LOCKS);
    }
    try {
      log("Releasing $csLock", name: _LOG);
      final newActivity = await csLock.releaseLock(nextLock);
      if (newActivity != null) {
        _activities.add(newActivity);
      }
      _syncRecordedDuration();
      _locker = null;
      await _ref.read(creatorStudioProvider).save();
    } catch (err, st) {
      Utils.reportError(err, st);
      throw ArreException.key(AExceptionKey.FAILED_TO_UNLOCK);
    }
  }

  @override
  void import4mDraft(CSDraft draft) {
    // assert(activities.isEmpty);
    _activities = List.from(draft.activities);
    _syncRecordedDuration();
  }

  @override
  Future<void> exportToDraft(CSDraft draft) async {
    // if (_locker is CSAudioInsertablesProvider ||
    //     _locker is CSMicRecordingProvider) {
    //   await unlock(_locker!);
    // }
    draft.activities = List.from(activities);
  }

  Future<void> remove(CSIntegralActivity activity) async {
    final curLock = _locker;
    if (curLock != null) {
      await curLock.canReleaseLock();
      await unlock(curLock);
    }
    _activities.remove(activity);
    _syncRecordedDuration();
  }

  @override
  Future<void> clear() async {
    final curLock = _locker;
    if (curLock != null) {
      await curLock.canReleaseLock();
      await unlock(curLock);
    }
    _hasStarted = false;
    activities.clear();
    _syncRecordedDuration();
  }

  @override
  void validateWithException(CSDraft draft) {
    final isValid = recordedDuration > kCSMinRecordingDuration;
    if (!isValid) {
      throw CSActivityValidationException(
          "Please record for at least ${kCSMinRecordingDuration.inSeconds} seconds");
    }
  }

  @override
  void dispose() {
    _cancelTimer();
    super.dispose();
  }
}

mixin CSLock {
  bool get isGlobalEffectOrActivity;

  ///[nextLock] is the [CSLock] which is requesting for the lock access
  Future<CSIntegralActivity?> releaseLock(CSLock? nextLock);

  ///Throw [CSLockException] exception if release cannot be unlocked
  Future<bool> canReleaseLock();
}

mixin CSActivityTimer on ChangeNotifier {
  CSLock? get _locker;

  Timer? _timer;
  ValueNotifier<Duration> _recordedDurationNotifier =
      ValueNotifier(Duration.zero);
  final period = const Duration(seconds: 1);

  Duration get recordedDuration => _recordedDurationNotifier.value;

  Duration get remainingDuration => kCSRecordingDuration - recordedDuration;

  ValueNotifier<Duration> get recordedDurationNotifier =>
      _recordedDurationNotifier;

  bool get isRunning => _timer?.isActive == true;

  bool get isComplete =>
      (kCSRecordingDuration - recordedDuration).abs().inSeconds <= 0;

  // _recordedDurationNotifier.value >= kCSRecordingDuration;

  Future<void> unlock(CSLock csLock);

  void _switchToRecordingTab();

  void startTimer(CSLock lock) {
    if (_locker != lock || _timer?.isActive == true) return;
    _timer = Timer.periodic(period, (timer) {
      _recordedDurationNotifier.value += period;
      if (_recordedDurationNotifier.value >= kCSRecordingDuration) {
        arreAnalytics.logEvent(GAEvent.CS_TIMEOUT_AUTO_PAUSE_ACTIVITY);
        stopTimer(lock);
        unlock(lock);
      }
    });
    _switchToRecordingTab();
    notifyListeners();
  }

  void stopTimer(CSLock lock) {
    if (_locker != lock) return;
    _timer?.cancel();
    notifyListeners();
  }

  void resetTimer(Duration value) {
    _recordedDurationNotifier.value =
        value > kCSRecordingDuration ? kCSRecordingDuration : value;
  }

  void _cancelTimer() {
    _timer?.cancel();
  }
}
