part of arre_message;

enum _ChatActionsEnum with ActionItem {
  pinChat(
    label: "Pin Chat",
    gaContext: "pin_chat",
    icon: Icon(
      ArreIconsV2.pin,
      size: 30,
      color: AColors.tealPrimary,
    ),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  unpinChat(
    label: "Unpin Chat",
    gaContext: "unpin_chat",
    icon: Icon(
      ArreIconsV2.unpin,
      size: 30,
      color: AColors.red,
    ),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  ),
  pinChatLoading(
    label: "Pin Chat",
    gaContext: null,
    enabled: false,
    icon: Icon(
      ArreIconsV2.pin,
      size: 30,
      color: AColors.stateDisabled,
    ),
    iconBgColor: Color(0xFFFAF9),
  ),
  editDetails(
    label: "Edit Chat Details",
    gaContext: "edit_chat_details",
    icon: Icon(
      ArreIconsV2.pencil_outline,
      size: 30,
      color: AColors.tealPrimary,
    ),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  markAsActive(
    label: "Mark as Active",
    gaContext: "mark_active",
    icon: Icon(
      ArreIconsV2.active_circle,
      size: 30,
      color: AColors.tealPrimary,
    ),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  removeActive(
    label: "Remove Active",
    gaContext: "remove_active",
    icon: Icon(
      ArreIconsV2.active_circle,
      size: 30,
      color: AColors.red,
    ),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  ),
  endChat(
    label: "End Chat",
    gaContext: "end_chat",
    icon: Icon(
      ArreIconsV2.end_chat,
      size: 30,
      color: AColors.red,
    ),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  ),
  muteNotifications(
    label: "Mute Notifications",
    gaContext: "mute_notifications",
    icon: Icon(
      ArreIconsV2.notification_off,
      size: 30,
      color: AColors.red,
    ),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  ),
  unmuteNotifications(
    label: "Unmute Notifications",
    gaContext: "unmute_notifications",
    icon: Icon(
      ArreIconsV2.notification_outline,
      size: 30,
      color: AColors.tealPrimary,
    ),
    color: AColors.tealPrimary,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  deleteChat(
    label: "Delete Chat",
    gaContext: "delete_chat",
    icon: Icon(
      ArreIconsV2.bin_filled,
      size: 30,
      color: AColors.red,
    ),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  );

  const _ChatActionsEnum({
    required this.label,
    required this.icon,
    required this.gaContext,
    this.color,
    this.enabled = true,
    this.iconBgColor,
    this.iconBorderColor,
  });

  final bool enabled;

  final String label;

  final Widget icon;
  final Color? color, iconBgColor, iconBorderColor;
  final String? gaContext;
}

Future<void> _showChatsActionsSheet({
  required WidgetRef ref,
  required CommunityChatDetails chatDetails,
  required bool isAdmin,
}) async {
  final getActions = (bool? isPinned) => [
        if (isAdmin) ...[
          //Pin
          if (isPinned == true)
            _ChatActionsEnum.unpinChat
          else if (isPinned == false)
            _ChatActionsEnum.pinChat
          else
            _ChatActionsEnum.pinChatLoading,

          //Active
          if (chatDetails.chatStatus == ChatStatus.NORMAL)
            _ChatActionsEnum.markAsActive
          else if (chatDetails.chatStatus == ChatStatus.ACTIVE)
            _ChatActionsEnum.removeActive,

          //Edit details
          _ChatActionsEnum.editDetails,

          //User Notifications Preferences (as an end user and not admin)
          if (chatDetails.chatStatus != ChatStatus.ENDED)
            if (chatDetails.userNotificationStatus)
              _ChatActionsEnum.muteNotifications
            else
              _ChatActionsEnum.unmuteNotifications,

          //End Chat
          if (chatDetails.chatStatus != ChatStatus.ENDED)
            _ChatActionsEnum.endChat,

          //Delete chat
          _ChatActionsEnum.deleteChat,
        ] else if (chatDetails.chatStatus != ChatStatus.ENDED) ...[
          //User Notifications Preferences
          if (chatDetails.userNotificationStatus)
            _ChatActionsEnum.muteNotifications
          else
            _ChatActionsEnum.unmuteNotifications,
        ]
      ];

  final action = await showActionsSheetBuilder(
    context: ref.context,
    routeSettings: RouteSettings(name: GAScreen.VOICECLUB_CHAT_ACTION_SHEET),
    actionsBuilder: (ref) {
      final pinnedEntityIds =
          ref.watch(pinnedEntityIdsProvider(chatDetails.communityId));
      return getActions(
        pinnedEntityIds.valueOrNull
            ?.any((id) => id.contains(chatDetails.chatId)),
      );
    },
  );
  if (action != null) {
    _performChatAction(
      ref,
      action: action as _ChatActionsEnum,
      chatDetails: chatDetails,
      isAdmin: isAdmin,
    );
  }
}

Future<void> _performChatAction(
  WidgetRef ref, {
  required _ChatActionsEnum action,
  required CommunityChatDetails chatDetails,
  required bool isAdmin,
}) async {
  arreAnalytics.logEvent(
    GAEvent.VC_CHAT_ACTION_CLICK,
    parameters: {
      EventAttribute.GA_CONTEXT: action.gaContext,
      EventAttribute.USER_TYPE: isAdmin ? "admin" : "member",
      EventAttribute.ENTITY_ID: chatDetails.chatId,
      EventAttribute.ENTITY_TYPE: "vc_chats",
    },
  );
  switch (action) {
    case _ChatActionsEnum.pinChat:
      try {
        final message = await showFutureLoaderDialog(
            CommunityActionManager.pinChat(ref: ref, chat: chatDetails));
        showSnackBarMessageV2(context: ref.context, message: message);
      } catch (err) {
        showSnackBarV2(context: ref.context, error: err);
      }
      Future.value(
          ref.refresh(pinnedEntityIdsProvider(chatDetails.communityId)));
      break;
    case _ChatActionsEnum.unpinChat:
      try {
        final message = await showFutureLoaderDialog(
            CommunityActionManager.unpinChat(ref: ref, chat: chatDetails));
        showSnackBarMessageV2(context: ref.context, message: message);
      } catch (err) {
        showSnackBarV2(context: ref.context, error: err);
      }
      Future.value(
          ref.refresh(pinnedEntityIdsProvider(chatDetails.communityId)));
      break;
    case _ChatActionsEnum.editDetails:
      final isUpdated = await ArreNavigator.instance.push(
        AAppPage(
          child: ChatFormScreen(
            communityId: chatDetails.communityId,
            initialData: chatDetails,
          ),
        ),
      );
      if (isUpdated == true) {
        ref.invalidate(chatDetailsProvider(chatDetails.chatId));
      }
      break;
    case _ChatActionsEnum.markAsActive:
      try {
        final message = await showFutureLoaderDialog(
          CommunityActionManager.updateChatStatus(
            ref: ref,
            chat: chatDetails,
            chatStatus: ChatStatus.ACTIVE,
          ),
        );
        showSnackBarMessageV2(context: ref.context, message: message);
      } catch (err) {
        showSnackBarV2(context: ref.context, error: err);
      }
      break;
    case _ChatActionsEnum.removeActive:
      try {
        final message = await showFutureLoaderDialog(
          CommunityActionManager.updateChatStatus(
            ref: ref,
            chat: chatDetails,
            chatStatus: ChatStatus.NORMAL,
          ),
        );
        showSnackBarMessageV2(context: ref.context, message: message);
      } catch (err) {
        showSnackBarV2(context: ref.context, error: err);
      }
      break;
    case _ChatActionsEnum.endChat:
      try {
        final confirm = await showModalBottomSheet(
          showDragHandle: true,
          context: ref.context,
          builder: (context) {
            return ConfirmationSheet(
              title: "End this chat?",
              description:
                  "Once this chat ends, no one can send further messages. The chat can’t be restarted. The chat will remain on the list, and members can still read the older messages.",
              primaryBtnLabel: "End Chat",
              primaryBtnColor: AColors.red,
              secondaryBtnLabel: "Cancel",
            );
          },
        );

        if (confirm != true) return;
        final message = await showFutureLoaderDialog(
          CommunityActionManager.updateChatStatus(
            ref: ref,
            chat: chatDetails,
            chatStatus: ChatStatus.ENDED,
          ),
        );
        showSnackBarMessageV2(context: ref.context, message: message);
      } catch (err) {
        showSnackBarV2(context: ref.context, error: err);
      }
      break;
    case _ChatActionsEnum.muteNotifications:
      try {
        final message =
            await CommunityActionManager.updateNotificationPreference(
          ref: ref,
          chat: chatDetails,
          notificationStatus: false,
        );
        showSnackBarMessageV2(context: ref.context, message: message);
      } catch (err) {
        showSnackBarV2(context: ref.context, error: err);
      }
      break;
    case _ChatActionsEnum.unmuteNotifications:
      try {
        final message =
            await CommunityActionManager.updateNotificationPreference(
          ref: ref,
          chat: chatDetails,
          notificationStatus: true,
        );
        showSnackBarMessageV2(context: ref.context, message: message);
      } catch (err) {
        showSnackBarV2(context: ref.context, error: err);
      }
      break;
    case _ChatActionsEnum.deleteChat:
      try {
        final confirm = await showModalBottomSheet(
          showDragHandle: true,
          context: ref.context,
          builder: (context) {
            return ConfirmationSheet(
              title: "Delete this chat?",
              description:
                  "This chat will be deleted for ever. Members of voiceclub will not be able to view or respond to it in future",
              primaryBtnLabel: "Delete Chat",
              primaryBtnColor: AColors.red,
              secondaryBtnLabel: "Cancel",
            );
          },
        );

        if (confirm != true) return;

        final message = await showFutureLoaderDialog(
            CommunityActionManager.deleteChat(ref: ref, chat: chatDetails));
        showSnackBarMessageV2(context: ref.context, message: message);
        if (ref.context.mounted) {
          Navigator.of(ref.context).pop();
        }
      } catch (err) {
        showSnackBarV2(context: ref.context, error: err);
      }
    case _ChatActionsEnum.pinChatLoading:
    //Ignore
  }
}
