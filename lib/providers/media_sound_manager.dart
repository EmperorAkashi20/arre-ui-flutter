//FIXME this logic does not work. REVISIT
class MediaSoundManager {
  static final instance = MediaSoundManager._();

  Type? _activeMediaSound;
  Set<MediaSound> _subscribers = {};

  MediaSoundManager._();

  bool isMuted(MediaSound mediaSound) {
    return mediaSound.runtimeType != _activeMediaSound;
  }

  void unMuteThisType(MediaSound mediaSound) {
    if (_activeMediaSound == mediaSound.runtimeType) return;
    _activeMediaSound = mediaSound.runtimeType;
    _subscribers.forEach((element) {
      if (element.runtimeType == _activeMediaSound) {
        element.unMute();
      } else {
        element.mute();
      }
    });
    // if (_mediaSound != mediaSound) {
    //   _mediaSound?.mute();
    // }
    // _mediaSound = mediaSound;
    // _mediaSound!.unMute();
  }

  void muteThisType(MediaSound mediaSound) {
    if (mediaSound.runtimeType == _activeMediaSound) {
      _activeMediaSound = null;
    }
    _subscribers.forEach((element) {
      if (element.runtimeType == mediaSound.runtimeType) {
        element.mute();
      }
    });
  }

  void subscribe(MediaSound mediaSound) {
    _subscribers.add(mediaSound);
  }

  void unsubscribe(MediaSound mediaSound) {
    _subscribers.remove(mediaSound);
  }
}

mixin MediaSound {
  void mute();

  void unMute();
}
