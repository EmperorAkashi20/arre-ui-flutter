part of playlist;

class UpdatePlaylistDialog extends ConsumerWidget with ArreScreen {
  final GPlaylist playlist;

  const UpdatePlaylistDialog({
    required this.playlist,
  });

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.UPDATE_PLAYLIST;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      body: _PlaylistCUBody(
        playlist: playlist,
        title: "Edit playlist",
        actionBtnText: "Update",
      ),
    );
  }
}
