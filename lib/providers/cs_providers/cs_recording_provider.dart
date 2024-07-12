import 'dart:async';
import 'dart:developer';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:record/record.dart' as record;

import '../../models/models.dart';
import '../../utils/utils.dart';
import 'cs_activity_provider.dart';

const _LOG = "CS_RECORDING_PROVIDER";

final csMicRecordingProvider =
    ChangeNotifierProvider<CSMicRecordingProvider>((ref) {
  return CSMicRecordingProvider(ref);
});

class CSMicRecordingProvider with ChangeNotifier, CSLock {
  bool _lock = false;
  final ChangeNotifierProviderRef<CSMicRecordingProvider> ref;

  record.Record recorder = record.Record();

  StreamSubscription<record.RecordState>? _recordStateSub;
  bool _isRecording = false;
  AFile? _currentRecordingFile;

  @override
  bool get isGlobalEffectOrActivity => false;

  bool get lock => _lock;

  CSMicRecordingProvider(this.ref) {
    _recordStateSub = recorder.onStateChanged().listen(_onRecordStateChanged);
  }

  bool get isRecording => _isRecording;

  CSActivityProvider get csActivityPvd => ref.read(csActivityProvider);

  Future<bool> hasPermission() async {
    try {
      final hasPermission = await recorder.hasPermission();
      return hasPermission;
    } catch (err) {
      return false;
    }
  }

  void _onRecordStateChanged(record.RecordState state) {
    log("Recording state changed to $state");
    switch (state) {
      case record.RecordState.pause:
      case record.RecordState.stop:
        _isRecording = false;
        csActivityPvd.stopTimer(this);
        break;
      case record.RecordState.record:
        _isRecording = true;
        csActivityPvd.startTimer(this);
        break;
    }
    notifyListeners();
  }

  Future<void> start({required void Function(dynamic err) onError}) async {
    if (_lock) return;
    try {
      _lock = true;
      await ref.read(csActivityProvider).lock(this);
      if (await recorder.isPaused()) {
        await recorder.resume();
      } else {
        _currentRecordingFile = ArreFiles.instance
            .generateMicRecordFile(csActivityPvd.sessionId, "m4a");
        await _currentRecordingFile!.createFile();
        await recorder.start(path: await _currentRecordingFile!.absolutePath);
      }
    } catch (err, st) {
      onError(err);
      Utils.reportError(err, st);
      log("Error starting the recording", error: err, name: _LOG);
    } finally {
      _lock = false;
    }
  }

  Future<void> stop() async {
    if (_lock) return;
    try {
      _lock = true;
      await csActivityPvd.unlock(this);
    } catch (err, st) {
      Utils.reportError(err, st);
      log("Error pause recording", error: err, name: _LOG);
    } finally {
      _lock = false;
    }
  }

  @override
  void dispose() {
    _recordStateSub?.cancel();
    super.dispose();
  }

  @override
  Future<bool> canReleaseLock() {
    if (isRecording) {
      throw CSLockException("Recording is in progress");
    }
    return SynchronousFuture(!isRecording);
  }

  @override
  Future<CSMicActivity?> releaseLock(_) async {
    final path = await recorder.stop();
    final file = (await _currentRecordingFile!.absolute);
    print("File expected path ${file.path} actual $path");
    CSMicActivity? activity;
    try {
      print("File exists #2? ${await file.exists()} ${await file.length()}");

      final filePath = await _currentRecordingFile!.absolutePath;
      final duration = await SimpleAudioPlayerProvider2.getAudioFileDuration(
          DeviceFileSource(filePath));
      activity = CSMicActivity(
        fileDirectory: _currentRecordingFile!.fileDirectory,
        relativePath: _currentRecordingFile!.relativePath,
        milliSeconds: duration!.inMilliseconds,
      );
    } catch (err, st) {
      Utils.reportError(err, st);
      return null;
    }
    return activity;
  }
}
