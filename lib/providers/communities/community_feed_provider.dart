import 'dart:async';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/community_pin.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final communityFeedProvider =
    ChangeNotifierProvider.family.autoDispose<CommunityFeedProvider, String>(
  (ref, communityId) {
    return CommunityFeedProvider(communityId);
  },
);

class CommunityFeedProvider
    with ChangeNotifier, OnScroll<Post>, LoadOnScrollNotification
    implements PodPlaylistWithPostDetails {
  String? title;
  Completer? _initCompleter;
  final String communityId;
  bool _isLoading = true;
  dynamic _error;
  List<CommunityPinItem>? _pinnedItems;
  List<Post>? _posts;

  List<Post>? get pinnedPosts => _pinnedItems?.whereType<Post>().toList();

  List<CommunityPinItem>? get pinnedItems => _pinnedItems;

  List<Post>? get posts => _posts;

  bool get isLoading => _isLoading;

  bool get error => _error;

  bool get hasData => _posts != null;

  CommunityFeedProvider(this.communityId) {
    init();
  }

  Future<void> init() async {
    if (_initCompleter != null) return _initCompleter!.future;
    _initCompleter = Completer();
    try {
      _isLoading = true;
      _pinnedItems = await ApiService.instance.getPinnedEntities(communityId);
      notifyListeners();
      _posts =
          await ApiService.instance.getCommunityPosts(communityId: communityId);
      _initCompleter!.complete();
    } catch (err, st) {
      Utils.reportError(err, st);
      _initCompleter!.completeError(err, st);
    } finally {
      _isLoading = false;
      _initCompleter = null;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  bool? isPinnedPost(String postId) => _pinnedItems
      ?.any((element) => element is Post && element.postId == postId);

  ///Returns the index of the post from [pinnedPosts]
  int getPinnedPostIndex(Post pinItem) {
    return pinnedPosts
            ?.indexWhere((element) => element.postId == pinItem.postId) ??
        -1;
  }

  Future<void> pinPost(Post post) async {
    await ApiService.instance
        .pinCommunityPod(communityId: communityId, podId: post.postId);
    _pinnedItems ??= [];
    pinnedItems!.removeWhere(
        (element) => element is Post && element.postId == post.postId);
    pinnedItems!.add(post);
    notifyListeners();
  }

  Future<void> unpinPost(Post post) async {
    await ApiService.instance
        .unpinCommunityPod(communityId: communityId, podId: post.postId);
    _pinnedItems ??= [];
    _pinnedItems!.removeWhere(
        (element) => element is Post && element.postId == post.postId);
    notifyListeners();
  }

  @override
  Future<List<Post>> loadNextItems() async {
    if (_posts?.isEmpty ?? true) return [];
    final next = await ApiService.instance.getCommunityPosts(
      communityId: communityId,
      lastItemCreatedAt: _posts!.last.createdAt,
    );
    _posts!.addAll(next);
    return next;
  }

  @override
  Future<List<Post>> getNextNPodIds() {
    return onScroll();
  }

  @override
  Future<void>? get initFuture => _initCompleter?.future;

  @override
  List<Post> get listOfPods => [...?pinnedPosts, ...?_posts];

  @override
  String? get playlistTitle => title;

  @override
  PodSourceEntity get podSourceEntity => PodSourceEntity.voiceclub_feed;

  @override
  String get podSourceId => communityId;
}
