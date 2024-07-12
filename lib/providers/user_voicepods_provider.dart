import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../graphql/api_service.dart';
import '../utils/utils.dart';
import 'audio_player/pod_player_v3.dart';
import 'provider_utils.dart';

// const _LOG = "USER_VOICEPODS_PROVIDER";

final userVoicepodsProvider = ChangeNotifierProvider.autoDispose
    .family<UserVoicepodsProvider, String>((ref, userId) {
  if (userId == arrePref.userId) {
    ref.keepAlive();
  }
  return UserVoicepodsProvider(ref, userId);
});

class UserVoicepodsProvider
    with
        ChangeNotifier,
        OnScroll<String>,
        LoadOnScrollNotification,
        AutoDisposableProvider
    implements PodPlaylistWithPostIDs {
  final AutoDisposeRef _ref;
  final String userId;
  List<String>? _feedIds;
  String? playlistTitle;
  GUserVoicepodsData_response_data_lastEvaluatedKey? _lastEvaluatedKey;

  @override
  List<String> get listOfPodIds => _feedIds!;

  @override
  PodSourceEntity get podSourceEntity => PodSourceEntity.user;

  @override
  Future<void>? get initFuture => null;

  @override
  String get podSourceId => userId;

  bool _isLoading = true;
  dynamic _error;

  UserVoicepodsProvider(this._ref, this.userId) {
    init();
    // attachLoadOnScroll();
  }

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _feedIds != null;

  List<String>? get data => _feedIds;

  int get totalItems => data?.length ?? 0;

  @override
  KeepAliveLink keepAlive() => _ref.keepAlive();

  Future<void> init() async {
    try {
      _isLoading = true;
      resetLoadOnScroll();
      notifyListeners();
      final response = await ApiService.instance.getUserVoicepods(userId);
      _feedIds = response.voicepods.toList();
      _lastEvaluatedKey = response.lastEvaluatedKey;
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
    _ref.read(userShortDataProvider).fetchData(userId).then((value) =>
        playlistTitle =
            value != null ? "@${value.username}'s voicepods" : null);
  }

  @override
  Future<List<String>> loadNextItems() async {
    if (_lastEvaluatedKey == null) return [];
    final response = await ApiService.instance.getUserVoicepods(userId,
        lastEvaluatedKey: GlastEvaluatedKeyForVoicepodsBuilder()
          ..userId = _lastEvaluatedKey!.userId
          ..postId = _lastEvaluatedKey!.postId
          ..createdAt = _lastEvaluatedKey!.createdAt);
    _feedIds!.addAll(response.voicepods);
    _lastEvaluatedKey = response.lastEvaluatedKey;
    return response.voicepods.toList();
  }

  Future<void> refresh() => init();

  @override
  Future<List<String>> getNextNPodIds() {
    return onScroll();
  }
}
