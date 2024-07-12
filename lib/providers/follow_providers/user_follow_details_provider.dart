import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_user_graph_gql/arre_user_graph_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../graphql/api_service.dart';
import '../../utils/utils.dart';

final userFollowersProvider = ChangeNotifierProvider.autoDispose
    .family<UserFollowersProvider, String>((ref, userId) {
  return UserFollowersProvider(userId);
});

final userFollowingsProvider = ChangeNotifierProvider.autoDispose
    .family<UserFollowingsProvider, String>((ref, userId) {
  return UserFollowingsProvider(userId);
});

final userFollowCountsProvider = FutureProvider.autoDispose
    .family<GUserFollowCounts, String>((ref, userId) async {
  final followCount = await ApiService.instance.getUserFollowCounts(userId);
  return followCount;
});

class UserFollowingsProvider
    with
        ChangeNotifier,
        OnScroll<GUserFollowRelation>,
        LoadOnScrollNotificationV2 {
  final String userId;
  List<GUserFollowRelation>? _data;
  dynamic _error;
  bool _isLoading = true;

  UserFollowingsProvider(this.userId) {
    init();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<GUserFollowRelation>? get data => _data;

  dynamic get error => _error;

  Future<void> init() async {
    try {
      resetLoadOnScroll();
      _data = await ApiService.instance
          .getUserFollowings(userId: userId, after: "0");
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  @override
  Future<List<GUserFollowRelation>> loadNextItems() async {
    final nextFollowingData = await ApiService.instance.getUserFollowings(
      userId: userId,
      after: _data!.last.createdOn,
    );
    _data!.addAll(nextFollowingData);
    return nextFollowingData;
  }
}

class UserFollowersProvider
    with
        ChangeNotifier,
        OnScroll<GUserFollowRelation>,
        LoadOnScrollNotificationV2 {
  final String userId;
  List<GUserFollowRelation>? _data;
  dynamic _error;
  bool _isLoading = true;

  UserFollowersProvider(this.userId) {
    init();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<GUserFollowRelation>? get data => _data;

  dynamic get error => _error;

  Future<void> init() async {
    try {
      resetLoadOnScroll();
      _data = await ApiService.instance
          .getUserFollowers(userId: userId, after: "0");
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  @override
  Future<List<GUserFollowRelation>> loadNextItems() async {
    final nextFollowersData = await ApiService.instance.getUserFollowers(
      userId: userId,
      after: _data!.last.createdOn,
    );
    _data!.addAll(nextFollowersData);
    return nextFollowersData;
  }
}
