import 'dart:async';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/post_data_provider.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final voicepodPlaylistProvider = ChangeNotifierProvider.family
    .autoDispose<VoicepodPlaylistProvider, String>((ref, postId) {
  return VoicepodPlaylistProvider(ref: ref, postId: postId);
});

///Loads Voicepod details along with similar voicepods & pods from the same user
class VoicepodPlaylistProvider
    with ChangeNotifier, OnScroll<Post>, LoadOnScrollNotification
    implements PodPlaylistWithPostDetails {
  final Ref ref;
  final String postId;
  Completer<Post>? _initCompleter;
  List<Post>? similarPosts, posts4mSameUser;

  bool get isLoading => _initCompleter?.isCompleted == false;

  Post? get data => ref.read(postDataProvider).getData(postId);

  VoicepodPlaylistProvider({
    required this.ref,
    required this.postId,
  }) {
    init();
  }

  Future<Post> init() async {
    if (_initCompleter?.isCompleted == true) return _initCompleter!.future;
    _initCompleter = Completer<Post>();
    () async {
      try {
        onScroll();
        final data = await ref.read(postDataProvider).fetchData(postId);
        if (data == null) {
          throw ArreException.key(AExceptionKey.VOICEPOD_NOT_FOUND);
        }
        _initCompleter?.complete(data);
      } catch (err, st) {
        _initCompleter?.completeError(err, st);
        _initCompleter = null;
      } finally {
        notifyListeners();
      }
    }();
    return _initCompleter!.future;
  }

  @override
  Future<List<Post>> loadNextItems() async {
    ///Load similar voicepods to [postId]
    List<Post>? similarPosts;
    if (this.similarPosts == null) {
      final similarPosts = await ApiService.instance
          .getMoreLikeThisList(postId)
          .catchError((err) => <Post>[]);
      this.similarPosts = similarPosts;
      notifyListeners();
    }
    await _initCompleter?.future;

    ///Load More Voicepods from the creator of [postId]
    final _lastEvaluatedKey = posts4mSameUser?.lastOrNull;
    final nextNPods = await ApiService.instance.getMoreFromUserList(
      data!.userId,
      lastPostCreatedAt: _lastEvaluatedKey?.createdAt,
    );
    nextNPods.removeWhere((pod) => pod.postId == postId);
    posts4mSameUser ??= [];
    posts4mSameUser!.addAll(nextNPods);
    return [...?similarPosts, ...nextNPods];
  }

  @override
  Future<List<Post>> getNextNPodIds() async {
    return onScroll();
  }

  @override
  Future<void>? get initFuture => _initCompleter?.future;

  @override
  List<Post> get listOfPods => [
        if (data != null) data!,
        ...?similarPosts,
        ...?posts4mSameUser,
      ];

  @override
  PodSourceEntity get podSourceEntity => PodSourceEntity.voicepod_details;

  @override
  String get podSourceId => postId;

  @override
  String? get playlistTitle => null;
}
