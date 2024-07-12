part of playlist_detail_screens;

class UserPlaylistDetailsScreen extends ConsumerStatefulWidget with ArreScreen {
  final GPlaylist? initialData;
  final String playlistId;
  final bool autoPlay;

  const UserPlaylistDetailsScreen({
    required this.playlistId,
    this.initialData,
    this.autoPlay = false,
  });

  @override
  Uri? get uri => Uri.parse('/playlist/$playlistId');

  @override
  String get screenName => GAScreen.PLAYLIST_DETAILS;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 2 && uri.pathSegments.first == "playlist") {
      return AAppPage(
        child: UserPlaylistDetailsScreen(
          playlistId: uri.pathSegments[1],
          autoPlay: true,
        ),
      );
    }
    return null;
  }

  @override
  ConsumerState createState() => _PlaylistDetailsScreenState();
}

class _PlaylistDetailsScreenState
    extends ConsumerState<UserPlaylistDetailsScreen> {
  @override
  void initState() {
    super.initState();
    ref
        .read(playlistDetailsProvider(widget.playlistId))
        .setInitialData(widget.initialData);
    if (widget.autoPlay && Utils.canAutoPlay()) {
      Future(() {
        PodPlayerV3.instance.init(
          gaContext: PlayerGAContext.auto_play,
          context: context,
          podSourceFuture: () {
            return SynchronousFuture(
                ref.read(playlistDetailsProvider(widget.playlistId)));
          },
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final playlistPvd = ref.watch(playlistDetailsProvider(widget.playlistId));
    Widget sliver;
    Widget? image, subtitle;

    if (playlistPvd.hasData) {
      image = ArreNetworkImage.mediaId(playlistPvd.data!.coverImage!);
      subtitle = playlistPvd.data!.userId == arrePref.userId
          ? Text("My Playlist")
          : UserListTile.shrink(userId: playlistPvd.data!.userId);
      subtitle = Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "From  ",
                style: ATextStyles.sys12Regular(AColors.textMedium),
              ),
              WidgetSpan(
                child: subtitle,
                style: ATextStyles.sys14Bold(AColors.textLight),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      );
      if (playlistPvd.data!.listOfPosts.isEmpty) {
        sliver = SliverFillRemaining(
          hasScrollBody: true,
          fillOverscroll: false,
          child: ArreErrorWidget.empty(message: "This playlist is empty!"),
        );
      } else {
        sliver = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => VoicepodPostCard(
              playlistPvd.data!.listOfPosts[index],
              onPlayPressed: (_) {
                PodPlayerV3.instance.init(
                  startIndex: index,
                  context: context,
                  podSourceFuture: () => SynchronousFuture(
                      ref.read(playlistDetailsProvider(widget.playlistId))),
                );
              },
            ),
            childCount: playlistPvd.data!.listOfPosts.length,
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
      body: _PlaylistDetailsBody(
        image: image,
        appBarActions: [
          if (playlistPvd.data != null)
            IconButton(
              onPressed: () {
                showPlaylistActionSheet(ref, playlistPvd.data!);
              },
              icon: Icon(ArreIconsV2.kebeb_filled),
            )
        ],
        isPrivate: playlistPvd.data?.isSystemGenerated == true
            ? null
            : playlistPvd.data?.isPrivate,
        title: Text(
          playlistPvd.data?.title ?? "",
          textAlign: TextAlign.center,
        ),
        subtitle: subtitle,
        onPlayPressed: playlistPvd.hasData
            ? () {
                PodPlayerV3.instance.init(
                  gaContext: PlayerGAContext.playlist_play_all_btn,
                  context: context,
                  podSourceFuture: () {
                    return SynchronousFuture(playlistPvd);
                  },
                );
              }
            : null,
        podSourceId: playlistPvd.podSourceId,
        onRefresh: () async {
          await Future.wait([
            ref.read(playlistDetailsProvider(widget.playlistId)).refresh(),
          ]);
        },
        sliver: sliver,
      ),
    );
  }
}
