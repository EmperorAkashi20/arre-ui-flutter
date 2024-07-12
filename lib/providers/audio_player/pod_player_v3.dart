library arre_audio_player;

import 'dart:async';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/providers/device_app_manager.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/post_data_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/voicepod_actions_provider.dart';
import 'package:arre_frontend_flutter/providers/logs_db_provider.dart';
import 'package:arre_frontend_flutter/providers/media_sound_manager.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/loading_value_notifier.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';
import 'dart:math' as math;

part "simple_player_provider2.dart";

part 'pod_source.dart';

part 'audio_player_functions.dart';

const _LOG = "POD_PLAYER_V3";

const _kNextNItems = 8;
const List<double> kSpeedValues = [1, 1.24, 1.5, 2];

Future<void> initAudioServiceV3() async {
  await AudioService.init<PodPlayerV3>(
    builder: () => PodPlayerV3.instance,
    config: const AudioServiceConfig(
        androidNotificationIcon: "drawable/ic_notification",
        androidShowNotificationBadge: true,
        androidNotificationChannelId: 'com.arrevoice.pod',
        androidNotificationChannelName: 'Arré Voicepod',
        androidNotificationOngoing: true,
        androidStopForegroundOnPause: true,
        notificationColor: AColors.tealPrimary),
  );
}

final initPodPLayerRef = Provider((ref) {
  PodPlayerV3.instance._ref = ref;
});

class PodPlayerV3 extends BaseAudioHandler
    with
        QueueHandler,
        ArreAudioPlayer,
        AudioPlayerPosition,
        AudioPlayerSpeed,
        AudioPlayerState,
        MediaSound,
        AudioVolumeManage,
        ChangeNotifier,
        OnScroll<MediaItem>,
        LoadOnScrollNotificationV2 {
  Object? _initError;
  BehaviorSubject<bool> _playingValueStreamCtrl =
      BehaviorSubject.seeded(false, sync: true);
  LoadingValueNotifier _playLoadingNotifier = LoadingValueNotifier(false);
  final _uuid = Uuid();

  ///Index from where we should fetch next pods from
  int? _indexOffset;

  Completer<List<MediaItem>>? _nextItemsDetailsCompleter;
  Completer? _nextItemsCompleter;
  late Ref _ref;
  bool _isLoading = false;
  Object? _playError;
  PlayMetricsRecorder? _podMetricsRecorder;
  late final _audioPlayer = AudioPlayer(playerId: "POD_PLAYER");
  StreamSubscription? _completeSub,
      _playerStateSub,
      _mediaItemSub,
      _queueSub,
      _positionSub;
  bool autoplayQueue = true;
  ValueNotifier<bool> _hasActivePod = ValueNotifier(false);

  String? _podPlayingSourceScreen;
  PodSourceValueNotifier _podPlayerSourceNotifier = PodSourceValueNotifier();

  static final instance = PodPlayerV3._();

  bool get isLoading => _isLoading;

  PodPlayerV3._() {
    AudioLogger.logLevel = AudioLogLevel.none;
    MediaSoundManager.instance.subscribe(this);
    ArreNavigator.instance.internalRoutesVisibilityNotifier
        .addListener(() => pause(PlayerGAContext.ignore));
    // _playingValueStreamCtrl.listen((value) {
    //   debugPrintSynchronously(
    //       "#DEBUGGING_PLAYING_STREAM Playing value changed to $value ${DateTime.now()}");
    // });
  }

  bool get isPlaying => _playingValueStreamCtrl.value;

  //Untested
  bool get isInitialized => _audioPlayer.source != null;

  ValueNotifier<bool> get playLoadingNotifier => _playLoadingNotifier;

  ValueStream<bool> get playingValueStream => _playingValueStreamCtrl.stream;

  Stream<void> get onPlayerComplete => _audioPlayer.onPlayerComplete;

  ValueNotifier<bool> get hasActivePod => _hasActivePod;

  ValueStream<MediaItem?> get activePod => mediaItem.stream;

  PlayerState get playerState => _audioPlayer.state;

  @override
  Duration? get duration => this.mediaItem.valueOrNull?.duration;

  Future<Duration?> getDuration() => _audioPlayer.getDuration();

  bool get _hasPlayError => _playError != null;

  int get currentIndex {
    if (mediaItem.value == null) return -1;
    return queue.value.indexOf(mediaItem.value!);
  }

  PodPlayerSource? get source => _podPlayerSourceNotifier.value;

  ValueNotifier<PodPlayerSource?> get sourceNotifier =>
      _podPlayerSourceNotifier;

  void _listenToPlayerEvents() {
    _completeSub?.cancel();
    _playerStateSub?.cancel();
    _mediaItemSub?.cancel();
    _queueSub?.cancel();
    _completeSub = _audioPlayer.onPlayerComplete.listen((_) {
      _podMetricsRecorder?.recordStreamTime(
          mediaItem.valueOrNull?.duration, speed);
      if (autoplayQueue) {
        skipToNext(PlayerGAContext.auto_play, mediaItem.valueOrNull?.duration);
        DeviceAppManager.instance
            .incrementPodListenedCount()
            .then((value) => DeviceAppManager.instance.rateAndReviewApp(value))
            .catchError((err, st) => Utils.reportError(err, st));
      } else {
        pause(PlayerGAContext.ignore);
      }
    });
    _mediaItemSub = this.mediaItem.listen((value) {
      _initError = null;
      ArreLogs.log(
          "Media item changed  $currentIndex >= ${(queue.value.length - _kNextNItems / 2)} && ${source != null}",
          name: _LOG);
      if (currentIndex >= (queue.value.length - _kNextNItems / 2) &&
          source != null) {
        loadNextItems();
      }
      _positionSub ??= _audioPlayer.onPositionChanged.listen(_onPositionChange);
    }, onError: (err) {
      _initError = err;
    });
    _playerStateSub = _audioPlayer.onPlayerStateChanged.listen((event) async {
      _updatePlaybackState();
      ArreLogs.log("Player state changed to $event ${DateTime.now()}",
          name: _LOG);
    });
    if (kDebugMode) {
      _queueSub = queue.listen((value) {
        ArreLogs.log(
            "Queue items ${queue.valueOrNull?.length}\n${queue.value.map((e) => e.title).toList().join("\n")}",
            name: _LOG);
      });
    }
  }

  ///[autoplayQueue] - auto plays the playlist one after other
  Future<void> init({
    required Future<PodPlayerSource> Function() podSourceFuture,
    PlayerGAContext gaContext = PlayerGAContext.voicepod_card,
    required BuildContext? context,
    int? startIndex,
    bool autoplayQueue = true,
  }) async {
    try {
      this.autoplayQueue = autoplayQueue;
      _isLoading = true;
      _hasActivePod.value = true;
      this.mediaItem.add(null);
      _playError = null;
      _podMetricsRecorder?.recordStreamTime(
          await _audioPlayer.getCurrentPosition(), speed);
      await _audioPlayer.stop();
      // debugPrintSynchronously(
      //     "#DEBUGGING_PLAYING_STREAM setting to true in init ${DateTime.now()}");
      _playingValueStreamCtrl.add(true);
      _playLoadingNotifier.value = true;
      _podPlayerSourceNotifier.value = await podSourceFuture();
      resetLoadOnScroll();

      //Set global analytics params
      if (context != null) {
        final source = this.source!;
        _podPlayingSourceScreen = ModalRoute.of(context)?.settings.name;
        arreAnalytics.setGlobalParams({
          EventAttribute.POD_PLAYING_SOURCE_SCREEN: _podPlayingSourceScreen,
          if (source is ScrollablePodPlayerSource) ...{
            EventAttribute.POD_PLAYING_SOURCE_ID:
                (source as ScrollablePodPlayerSource).podSourceId,
            EventAttribute.POD_PLAYING_SOURCE_ENTITY:
                (source as ScrollablePodPlayerSource).podSourceEntity.name,
          }
        });
      }
      final initialItem = await _initQueue2(startIndex);
      // var (firstItem, index) = await _getInitialItem(startIndex);

      await _audioPlayer.setReleaseMode(ReleaseMode.stop);
      _listenToPlayerEvents();
      // _initQueue(firstItem);
      playMediaItem(initialItem);
    } catch (err, st) {
      Utils.reportError(err, st, reason: "PodInitFailed");
      this.mediaItem.addError(PodInitException(
            message: err is ArreException
                ? err.message
                : "Some trouble playing voicepod!",
            podSourceFuture: podSourceFuture,
            startIndex: startIndex,
          ));
      await pause(PlayerGAContext.ignore);
      await _audioPlayer.release();
      _updatePlaybackState();
    } finally {
      _isLoading = false;
      _playLoadingNotifier.value = false;
      arreAnalytics.logEvent(
        GAEvent.POD_PLAY,
        parameters: {
          EventAttribute.GA_CONTEXT: gaContext.name,
          EventAttribute.POD_ITEM_ID: mediaItem.valueOrNull?.entityId,
        },
      );
    }
  }

  @override
  Future<void> playMediaItem(MediaItem item) async {
    if (!_hasActivePod.value) return;
    try {
      ArreLogs.log("Play ${item.title} $currentIndex", name: _LOG);
      _playError = null;
      mediaItem.add(item);
      _playLoadingNotifier.value = true;
      _podMetricsRecorder?.recordStreamTime(
          await _audioPlayer.getCurrentPosition(), speed);
      // print("DEBUGGING ZERO POSITION ${DateTime.now()} stop in _play");
      await _audioPlayer.stop();
      // await _audioPlayer.stop();
      final signedUrl =
          await ApiService.instance.getMediaSignedUrl(item.mediaId);
      await _audioPlayer.setSource(UrlSource(signedUrl));
      _podMetricsRecorder = PlayMetricsRecorder(
        entityId: item.entityId,
        mediaItem: item,
        url: signedUrl,
        playingIndex: currentIndex,
        screenName: _podPlayingSourceScreen,
        playListUniqueUrl: source is ScrollablePodPlayerSource
            ? (source as ScrollablePodPlayerSource).podSourceId
            : null,
      );
      if (isPlaying) await play(PlayerGAContext.ignore);
      if (item.duration == null || item.duration == Duration.zero) {
        _audioPlayer.getDuration().then((duration) {
          updateMediaItem(item.copyWith(duration: duration));
        }).catchError((err) {
          /*ignore*/
        });
      }
    } catch (err) {
      _playError = err;
      _playingValueStreamCtrl.addError(err);
      pause();
      rethrow;
    } finally {
      _playLoadingNotifier.value = false;
    }
  }

  @override
  Future<void> play([
    PlayerGAContext? gaContext = PlayerGAContext.system_notification,
  ]) async {
    if (!_hasActivePod.value || _audioPlayer.source == null) {
      final error = _initError;
      if (error is PodInitException) {
        return PodPlayerV3.instance.init(
          podSourceFuture: error.podSourceFuture,
          gaContext: gaContext ?? PlayerGAContext.ignore,
          startIndex: error.startIndex,
          context: null,
        );
      }
      return;
    }
    MediaSoundManager.instance.unMuteThisType(this);
    if (gaContext != PlayerGAContext.ignore) {
      arreAnalytics.logEvent(
        GAEvent.POD_PLAY,
        parameters: {
          EventAttribute.GA_CONTEXT: gaContext?.name,
          EventAttribute.POD_ITEM_ID: mediaItem.valueOrNull?.entityId,
        },
      );
    }
    _playingValueStreamCtrl.add(true);
    if (_hasPlayError) {
      await playMediaItem(mediaItem.value!);
    }
    await _audioPlayer.resume();
    _syncPlayerState();
  }

  @override
  Future<void> pause([
    PlayerGAContext? gaContext = PlayerGAContext.system_notification,
  ]) async {
    if (gaContext != PlayerGAContext.ignore) {
      arreAnalytics.logEvent(
        GAEvent.POD_PAUSE,
        parameters: {
          EventAttribute.GA_CONTEXT: gaContext?.name,
          EventAttribute.POD_ITEM_ID: mediaItem.valueOrNull?.entityId,
        },
      );
    }
    // debugPrintSynchronously(
    //     "#DEBUGGING_PLAYING_STREAM setting to false in pause ${DateTime.now()}");
    _playingValueStreamCtrl.add(false);
    await _audioPlayer.pause();
    _syncPlayerState();
  }

  @override
  Future<void> switchSpeed() async {
    await super.switchSpeed();
    arreAnalytics.logEvent(
      GAEvent.POD_SPEED,
      parameters: {EventAttribute.POD_SPEED: speed},
    );
  }

  @override
  Future<void> updateMediaItem(MediaItem mediaItem) {
    if (mediaItem == this.mediaItem.value) {
      this.mediaItem.add(mediaItem);
    }
    return super.updateMediaItem(mediaItem);
  }

  @override
  Future<void> skipToPrevious([
    PlayerGAContext? gaContext = PlayerGAContext.system_notification,
  ]) async {
    final curPosition = await _audioPlayer.getCurrentPosition();
    if (gaContext != PlayerGAContext.ignore) {
      arreAnalytics.logEvent(
        GAEvent.POD_PLAY_PREVIOUS,
        parameters: {
          EventAttribute.GA_CONTEXT: gaContext?.name,
          EventAttribute.PLAYED_DURATION_IN_SEC: curPosition?.inSeconds,
          EventAttribute.POD_ITEM_ID: mediaItem.valueOrNull?.entityId,
        },
      );
    }
    if (curPosition != null && curPosition >= const Duration(seconds: 5)) {
      await _audioPlayer.seek(Duration.zero);
      _updatePlaybackState();
      return;
    }
    return super.skipToPrevious();
  }

  @override
  Future<void> skipToNext([
    PlayerGAContext? gaContext = PlayerGAContext.system_notification,
    Duration? playedDuration,
  ]) async {
    // print("DEBUGGING ZERO POSITION ${DateTime.now()} skipToNext ");
    if (gaContext != PlayerGAContext.ignore) {
      arreAnalytics.logEvent(
        GAEvent.POD_PLAY_NEXT,
        parameters: {
          EventAttribute.GA_CONTEXT: gaContext?.name,
          EventAttribute.PLAYED_DURATION_IN_SEC: playedDuration?.inSeconds ??
              (await _audioPlayer.getCurrentPosition())?.inSeconds,
          EventAttribute.POD_ITEM_ID: mediaItem.valueOrNull?.entityId,
        },
      );
    }
    if (currentIndex >= (queue.value.length - 1)) {
      await _nextItemsDetailsCompleter?.future;
    }
    return super.skipToNext();
  }

  @override
  Future<void> skipToQueueItem(int index) async {
    // print("DEBUGGING ZERO POSITION ${DateTime.now()} skipToQueueItem $index");

    ArreLogs.log("skipToQueueItem $index", name: _LOG);
    if (index >= 0 && index < queue.value.length) {
      await playMediaItem(queue.value[index]);
      play(PlayerGAContext.skip_to_next_or_prev);
    } else {
      pause();
    }
  }

  @override
  Future<void> stop() async {
    _hasActivePod.value = false;
    _podMetricsRecorder?.recordStreamTime(
        await _audioPlayer.getCurrentPosition(), speed);
    await pause(PlayerGAContext.ignore);
    await _audioPlayer.release();
    _playingValueStreamCtrl.add(false);
    mediaItem.add(null);
    queue.add([]);
    _podPlayerSourceNotifier.value = null;
    _nextItemsCompleter?.complete(null);
    _nextItemsDetailsCompleter?.complete([]);
    _completeSub?.cancel();
    _playerStateSub?.cancel();
    _mediaItemSub?.cancel();
    _queueSub?.cancel();
    arreAnalytics.setGlobalParams({
      EventAttribute.POD_PLAYING_SOURCE_SCREEN: null,
      EventAttribute.POD_PLAYING_SOURCE_ID: null,
    });
    // debugPrintSynchronously(
    //     "#DEBUGGING_PLAYING_STREAM PodPlayerV3.stop ${playbackState.valueOrNull}");
    _updatePlaybackState();
  }

  @override
  Future<void> onTaskRemoved() {
    return stop();
  }

  @override
  Future<void> onNotificationDeleted() async {
    await pause(PlayerGAContext.ignore);
    return super.onNotificationDeleted();
  }

  Future<void> _updatePlaybackState() async {
    AudioProcessingState processingState;
    bool isPlaying = this.isPlaying;
    final position = await _audioPlayer
        .getCurrentPosition()
        .catchError((err) => playbackState.value.updatePosition);
    if (mediaItem.valueOrNull != null) {
      if (mediaItem.valueOrNull == queue.valueOrNull?.lastOrNull &&
          _audioPlayer.state == PlayerState.completed) {
        processingState = AudioProcessingState.completed;
      } else if (_audioPlayer.state == PlayerState.stopped) {
        processingState = AudioProcessingState.buffering;
      } else {
        processingState = AudioProcessingState.ready;
      }
    } else {
      processingState = AudioProcessingState.idle;
      isPlaying = false;
    }

    playbackState.add(
      playbackState.value.copyWith(
        controls: [
          MediaControl.skipToPrevious,
          if (isPlaying) MediaControl.pause else MediaControl.play,
          MediaControl.skipToNext,
          MediaControl.stop,
        ],
        systemActions: const {
          MediaAction.setSpeed,
        },
        androidCompactActionIndices: const [0, 1, 2],
        processingState: processingState,
        repeatMode: AudioServiceRepeatMode.all,
        shuffleMode: AudioServiceShuffleMode.none,
        playing: isPlaying,
        speed: _audioPlayer.playbackRate,
        queueIndex: currentIndex,
        updatePosition: position ?? Duration.zero,
        errorCode: null,
        errorMessage: null,
      ),
    );
  }

  Future<MediaItem> _initQueue2(int? playingIndex) async {
    final source = this.source;
    int curQueueIndex;
    switch (source) {
      case UserBioPodSource():
        queue.value = [
          MediaItem(
            id: _uuid.v4(),
            title: "Voice bio of @${source.username}",
            displayTitle: "Voice bio of @${source.username}",
            artist: source.username,
            extras: MediaItemExtras(
              mediaId: source.audioMediaId,
              userId: source.userId,
              entityId: source.userId,
              profilePictureMediaId: null,
            ).toMap(),
          )
        ];
        curQueueIndex = 0;
        break;
      case CreatorFlowSamplePod():
        queue.value = [
          MediaItem(
            id: _uuid.v4(),
            title: source.post.title,
            displayTitle: source.post.title,
            artist: source.post.user?.username,
            duration: Duration(seconds: source.post.duration),
            extras: MediaItemExtras(
              mediaId: source.post.audioMediaId,
              userId: source.post.userId,
              entityId: source.post.postId,
              profilePictureMediaId: source.post.user?.profilePictureMediaId,
            ).toMap(),
          )
        ];
        curQueueIndex = 0;
        break;
      case CommunityBioPodSource():
        queue.value = [
          MediaItem(
            id: _uuid.v4(),
            title: "Voice bio of @${source.name}",
            displayTitle: "Voice bio of @${source.name}",
            artist: source.name,
            extras: MediaItemExtras(
              mediaId: source.audioMediaId,
              userId: null,
              entityId: source.communityId,
              profilePictureMediaId: source.profilePictureMediaId,
            ).toMap(),
          )
        ];
        curQueueIndex = 0;
        break;
      case PodPlaylistWithPostIDs():
        await source.initFuture;
        if (playingIndex != null) {
          final listOfPodIds = source.listOfPodIds.sublist(0, playingIndex + 1);
          final podsWithDetails = await Future.wait(listOfPodIds.map((e) async {
            try {
              return await _getMediaItem(e);
            } catch (err) {
              return null;
            }
          }));
          queue.value = podsWithDetails.whereType<MediaItem>().toList();
          curQueueIndex = queue.value.length - 1;
          _indexOffset = listOfPodIds.length;
        } else {
          final listOfPodIds = source.listOfPodIds;
          MediaItem? mediaItem;
          int i = 0;
          do {
            try {
              mediaItem = await _getMediaItem(listOfPodIds[i]);
            } catch (err) {
              //Ignore
            }
            i++;
          } while (mediaItem == null && i < listOfPodIds.length);
          if (mediaItem == null) {
            throw ArreException(
              "Oh no! This playlist is currently empty",
              code: AExceptionKey.NO_PODS_IN_PLAYLIST,
            );
          }

          queue.value = [mediaItem];
          curQueueIndex = queue.value.length - 1;
          _indexOffset = i;
        }
        break;
      case PodPlaylistWithPostDetails():
        await source.initFuture;
        queue.value = source.listOfPods
            .map(
              (e) => MediaItem(
                id: _uuid.v4(),
                title: e.title,
                displayTitle: e.title,
                artist: e.user?.username,
                duration: Duration(seconds: e.duration),
                extras: MediaItemExtras(
                  mediaId: e.audioMediaId,
                  userId: e.userId,
                  entityId: e.postId,
                  profilePictureMediaId: e.user?.profilePictureMediaId,
                ).toMap(),
              ),
            )
            .toList();
        if (queue.value.isEmpty) {
          throw ArreException(
            "Oh no! This playlist is currently empty",
            code: AExceptionKey.NO_PODS_IN_PLAYLIST,
          );
        }
        curQueueIndex = playingIndex ?? 0;
        break;
      case null:
        throw ArreException("No Source found");
    }
    return queue.value[curQueueIndex];
  }

  Future<MediaItem> _getMediaItem(String postId) async {
    final postData = await _ref.read(postDataProvider).fetchData(postId);
    return MediaItem(
      id: _uuid.v4(),
      title: postData!.title,
      displayTitle: postData.title,
      displaySubtitle: postData.user?.username,
      artist: postData.user?.username,
      duration: Duration(seconds: postData.duration),
      extras: MediaItemExtras(
        mediaId: postData.audioMediaId,
        userId: postData.userId,
        entityId: postData.postId,
        profilePictureMediaId: postData.user?.profilePictureMediaId,
      ).toMap(),
    );
  }

  Future<void> _getNextNItemsWithPostIDs(PodPlaylistWithPostIDs source) async {
    try {
      final curIndex = _indexOffset!;
      var nextPodIdsFunction = () => source.listOfPodIds.getRange(
            curIndex,
            math.min(source.listOfPodIds.length, curIndex + _kNextNItems),
          );

      var nextPodIds = nextPodIdsFunction();
      if (nextPodIds.isEmpty) {
        await _getNextNItems();
        nextPodIds = nextPodIdsFunction();
      }

      _indexOffset = _indexOffset! + nextPodIds.length;

      if (nextPodIds.isEmpty) {
        throw ArreIgnoreException("You've reached the end of playlist");
      }

      List<MediaItem> nextMediaItems = [];
      nextMediaItems = await Future.wait(
          nextPodIds.map((e) => _getMediaItem(e)),
          eagerError: false, cleanUp: (item) {
        nextMediaItems.add(item);
      }).catchError((err) {
        return nextMediaItems;
      });
      await addQueueItems(nextMediaItems);
      if (queue.value.sublist(currentIndex).length < _kNextNItems) {
        _getNextNItems();
      }
      _nextItemsDetailsCompleter?.complete(nextMediaItems);
    } catch (err) {
      _nextItemsDetailsCompleter!.completeError(err);
    } finally {
      _nextItemsDetailsCompleter = null;
    }
  }

  Future<void> _getNextNItems() async {
    final source = this.source;
    if (source is! PodPlaylistWithPostIDs) return;
    if (_nextItemsCompleter != null && !_nextItemsCompleter!.isCompleted) {
      return _nextItemsCompleter!.future;
    }
    _nextItemsCompleter = Completer();
    () async {
      try {
        await source.getNextNPodIds();
        _nextItemsCompleter!.complete();
      } catch (err) {
        _nextItemsCompleter!.completeError(err);
      } finally {
        _nextItemsCompleter = null;
      }
    }();
    return _nextItemsCompleter?.future;
  }

  Future<void> _getNextNItemsWithPostDetails(
      PodPlaylistWithPostDetails source) async {
    try {
      final nextPosts = await source.getNextNPodIds();
      final nextMediaItems = nextPosts
          .map((post) => MediaItem(
                id: _uuid.v4(),
                title: post.title,
                displayTitle: post.title,
                artist: post.user?.username,
                duration: Duration(seconds: post.duration),
                extras: MediaItemExtras(
                  mediaId: post.audioMediaId,
                  userId: post.userId,
                  entityId: post.postId,
                  profilePictureMediaId: post.user?.profilePictureMediaId,
                ).toMap(),
              ))
          .toList();
      await addQueueItems(nextMediaItems);
      if (nextMediaItems.length < _kNextNItems) _getNextNItems();
      _nextItemsDetailsCompleter?.complete(nextMediaItems);
    } catch (err) {
      _nextItemsDetailsCompleter!.completeError(err);
    } finally {
      _nextItemsDetailsCompleter = null;
    }
  }

  Future<List<MediaItem>> loadNextItems() async {
    final source = this.source;
    if (source is! ScrollablePodPlayerSource) return [];
    if (_nextItemsDetailsCompleter != null &&
        !_nextItemsDetailsCompleter!.isCompleted) {
      return _nextItemsDetailsCompleter!.future;
    }
    _nextItemsDetailsCompleter = Completer();
    switch (source as ScrollablePodPlayerSource) {
      case PodPlaylistWithPostIDs():
        _getNextNItemsWithPostIDs(source as PodPlaylistWithPostIDs);
      case PodPlaylistWithPostDetails():
        _getNextNItemsWithPostDetails(source as PodPlaylistWithPostDetails);
    }
    return _nextItemsDetailsCompleter!.future;
  }

  void _onPositionChange(Duration position) {
    if (position > const Duration(seconds: 3) && mediaItem.value != null) {
      if (_podMetricsRecorder ==
          PlayMetricsRecorder(
              entityId: mediaItem.value!.entityId,
              mediaItem: mediaItem.value!,
              url: (_audioPlayer.source as UrlSource).url)) {
        _podMetricsRecorder?.markAsPlayed(_ref);
        _positionSub?.cancel();
        _positionSub = null;
      }
    }
  }

  void _syncPlayerState() {
    if (_audioPlayer.state == PlayerState.playing && !isPlaying) {
      ArreLogs.log("Player state mismatch",
          error: "Error in our Player state handling", name: _LOG);
      _playingValueStreamCtrl.add(true);
    } else if (_audioPlayer.state != PlayerState.playing && isPlaying) {
      ArreLogs.log("Player state mismatch",
          error: "Error in our Player state handling", name: _LOG);
      _playingValueStreamCtrl.add(false);
    }
  }

  @override
  void mute() {
    pause(PlayerGAContext.mute);
  }

  @override
  void unMute() {}
}

class PlayerValue {
  final Duration position;

  // final Duration buffered;
  final Duration duration;

  const PlayerValue({
    required this.position,
    // required this.buffered,
    required this.duration,
  });

  ///Progress [0-1]
  double get playedValue => duration != Duration.zero
      ? position.inMicroseconds / duration.inMicroseconds
      : 0.0;

  // double get bufferedValue => duration != Duration.zero
  //     ? buffered.inMicroseconds / duration.inMicroseconds
  //     : 0.0;

  static const zero = PlayerValue(
    position: Duration.zero,
    duration: Duration.zero,
    // buffered: Duration.zero,
  );

  @override
  String toString() {
    return "PlayerValue(${position.inSeconds}/${duration.inSeconds})";
  }
}

class MediaItemExtras {
  final String mediaId;
  final String? userId;
  final String? profilePictureMediaId;

  ///It can be:
  /// - `postId` when the Media is Voicepod
  /// - `userId` when the Media is VoiceBio
  final String entityId;

  MediaItemExtras({
    required this.mediaId,
    required this.userId,
    required this.entityId,
    required this.profilePictureMediaId,
  });

  Map<String, dynamic> toMap() {
    return {
      "mediaId": mediaId,
      "userId": userId,
      "entityId": entityId,
      "profilePictureMediaId": profilePictureMediaId,
    };
  }

  static MediaItemExtras fromMap(Map<String, dynamic> extras) {
    return MediaItemExtras(
      mediaId: extras["mediaId"],
      userId: extras["userId"],
      entityId: extras["entityId"],
      profilePictureMediaId: extras["profilePictureMediaId"],
    );
  }
}

extension MediaItemExtension on MediaItem {
  String get entityId => extras!["entityId"];

  String get mediaId => extras!["mediaId"];

  String? get userId => extras!["userId"];

  String? get profilePictureMediaId => extras!["profilePictureMediaId"];

  String? get userName => artist;
}

class PlayMetricsRecorder with EquatableMixin {
  final String entityId, url;
  final String? playListUniqueUrl, screenName;
  final MediaItem mediaItem;
  final int? playingIndex;
  final _markAsPlayedCompleter = Completer.sync();
  final _recordStreamTimeCompleter = Completer.sync();

  PlayMetricsRecorder({
    required this.entityId,
    required this.mediaItem,
    required this.url,
    this.playingIndex,
    this.playListUniqueUrl,
    this.screenName,
  });

  void markAsPlayed(Ref ref) {
    if (_markAsPlayedCompleter.isCompleted) return;
    _markAsPlayedCompleter.complete();
    VoicepodAction.markPodAsPlayed(ref, postId: entityId);
  }

  void recordStreamTime(Duration? position, double speed) {
    if (_recordStreamTimeCompleter.isCompleted) return;
    if (position != null && position > const Duration(seconds: 3)) {
      _recordStreamTimeCompleter.complete();
      VoicepodAction.recordStreamTime(
        postId: entityId,
        playedDuration: position.inSeconds,
        playListUniqueUrl: playListUniqueUrl,
        screenName: screenName,
        playingIndex: playingIndex,
      );
    }
    arreAnalytics.logEvent(
      GAEvent.POD_PLAY_END,
      parameters: {
        EventAttribute.POD_ITEM_ID: entityId,
        EventAttribute.PLAYED_DURATION_IN_SEC: position?.inSeconds,
        if (position != null && mediaItem.duration != null)
          EventAttribute.PLAYED_PERCENT: position.inMilliseconds *
              100 ~/
              mediaItem.duration!.inMilliseconds
        else
          EventAttribute.PLAYED_PERCENT: -1,
        EventAttribute.POD_SPEED: speed,
      },
    );
  }

  @override
  List<Object?> get props => [entityId, mediaItem.id, url];
}

class PodSourceValueNotifier extends ValueNotifier<PodPlayerSource?> {
  KeepAliveLink? _keepAliveLink;

  PodSourceValueNotifier() : super(null);

  @override
  set value(PodPlayerSource? newValue) {
    if (value != newValue) {
      _keepAliveLink?.close();
    }
    if (newValue is AutoDisposableProvider) {
      _keepAliveLink = (newValue as AutoDisposableProvider).keepAlive();
    }
    super.value = newValue;
  }
}
