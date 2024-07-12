part of playlist_detail_screens;

class ArrePlaylistDetailsScreen extends ConsumerStatefulWidget with ArreScreen {
  final bool autoPlay;
  final String sectionUniqueLink;
  final String coverImageId;
  final String title;
  final String subtitle;

  const ArrePlaylistDetailsScreen({
    required this.sectionUniqueLink,
    required this.coverImageId,
    required this.title,
    String? subtitle,
    this.autoPlay = false,
  }) : this.subtitle = subtitle ?? "Arré Voice";

  @override
  Uri? get uri => Uri.parse(
      "/arre_playlist/$sectionUniqueLink?title=${Uri.encodeComponent(title)}&cm=$coverImageId");

  @override
  String get screenName => GAScreen.ARRE_PLAYLIST;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.firstOrNull == "arre_playlist" &&
        uri.pathSegments.length == 2 &&
        uri.queryParameters.containsKey("title") &&
        uri.queryParameters.containsKey("cm")) {
      return AAppPage(
        child: ArrePlaylistDetailsScreen(
          sectionUniqueLink: uri.pathSegments.last,
          coverImageId: uri.queryParameters["title"]!,
          title: uri.queryParameters["cm"]!,
          subtitle: uri.queryParameters["subtitle"],
          autoPlay: true,
        ),
      );
    }
    return null;
  }

  @override
  ConsumerState createState() => _ArrePlaylistScreenState();
}

class _ArrePlaylistScreenState
    extends ConsumerState<ArrePlaylistDetailsScreen> {
  @override
  void initState() {
    super.initState();
    final playlistPvd =
        ref.read(arrePlaylistPostsProvider(widget.sectionUniqueLink));
    playlistPvd.playlistTitle = widget.title;
    if (widget.autoPlay && Utils.canAutoPlay()) {
      Future(() {
        PodPlayerV3.instance.init(
          podSourceFuture: () {
            return SynchronousFuture(playlistPvd);
          },
          gaContext: PlayerGAContext.auto_play,
          context: context,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final playlistPvd =
        ref.watch(arrePlaylistPostsProvider(widget.sectionUniqueLink));
    Widget sliver;
    if (playlistPvd.hasData) {
      if (playlistPvd.data!.isEmpty) {
        sliver = SliverFillRemaining(
          hasScrollBody: true,
          fillOverscroll: false,
          child: ArreErrorWidget.empty(message: "This playlist is empty!"),
        );
      } else {
        sliver = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => VoicepodPostCard(
              playlistPvd.data![index].postId,
              postDetails: playlistPvd.data![index],
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
        child: ArreErrorWidget.empty(message: "No voicepods found"),
      );
    }
    return Scaffold(
      backgroundColor: AColors.BgDark,
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: playlistPvd.onScrollNotification,
        child: _PlaylistDetailsBody(
          image: ArreNetworkImage.mediaId(widget.coverImageId),
          sliver: sliver,
          title: Text(widget.title, textAlign: TextAlign.center),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              widget.subtitle,
              style: ATextStyles.sys12Regular(AColors.textMedium),
              textAlign: TextAlign.center,
            ),
          ),
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
              ref
                  .read(arrePlaylistPostsProvider(widget.sectionUniqueLink))
                  .refresh(),
            ]);
          },
        ),
      ),
    );
  }
}
