part of profile_screen;

enum _ProfileActionsEnum with ActionItem {
  copyLink(
    label: "Copy link",
    icon: Icon(ArreIconsV2.drafts_outline, size: 30),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  shareTo(
    label: "Share To",
    icon: Icon(ArreIconsV2.share_outline, size: 30),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  report(
    label: "Report",
    icon: Icon(ArreIconsV2.user_caution_outline, size: 30),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  ),
  block(
    label: "Block",
    icon: Icon(Icons.block),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  ),
  unblock(
    label: "UnBlock",
    icon: Icon(ArreIconsV2.unblock),
    color: AColors.tealPrimary,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealPrimary,
  ),
  blockLoading(
    label: "Block",
    icon: Icon(Icons.block),
    color: AColors.stateDisabled,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.stateDisabled,
  );

  const _ProfileActionsEnum({
    required this.label,
    required this.icon,
    this.color,
    this.iconBgColor,
    this.iconBorderColor,
  });

  final String label;
  final Widget icon;
  final Color? color, iconBgColor, iconBorderColor;
}

Future<void> _showActionsSheetProfile(
  WidgetRef ref,
  final GUserDetails userDetails,
) async {
  final getActions = (bool? isBlocked) => [
        _ProfileActionsEnum.copyLink,
        _ProfileActionsEnum.shareTo,
        _ProfileActionsEnum.report,
        if (isBlocked == true)
          _ProfileActionsEnum.unblock
        else if (isBlocked == false)
          _ProfileActionsEnum.block
        else
          _ProfileActionsEnum.blockLoading,
      ];

  final action = await showActionsSheetBuilder(
    context: ref.context,
    actionsBuilder: (ref) {
      final isUserBlocked = ref.watch(blockStatusProvider(userDetails.userId));
      return getActions(isUserBlocked.valueOrNull);
    },
    routeSettings: RouteSettings(name: GAScreen.PROFILE_ACTION_SHEET),
  );

  if (action != null) {
    log("Perform action $action");
    _performProfileAction(
      ref,
      action: action as _ProfileActionsEnum,
      userDetails: userDetails,
    );
  }
}

Future<void> _performProfileAction(
  WidgetRef ref, {
  required _ProfileActionsEnum action,
  required GUserDetails userDetails,
}) async {
  switch (action) {
    case _ProfileActionsEnum.copyLink:
      Utils.copy2Clipboard(
        context: ref.context,
        entityId: userDetails.userId,
        entityType: EntityType.user,
        text: userDetails.profileLink!,
      );
      break;

    case _ProfileActionsEnum.shareTo:
      Utils.share(
        entityId: userDetails.userId,
        entityType: EntityType.user,
        text: userDetails.profileLink!,
      );
      break;

    case _ProfileActionsEnum.report:
      ArreNavigator.instance.push(
        AAppPage(
          child: ReportScreen(
            userId: userDetails.userId,
            entityId: userDetails.userId,
            entityType: ReportEntityType.user,
            communityId: null,
          ),
        ),
      );
      break;

    case _ProfileActionsEnum.block:
      arreAnalytics.logEvent(
        GAEvent.BLOCK_USER,
        parameters: {EventAttribute.USER_ID: userDetails.userId},
      );
      ApiService.instance.blockUser(userDetails.userId).then((value) async {
        showInfoSnackBar(value);
        final conversationId =
            await Utils.getConversationId(userDetails.userId);
        ref.invalidate(conversationDetailsProvider(conversationId));
      }).catchError((error) {
        showErrorMessageSnackBar(
            "Something went wrong, please try again later");
      });
      break;

    case _ProfileActionsEnum.unblock:
      arreAnalytics.logEvent(
        GAEvent.UNBLOCK_USER,
        parameters: {EventAttribute.USER_ID: userDetails.userId},
      );
      ApiService.instance.unblockUser(userDetails.userId).then((value) async {
        showInfoSnackBar(value);
        final conversationId =
            await Utils.getConversationId(userDetails.userId);
        ref.invalidate(conversationDetailsProvider(conversationId));
      }).catchError((error) {
        showErrorMessageSnackBar(
            "Something went wrong, please try again later");
      });
      break;
    case _ProfileActionsEnum.blockLoading:
  }
}
