import 'dart:collection';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final blockedUsersProvider =
    ChangeNotifierProvider.autoDispose((ref) => BlockedUsersProvider());

final blockStatusProvider = FutureProvider.family.autoDispose<bool, String>(
  (ref, userId) async {
    final isBlocked = await ApiService.instance.getIsBlockedUser(userId);
    return isBlocked;
  },
);

class BlockedUsersProvider
    with
        ChangeNotifier,
        OnScroll<ArreUserWithExtra<String>>,
        LoadOnScrollNotificationV2 {
  HashSet<String> unblockingUserIds = HashSet.identity();
  List<ArreUserWithExtra<String>>? _data;
  dynamic _error;
  bool _isLoading = true;

  BlockedUsersProvider() {
    init();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<ArreUserWithExtra<String>>? get data => _data;

  dynamic get error => _error;

  Future<void> init() async {
    try {
      _data = await ApiService.instance.getBlockedUsers();
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  Future<void> unblock(String userId) async {
    try {
      unblockingUserIds.add(userId);
      notifyListeners();
      await ApiService.instance.unblockUser(userId);
      data?.removeWhere((element) => element.userId == userId);
      notifyListeners();
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    } finally {
      unblockingUserIds.remove(userId);
    }
  }

  @override
  Future<List<ArreUserWithExtra<String>>> loadNextItems() async {
    final nextFollowersData =
        await ApiService.instance.getBlockedUsers(data!.last.value);
    _data!.addAll(nextFollowersData);
    return nextFollowersData;
  }
}
