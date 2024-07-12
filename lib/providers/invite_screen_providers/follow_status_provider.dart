import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../graphql/api_service.dart';
import '../../utils/utils.dart';

final followStatusProvider = ChangeNotifierProvider((ref) {
  return FollowStatusProvider();
});

enum FollowStatus {
  wasFollowing,
  isFollowing,
  notFollowing;

  bool get following =>
      this == FollowStatus.wasFollowing || this == FollowStatus.isFollowing;
}

class FollowStatusProvider with ChangeNotifier {
  Map<String, FollowStatus> _data = {};

  bool? isFollowing(String userId) {
    return _data[userId]?.following;
  }

  FollowStatus? getStatus(String userId) {
    return _data[userId];
  }

  Future<void> followUser(String otherUserId) async {
    try {
      _data[otherUserId] = FollowStatus.isFollowing;
      notifyListeners();
      await ApiService.instance.followUser(otherUserId);
      Timer(Duration(milliseconds: 1500), () {
        if (_data[otherUserId] == FollowStatus.isFollowing) {
          _data[otherUserId] = FollowStatus.wasFollowing;
          notifyListeners();
        }
      });
    } catch (err, stack) {
      _data[otherUserId] = FollowStatus.notFollowing;
      notifyListeners();
      Utils.reportError(err, stack);
    }
  }

  Future<void> unFollowUser(String otherUserId) async {
    try {
      _data[otherUserId] = FollowStatus.notFollowing;
      notifyListeners();
      await ApiService.instance.unFollowUser(otherUserId);
    } catch (err, stack) {
      _data[otherUserId] = FollowStatus.isFollowing;
      notifyListeners();
      Utils.reportError(err, stack);
    }
  }

  Future<void> fetchData(String otherUserId, [bool refresh = false]) async {
    if (_data.containsKey(otherUserId) && !refresh) return;
    await ApiService.instance
        .getIsFollowingUser(otherUserId)
        .then((isFollowing) {
      _data[otherUserId] =
          isFollowing ? FollowStatus.wasFollowing : FollowStatus.notFollowing;
    }).catchError((err) {
      _data.remove(otherUserId);
    }).whenComplete(notifyListeners);
  }
}
