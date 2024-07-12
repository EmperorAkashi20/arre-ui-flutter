import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_import_activity.dart';
import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cs_activity_provider.dart';

final csImportAudioProvider =
    ChangeNotifierProvider((ref) => CSImportAudioProvider(ref));

class CSImportAudioProvider with ChangeNotifier, CSLock {
  bool _importing = false;
  CSImportActivity? _importActivity;

  final Ref _ref;

  CSImportAudioProvider(this._ref);

  @override
  bool get isGlobalEffectOrActivity => false;

  CSActivityProvider get csActivityPvd => _ref.read(csActivityProvider);

  Future<void> importAudio({
    required void Function(dynamic err) onError,
    required Future<bool> Function(Duration trimDuration) trimConfirmation,
  }) async {
    if (_importing) return;

    try {
      _importing = true;
      notifyListeners();
      await csActivityPvd.lock(this, releasePrevLock: true);
      final audioAFileBuilder = (String filePath) => ArreFiles.instance
          .generateCSImportFile(csActivityPvd.sessionId, filePath);
      final pickedAudio = await ArreFiles.pickAudioFileV2(audioAFileBuilder);
      if (pickedAudio == null) throw ArreIgnoreException("File was not picked");
      final duration = await SimpleAudioPlayerProvider2.getAudioFileDuration(
          DeviceFileSource(await pickedAudio.absolutePath));
      if (duration == null) {
        throw ArreException("Could not process the audio file");
      }
      if (duration > csActivityPvd.remainingDuration) {
        arreAnalytics.logEvent(GAEvent.CS_IMPORT_MUSIC_EXCEEDS_LIMIT);
        final continueImport =
            await trimConfirmation(csActivityPvd.remainingDuration);
        if (!continueImport) {
          throw ArreIgnoreException("User denied the import audio trimming");
        }
      }
      _importActivity = CSImportActivity(
        milliSeconds: duration.inMilliseconds,
        relativePath: pickedAudio.relativePath,
        fileDirectory: pickedAudio.fileDirectory,
      );
      await csActivityPvd.unlock(this);
    } catch (err, st) {
      onError(err);
      Utils.reportError(err, st);
    } finally {
      _importActivity = null;
      _importing = false;
      notifyListeners();
    }
  }

  @override
  Future<bool> canReleaseLock() {
    if (_importing) {
      throw CSLockException("Please wait while we import the audio");
    }
    return Future.value(!_importing);
  }

  @override
  Future<CSIntegralActivity?> releaseLock(_) {
    final activity = _importActivity;
    _importActivity = null;
    return Future.value(activity);
  }
}
