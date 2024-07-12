import 'dart:async';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/providers/push_notification_manager.dart';
import 'package:arre_frontend_flutter/screens/debugging_logs.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_user_feed_gql/arre_user_feed_gql.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homePageFeedProvider =
    FutureProvider.family<List<GHomepageSection>, String?>(
  (ref, moodId) {
    return ApiService.instance.getHomePageSections(moodId);
  },
);

final arrePlaylistDetailsProvider =
    FutureProvider.autoDispose.family<GHomePagePlaylist, String>(
  (ref, playlistId) {
    return ApiService.instance.getArrePlaylistDetails(playlistId);
  },
);

final homePageScrollController = Provider<ScrollController>((ref) {
  final controller = ScrollController();
  ref.onDispose(() {
    controller.dispose();
  });
  return controller;
});

// final userMoodProvider =
//     ChangeNotifierProvider((ref) => ValueNotifier<Mood?>(null));
//
final arrePlaylistPostsProvider =
    ChangeNotifierProvider.family<ArrePlaylistPostsProvider, String>(
        (ref, sectionUniqueLink) =>
            ArrePlaylistPostsProvider(sectionUniqueLink));

class ArrePlaylistPostsProvider
    with ChangeNotifier, OnScroll<Post>, LoadOnScrollNotification
    implements PodPlaylistWithPostDetails {
  Completer<void>? _initCompleter;
  String? playlistTitle;
  final String playlistUniqueLink;
  List<Post>? _data;
  int _pageNo = 1;
  bool _isLoading = true;
  dynamic _error;

  ArrePlaylistPostsProvider(this.playlistUniqueLink) {
    init();
    // attachLoadOnScroll();
  }

  @override
  List<Post> get listOfPods => _data!;

  @override
  PodSourceEntity get podSourceEntity => PodSourceEntity.arre_curated_playlist;

  @override
  Future<void>? get initFuture => _initCompleter?.future;

  @override
  String get podSourceId => playlistUniqueLink;

  @override
  int get loadingOffset => 600;

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _data != null;

  List<Post>? get data => _data;

  int get totalItems => data?.length ?? 0;

  void reportDuplicatePosts() {
    if (AppConfig.isDevToolsEnabled) {
      if (listOfPods.length != listOfPods.map((e) => e.postId).toSet().length) {
        debuggingLogs
            .add("Duplicate posts found in playlist $playlistUniqueLink");
        PushNotificationManager.instance.showDebugNotification(
          title: "Duplicate Posts in a Playlist",
          body: "Bug alert!",
        );
        Set<String> uniques = {};
        for (var post in listOfPods) {
          if (uniques.contains(post.postId)) {
            debuggingLogs
                .add("DUPLICATE POST ${post.postId} in $playlistUniqueLink");
          }
          uniques.add(post.postId);
        }
      }
    }
  }

  Future<void> init() async {
    if (_initCompleter != null) return _initCompleter!.future;
    _initCompleter = Completer();
    try {
      _pageNo = 1;
      _isLoading = true;
      notifyListeners();
      _data = await ApiService.instance
          .getArrePlaylistVoicepods(sectionUniqueLink: playlistUniqueLink);
      reportDuplicatePosts();
      _initCompleter!.complete();
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
      _initCompleter!.completeError(err, st);
    } finally {
      _isLoading = false;
      _initCompleter = null;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  @override
  Future<List<Post>> loadNextItems() async {
    final nextFeedIds = await ApiService.instance.getArrePlaylistVoicepods(
      sectionUniqueLink: playlistUniqueLink,
      lastPageEngagementScore: _data?.lastOrNull?.engagementScore,
    );
    _data!.addAll(nextFeedIds);
    reportDuplicatePosts();
    _pageNo = _pageNo + 1;
    return nextFeedIds;
  }

  @override
  Future<List<Post>> getNextNPodIds() {
    return onScroll();
  }
}
