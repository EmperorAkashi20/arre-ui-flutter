part of playlist;

///Current User's playlist screen
class MyPlaylistScreen extends ConsumerWidget with ArreScreen {
  @override
  Uri? get uri => Uri.parse("/my_playlist");

  @override
  String get screenName => GAScreen.MY_PLAYLIST;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/my_playlist") {
      return AAppPage(child: MyPlaylistScreen());
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlistPvd = ref.watch(userPlaylistProvider(_userId));
    Widget child;
    if (playlistPvd.hasData) {
      final playlists = playlistPvd.data!;
      child = RefreshIndicator(
        onRefresh: () async {
          await Future.wait([
            ref.read(userPlaylistProvider(_userId)).refresh(),
          ]);
        },
        child: SafeArea(
          child: NotificationListener<ScrollUpdateNotification>(
            onNotification: playlistPvd.onScrollNotification,
            child: ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
              primary: false,
              padding: EdgeInsets.symmetric(vertical: 16),
              separatorBuilder: (_, __) => SizedBox(height: 10),
              // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //   maxCrossAxisExtent: 121,
              //   mainAxisExtent: 144,
              //   childAspectRatio: 105 / 144,
              //   crossAxisSpacing: 16,
              //   mainAxisSpacing: 10,
              // ),
              itemCount: playlistPvd.data!.length + 3,
              itemBuilder: (context, i) {
                if (i == 0) {
                  return CreateNewPlaylistTile();
                } else if (i == 1) {
                  return PlaylistTile.myLikedPlaylist();
                } else if (i == 2) {
                  return PlaylistTile.history();
                } else {
                  final playlist = playlists[i - 3];
                  return PlaylistTile(
                    title: playlist.title,
                    thumbnail: ArreNetworkImage.mediaId(playlist.coverImage!),
                    showPrivacyIcon: !playlist.isSystemGenerated,
                    isPrivate: playlist.isPrivate,
                    podSourceId: playlist.playlistId,
                    // source: () =>
                    //     ref.read(playlistDetailsProvider(playlist.playlistId)),
                    onPressed: () => ArreNavigator.instance.push(
                      AAppPage(
                        child: UserPlaylistDetailsScreen(
                          playlistId: playlist.playlistId,
                          initialData: playlist,
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      );
    } else if (playlistPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget(
          error: playlistPvd.error,
          onPressed: playlistPvd.refresh,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text('My Playlist'),
      ),
      body: child,
    );
  }
}
