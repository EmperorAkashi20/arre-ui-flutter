part of playlist;

class CreatePlaylistDialog extends ConsumerWidget with ArreScreen {
  final GPlaylist? playlist;

  const CreatePlaylistDialog({
    this.playlist,
  });

  Uri? get uri => Uri.parse('/playlist/create');

  @override
  String get screenName => GAScreen.PLAYLIST_CREATE;

  @override
  bool get isOnboardingRequired => true;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/playlist/create") {
      return AAppPage(child: CreatePlaylistDialog());
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      body: _PlaylistCUBody(
        playlist: playlist,
        title: "Give your playlist a name",
        actionBtnText: "Create",
      ),
    );
  }
}
