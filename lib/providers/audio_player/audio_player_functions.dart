part of arre_audio_player;

mixin ArreAudioPlayer {
  AudioPlayer get _audioPlayer;

  Future<void> play([PlayerGAContext? gaContext]);

  Future<void> pause([PlayerGAContext? gaContext]);
}

mixin AudioPlayerPosition on ArreAudioPlayer {
  bool get isPlaying;

  Duration? get duration;

  Future<Duration?> getDuration();

  Stream<void> get onSeekComplete => _audioPlayer.onSeekComplete;

  // Stream<PlayerValue> get playerValueStream =>
  //     ThrottleStreamTransformer<Duration>(
  //       (_) => _ == Duration.zero
  //           ? Stream.value(_)
  //           : TimerStream<bool>(true, Duration(milliseconds: 500)),
  //       trailing: false,
  //       leading: true,
  //     ).bind(_audioPlayer.onPositionChanged).map((event) =>
  //         PlayerValue(position: event, duration: duration ?? Duration.zero));

  Stream<PlayerValue> get playerValueStream {
    return _audioPlayer.eventStream.transform(
      PlayerValueStreamTransformer(_audioPlayer),
    );
  }

  Future<void> seek(Duration position) async {
    await _audioPlayer.seek(position);
  }
}

mixin AudioPlayerSpeed on ArreAudioPlayer {
  double get speed => _speedValueNotifier.value;
  ValueNotifier<double> _speedValueNotifier = ValueNotifier(1.0);

  ValueNotifier<double> get speedValueNotifier => _speedValueNotifier;

  Future<void> switchSpeed() {
    final speed = _audioPlayer.playbackRate;
    var speedIndex = kSpeedValues.indexOf(speed);
    if (speedIndex >= 0 && speedIndex < (kSpeedValues.length - 1)) {
      speedIndex++;
    } else {
      speedIndex = 0;
    }
    return setSpeed(kSpeedValues[speedIndex]);
  }

  Future<void> setSpeed(double speed) {
    speedValueNotifier.value = speed;
    return _audioPlayer.setPlaybackRate(speed);
  }
}

mixin AudioPlayerState on ArreAudioPlayer {
  Stream<bool> get playingValueStream;

  ValueNotifier<bool> get playLoadingNotifier;

  bool get isPlaying;

  bool get isInitialized;
}

mixin AudioVolumeManage on ArreAudioPlayer {
  BehaviorSubject<double> _volumeStreamCtrl = BehaviorSubject.seeded(1.0);

  Stream<double> get volumeStream => _volumeStreamCtrl.stream;

  double get volume => _audioPlayer.volume;

  Future<void> setVolume(double value) {
    _volumeStreamCtrl.add(value);
    return _audioPlayer.setVolume(value);
  }
}

class PlayerValueStreamTransformer
    extends StreamTransformerBase<AudioEvent, PlayerValue> {
  final AudioPlayer player;

  PlayerValueStreamTransformer(this.player);

  @override
  Stream<PlayerValue> bind(Stream<AudioEvent> stream) {
    // print("#STREAM_TRANSFORMER - bind Stream - ${stream.hashCode}");
    StreamController<PlayerValue> _controller =
        StreamController.broadcast(sync: true);
    StreamSubscription<AudioEvent>? subscription;
    Timer? timer;
    Duration duration = Duration.zero;
    Duration _latestPosition = Duration.zero;
    _controller.onListen = () {
      // print("#STREAM_TRANSFORMER - onListen ${_controller.hashCode}");
      final emit = (Duration position) {
        // print(
        //     "#STREAM_TRANSFORMER - emit $position $duration ${_controller.hashCode}");
        _controller.add(PlayerValue(position: position, duration: duration));
      };
      subscription = stream.listen((event) {
        switch (event.eventType) {
          case AudioEventType.position:
            _latestPosition = event.position ?? Duration.zero;
            if (_latestPosition == Duration.zero) {
              emit(_latestPosition);
            } else {
              timer ??= Timer(Duration(milliseconds: 500), () {
                emit(_latestPosition);
                timer?.cancel();
                timer = null;
              });
            }
            break;
          case AudioEventType.duration:
            duration = event.duration ?? Duration.zero;
            // print("#STREAM_TRANSFORMER - duration $duration");
            emit(_latestPosition);
            break;
          case AudioEventType.seekComplete:
          case AudioEventType.complete:
            emit(_latestPosition);
          default:
        }
      }, onError: (err, st) {
        // print("#STREAM_TRANSFORMER - add Error $err ${_controller.hashCode}");
        _controller.addError(err, st);
      }, onDone: () {
        _controller.close();
        // print("#STREAM_TRANSFORMER - On Done, close ${_controller.hashCode}");
      });

      player.getDuration().then((value) async {
        if (duration == Duration.zero) {
          duration = value ?? Duration.zero;
        }
        final position = await player
            .getCurrentPosition()
            .catchError((err) => Duration.zero);
        if (position != null) {
          emit(position);
        }
      }).catchError((err) {
        //Ignore
      });
    };

    _controller.onCancel = () async {
      // print("#STREAM_TRANSFORMER - onCancel ${_controller.hashCode}");
      timer?.cancel();
      subscription?.cancel();
      subscription = null;
      // _controller.close();
    };

    return _controller.stream;
  }
}
