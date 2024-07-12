import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/graphql/graphql_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';

final postDataProvider = ChangeNotifierProvider((ref) => PostDataProvider());

class PostDataProvider with ChangeNotifier {
  Map<String, Post?> _data = {};
  Map<String, bool?> _deletedPosts = {};
  Map<String, dynamic> _errors = {};
  Map<String, Future<Post?>> _fetchingPosts = {};

  bool hasData(String postId) => _data[postId] != null;

  Post? getData(String postId) => _data[postId];

  dynamic error(String postId) => _errors[postId];

  bool isLoading(String postId) => _fetchingPosts.containsKey(postId);

  ///Use this to show some error state if all the fetch APIs are failed
  bool get isFetchingOrHasData => _data.isNotEmpty;

  void setData(Post postDetails) {
    if (_deletedPosts[postDetails.postId] == true) {
      return;
    }
    if (!hasData(postDetails.postId) ||
        (hasData(postDetails.postId) &&
            postDetails.fetchedAt
                .isAfter(_data[postDetails.postId]!.fetchedAt))) {
      _data[postDetails.postId] = postDetails;
    }
  }

  ///Call this in the initState of the Feed widget
  Future<Post?> fetchData(
    String postId, {
    bool notifyLoading = true,
    bool refresh = false,
  }) {
    if (hasData(postId) && !refresh) {
      return SynchronousFuture(getData(postId));
    } else if (_fetchingPosts.containsKey(postId)) {
      return _fetchingPosts[postId]!;
    } else if (!refresh &&
        _errors.containsKey(postId) &&
        _errors[postId] is ArreApiException &&
        (_errors[postId] as ArreApiException).statusCode == 404) {
      return SynchronousFuture(null);
    } else {
      var fetchingFuture =
          ApiService.instance.getPostDetails(postId).then<Post?>((value) {
        _data[postId] = value;
        _errors.remove(postId);
        return value;
      }).catchError((err, st) {
        _data.remove(postId);
        _errors[postId] = err;
        Utils.reportError(err, st);
        return null;
      }).whenComplete(() {
        _fetchingPosts.remove(postId);
        notifyListeners();
      });

      if (notifyLoading && _errors[postId] == null) {
        _fetchingPosts[postId] = fetchingFuture;
      }
      return fetchingFuture;
    }
  }

  void delete(String postId) {
    _data.remove(postId);
    _deletedPosts[postId] = true;
    notifyListeners();
  }

  //
  // Post copyPostDetailsWith(
  //   Post post, {
  //   int? likeCount,
  //   int? commentsCount,
  //   int? playCount,
  // }) {
  //   return post
  //     ..likeCount = likeCount ?? post.likeCount
  //     ..commentCount = commentsCount ?? post.commentCount
  //     ..playCount = playCount ?? post.playCount;
  // }

  ///value can be +1 or -1
  void addLikeCount(String postId, int value) {
    assert(value == 1 || value == -1);
    final post = _data[postId];
    if (post == null) return;
    _data[postId] = post.copyWith(likeCount: post.likeCount + value);
    notifyListeners();
  }

  void addCommentCount(String postId, int value) {
    assert(value == 1 || value == -1 || value == 0);
    final post = _data[postId];
    if (post == null) return;
    _data[postId] = post.copyWith(commentCount: post.commentCount + value);
    notifyListeners();
  }

  void addPlayedCount(String postId, int value) {
    assert(value == 1 || value == -1);
    final post = _data[postId];
    if (post == null) return;
    _data[postId] = post.copyWith(playCount: post.playCount + value);
    notifyListeners();
  }
}
