part of communities;

enum _CommunityActionsEnum with ActionItem {
  rules(
    label: "About Rules",
    icon: Icon(ArreIconsV2.podroll_outline, size: 32),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
    gaContext: "about",
  ),
  createChat(
    label: "Create New Chat",
    gaContext: "new_chat",
    iconBgColor: Color(0xFFFAF9),
    icon: Icon(ArreIconsV2.create_message, size: 32),
  ),
  leave(
    label: "Leave Voiceclub",
    icon: Icon(ArreIconsV2.logout_outline, size: 32),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
    color: AColors.red,
    gaContext: "leave",
  );

  const _CommunityActionsEnum({
    required this.label,
    required this.icon,
    required this.gaContext,
    this.color,
    this.iconBgColor,
    this.iconBorderColor,
  });

  final String label;
  final Widget icon;
  final String gaContext;
  final Color? color, iconBgColor, iconBorderColor;
}

Future<void> _showCommunityActionsSheet(
  WidgetRef ref,
  final GArreCommunity community,
) async {
  List<_CommunityActionsEnum> actions;
  actions = [
    _CommunityActionsEnum.rules,
    if (community.isAdmin) _CommunityActionsEnum.createChat,
    if (!community.isAdmin && community.isMember) _CommunityActionsEnum.leave,
  ];
  final action = await showActionsSheet(
    context: ref.context,
    actions: actions,
    routeSettings: RouteSettings(name: GAScreen.PROFILE_ACTION_SHEET),
  );
  if (action != null) {
    log("Perform action $action");
    _performCommunityAction(
      ref,
      action: action as _CommunityActionsEnum,
      community: community,
    );
  }
}

Future<void> _performCommunityAction(
  WidgetRef ref, {
  required _CommunityActionsEnum action,
  required GArreCommunity community,
}) async {
  arreAnalytics.logEvent(
    GAEvent.VC_VOICECLUB_ACTION_CLICK,
    parameters: {
      EventAttribute.ENTITY_ID: community.communityId,
      EventAttribute.ENTITY_TYPE: EntityType.voiceclub.name,
      EventAttribute.GA_CONTEXT: action.gaContext,
    },
  );
  switch (action) {
    case _CommunityActionsEnum.rules:
      ArreNavigator.instance.push(
        AAppPage(
          child: _CommunityRulesScreen(
            title: community.title,
            description: community.description,
            rules: community.rules.toList(),
          ),
        ),
      );
      break;
    case _CommunityActionsEnum.createChat:
      ArreNavigator.instance.push(
        AAppPage(
          child: ChatFormScreen(
              communityId: community.communityId,
              communityTitle: community.title),
        ),
      );

    case _CommunityActionsEnum.leave:
      try {
        final confirmLeave = await showModalBottomSheet(
            context: ref.context,
            showDragHandle: true,
            useRootNavigator: true,
            builder: (_) {
              return ConfirmationSheet(
                title: "Leave Community?",
                description:
                    "Once you leave the community you won’t be able to engage with the community. You can rejoin anytime you wish!",
                primaryBtnLabel: "Yes, Leave",
                secondaryBtnLabel: "Cancel",
                primaryBtnColor: AColors.red,
              );
            });
        if (confirmLeave != true) return;
        arreAnalytics.logEvent(
          GAEvent.VC_LEAVE_COMMUNITY_CONFIRMED,
          parameters: {
            EventAttribute.ENTITY_ID: community.communityId,
            EventAttribute.ENTITY_TYPE: EntityType.voiceclub.name,
          },
        );
        final message = await showFutureLoaderDialog(
          CommunityActionManager.leaveCommunity(community.communityId, ref),
        );
        showInfoSnackBar(message);
      } catch (err, st) {
        showErrorSnackBar(err);
        Utils.reportError(err, st);
      }
      break;
  }
}
