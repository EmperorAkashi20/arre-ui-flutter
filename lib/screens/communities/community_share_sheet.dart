part of communities;

Future<void> _showCommunityShareSheet({
  required BuildContext context,
  required GArreCommunity community,
}) {
  return showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    useSafeArea: true,
    showDragHandle: true,
    routeSettings: RouteSettings(name: GAScreen.VOICE_CLUB_INVITE_SHEET),
    builder: (_) => _CommunityShareSheet(community),
  );
}

class _CommunityShareSheet extends ConsumerStatefulWidget {
  final GArreCommunity community;

  const _CommunityShareSheet(this.community);

  @override
  ConsumerState createState() => __CommunityShareSheetState();
}

class __CommunityShareSheetState extends ConsumerState<_CommunityShareSheet> {
  @override
  void initState() {
    super.initState();
    Utils.checkShareableAppInstallStatus(inviteText).whenComplete(() {
      setState(() {});
    });
  }

  void shareOnApp(ShareableApp app) {
    Utils.shareOnApp(
      app: app,
      entityId: widget.community.communityId,
      entityType: EntityType.voiceclub,
      text: inviteText,
    );
  }

  String get inviteText =>
      "I have invited you to join '${widget.community.title}' Voiceclub on Arré Voice. Click here to join ${widget.community.communityUrl}";

  @override
  Widget build(BuildContext context) {
    final shareOptions = <Widget>[
      FilledIconButton(
        onPressed: () async {
          final hasShared =
              await showShareTraySheet(entityType: "text", message: inviteText);
          if (hasShared == true && mounted) Navigator.of(context).pop();
        },
        label: Text("Message"),
        size: 48,
        icon: Icon(
          ArreIconsV2.audio_message_outline,
          size: 28,
        ),
        fillColor: AColors.BgLight,
        borderColor: AColors.BgStroke,
      ),
      FilledIconButton(
        onPressed: () {
          Utils.copy2Clipboard(
              context: context,
              entityId: widget.community.communityId,
              entityType: EntityType.voiceclub,
              text: inviteText);
        },
        label: Text("Copy Link"),
        size: 48,
        icon: Icon(
          ArreIconsV2.link_filled,
          size: 28,
        ),
        fillColor: AColors.BgLight,
        borderColor: AColors.BgStroke,
      ),
      if (ShareableApp.whatsapp.isInstalled == true)
        FilledIconButton(
          onPressed: () => shareOnApp(ShareableApp.whatsapp),
          label: Text(ShareableApp.whatsapp.name),
          size: 48,
          icon: Icon(
            ArreIconsV2.wa_outline,
            size: 28,
          ),
          fillColor: Color(0xFF00E510),
        ),
      if (ShareableApp.x.isInstalled == true)
        FilledIconButton(
          onPressed: () => shareOnApp(ShareableApp.x),
          label: Text(ShareableApp.x.name),
          size: 48,
          icon: Icon(
            ArreIconsV2.x_outline,
            size: 28,
          ),
          fillColor: Color(0xFF1C1C1B),
          borderColor: AColors.BgStroke,
        ),
      FilledIconButton(
        onPressed: () {
          Utils.share(
            entityId: widget.community.communityId,
            entityType: EntityType.voiceclub,
            text: inviteText,
          );
        },
        label: Text("Other"),
        size: 48,
        icon: Icon(
          Icons.more_horiz_rounded,
          size: 28,
        ),
        fillColor: AColors.BgLight,
        borderColor: AColors.BgStroke,
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Invite your tribe to the Voiceclub",
            style: ATextStyles.sys20Bold(AColors.textLight),
          ),
          SizedBox(height: 20),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: shareOptions.length * 96),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: shareOptions,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ArreAssets.WOMEN_ON_SPEAKER2_IMG,
                  width: 74.73,
                ),
                SizedBox(width: 16),
                Flexible(
                  child: Text(
                    "Spread the word by sharing the link with your friends and family",
                    style: ATextStyles.sys14Regular(AColors.textMedium),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
