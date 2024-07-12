part of playlist;

enum _ShareOption {
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
  GPlaylist playlist,
) async {
  final shareOption = await showModalBottomSheet<_ShareOption>(
    context: ref.context,
    useRootNavigator: true,
    builder: (_) => _ShareOptionsSheet(),
  );
  if (shareOption != null) {
    switch (shareOption) {
      case _ShareOption.link:
        arreAnalytics.logEvent(GAEvent.SHARE_POD_LINK_BTN_CLICK);
        Utils.share(
          text: "${playlist.title}\n${playlist.shareLink}",
          entityId: playlist.playlistId,
          entityType: EntityType.playlist,
        );
        break;
      case _ShareOption.message:
        showShareTraySheet(
          entityType: 'playlist',
          entityId: playlist.playlistId,
        );
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
            "Share Playlist",
            style: ATextStyles.sys20Bold(AColors.greyLight),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 20),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 180),
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
