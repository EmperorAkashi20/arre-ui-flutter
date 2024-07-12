import 'dart:async';
import 'dart:io';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_ffmpeg_provider.dart';
import 'package:arre_frontend_flutter/providers/edit_profile_provider.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:record/record.dart';

final voiceBioProvider = ChangeNotifierProvider(
    (ref) => VoiceBioProvider(ref.read(editProfileProvider)));

const MAX_VOICE_BIO_DURATION = Duration(seconds: 30);

class VoiceBioProvider with ChangeNotifier {
  String? initialMediaId;
  final EditProfileProvider _editProfileProvider;
  Timer? _exceedTimer;
  String? _errorText;
  bool _isDraft = true, _isSaving = false;
  String? _lastRecordedPath;
  final recorder = Record();
  late StreamSubscription<RecordState> _recordStateSub;
  late StreamSubscription<bool> _playingSub;
  final _stopWatch = Stopwatch();
  SimpleAudioPlayerProvider2 player = SimpleAudioPlayerProvider2("voice_bio");
  Duration _recordedDuration = Duration.zero;

  bool get isPreviewing => player.value != null;

  String? get prevVoiceMediaId => _editProfileProvider.draft.voiceBioMediaId;

  Duration get curRecordingDuration => _recordedDuration + _stopWatch.elapsed;

  String? get errorText => _errorText;
  List<Uri> _voiceBioFilePaths = [];

  bool get isRecording => _stopWatch.isRunning || _isSaving;

  bool get isDraft => _isDraft;

  bool get hasRecording =>
      _voiceBioFilePaths.isNotEmpty || prevVoiceMediaId != null;

  VoiceBioProvider(this._editProfileProvider) {
    _recordStateSub = recorder.onStateChanged().listen(_onRecordStateChanged);
    _playingSub = player.playingValueStream.listen((isPlaying) {
      if (player.isCompleted) {
        stopPreview();
      }
    });
  }

  Future<void> initDuration() async {
    if (prevVoiceMediaId != null) {
      _isDraft = false;
      final mediaUri =
          await ApiService.instance.getMediaSignedUrl(prevVoiceMediaId!);
      _recordedDuration = await SimpleAudioPlayerProvider2.getAudioFileDuration(
            UrlSource(mediaUri),
          ) ??
          Duration.zero;
      notifyListeners();
    }
  }

  ///returns
  ///
  /// true - if there's a draft
  ///
  /// save function to be called when it returns true
  (bool, Future<void> Function() save) voiceBioSaveCallback() {
    return (
      _voiceBioFilePaths.isNotEmpty || prevVoiceMediaId != initialMediaId,
      save
    );
  }

  void _onRecordStateChanged(RecordState recordState) {
    switch (recordState) {
      case RecordState.pause:
      case RecordState.stop:
        _exceedTimer?.cancel();
        _stopWatch.stop();
        _stopWatch.reset();
        break;
      case RecordState.record:
        _exceedTimer?.cancel();
        _exceedTimer =
            Timer(MAX_VOICE_BIO_DURATION - _recordedDuration, _forceStop);
        _stopWatch.start();
        break;
    }
    notifyListeners();
  }

  Future<Source?> initPlayItem() async {
    await stopRecording();

    if (_voiceBioFilePaths.isNotEmpty) {
      final outputPath = await FFmpegProvider.instance
          .applyEffects(inputFiles: _voiceBioFilePaths);
      print(
          "VOICE BIO DEBUGGING File #1 size ${await File(outputPath).length()}");
      return DeviceFileSource(outputPath);
    } else if (prevVoiceMediaId != null) {
      final url =
          await ApiService.instance.getMediaSignedUrl(prevVoiceMediaId!);
      return UrlSource(url);
    }
    return null;
  }

  Future<void> record() async {
    arreAnalytics.logEvent(GAEvent.AUDIO_BIO_RECCORDING_MIC_CLICKED);
    await stopRecording();
    await stopPreview();
    final voiceBioFilePath =
        await ArreFiles.instance.generateTmpFilePath("m4a");
    await recorder.start(path: voiceBioFilePath);
  }

  void _forceStop() {
    _errorText = "Max 30 sec Reached";
    stopRecording();
  }

  Future<void> stopRecording() async {
    if (!await recorder.isRecording()) return;
    try {
      _isSaving = true;
      final voiceBioFilePath = await recorder.stop();
      if (voiceBioFilePath != null && voiceBioFilePath != _lastRecordedPath) {
        _lastRecordedPath = voiceBioFilePath;
        final duration = await SimpleAudioPlayerProvider2.getAudioFileDuration(
            DeviceFileSource(voiceBioFilePath));
        if (duration == null) return;
        _recordedDuration += duration;
        _voiceBioFilePaths.add(Uri.file(voiceBioFilePath));
      }
    } finally {
      _isSaving = false;
      notifyListeners();
    }
  }

  Future<void> startPreview() async {
    arreAnalytics.logEvent(GAEvent.AUDIO_BIO_RECCORDING_PLAY_CLICKED);
    final playItem = await initPlayItem();
    if (playItem == null) return;
    await player.init(playItem);
    notifyListeners();
    player.play();
  }

  Future<void> stopPreview() async {
    player.value = null;
    notifyListeners();
    await player.stop();
  }

  Future<void> save() async {
    _errorText = null;
    _isDraft = false;
    await stopRecording();
    if (_voiceBioFilePaths.isNotEmpty) {
      final outputPath = await FFmpegProvider.instance
          .applyEffects(inputFiles: _voiceBioFilePaths);
      print(
          "VOICE BIO DEBUGGING File #2 size ${await File(outputPath).length()}");
      _editProfileProvider.draft.voiceBioFilePath = outputPath;
      _editProfileProvider.notifyListeners();
    }
    notifyListeners();
  }

  Future<void> clear() async {
    _errorText = null;
    await stopPreview();
    _stopWatch
      ..stop()
      ..reset();
    await stopRecording();
    _isDraft = true;
    player.value = null;
    _voiceBioFilePaths.clear();
    _recordedDuration = Duration.zero;
    _editProfileProvider.draft.voiceBioFilePath = null;
    _editProfileProvider.draft.voiceBioMediaId = null;
    _editProfileProvider.notifyListeners();
    notifyListeners();
  }

  @override
  void dispose() {
    _recordStateSub.cancel();
    _playingSub.cancel();
    player.dispose();
    recorder.dispose();
    super.dispose();
  }
}
