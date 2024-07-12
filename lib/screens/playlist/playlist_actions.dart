part of playlist;

enum _PlaylistAction with ActionItem {
  edit(
    label: "Edit",
    icon: Icon(ArreIconsV2.pencil_outline),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  share(
    label: "Share",
    icon: Icon(ArreIconsV2.share_outline),
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.tealStroke,
  ),
  delete(
    label: "Delete",
    icon: Icon(ArreIconsV2.bin_filled),
    color: AColors.red,
    iconBgColor: Color(0xFFFAF9),
    iconBorderColor: AColors.red,
  );

  const _PlaylistAction({
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

Future<_PlaylistAction?> showPlaylistActionSheet(
  WidgetRef ref,
  GPlaylist playlist,
) async {
  final action = await showActionsSheet(
    actions: [
      if (!playlist.isSystemGenerated && playlist.userId == arrePref.userId)
        _PlaylistAction.edit,
      _PlaylistAction.share,
      if (!playlist.isSystemGenerated && playlist.userId == arrePref.userId)
        _PlaylistAction.delete,
    ],
    context: ref.context,
  );

  if (action != null) {
    final actionPerformed = await _performAction(
      action: action as _PlaylistAction,
      ref: ref,
      playlist: playlist,
    );
    if (actionPerformed == _PlaylistAction.delete) {
      Navigator.of(ref.context).maybePop();
    }
    return actionPerformed;
  }
  return null;
}

///Returns action performed if successful, null otherwise
Future<_PlaylistAction?> _performAction({
  required WidgetRef ref,
  required GPlaylist playlist,
  required _PlaylistAction action,
}) async {
  try {
    switch (action) {
      case _PlaylistAction.delete:
        if (playlist.isSystemGenerated) {
          showInfoSnackBar("Cannot delete default playlist");
          return null;
        }
        final response =
            await ApiService.instance.deletePlaylist(playlist.playlistId);
        ref.read(userPlaylistProvider(arrePref.userId!)).refresh();
        showInfoSnackBar(response.message ?? "Playlist deleted");
        break;
      case _PlaylistAction.share:
        await _showShareSheet(ref, playlist);
        break;
      case _PlaylistAction.edit:
        if (playlist.isSystemGenerated) {
          showInfoSnackBar("Cannot edit default playlist");
          return null;
        }
        ArreNavigator.instance.push(
          AAppPage(
            child: UpdatePlaylistDialog(playlist: playlist),
            fullscreenDialog: true,
          ),
        );
        break;
    }
    return action;
  } catch (err, st) {
    showErrorSnackBar(err);
    Utils.reportError(err, st);
    return null;
  }
}
