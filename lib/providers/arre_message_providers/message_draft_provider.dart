part of arre_message_providers;

const _LOG = "VOICE_MESSAGE_PROVIDER";
const AMPLITUDE_ANIM_DURATION = Duration(milliseconds: 350);

final messageDraftProvider = ChangeNotifierProvider.autoDispose
    .family<MessageDraftProvider, String>((ref, conversationId) {
  if (kDebugMode) {
    ref.listenSelf((previous, next) {
      log("$next", name: "VOICE_MESSAGE_DRAFT_PROVIDER");
    });
  }
  return MessageDraftProvider(conversationId, ref);
});

class MessageDraftProvider
    with
        ChangeNotifier,
        RecordingTimer,
        VoiceMessageDraftMixin,
        TextMessageDraftMixin,
        MediaSound {
  @override
  late GAEvent? Function(String eventName) getGAEventParams;
  late final MessageOn messagingOn;
  final Ref _ref;
  final String conversationId;

  bool _isSending = false;

  MessageDraftProvider(this.conversationId, this._ref) {
    _listenToRecordState();
    MediaSoundManager.instance.subscribe(this);
    if (kDebugMode) {
      // minAmplitudeValueNotifier.addListener(() {
      //   print("MIN AMPLITUDE CHANGED TO ${minAmplitudeValueNotifier.value}");
      // });
    }
  }

  void initDraftContext({
    required MessageOn messagingOn,
    required GAEvent? Function(String eventName) getGAEventParams,
  }) {
    this.messagingOn = messagingOn;
    this.getGAEventParams = getGAEventParams;
  }

  bool get isRecording => _isRecording;

  bool get isSending => _isSending;

  bool get showRecordingMode => _showRecordingMode;

  @override
  void unmuteThisType() {
    MediaSoundManager.instance.unMuteThisType(this);
  }

  void _ensureLockerReleased() {
    if (_hasLock) {
      _locker?.completeError(
          ArreException.key(AExceptionKey.FUTURE_NOT_COMPLETED));
    }
  }

  Future<void> clearDraft() async {
    clearTextDraft();
    await clearVoiceDraft();
    notifyListeners();
  }

  Future<void> sendMessage(MessageType messageType) async {
    getGAEventParams(GAEvent.MSG_SEND_MESSAGE_BTN_CLICK)
      ?..eventValue = messageType.name
      ..log();
    await stopRecording();
    if (_hasLock) return;
    _locker = Completer();
    try {
      _isSending = true;
      notifyListeners();
      MessageDraft messageDraft;
      switch (messageType) {
        case MessageType.text:
          messageDraft = TextMessageDraftV2(
            messagingOn: messagingOn,
            conversationId: conversationId,
            body: messageBody!,
          );
        case MessageType.audio:
          final outputPath = await FFmpegProvider.instance.applyEffects(
            inputFiles: await Future.wait(
              _recordedFiles.map((e) async => Uri.file(await e.absolutePath)),
              eagerError: true,
            ),
          );
          final source = DeviceFileSource(outputPath);
          final duration =
              await SimpleAudioPlayerProvider2.getAudioFileDuration(source);
          messageDraft = VoiceMessageDraftV2(
            conversationId: conversationId,
            filePath: source.path,
            duration: duration ?? Duration.zero,
            messagingOn: messagingOn,
          );
      }

      await MessageActionsManager.sendMessage(messageDraft, _ref);
      getGAEventParams(GAEvent.MSG_MESSAGE_SENT)
        ?..eventValue = messageType.name
        ..log();
      clearDraft();
      _locker?.complete();
    } catch (err, st) {
      getGAEventParams(GAEvent.MSG_MESSAGE_SEND_FAILED)
        ?..eventValue = messageType.name
        ..log();
      _locker?.completeError(err, st);
      Utils.reportError(err, st);
      rethrow;
    } finally {
      _isSending = false;
      _ensureLockerReleased();
      notifyListeners();
    }
  }

  @override
  void mute() {
    stopRecording();
  }

  @override
  void unMute() {}

  @override
  void dispose() {
    MediaSoundManager.instance.unsubscribe(this);
    messageEditingCtrl.dispose();
    _recorder.dispose();
    // _amplitudeSubject?.close();
    _recordStateSub.cancel();
    // _recordState4AmplitudeStreamSub?.cancel();
    // _amplitudeDispatchTimer?.cancel();
    super.dispose();
  }

  @override
  String toString() {
    return "VoiceMessageDraftProvider(\n"
        "isRecording: $isRecording\n"
        "showRecordingMode: $showRecordingMode\n"
        "_hasLock: $_hasLock\n)";
  }
}

mixin VoiceMessageDraftMixin on RecordingTimer {
  Completer<void>? _locker;
  bool _showRecordingMode = false;
  abstract GAEvent? Function(String eventName) getGAEventParams;
  late StreamSubscription<record.RecordState> _recordStateSub;
  record.Record _recorder = record.Record();
  bool _isRecording = false;
  List<AFile> _recordedFiles = [];
  SimpleAudioPlayerProvider2? player;

  bool get _hasLock => _locker?.isCompleted == false;

  String get conversationId;

  @override
  Duration get maxDuration => const Duration(seconds: 30);

  void unmuteThisType();

  void _ensureLockerReleased();

  void _listenToRecordState() {
    _recordStateSub = _recorder.onStateChanged().listen((event) {
      print("[$_LOG] State changed $event");
      switch (event) {
        case record.RecordState.pause:
        case record.RecordState.stop:
          stopRecordingTimer();
          player ??= SimpleAudioPlayerProvider2(this.conversationId);
          _isRecording = false;
          _recordStateSub.pause();
          break;
        case record.RecordState.record:
          startRecordingTimer();
          _recordStateSub.resume();
          _isRecording = true;
          player?.dispose();
          player = null;
          _showRecordingMode = true;
          getGAEventParams(GAEvent.MSG_RECORDING)?.log();
      }
      notifyListeners();
    });
  }

  @override
  void onTimerExceed() {
    getGAEventParams(GAEvent.MSG_PAUSE_RECORDING)
      ?..context = "auto"
      ..log();
    stopRecording();
  }

  Future<void> startRecording() async {
    if (_hasLock) return;
    _locker = Completer();

    try {
      unmuteThisType();
      _recordStateSub.resume();
      if (await _recorder.isPaused()) {
        await _recorder.resume();
      } else {
        final audioFile =
            ArreFiles.instance.generateVoiceMessageFile(conversationId, "m4a");
        await audioFile.createFile();
        await _recorder.start(path: await audioFile.absolutePath);
        _recordedFiles.add(audioFile);
      }
      _locker?.complete();
    } catch (err, st) {
      _locker?.completeError(err, st);
      Utils.reportError(err, st);
      rethrow;
    } finally {
      _ensureLockerReleased();
    }
  }

  Future<void> _stopRecording() async {
    if (await _recorder.isRecording()) {
      await _recorder.stop();
    }
  }

  Future<void> stopRecording() async {
    if (_hasLock) return;
    _locker = Completer();
    try {
      print("[$_LOG] STOP RECORDING COMMANDING ${DateTime.now()}");
      await _stopRecording();
      print("[$_LOG] STOP RECORDING FUTURE COMPLETE ${DateTime.now()}");
      // await player.init(DeviceFileSource(await _recordingFile!.absolutePath));
      _locker?.complete();
    } catch (err, st) {
      _locker?.completeError(err, st);
      Utils.reportError(err, st);
      rethrow;
    } finally {
      _ensureLockerReleased();
    }
  }

  Future<void> playVoiceDraft() async {
    player ??= SimpleAudioPlayerProvider2(this.conversationId);
    final outputPath = await FFmpegProvider.instance.applyEffects(
      inputFiles: await Future.wait(
        _recordedFiles.map((e) async => Uri.file(await e.absolutePath)),
        eagerError: true,
      ),
    );
    final source = DeviceFileSource(outputPath);
    await player!.init(source);
    player!.play();
  }

  Future<void> clearVoiceDraft() async {
    if (_hasLock) {
      await _locker?.future;
    }
    _locker = Completer();
    try {
      resetTimer();
      _showRecordingMode = false;
      _recordedFiles.forEach((element) {
        element.absolute.then((value) => value.delete());
      });
      _recordedFiles.clear();
      await _stopRecording();
      player?.dispose();
      player = null;
      _locker?.complete();
    } catch (err, st) {
      _locker?.completeError(err, st);
      Utils.reportError(err, st);
      rethrow;
    } finally {
      _ensureLockerReleased();
      notifyListeners();
    }
  }
}

mixin RecordingTimer on ChangeNotifier {
  final _stopWatch = Stopwatch();
  Duration _recordedDuration = Duration.zero;

  Duration get recordedDuration => _recordedDuration + _stopWatch.elapsed;

  bool get hasReachedMaxRecording => recordedDuration.inSeconds > 29;

  String get timerDisplay =>
      "00:${recordedDuration.inSeconds.clamp(0, 30).toStringAsFixedDigits(2)}";

  Timer? _exceedTimer;

  Duration get maxDuration;

  void onTimerExceed();

  void stopRecordingTimer() {
    _exceedTimer?.cancel();
    _stopWatch.stop();
    _recordedDuration += _stopWatch.elapsed;
    _stopWatch.reset();
  }

  void startRecordingTimer() {
    _exceedTimer?.cancel();
    _exceedTimer = Timer(maxDuration - _recordedDuration, onTimerExceed);
    _stopWatch.start();
  }

  void resetTimer() {
    _exceedTimer?.cancel();
    _stopWatch
      ..stop()
      ..reset();
    _recordedDuration = Duration.zero;
  }
}

mixin TextMessageDraftMixin on ChangeNotifier {
  TextEditingController messageEditingCtrl = TextEditingController();
  bool? _wasValidMessage;

  String? get messageBody => messageEditingCtrl.text.validValue;

  bool get isValidMessage => messageEditingCtrl.text.isValid;

  void clearTextDraft() {
    messageEditingCtrl.clear();
    _wasValidMessage = null;
  }

  void onTextChange(String? value) {
    if (value.isValid != _wasValidMessage) {
      _wasValidMessage = value.isValid;
      notifyListeners();
    }
  }
}
