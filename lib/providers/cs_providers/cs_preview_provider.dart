import 'dart:async';
import 'dart:developer';

import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/creator_studio_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_activity_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_bg_music_provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
import '../../utils/utils.dart';

const _LOG = "CS_PREVIEW_PROVIDER";

final csPreviewProvider =
    ChangeNotifierProvider<CSPreviewProvider>((ref) => CSPreviewProvider(ref));

class CSPreviewProvider with ChangeNotifier, CSLock {
  final ChangeNotifierProviderRef _ref;
  bool _isLoading = false;
  Source? _integralAudio, _bgAudio;
  StreamSubscription<double>? _bgVolumeSub;
  StreamSubscription<bool>? _playingSub;
  bool _needsReInitialization = true;
  bool _showPreview = false;

  @override
  bool get isGlobalEffectOrActivity => true;

  bool get needsReInitialization => _needsReInitialization;

  dynamic _error;

  CSPreviewProvider(this._ref) {
    _playingSub = _integralPlayer.playingValueStream.listen((isPlaying) {
      if (!_integralPlayer.isPlaying && _bgMusicPlayer.isPlaying) {
        _bgMusicPlayer.pause();
      } else if (_integralPlayer.isPlaying &&
          !_bgMusicPlayer.isPlaying &&
          _bgAudio != null) {
        _bgMusicPlayer.play();
      }

      if (_integralPlayer.isCompleted) {
        seek(Duration.zero);
      }
    });
  }

  SimpleAudioPlayerProvider2 _integralPlayer =
      SimpleAudioPlayerProvider2("preview_integral_player");
  SimpleAudioPlayerProvider2 _bgMusicPlayer =
      SimpleAudioPlayerProvider2("preview_bg_music_player");

  Stream<PlayerValue> get playerValueStream =>
      _integralPlayer.playerValueStream;

  bool get isLoading => _isLoading;

  bool get hasError => _error != null;

  bool get showPreview => _showPreview;

  SimpleAudioPlayerProvider2 get player => _integralPlayer;

  Future<void> playPreview({
    required void Function(dynamic err) onError,
  }) async {
    try {
      final activityPvd = _ref.read(csActivityProvider);
      if (!activityPvd.hasActivitiesForPreview) {
        throw ArreException("Record something to preview");
      }
      _needsReInitialization = false;
      _isLoading = true;
      _showPreview = true;
      _error = null;
      notifyListeners();
      _stopPlayer();
      await _ref.read(csBgMusicProvider).offlineAppliedEffect();
      await activityPvd.lock(this);
      final effect = _ref.read(csBgMusicProvider).appliedEffect;
      if (effect != null) {
        _bgAudio = BgMusicItem(effect);
      }
      final outputFile = await _ref
          .read(creatorStudioProvider)
          .getAudioFileWithEffects(applyBgMusic: false);
      _integralAudio = DeviceFileSource(outputFile);
      await _initPlayer();
      _bgMusicPlayer.setVolume(_ref.read(csBgMusicProvider).player.volume);
      seek(Duration.zero);
      if (_showPreview) play();
    } catch (err, st) {
      onError.call(err);
      _error = err;
      Utils.reportError(err, st);
      log("Error playing preview", error: err, name: _LOG);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void _updateBgVolume(double volume) {
    _bgMusicPlayer.setVolume(volume);
  }

  Future<void> _initPlayer() async {
    await _bgMusicPlayer.pause();
    await _integralPlayer.pause();
    if (_bgAudio != null) {
      await _bgMusicPlayer.init(_bgAudio!);
      final sourceBgPlayer = _ref.read(csBgMusicProvider).player;
      _updateBgVolume(sourceBgPlayer.volume);
      _bgVolumeSub ??= sourceBgPlayer.volumeStream.listen(_updateBgVolume);
    }
    if (_integralAudio != null) await _integralPlayer.init(_integralAudio!);
  }

  void play() {
    if (_bgAudio != null) _bgMusicPlayer.play(PlayerGAContext.cs_preview);
    if (_integralAudio != null)
      _integralPlayer.play(PlayerGAContext.cs_preview);
  }

  void pause() {
    _integralPlayer.play(PlayerGAContext.cs_preview);
    _bgMusicPlayer.pause(PlayerGAContext.cs_preview);
  }

  Future<void> seek(Duration duration) async {
    await Future.wait([
      _integralPlayer.seek(duration),
      _bgMusicPlayer.seek(duration),
    ], eagerError: false);
  }

  void switchSpeed() {
    arreAnalytics.logEvent(
      GAEvent.APP_PLAYER_SWITCH_SPEED,
      parameters: {EventAttribute.GA_CONTEXT: PlayerGAContext.cs_preview.name},
    );
    final speed = _integralPlayer.speed;
    var speedIndex = kSpeedValues.indexOf(speed);
    if (speedIndex >= 0 && speedIndex < (kSpeedValues.length - 1)) {
      speedIndex++;
    } else {
      speedIndex = 0;
    }
    _bgMusicPlayer.setSpeed(kSpeedValues[speedIndex]);
    _integralPlayer.setSpeed(kSpeedValues[speedIndex]);
  }

  void _stopPlayer() {
    seek(Duration.zero);
    _integralPlayer.stop();
    _bgMusicPlayer.stop();
  }

  void stop({bool showPreview = false}) {
    _needsReInitialization = true;
    _bgAudio = null;
    _showPreview = showPreview;
    _stopPlayer();
    _bgVolumeSub?.cancel();
    _bgVolumeSub = null;
    notifyListeners();
  }

  @override
  Future<bool> canReleaseLock() {
    return Future.value(true);
  }

  @override
  Future<CSIntegralActivity?> releaseLock(CSLock? nextLock) async {
    stop(showPreview: nextLock != null && nextLock.isGlobalEffectOrActivity);
    return Future.value(null);
  }

  @override
  void dispose() {
    _integralPlayer.dispose();
    _bgMusicPlayer.dispose();
    _playingSub?.cancel();
    _bgVolumeSub?.cancel();
    super.dispose();
  }
}
