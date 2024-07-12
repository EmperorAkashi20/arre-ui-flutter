import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../graphql/api_service.dart';
import '../utils/utils.dart';
import 'provider_utils.dart';

final voicepodLikedUsersProvider = ChangeNotifierProvider.autoDispose
    .family<VoicepodLikedUsersProvider, String>((ref, postId) {
  return VoicepodLikedUsersProvider(postId);
});

class VoicepodLikedUsersProvider
    with ChangeNotifier, OnScroll<String>, LoadOnScrollNotification {
  final String postId;
  List<String>? _likedUsers;
  GGetLikedUsersData_response_data_lastEvaluatedKey? _lastEvaluatedKey;

  bool _isLoading = true;
  dynamic _error;

  VoicepodLikedUsersProvider(this.postId) {
    init();
  }

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _likedUsers != null;

  List<String>? get data => _likedUsers;

  Future<void> init() async {
    try {
      _isLoading = true;
      notifyListeners();
      final response = await ApiService.instance.getLikedUsers(postId);
      _likedUsers = response.likedUsers.toList();
      _lastEvaluatedKey = response.lastEvaluatedKey;
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  @override
  Future<List<String>> loadNextItems() async {
    if (_lastEvaluatedKey == null) return [];
    final response = await ApiService.instance.getLikedUsers(postId,
        lastEvaluatedKey: GlastEvaluatedKeyForLikedUsersPaginatedBuilder()
          ..postId = _lastEvaluatedKey!.postId
          ..createdAt = _lastEvaluatedKey!.createdAt
          ..vpLikeId = _lastEvaluatedKey!.vpLikeId);
    _likedUsers!.addAll(response.likedUsers);
    _lastEvaluatedKey = response.lastEvaluatedKey;
    return response.likedUsers.toList();
  }

  Future<void> refresh() => init();
}
