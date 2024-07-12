// const _LOG = "PLAYER_PROVIDER";


//
// class PlayItem {
//   AudioSource _src;
//
//   AudioSource get src => _src;
//
//   ///This can be filepath, network url or asset path
//   String get uriString {
//     final src = this._src;
//     if (src is UriAudioSource) {
//       return src.uri.toString();
//     } else if (src is LockCachingAudioSource) {
//       return src.uri.toString();
//     }
//     throw Exception("${src.runtimeType} is not implemented");
//   }
//
//   Uri get uri {
//     final src = this._src;
//     if (src is UriAudioSource) {
//       return src.uri;
//     } else if (src is LockCachingAudioSource) {
//       return src.uri;
//     }
//     throw Exception("${src.runtimeType} is not implemented");
//   }
//
//   PlayItem(this._src);
//
//   PlayItem.network(String uri) : _src = AudioSource.uri(Uri.parse(uri));
//
//   PlayItem.caching(String uri) : _src = LockCachingAudioSource(Uri.parse(uri));
//
//   PlayItem.file(String filePath) : _src = AudioSource.file(filePath);
//
//   PlayItem copyWith(AudioSource src) {
//     return PlayItem(src);
//   }
//
//   @override
//   String toString() {
//     return "PlayItem($uriString)";
//   }
// }
//
// class PlayerProvider<T extends PlayItem> with ChangeNotifier {
//   T? _playingItem;
//   Duration? _duration;
//   final MediaSound? _mediaSound;
//
//   dynamic _error;
//   AudioPlayer _audioPlayer = AudioPlayer();
//
//   PlayerProvider([this._mediaSound]) {
//     _audioPlayer.playerStateStream.listen(_onPlayerStateChanged);
//   }
//
//   static Future<Duration?> getAudioFileDuration(String filePath) async {
//     final audioPlayer = AudioPlayer();
//     try {
//       return await audioPlayer.setAudioSource(AudioSource.file(filePath));
//     } catch (err, st) {
//       Utils.reportError(err, st);
//       rethrow;
//     } finally {
//       audioPlayer.dispose();
//     }
//   }
//
//   ///If cache is set to true in [init], it'll return non-null value
//   Future<File>? getCacheFile() {
//     final source = _audioPlayer.audioSource;
//     return source is LockCachingAudioSource ? source.cacheFile : null;
//   }
//
//   T? get playingItem => _playingItem;
//
//   bool get isPlayerInitialized => _duration != null;
//
//   Duration? get duration => _duration;
//
//   bool get isPlaying => _audioPlayer.playing;
//
//   bool get isCompleted =>
//       _audioPlayer.playerState.processingState == ProcessingState.completed;
//
//   double get volume => _audioPlayer.volume;
//
//   Future<void> seek(Duration position) {
//     return _audioPlayer.seek(position);
//   }
//
//   // Stream<Duration> get positionStream => _audioPlayer.positionStream;
//
//   // Stream<Duration> get bufferedPositionStream =>
//   //     _audioPlayer.bufferedPositionStream;
//   //
//   Stream<double> get volumeStream => _audioPlayer.volumeStream;
//
//   Stream<bool> get playingStream => _audioPlayer.playingStream;
//
//   Stream<double> get speedStream => _audioPlayer.speedStream;
//
//   Stream<Duration> get positionStream => _audioPlayer.positionStream;
//
//   Stream<PlayerState> get playerStateStream => _audioPlayer.playerStateStream;
//
//   Stream<PlayerValue> get playerValueStream =>
//       Rx.combineLatest2<Duration, Duration?, PlayerValue>(
//         _audioPlayer.positionStream,
//         _audioPlayer.durationStream,
//         (a, c) => PlayerValue(
//           position: a,
//           // buffered: b,
//           duration: c ?? _duration ?? Duration.zero,
//         ),
//       );
//
//   bool get hasError => _error != null;
//
//   dynamic get error => _error;
//
//   Future<Duration?> init(T playSource) async {
//     try {
//       log("PlayerProvider init $playSource", name: _LOG);
//       _duration = null;
//       _error = null;
//       _playingItem = playSource;
//       notifyListeners();
//       _duration = await _audioPlayer.setAudioSource(playSource._src);
//       return _duration;
//     } on PlayerException catch (err) {
//       log("PlayerException", error: err, name: _LOG);
//       if (playSource.src is LockCachingAudioSource) {
//         log("Handling LockCachingAudioSource with AudioSource.uri", name: _LOG);
//         playSource._src = AudioSource.uri(playSource.uri);
//         return init(playSource);
//       }
//       _error = err;
//       rethrow;
//     } catch (err, st) {
//       log("PlayerException", error: err, name: _LOG);
//       _error = err;
//       Utils.reportError(err, st);
//       rethrow;
//     } finally {
//       notifyListeners();
//     }
//   }
//
//   void _onPlayerStateChanged(PlayerState state) {
//     if (state.processingState == ProcessingState.completed) {
//       _audioPlayer.pause();
//     }
//   }
//
//   Future<void> setVolume(double value) {
//     return _audioPlayer.setVolume(value);
//   }
//
//   Future<void> setLooping(bool loop) {
//     return _audioPlayer.setLoopMode(loop ? LoopMode.one : LoopMode.off);
//   }
//
//   void switchSpeed() {
//     var nextSpeed = _audioPlayer.speed + 1.0;
//     if (nextSpeed > 3.0) nextSpeed = 1.0;
//     _audioPlayer.setSpeed(nextSpeed);
//   }
//
//   Future<void> playPause() async {
//     if (isPlaying) {
//       _audioPlayer.pause();
//     } else {
//       if (_audioPlayer.processingState == ProcessingState.completed) {
//         await _audioPlayer.seek(Duration.zero);
//       }
//       _audioPlayer.play();
//       if (_mediaSound != null) {
//         MediaSoundManager.instance.unMuteThisType(_mediaSound!);
//       }
//     }
//   }
//
//   void play() {
//     _audioPlayer.play();
//     if (_mediaSound != null) {
//       MediaSoundManager.instance.unMuteThisType(_mediaSound!);
//     }
//   }
//
//   ///This future completes when the player is pauses or stops
//   Future<void> playTillEnd() => _audioPlayer.play();
//
//   void pause() => _audioPlayer.pause();
//
//   void stop() => _audioPlayer.stop();
//
//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     super.dispose();
//   }
// }
