import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuple/tuple.dart';

import '../../utils/utils.dart';

final userPostRelationsProvider =
    ChangeNotifierProvider((ref) => UserPostRelationDataProvider());

class UserPostRelationDataProvider with ChangeNotifier {
  Map<String, Tuple2<bool, bool>?> _data = {};

  bool hasData(String postId) => _data[postId] != null;

  bool isLoading(String postId) => _data.containsKey(postId);

  bool? hasLiked(String postId) => _data[postId]?.item2;

  bool? hasCommented(String postId) => _data[postId]?.item1;

  ///Use this to show some error state if all the fetch APIs are failed
  bool get isFetchingOrHasData => _data.isNotEmpty;

  // GUserPostRelationsData_response_data _getDefaultValue() {
  //   return GUserPostRelationsData_response_data(
  //     (b) => b
  //       ..bookmarkedPost = false
  //       ..commentInteracted = false
  //       ..isFollowingCreator = false
  //       ..postLikeByUser = false,
  //   );
  // }

  ///Call this in the initState of the Feed widget
  void fetchData(String postId) {
    if (_data.containsKey(postId)) return;
    _data[postId] = null;
    ApiService.instance.getUserPostRelations(postId).then((value) {
      _data[postId] = value;
    }).catchError((err, stack) {
      if (_data[postId] == null) {
        _data.remove(postId);
      }
      Utils.reportError(err, stack);
    }).whenComplete(notifyListeners);
  }

  Future<void> refresh(String postId) {
    return ApiService.instance.getUserPostRelations(postId).then((value) {
      _data[postId] = value;
    }).whenComplete(notifyListeners);
  }

  ///Returns latest value of [postLikedByUser] after API is successful.
  ///
  /// Returns null if API fails
  Future<bool?> applyLikeUnlike(String postId) async {
    final wasLiked = hasLiked(postId) ?? false;
    _data[postId] ??= Tuple2(false, false);
    Future<bool?> future;
    if (wasLiked) {
      _data[postId] = _data[postId]!.withItem2(false);
      future = ApiService.instance
          .toggleVoicepodLike(postId, false)
          .then<bool?>((value) => false)
          .catchError((err, stack) {
        refresh(postId);
        Utils.reportError(err, stack);
        return null;
      });
    } else {
      _data[postId] = _data[postId]!.withItem2(true);
      future = ApiService.instance
          .toggleVoicepodLike(postId, true)
          .then<bool?>((value) => true)
          .catchError((err, stack) {
        refresh(postId);
        Utils.reportError(err, stack);
        return null;
      });
    }
    notifyListeners();
    return future;
  }

  void markAsCommented(String postId) {
    _data[postId] ??= Tuple2(false, false);
    _data[postId] = _data[postId]!.withItem1(true);
    notifyListeners();
  }
}
