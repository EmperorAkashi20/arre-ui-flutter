import 'dart:async';
import 'dart:developer';

import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_audio_insertable.dart';
import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
import '../../utils/utils.dart';
import 'cs_activity_provider.dart';

const _LOG = "AUDIO_INSERTABLE_PROVIDER";

class AudioInsertablePlayItem extends Source {
  final AudioInsertable data;
  final String filePath;

  AudioInsertablePlayItem({
    required this.data,
    required this.filePath,
  });

  @override
  Future<void> setOnPlayer(AudioPlayer player) {
    return player.setSourceDeviceFile(filePath);
  }
}

final csInsertablesDataFutureProvider = FutureProvider.autoDispose((ref) async {
  final audioInsertables = await ApiService.instance.getAudioInsertables();
  ref.keepAlive();
  return audioInsertables;
});

final csInsertablesProvider =
    ChangeNotifierProvider<CSAudioInsertablesProvider>(
        (ref) => CSAudioInsertablesProvider(ref));

class CSAudioInsertablesProvider with ChangeNotifier, CSLock {
  final ChangeNotifierProviderRef<ChangeNotifier?> _ref;
  StreamSubscription<PlayerState>? _playingSub;
  AudioInsertable? _playingItem;

  bool get isLoading => _playingItem != null;

  AudioInsertable? get loadingItem => _playingItem;

  @override
  bool get isGlobalEffectOrActivity => false;

  CSActivityProvider get csActivityPvd => _ref.read(csActivityProvider);

  final player =
      SimpleAudioPlayerProvider2<AudioInsertablePlayItem>("audio_insertables");

  CSAudioInsertablesProvider(this._ref) {
    _playingSub = player.playerStateStream.listen(_handlePlayerStateChange);
  }

  Future<void> _handlePlayerStateChange(PlayerState state) async {
    log("Player state changed to ${player.isPlaying}", name: _LOG);
    if (state == PlayerState.playing) {
      // print("#DEBUGGING PLAY TIMER [Sound effect starts playing] ${DateTime.now()}");
      csActivityPvd.startTimer(this);
    } else {
      // print("#DEBUGGING PLAY TIMER [Sound effect stops playing] ${DateTime.now()}");
      csActivityPvd.stopTimer(this);
    }
    if (player.isCompleted) {
      await player.stop();
      await csActivityPvd.unlock(this);
    }
    if (!player.isPlaying) {
      _playingItem = null;
    }
    notifyListeners();
  }

  Future<void> insert(
    AudioInsertable item, {
    required void Function(dynamic err) onError,
  }) async {
    if (isLoading || player.isPlaying) return;
    try {
      _playingItem = item;
      notifyListeners();
      log("Obtaining lock", name: "DEBUG_AUDIO_INSERT");
      await _ref.read(csActivityProvider).lock(this, releasePrevLock: true);
      player.stop();

      final aFile = ArreFiles.instance.generateInsertableFile(item.filename);
      final file = await aFile.createFile();
      final filePath = await ArreFiles.instance
          .download(DownloadTask(url: item.musicUrl, toFilePath: file.path));
      item.fileDirectory = aFile.fileDirectory;
      item.relativePath = aFile.relativePath;

      log("Downloaded to $filePath", name: "DEBUG_AUDIO_INSERT");
      await player
          .init(AudioInsertablePlayItem(filePath: filePath, data: item));
      item.milliSeconds = player.duration!.inMilliseconds;
      log("Audio player initialized", name: "DEBUG_AUDIO_INSERT");
      player.play(PlayerGAContext.cs_audio_insertable);
      log("Audio player play called", name: "DEBUG_AUDIO_INSERT");
    } catch (err, st) {
      _playingItem = null;
      onError.call(err);
      log("Error inserting the audio clip ${item.name}", error: err);
      Utils.reportError(err, st);
    } finally {
      notifyListeners();
    }
  }

  @override
  Future<bool> canReleaseLock() {
    if (player.isPlaying) {
      throw CSLockException("Please wait while the insertable is being played");
    }
    if (isLoading) {
      throw CSLockException("Please wait while the insertable is being loaded");
    }
    return Future.value(!player.isPlaying && !isLoading);
  }

  @override
  Future<CSIntegralActivity?> releaseLock(_) async {
    CSIntegralActivity? activity;
    if (player.value != null && player.duration != null) {
      activity = player.value!.data;
    }
    player.pause(PlayerGAContext.cs_audio_insertable);
    return activity;
  }

  @override
  void dispose() {
    player.dispose();
    _playingSub?.cancel();
    super.dispose();
  }
}
