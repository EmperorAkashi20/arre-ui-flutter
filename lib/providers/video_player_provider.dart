import 'dart:developer';

import 'package:arre_frontend_flutter/network/media_service.dart';
import 'package:arre_frontend_flutter/providers/media_sound_manager.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

const _LOG = "VIDEO_PLAYER_PROVIDER";

extension on VideoPlayerValue {
  bool get isCompleted => position == duration && isInitialized;
}

class VideoPlayerProvider with ChangeNotifier, MediaSound {
  bool _isDisposed = false;

  bool _isInitializing = false;
  bool? _autoPlay = true;
  final isPlaying = ValueNotifier<bool>(false);
  final isMuted = ValueNotifier<bool>(false);
  double _aspectRatio = 1.0;
  final String mediaId, debugLabel;

  dynamic _error;
  final VideoPlayerController _controller;

  bool get isDisposed => _isDisposed;

  bool get isInitialized => _controller.value.isInitialized;

  bool get isCompleted => _controller.value.isCompleted;

  VideoPlayerController get controller => _controller;

  bool get hasError => _error != null;

  dynamic get error => _error;

  VideoPlayerProvider(this.mediaId, {required this.debugLabel})
      : _controller = VideoPlayerController.networkUrl(
            AMediaService.instance.getMediaUrl(mediaId),
            httpHeaders: {"Authorization": arrePref.authToken!},
            videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true)) {
    MediaSoundManager.instance.subscribe(this);
  }

  void _playerListener() {
    if (_controller.value.isCompleted) {
      isPlaying.notifyListeners();
    }
    isPlaying.value = _controller.value.isPlaying;
    if (_controller.value.aspectRatio != _aspectRatio) {
      _aspectRatio = _controller.value.aspectRatio;
      isPlaying.notifyListeners();
    }
  }

  Future<void> init() async {
    if (_isDisposed) return;
    if (_isInitializing) {
      _autoPlay = true;
      log("PlayerProvider initializing autoPlay:$_autoPlay", name: debugLabel);
      return;
    } else if (isInitialized) {
      _autoPlay = true;
      log("PlayerProvider initialized playing:$_autoPlay", name: debugLabel);
      await play();
      return;
    }
    try {
      log("PlayerProvider init $mediaId ${_controller.dataSource}", name: debugLabel);
      _autoPlay = true;
      _error = null;
      _isInitializing = true;
      isMuted.value = _controller.value.volume == 0.0;
      notifyListeners();
      _controller.addListener(_playerListener);
      if (MediaSoundManager.instance.isMuted(this)) {
        mute();
      }
      await _controller.initialize();
      log("Player initialized", name: debugLabel);
      if (_autoPlay == true) {
        log("Auto playing video", name: debugLabel);
        await _controller.play();
      } else if (_autoPlay == false) {
        log("NOT Auto playing video", name: debugLabel);
        await _controller.pause();
      }
      _autoPlay = null;
    } catch (err) {
      log("Error playing video ", error: err, name: _LOG);
      _error = err;
      notifyListeners();
    } finally {
      _isInitializing = false;
    }
  }

  Future<void> play() async {
    if (_isDisposed) return;
    log("Play autoPlay:$_autoPlay; isInitialized:$isInitialized",
        name: debugLabel);
    if (!isInitialized) {
      if (_autoPlay != null) _autoPlay = true;
      init();
    }
    try {
      await _controller.play();
      notifyListeners();
    } catch (err) {
      log("Error playing video/audio", error: err, name: _LOG);
    }
  }

  Future<void> pause() async {
    if (_isDisposed) return;
    log("Pause autoPlay:$_autoPlay; isInitialized:$isInitialized",
        name: debugLabel);
    if (!isInitialized) {
      if (_autoPlay != null) _autoPlay = false;
    }
    try {
      await _controller.pause();
      notifyListeners();
    } catch (err) {
      log("Error pausing video/audio", error: err, name: _LOG);
    }
  }

  @override
  Future<void> mute() async {
    if (_isDisposed) return;
    await _controller.setVolume(0.0);
    isMuted.value = _controller.value.volume == 0.0;
  }

  @override
  Future<void> unMute() async {
    if (_isDisposed) return;
    await _controller.setVolume(1.0);
    isMuted.value = _controller.value.volume == 0.0;
  }

  @override
  void dispose() {
    MediaSoundManager.instance.unsubscribe(this);
    _controller.dispose().then((value) => _isDisposed = true);
    super.dispose();
  }
}
