part of voicepod;

enum _ShareOption {
  clip(
      icon: Icon(ArreIconsV2.mediafile_filled),
      label: "As a Clip",
      iconBgColor: AColors.BgLight),
  link(
      icon: Icon(ArreIconsV2.link_filled),
      label: "As a link",
      iconBgColor: AColors.BgLight),
  message(
      icon: Icon(ArreIconsV2.audio_message_outline),
      label: "As a message",
      iconBgColor: AColors.BgLight);

  const _ShareOption({
    required this.icon,
    required this.label,
    required this.iconBgColor,
  });

  final Widget icon;
  final String label;
  final Color iconBgColor;
}

Future<void> _showShareSheet(
  WidgetRef ref,
  Post voicepod,
) async {
  final shareOption = await showModalBottomSheet<_ShareOption>(
    context: ref.context,
    useRootNavigator: true,
    builder: (_) => _ShareOptionsSheet(),
  );
  if (shareOption != null) {
    switch (shareOption) {
      case _ShareOption.clip:
        arreAnalytics.logEvent(GAEvent.SHARE_POD_AS_VIDEO_BTN_CLICK);
        await _showShareClipPopup(ref.context, voicepod, ref);
        break;
      case _ShareOption.link:
        arreAnalytics.logEvent(GAEvent.SHARE_POD_LINK_BTN_CLICK);
        Utils.share(
          text: "${voicepod.title}\n ${voicepod.postUrl}",
          entityId: voicepod.postId,
          entityType: EntityType.voicepod,
        );
        break;
      case _ShareOption.message:
        showShareTraySheet(entityType: 'voicepod', entityId: voicepod.postId);
        break;
    }
  }
}

class _ShareOptionsSheet extends StatelessWidget {
  const _ShareOptionsSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DragIndicator(
            padding: EdgeInsets.only(top: 18, bottom: 24),
          ),
          Text(
            "Share Voicepod",
            style: ATextStyles.sys20Bold(AColors.greyLight),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 20),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 314),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _ShareOption.values
                    .map((e) => ActionIconButton(
                          value: e,
                          label: e.label,
                          icon: e.icon,
                          iconBgColor: e.iconBgColor,
                        ))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//LEGACY CODE

Future<void> _showShareClipPopup(
    BuildContext cx, Post feed, WidgetRef ref) async {
  final userData = await ref.read(userShortDataProvider).fetchData(feed.userId);
  await showModalBottomSheet(
    useRootNavigator: true,
    backgroundColor: Color(0xFFF6FCFB),
    elevation: 10,
    context: cx,
    isScrollControlled: true,
    isDismissible: true,
    builder: (BuildContext context) {
      return Container(
        child: ShareClip(
          feed: feed,
          userName: userData!.username,
          profilePictureMediaId: userData.profilePictureMediaId,
        ),
      );
    },
  );
}
