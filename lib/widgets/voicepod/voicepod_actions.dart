part of voicepod;

enum _PostActionsEnum with ActionItem {
  copyLink(
    label: "Copy link",
    gaContext: "copy_link",
    icon: Icon(ArreIconsV2.drafts_outline, size: 30),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  sendNotification(
    label: "Send Notification",
    gaContext: "send_notification",
    icon: Icon(ArreIconsV2.notification, size: 30),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  pinCommunityPost(
    label: "Pin",
    gaContext: "pin",
    icon: Icon(ArreIconsV2.pin, size: 30),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  unpinCommunityPost(
    label: "Unpin",
    gaContext: "unpin",
    icon: Icon(ArreIconsV2.unpin, size: 30),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  downloadAudio(
    label: "Download",
    gaContext: "download",
    icon: Icon(ArreIconsV2.import_outline, size: 30),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  addToPodroll(
    label: "Add to Playlist",
    gaContext: "add_to_playlist",
    icon: Icon(ArreIconsV2.podroll_outline, size: 30),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  save(
    label: "Save",
    gaContext: "save",
    icon: Icon(ArreIconsV2.save_filled, size: 30),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  remove4mPlaylist(
    label: "Remove",
    gaContext: "remove",
    icon: Icon(ArreIconsV2.cross_outline),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  delete(
    label: "Delete",
    gaContext: "delete",
    icon: Icon(ArreIconsV2.bin_filled, size: 30),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  ),
  // block(
  //   label: "Block",
  //   iconAssetName: ArreAssets.PLAYLIST_IN_BOTTOMBAR_ICON,
  // ),
  report(
    label: "Report",
    gaContext: "report",
    icon: Icon(ArreIconsV2.user_caution_outline, size: 30),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  );

  const _PostActionsEnum({
    required this.label,
    required this.icon,
    required this.gaContext,
    this.color,
    this.iconBgColor,
    this.iconBorderColor,
  });

  final String label;
  final Widget icon;
  final Color? color, iconBgColor, iconBorderColor;
  final String gaContext;
}

Future<void> _showActionsSheet(
  WidgetRef ref,
  Post voicepod,
) async {
  List<_PostActionsEnum> actions;
  bool isPodOwner = voicepod.userId == arrePref.userId;
  bool isPlaylistOwner = false;
  bool isCommunityAdmin = false;
  bool? isPinnedToCommunity;

  //Adding actions based on the context
  final currentPage = ModalRoute.of(ref.context)?.settings;
  if (currentPage is ArrePage &&
      currentPage.child is UserPlaylistDetailsScreen) {
    final playlistId =
        (currentPage.child as UserPlaylistDetailsScreen).playlistId;
    final playlistOwnerUserId =
        ref.read(playlistDetailsProvider(playlistId)).data?.userId;
    isPlaylistOwner = playlistOwnerUserId == arrePref.userId;
  }

  if (currentPage is ArrePage && currentPage.child is CommunityDetailScreen) {
    final communityId =
        (currentPage.child as CommunityDetailScreen).communityId;
    isCommunityAdmin =
        ref.read(communityProvider(communityId)).data?.isAdmin == true;

    isPinnedToCommunity =
        ref.read(communityFeedProvider(communityId)).isPinnedPost(voicepod.postId);
  }

  actions = [
    _PostActionsEnum.copyLink,
    if (isPodOwner) _PostActionsEnum.downloadAudio,
    _PostActionsEnum.addToPodroll,
    _PostActionsEnum.save,
    if (isPlaylistOwner) _PostActionsEnum.remove4mPlaylist,
    if (isCommunityAdmin) _PostActionsEnum.sendNotification,
    if (isCommunityAdmin)
      if (isPinnedToCommunity == true)
        _PostActionsEnum.unpinCommunityPost
      else
        _PostActionsEnum.pinCommunityPost,
    if (isPodOwner) _PostActionsEnum.delete else _PostActionsEnum.report,
  ];

  final action = await showActionsSheet(
    context: ref.context,
    actions: actions,
  );
  if (action != null) {
    log("Perform action $action", name: _LOG);
    _performPostAction(ref,
        action: action as _PostActionsEnum, voicepod: voicepod);
  }
}

Future<void> _performPostAction(
  WidgetRef ref, {
  required _PostActionsEnum action,
  required Post voicepod,
}) async {
  arreAnalytics.logEvent(
    GAEvent.VP_ACTION_CLICK,
    parameters: {
      EventAttribute.ENTITY_TYPE: EntityType.voicepod.name,
      EventAttribute.POD_ITEM_ID: voicepod.postId,
      EventAttribute.GA_CONTEXT: action.gaContext,
    },
  );
  switch (action) {
    case _PostActionsEnum.copyLink:
      Utils.copy2Clipboard(
        context: ref.context,
        entityId: voicepod.postId,
        entityType: EntityType.voicepod,
        text: "${voicepod.title}\n ${voicepod.postUrl}",
      ).catchError(
          (err) => showErrorMessageSnackBar("Could not generate link"));
      break;
    case _PostActionsEnum.downloadAudio:
      await showDownloadDialog(ref, voicepod: voicepod);

      break;
    case _PostActionsEnum.addToPodroll:
      if (voicepod.isPrivate) {
        showInfoSnackBar(
            "Heads up! Private voicepods cannot be added to public playlist.");
        return;
      }
      final playlist = await showPlaylistSelectorSheet(ref);
      log("Playlist selected is $playlist", name: _LOG);
      if (playlist != null) {
        return VoicepodAction.addToPlaylist(ref,
            postId: voicepod.postId, playlistId: playlist.playlistId);
      }
      break;
    case _PostActionsEnum.save:
      return VoicepodAction.saveToDefaultPlaylist(ref, voicepod.postId);
    // case _OtherUserPostActionsEnum.block:
    //   TO DO: Handle this case.
    // break;
    case _PostActionsEnum.report:
      return ArreNavigator.instance.push(
        AAppPage(
          child: ReportScreen(
            entityId: voicepod.postId,
            entityType: ReportEntityType.voicepod,
            userId: voicepod.userId,
            communityId: voicepod.communityId,
          ),
        ),
      );
    case _PostActionsEnum.delete:
      final confirmDelete = await showModalBottomSheet(
        context: ref.context,
        showDragHandle: true,
        useRootNavigator: true,
        routeSettings:
            RouteSettings(name: GAScreen.DELETE_VOICEPOD_CONFIRM_SHEET),
        builder: (context) {
          return ConfirmationSheet(
            title: "Delete this Voicepod?",
            primaryBtnColor: AColors.red,
            description:
                "This action cannot be undone. Are you sure you want to delete this voicepod?",
            primaryBtnLabel: "Delete",
            secondaryBtnLabel: "Cancel",
          );
        },
      );
      if (confirmDelete == true) {
        final isDeleted = await VoicepodAction.delete(ref, voicepod.postId);
        final currentPage = ModalRoute.of(ref.context)?.settings;
        if (ref.context.mounted &&
            isDeleted &&
            (currentPage as ArrePage).child is VoicepodDetailScreen) {
          Navigator.of(ref.context).pop();
        }
      }
      return;
    case _PostActionsEnum.sendNotification:
      final currentPage = ModalRoute.of(ref.context)?.settings;
      try {
        String communityId =
            ((currentPage as ArrePage).child as CommunityDetailScreen)
                .communityId;

        final confirm = await showModalBottomSheet(
          context: ref.context,
          showDragHandle: true,
          useRootNavigator: true,
          builder: (_) {
            return ConfirmationSheet(
                title:
                    "Are you sure you want to send notifications about this post?",
                description:
                    "This will trigger a notification to all the members in the Voiceclub.",
                primaryBtnLabel: "Send Notification",
                secondaryBtnLabel: "Cancel");
          },
        );
        if (confirm == true) {
          arreAnalytics.logEvent(
            GAEvent.VC_SEND_VP_NOTIFICATION_CONFIRMED,
            parameters: {
              EventAttribute.ENTITY_ID: communityId,
              EventAttribute.ENTITY_TYPE: EntityType.voiceclub.name,
            },
          );
          final message = await showFutureLoaderDialog(
            VoicepodAction.sendNotification(
              post: voicepod,
              communityId: communityId,
            ),
          );
          showInfoSnackBar(message);
        }
      } catch (err, st) {
        showErrorSnackBar(err);
        Utils.reportError(err, st);
      }
      break;
    case _PostActionsEnum.pinCommunityPost:
      final currentPage = ModalRoute.of(ref.context)?.settings;
      try {
        String communityId =
            ((currentPage as ArrePage).child as CommunityDetailScreen)
                .communityId;
        await showFutureLoaderDialog(VoicepodAction.pinCommunityPost(
          ref,
          post: voicepod,
          communityId: communityId,
        ));
      } catch (err, st) {
        showErrorSnackBar(err);
        Utils.reportError(err, st);
      }
      break;
    case _PostActionsEnum.unpinCommunityPost:
      final currentPage = ModalRoute.of(ref.context)?.settings;
      try {
        String communityId =
            ((currentPage as ArrePage).child as CommunityDetailScreen)
                .communityId;
        await showFutureLoaderDialog(VoicepodAction.unpinCommunityPost(
          ref,
          post: voicepod,
          communityId: communityId,
        ));
      } catch (err, st) {
        showErrorSnackBar(err);
        Utils.reportError(err, st);
      }
      break;
    case _PostActionsEnum.remove4mPlaylist:
      final currentPage = ModalRoute.of(ref.context)?.settings;
      String playlistId =
          ((currentPage as ArrePage).child as UserPlaylistDetailsScreen)
              .playlistId;
      return VoicepodAction.remove4mPlaylist(
        ref,
        postId: voicepod.postId,
        playlistId: playlistId,
      );
  }
}
