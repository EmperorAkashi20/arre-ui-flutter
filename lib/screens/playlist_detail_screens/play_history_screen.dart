part of playlist_detail_screens;

class PlayHistoryScreen extends ConsumerWidget with ArreScreen {
  const PlayHistoryScreen();

  @override
  Uri? get uri => Uri.parse('/play_history');

  @override
  String get screenName => GAScreen.PLAY_HISTORY;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/play_history") {
      return AAppPage(child: PlayHistoryScreen());
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlistPvd = ref.watch(playHistoryProvider);
    log(playlistPvd.data.toString());
    Widget sliver;
    if (playlistPvd.hasData) {
      if (playlistPvd.data!.isEmpty) {
        sliver = SliverFillRemaining(
          hasScrollBody: true,
          fillOverscroll: false,
          child: ArreErrorWidget.empty(
              message: "Looks like you haven't listened\nto any voicepods yet"),
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
                  // context: context,
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
        child: ArreErrorWidget.empty(message: "No history found"),
      );
    }
    return Scaffold(
      backgroundColor: AColors.BgDark,
      body: NotificationListener(
        onNotification: playlistPvd.onScrollNotification,
        child: _PlaylistDetailsBody(
          image: Image.asset(
            ArreAssets.HISTORY_PLAYLIST,
            fit: BoxFit.cover,
          ),
          sliver: sliver,
          title: Text('Play History'),
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
              ref.read(playHistoryProvider).refresh(),
            ]);
          },
        ),
      ),
    );
  }
}
