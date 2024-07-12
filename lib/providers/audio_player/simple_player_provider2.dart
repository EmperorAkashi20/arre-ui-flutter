part of arre_audio_player;

final voiceMessagePlayerProvider = ChangeNotifierProvider.autoDispose((ref) =>
    SimpleAudioPlayerProvider2<ArreAudioMediaSource>("voice_message_player"));

class ArreAudioMediaSource extends Source {
  final String mediaId;

  ArreAudioMediaSource(this.mediaId);

  @override
  Future<void> setOnPlayer(AudioPlayer player) async {
    final signedUrl = await ApiService.instance.getMediaSignedUrl(mediaId);
    return player.setSourceUrl(signedUrl);
  }

  @override
  String toString() {
    return mediaId;
  }
}

class SimpleAudioPlayerProvider2<T extends Source> extends ValueNotifier<T?>
    with
        ArreAudioPlayer,
        AudioPlayerState,
        AudioPlayerSpeed,
        AudioPlayerPosition,
        AudioVolumeManage,
        MediaSound {
  Completer<Duration?>? _initCompleter;
  StreamSubscription? _playerStateSub;
  final String playerId;
  BehaviorSubject<bool> _playingValueStreamCtrl = BehaviorSubject.seeded(false);
  LoadingValueNotifier _playLoadingNotifier = LoadingValueNotifier(false);
  Object? _playError;
  late final _player = AudioPlayer(playerId: playerId);
  Duration? _duration;

  @override
  AudioPlayer get _audioPlayer => _player;

  double get volume => _player.volume;

  bool get _hasPlayError => _playError != null;

  bool get isPlaying => _playingValueStreamCtrl.value;

  bool get isInitialized => _initCompleter != null && !_hasPlayError;

  @override
  Duration? get duration => _duration;

  @override
  Future<Duration?> getDuration() => _audioPlayer.getDuration();

  @override
  ValueNotifier<bool> get playLoadingNotifier => _playLoadingNotifier;

  @override
  Stream<bool> get playingValueStream => _playingValueStreamCtrl.stream;

  Stream<PlayerState> get playerStateStream =>
      _audioPlayer.onPlayerStateChanged;

  bool get isCompleted => _audioPlayer.state == PlayerState.completed;

  SimpleAudioPlayerProvider2(this.playerId) : super(null) {
    MediaSoundManager.instance.subscribe(this);
    _playerStateSub = _audioPlayer.onPlayerStateChanged.listen((event) async {
      if (event == PlayerState.playing) {
        _playingValueStreamCtrl.add(true);
      } else {
        _playingValueStreamCtrl.add(false);
      }
      ArreLogs.log("Player state changed to $event", name: _LOG);
    });
  }

  Future<Duration?> init(T item) async {
    if (_initCompleter?.isCompleted == false) return _initCompleter!.future;
    _initCompleter = Completer();
    try {
      final wasPlaying = isPlaying;
      _playError = null;
      if (item != value) {
        await _player.release();
      }
      if (wasPlaying) play();
      value = item;
      ArreLogs.log("Play $item", name: _LOG);
      _playLoadingNotifier.value = true;
      if (_player.releaseMode == ReleaseMode.release) {
        await _player.setReleaseMode(ReleaseMode.stop);
      }
      ArreLogs.log("Set Source $item", name: _LOG);
      await _player.setSource(item);
      if (isPlaying) {
        ArreLogs.log("Playing automatically $item", name: _LOG);
        await _player.resume();
      }
      _duration = await _player.getDuration().timeout(Duration(seconds: 5));
      _initCompleter?.complete(_duration);
      return _duration;
    } catch (err) {
      _initCompleter?.completeError(err);
      _playError = err;
      _playingValueStreamCtrl.addError(err);
      pause();
      rethrow;
    } finally {
      _playLoadingNotifier.value = false;
      if (_initCompleter?.isCompleted == false) {
        _initCompleter?.completeError(
            ArreException.key(AExceptionKey.FUTURE_NOT_COMPLETED));
      }
    }
  }

  Future<void> play([PlayerGAContext? gaContext]) async {
    arreAnalytics.logEvent(
      GAEvent.APP_PLAYER_PLAY,
      parameters: {EventAttribute.GA_CONTEXT: gaContext?.name},
    );
    ArreLogs.log("#DEBUGGING THIS Play", name: _LOG);
    MediaSoundManager.instance.unMuteThisType(this);
    _playingValueStreamCtrl.add(true);
    if (_hasPlayError) {
      await init(value!);
    }
    await _player.resume();
    _syncPlayerState();
  }

  Future<void> pause([PlayerGAContext? gaContext]) async {
    arreAnalytics.logEvent(
      GAEvent.APP_PLAYER_PAUSE,
      parameters: {EventAttribute.GA_CONTEXT: gaContext?.name},
    );
    _playingValueStreamCtrl.add(false);
    await _player.pause();
    _syncPlayerState();
  }

  @override
  Future<void> switchSpeed([PlayerGAContext? gaContext]) {
    arreAnalytics.logEvent(
      GAEvent.APP_PLAYER_SWITCH_SPEED,
      parameters: {EventAttribute.GA_CONTEXT: gaContext?.name},
    );
    return super.switchSpeed();
  }

  void setLoopMode() {
    _player.setReleaseMode(ReleaseMode.loop);
  }

  Future<void> seek(Duration position) {
    return _player.seek(position);
  }

  Future<void> stop() async {
    await _player.release();
    _player.seek(Duration.zero);
  }

  void _syncPlayerState() {
    if (_player.state == PlayerState.playing && !isPlaying) {
      ArreLogs.log("Player state mismatch",
          error: "Error in our Player state handling", name: _LOG);
      _playingValueStreamCtrl.add(true);
    } else if (_player.state != PlayerState.playing && isPlaying) {
      ArreLogs.log("Player state mismatch",
          error: "Error in our Player state handling", name: _LOG);
      _playingValueStreamCtrl.add(false);
    }
  }

  static Future<Duration?> getAudioFileDuration(Source source) async {
    final audioPlayer = AudioPlayer(playerId: source.toString());
    try {
      await audioPlayer.setSource(source);
      return await audioPlayer.getDuration();
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    } finally {
      audioPlayer.dispose();
    }
  }

  @override
  void mute() {
    pause(PlayerGAContext.mute);
  }

  @override
  void unMute() {}

  @override
  void dispose() {
    MediaSoundManager.instance.unsubscribe(this);
    _playerStateSub?.cancel();
    _speedValueNotifier.dispose();
    _volumeStreamCtrl.close();
    _audioPlayer.dispose();
    _playingValueStreamCtrl.close();
    _playLoadingNotifier.dispose();
    super.dispose();
  }
}
