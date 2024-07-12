import 'dart:async';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/arre_link_manager.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_referral_gql/arre_referral_gql.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final inviterDetailsFutureProvider =
    FutureProvider.family<GUserShortDetailsSigned, String>((ref, userId) {
  return ApiService.instance.getUserShortDetailsSigned(userId);
});

final inviteLinkProvider =
    StateNotifierProvider<InviteLinkProvider, AsyncValue<GInviteLinkInfo?>>(
        (ref) {
  ref.listenSelf((previous, next) {
    final uniqueInviteLink = next.valueOrNull?.uniqueInviteLink;
    if (uniqueInviteLink != null) {
      arrePref.setString(PrefKey.INVITE_LINK, uniqueInviteLink);
    }
  });
  return InviteLinkProvider();
});

class InviteLinkProvider extends StateNotifier<AsyncValue<GInviteLinkInfo?>> {
  late Future<GInviteLinkInfo?> _dynInviteLinkFuture;
  final TextEditingController inviteLinkTextEditCtrl = TextEditingController();
  final key = GlobalKey<FormFieldState>();
  late StreamSubscription<String> _dynamicLinkSub;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  AutovalidateMode get autovalidateMode => _autovalidateMode;

  InviteLinkProvider() : super(AsyncValue.data(null)) {
    _init();
    // this.addListener((state) {
    //   print("ArreLinkManager InviteLinkProvider state changed $state");
    // });
  }

  void _init() {
    _dynInviteLinkFuture = () async {
      try {
        var initialLink = await ArreLinkManager.instance.initialLink ??
            ArreLinkManager.instance.latestLink;
        // print(
        //     "ArreLinkManager InviteLinkProvider._dynInviteLinkFuture initialLink $initialLink ");
        if (initialLink == null) return null;
        initialLink =
            await ArreLinkManager.instance.getArreVoiceDeepLink(initialLink);
        final inviteInfo =
            await ApiService.instance.getInviteLinkInfo(initialLink);
        if (inviteInfo.numberOfInvitesLeft <= 0) return null;
        if (!inviteLinkTextEditCtrl.text.isValid) {
          inviteLinkTextEditCtrl.text = inviteInfo.uniqueInviteLink;
          state = AsyncData(inviteInfo);
        }
        return inviteInfo;
      } catch (err) {
        return null;
      }
    }();
    _dynamicLinkSub = ArreLinkManager.instance.onLink.listen(_onDynamicLink);
  }

  Future<void> _onDynamicLink(String link) async {
    try {
      // print("ArreLinkManager InviteLinkProvider._onDynamicLink #1 $link");
      link = await ArreLinkManager.instance.getArreVoiceDeepLink(link);
      final inviteInfo = await ApiService.instance.getInviteLinkInfo(link);
      if (inviteInfo.numberOfInvitesLeft <= 0) return null;
      inviteLinkTextEditCtrl.text = inviteInfo.uniqueInviteLink;
      state = AsyncData(inviteInfo);
      _dynInviteLinkFuture = Future.value(inviteInfo);
    } catch (err) {
      // print("ArreLinkManager InviteLinkProvider._onDynamicLink #6 $err");
      //DO NOTHING
    }
  }

  Future<GInviteLinkInfo?> checkDynamicInviteLink() async {
    if (state.valueOrNull != null) return state.value;
    try {
      state = AsyncValue.loading();
      final value = await _dynInviteLinkFuture.timeout(Duration(seconds: 3));
      state = AsyncData(value);
    } catch (err) {
      state = AsyncData(null);
    }
    return state.valueOrNull;
  }

  Future<GInviteLinkInfo?> verifyEnteredLink() async {
    if (state.isLoading) return null;
    try {
      if (!inviteLinkTextEditCtrl.text.isValid) {
        throw ArreException("Please provide valid invite link");
      }
      state = AsyncValue.loading();
      final link = Uri.tryParse(inviteLinkTextEditCtrl.text);

      if (link == null || !link.scheme.startsWith("http")) {
        throw ArreException("Please provide valid invite link");
      }
      final parsedLink =
          await ArreLinkManager.instance.getArreVoiceDeepLink(link.toString());
      final inviteInfo =
          await ApiService.instance.getInviteLinkInfo(parsedLink);
      if (inviteInfo.numberOfInvitesLeft <= 0) {
        throw ArreException("Invite link is expired");
      }
      state = AsyncData(inviteInfo);
    } catch (err, st) {
      Utils.reportError(err, st);
      state = AsyncError(err, st);
    }
    return state.valueOrNull;
  }

  @override
  void dispose() {
    // print("ArreLinkManager InviteLinkProvider.dispose _dynamicLinkSub.cancel");
    _dynamicLinkSub.cancel();
    super.dispose();
  }
}
