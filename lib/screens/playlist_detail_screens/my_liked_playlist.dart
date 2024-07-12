part of playlist_detail_screens;

class MyLikedPlaylist extends ConsumerWidget with ArreScreen {
  const MyLikedPlaylist();

  @override
  Uri? get uri => Uri.parse('/my_liked_playlist');

  @override
  String get screenName => GAScreen.MY_LIKED_PLAYLIST;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/my_liked_playlist") {
      return AAppPage(child: MyLikedPlaylist());
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlistPvd = ref.watch(myLikedPlaylistProvider);
    log(playlistPvd.data.toString());
    Widget sliver;
    if (playlistPvd.hasData) {
      if (playlistPvd.data!.isEmpty) {
        sliver = SliverFillRemaining(
          hasScrollBody: true,
          fillOverscroll: false,
          child: ArreErrorWidget.empty(
              message: "Looks like you haven't liked\n any voicepods yet"),
        );
      } else {
        sliver = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => VoicepodPostCard(
              playlistPvd.data![index].postId!,
              onPlayPressed: (_) {
                PodPlayerV3.instance.init(
                  startIndex: index,
                  context: context,
                  podSourceFuture: () => SynchronousFuture(playlistPvd),
                );
              },
            ),
            childCount: playlistPvd.data!.length,
          ),
        );
      }
    } else if (playlistPvd.isLoading) {
      sliver = SliverFillRemaining(child: Center(child: ACommonLoader()));
    } else if (playlistPvd.hasError) {
      sliver = SliverFillRemaining(
          child: Center(child: ArreErrorWidget(error: playlistPvd.error)));
    } else {
      sliver = SliverFillRemaining(
        child: ArreErrorWidget.empty(message: "No voicepods found"),
      );
    }
    return Scaffold(
      backgroundColor: AColors.BgDark,
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: playlistPvd.onScrollNotification,
        child: _PlaylistDetailsBody(
          image: Image.asset(
            ArreAssets.MY_LIKED_PLAYLIST,
            fit: BoxFit.cover,
          ),
          sliver: sliver,
          title: Text('My Liked'),
          onPlayPressed: () {
            PodPlayerV3.instance.init(
              gaContext: PlayerGAContext.playlist_play_all_btn,
              context: context,
              podSourceFuture: () {
                return SynchronousFuture(playlistPvd);
              },
            );
          },
          podSourceId: playlistPvd.podSourceId,
          onRefresh: () async {
            await Future.wait([
              ref.read(myLikedPlaylistProvider).refresh(),
            ]);
          },
        ),
      ),
    );
  }
}
