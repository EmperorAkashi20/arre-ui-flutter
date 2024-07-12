
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_referral_gql/arre_referral_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../graphql/api_service.dart';
import '../../utils/utils.dart';

final myInviteesDataProvider1 = ChangeNotifierProvider.autoDispose((ref) {
  return MyInviteesDataProvider1();
});

class MyInviteesDataProvider1
    with
        ChangeNotifier,
        OnScroll<GInvitedUsersData_response_data>,
        LoadOnScrollNotificationV2 {
  List<GInvitedUsersData_response_data> _invitedUsersList = [];
  String userId = arrePref.getString(PrefKey.USER_ID)!;
  bool _isLoading = true;
  dynamic _error;

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _invitedUsersList.length != 0;

  List<GInvitedUsersData_response_data>? get invitedUsersList =>
      _invitedUsersList;

  MyInviteesDataProvider1() {
    init();
  }

  Future<void> init() async {
    try {
      _isLoading = true;
      notifyListeners();
      _invitedUsersList = await ApiService.instance.getInvitedUsersList(userId);
    } catch (e, st) {
      _error = e;
      Utils.reportError(e, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  @override
  Future<List<GInvitedUsersData_response_data>> loadNextItems() async {
    final invitedUsers = await ApiService.instance.getInvitedUsersList(
      userId,
      after: _invitedUsersList.last.createdOn.toString(),
    );
    _invitedUsersList.addAll(invitedUsers);
    return invitedUsers;
  }
}
