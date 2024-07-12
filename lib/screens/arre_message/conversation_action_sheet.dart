part of arre_message;

enum _ConversationActionsEnum with ActionItem {
  block(
    label: "Block",
    icon: Icon(Icons.block, size: 30),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  ),
  unblock(
    label: "UnBlock",
    icon: Icon(Icons.block, size: 30),
    color: AColors.tealPrimary,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealPrimary,
  ),
  blockLoading(
    label: "Block",
    icon: Icon(Icons.block, size: 30),
    color: AColors.stateDisabled,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.stateDisabled,
  ),
  report(
    label: "Report",
    icon: Icon(ArreIconsV2.user_caution_outline, size: 30),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  );

  const _ConversationActionsEnum({
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

Future<_ConversationActionsEnum?> _showConversationActionSheet(
  WidgetRef ref,
  GConversation conversation,
) async {
  String userId = Utils.getUserId4mConversationId(conversation.conversationId);
  final getActions = (bool? isBlocked) => [
        if (isBlocked == true)
          _ConversationActionsEnum.unblock
        else if (isBlocked == false)
          _ConversationActionsEnum.block
        else
          _ConversationActionsEnum.blockLoading,
        _ConversationActionsEnum.report,
      ];

  final action = await showActionsSheetBuilder(
    context: ref.context,
    actionsBuilder: (ref) {
      final isUserBlocked = ref.watch(blockStatusProvider(userId));
      return getActions(isUserBlocked.valueOrNull);
    },
    routeSettings: RouteSettings(name: GAScreen.CONVERSATION_ACTION_SHEET),
  );

  if (action != null) {
    log("Perform action $action");
    return _performConversationAction(
      ref,
      action: action as _ConversationActionsEnum,
      conversation: conversation,
    );
  }
  return null;
}

Future<_ConversationActionsEnum?> _performConversationAction(
  WidgetRef ref, {
  required _ConversationActionsEnum action,
  required GConversation conversation,
}) async {
  switch (action) {
    case _ConversationActionsEnum.report:
      final userId =
          Utils.getUserId4mConversationId(conversation.conversationId);
      await ArreNavigator.instance.push(
        AAppPage(
          child: ReportScreen(
            userId: userId,
            entityId: userId,
            entityType: ReportEntityType.user,
            communityId: null,
          ),
        ),
      );
      break;
    case _ConversationActionsEnum.block:
      final userId =
          Utils.getUserId4mConversationId(conversation.conversationId);
      arreAnalytics.logEvent(
        GAEvent.BLOCK_USER,
        parameters: {EventAttribute.USER_ID: userId},
      );
      await ApiService.instance.blockUser(userId).then((value) async {
        showInfoSnackBar(value);
        final conversationId = await Utils.getConversationId(userId);
        ref.invalidate(conversationDetailsProvider(conversationId));
      }).catchError((error) {
        showErrorMessageSnackBar(
            "Something went wrong, please try again later");
      });
      return _ConversationActionsEnum.block;
    case _ConversationActionsEnum.unblock:
      final userId =
          Utils.getUserId4mConversationId(conversation.conversationId);
      arreAnalytics.logEvent(
        GAEvent.UNBLOCK_USER,
        parameters: {EventAttribute.USER_ID: userId},
      );
      await ApiService.instance.unblockUser(userId).then((value) async {
        showInfoSnackBar(value);
        final conversationId = await Utils.getConversationId(userId);
        ref.invalidate(conversationDetailsProvider(conversationId));
      }).catchError((error) {
        showErrorMessageSnackBar(
            "Something went wrong, please try again later");
      });
      return _ConversationActionsEnum.unblock;
    case _ConversationActionsEnum.blockLoading:
  }

  return null;
}
