import 'dart:async';
import 'dart:math';

import 'package:arre_frontend_flutter/models/src/cs_bg_music_effect.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_frontend_flutter/models/src/cs_mood.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/creator_studio_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_activity_provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/src/cs_models.dart';
import '../../models/src/mixins.dart';
import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
import '../../utils/utils.dart';

export 'cs_mixins.dart';

class BgMusicItem extends Source {
  final BgMusicEffect data;

  BgMusicItem(this.data);

  @override
  Future<void> setOnPlayer(AudioPlayer player) async {
    final cacheFilePath = await data.aFile?.absolutePath;
    if (cacheFilePath != null) {
      return player.setSourceDeviceFile(cacheFilePath);
    }
    return player.setSourceUrl(data.musicUrl);
  }
}

final bgMusicDataFutureProvider = FutureProvider.autoDispose
    .family<List<BgMusicEffect>, Mood?>((ref, mood) async {
  final response = await ApiService.instance.getBgMusicList(mood?.id);
  ref.keepAlive();
  return response;
});

// final _bgMusicPlayerProvider =
//     ChangeNotifierProvider((ref) => PlayerProvider());

final csBgMusicProvider = ChangeNotifierProvider<CSBgMusicProvider>((ref) {
  return CSBgMusicProvider(ref);
});

// abstract class ArreAudioPlayer {
//   PlayerProvider get player;
// }

// mixin ArreAudioPlayerControls on ArreAudioPlayer{
//
// }

class CSBgMusicProvider with ChangeNotifier, CSLock, CSFieldProvider {
  final ChangeNotifierProviderRef _ref;

  BgMusicEffect? _selectedEffect;
  BgMusicEffect? _appliedEffect;
  bool _isLoading = false;
  bool _isAdjustingVolume = false;
  Mood? _moodFilter;

  CSBgMusicProvider(this._ref) {
    player.setLoopMode();
    player.setVolume(0.25);
    // player.playingStream.listen((event) {
    //   notifyListeners();
    // });
  }

  bool get isAdjustingVolume => _isAdjustingVolume;

  Mood? get moodFilter => _moodFilter;

  final player = SimpleAudioPlayerProvider2<BgMusicItem>("bg_music");

  BgMusicEffect? get selectedEffect => _selectedEffect;

  BgMusicEffect? get appliedEffect => _appliedEffect;

  void showVolumeSlider() {
    _isAdjustingVolume = true;
    notifyListeners();
  }

  void showPlayerProgress() {
    _isAdjustingVolume = false;
    notifyListeners();
  }

  Future<void> play(
    BgMusicEffect bg, {
    required void Function(dynamic err) onError,
  }) async {
    if (_isLoading && _selectedEffect == bg) return;
    try {
      await _ref.read(csActivityProvider).lock(this);
      _isLoading = true;
      _selectedEffect = bg;
      notifyListeners();
      await player.init(BgMusicItem(bg));
      if (_selectedEffect != null) {
        player.play(PlayerGAContext.cs_bg_music);
      }
      // if (player.value?.cacheFile != null && player.value?.data == bg) {
      //   bg.localPath = player.value?.cacheFile?.path;
      // }
    } catch (err, st) {
      onError.call(err);
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void removeEffect() {
    if (_appliedEffect == null) return;
    applyOrRemoveEffect(_appliedEffect!);
  }

  void autoSelectBgMusic({
    required Mood mood,
    required VoidCallback onApplied,
  }) {
    _ref.read(bgMusicDataFutureProvider(mood).future).then((value) {
      if (value.isEmpty) return;
      final randomIndex = Random().nextInt(value.length);
      if (_appliedEffect == null) {
        applyOrRemoveEffect(value[randomIndex], mood);
        onApplied();
      }
    });
  }

  void applyOrRemoveEffect(BgMusicEffect effect, [Mood? moodFilter]) {
    if (_appliedEffect == effect) {
      _appliedEffect = null;
      _moodFilter = null;
      if (_selectedEffect == effect) {
        dismiss();
      }
    } else {
      _appliedEffect = effect;
      _moodFilter = moodFilter;
      offlineAppliedEffect();
    }
    notifyListeners();
    _ref.read(creatorStudioProvider).save();
    _ref.read(csActivityProvider).lock(this, releasePrevLock: false);
  }

  Future<void> offlineAppliedEffect() async {
    if (_appliedEffect == null) return;
    try {
      final effect = _appliedEffect!;
      final aFile = ArreFiles.instance.generateBgMusicFile(effect.filename);
      await ArreFiles.instance.download(DownloadTask(
        url: effect.musicUrl,
        toFilePath: await aFile.absolutePath,
      ));
      effect.fileDirectory = aFile.fileDirectory;
      effect.relativePath = aFile.relativePath;
    } catch (err, st) {
      Utils.reportError(err, st);
    }
  }

  void dismiss() {
    _selectedEffect = null;
    player.stop();
    notifyListeners();
  }

  @override
  Future<bool> canReleaseLock() {
    return Future.value(true);
  }

  @override
  bool get isGlobalEffectOrActivity => true;

  @override
  Future<CSIntegralActivity?> releaseLock(_) async {
    dismiss();
    return Future.value(null);
  }

  @override
  Future<void> exportToDraft(CSDraft draft) {
    _appliedEffect?.volume = player.volume;
    draft.bgMusicEffect = _appliedEffect;
    return SynchronousFuture(null);
  }

  @override
  void import4mDraft(CSDraft draft) {
    _appliedEffect = draft.bgMusicEffect;
    player.setVolume(_appliedEffect?.volume ?? 0.25);
    notifyListeners();
  }

  @override
  Future<void> clear() {
    //Restart is only for Activities
    dismiss();
    return SynchronousFuture(null);
  }

  @override
  void validateWithException(CSDraft draft) {
    return null;
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}
