import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/utils.dart';

final userProfileProvider = ChangeNotifierProvider.family
    .autoDispose<UserProfileProvider, String>((ref, userId) {
  if (userId == arrePref.userId) {
    ref.keepAlive();
  }
  return UserProfileProvider(userId);
});

class UserProfileProvider with ChangeNotifier {
  final String userId;
  bool _isLoading = true;

  GUserDetails? _data;
  dynamic _error;

  UserProfileProvider(this.userId) {
    init();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  bool get isCurrentUser => userId == arrePref.userId;

  GUserDetails? get data => _data;

  dynamic get error => _error;

  // bool get canShowFinishProfileNudge =>
  //     data?.isIncompleteProfile == true &&
  //     isCurrentUser &&
  //     arrePref.getBool(PrefKey.HAS_DISMISSED_PROFILE_COMPLETE_NUDGE) != true;

  Future<void> init() async {
    try {
      _data = await ApiService.instance.getUserDetails(userId);
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Future<void> dismissProfileCompletionNudge() async {
  //   try {
  //     await arrePref.setBool(
  //         PrefKey.HAS_DISMISSED_PROFILE_COMPLETE_NUDGE, true);
  //     notifyListeners();
  //     await ApiService.instance.disableSocialLadder();
  //   } catch (err, st) {
  //     Utils.reportError(err, st);
  //   }
  // }

  Future<void> refresh() {
    _isLoading = true;
    notifyListeners();
    return init();
  }

  @override
  void dispose() {
    // tabController.dispose(); //Automatically disposed by TabBarView or TabBar
    super.dispose();
  }
}
