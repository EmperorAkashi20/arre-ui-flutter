import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';

final inviteDetailsFutureProvider = FutureProvider.autoDispose((ref) async {
  String userId = arrePref.getString(PrefKey.USER_ID)!;
  final inviteDetailsProvider =
      await ApiService.instance.getUserInviteData(userId);
  ref.keepAlive();
  return inviteDetailsProvider;
});

final inviteRequestForMoreProvider = ChangeNotifierProvider((ref) {
  return InviteRequestForMoreProvider();
});

class InviteRequestForMoreProvider extends ChangeNotifier {
  bool get hasRequested =>
      arrePref.getBool(PrefKey.REQUESTED_FOR_MORE_INVITES) ?? false;

  void requestForMoreInvite({
    required void Function(String message) onSuccess,
    required void Function(dynamic err) onError,
  }) async {
    try {
      final response = await ApiService.instance.requestForMoreInvites();
      arrePref.setBool(PrefKey.REQUESTED_FOR_MORE_INVITES, true);
      notifyListeners();
      onSuccess.call(response.message ?? "Your request is submitted");
    } catch (err, st) {
      onError.call(err);
      Utils.reportError(err, st);
    }
  }
}
