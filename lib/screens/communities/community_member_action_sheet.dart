part of communities;

sealed class MemberActionEnum with ActionItem {
  String get gaContext;
}

class _ReportMember extends MemberActionEnum {
  final String username;

  final icon = Icon(ArreIconsV2.user_caution, size: 32);
  final color = AColors.red;
  final iconBgColor = Color(0xFFFAF9);
  final iconBorderColor = AColors.red;

  _ReportMember(this.username);

  @override
  String get gaContext => "report";

  @override
  String get label => "Report @$username";
}

class _BanMember extends MemberActionEnum {
  final String username;
  final icon = Icon(ArreIconsV2.user_kick, size: 32);
  final color = AColors.red;
  final iconBgColor = Color(0xFFFAF9);
  final iconBorderColor = AColors.red;

  _BanMember(this.username);

  @override
  String get gaContext => "ban";

  @override
  String get label => "Ban @$username";
}

Future<void> _showMemberActionsSheet({
  required WidgetRef ref,
  required ArreUser user,
  required GArreCommunity community,
}) async {
  List<MemberActionEnum> actions;
  actions = [
    _ReportMember(user.username),
    if (community.isAdmin) _BanMember(user.username),
  ];
  final action = await showActionsSheet(
    context: ref.context,
    actions: actions,
    routeSettings: RouteSettings(name: GAScreen.PROFILE_ACTION_SHEET),
  );
  if (action != null) {
    log("Perform action $action");
    _performMemberAction(
      ref,
      action: action as MemberActionEnum,
      user: user,
      community: community,
    );
  }
}

Future<void> _performMemberAction(
  WidgetRef ref, {
  required MemberActionEnum action,
  required ArreUser user,
  required GArreCommunity community,
}) async {
  arreAnalytics.logEvent(
    GAEvent.VC_VOICECLUB_ACTION_CLICK,
    parameters: {
      EventAttribute.ENTITY_ID: user.userId,
      EventAttribute.ENTITY_TYPE: EntityType.user.name,
      EventAttribute.GA_CONTEXT: action.gaContext,
      EventAttribute.VOICECLUB_ID: community.communityId,
    },
  );
  switch (action) {
    case _ReportMember():
      ArreNavigator.instance.push(
        AAppPage(
          child: ReportScreen(
            userId: user.userId,
            entityId: user.userId,
            entityType: ReportEntityType.user,
            communityId: community.communityId,
          ),
        ),
      );
      break;
    case _BanMember():
      try {
        final confirm = await showModalBottomSheet(
          context: ref.context,
          useRootNavigator: true,
          showDragHandle: true,
          useSafeArea: true,
          builder: (_) => ConfirmationSheet(
            title: "Are you sure you want to ban  @${user.username}?",
            description:
                "Once banned, the member cannot join this voiceclub again.",
            primaryBtnLabel: "Ban",
            primaryBtnColor: AColors.red,
            secondaryBtnLabel: "Cancel",
          ),
        );
        if (confirm == true) {
          final message =
              await showFutureLoaderDialog(CommunityActionManager.removeMember(
            ref: ref,
            userId: user.userId,
            communityId: community.communityId,
          ));
          showInfoSnackBar(message);
        }
      } catch (err, st) {
        Utils.reportError(err, st);
        showErrorSnackBar(err);
      }
  }
}
