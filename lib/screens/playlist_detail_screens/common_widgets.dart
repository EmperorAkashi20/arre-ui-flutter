part of playlist_detail_screens;

const _gaContext = PlayerGAContext.playlist_tile_play_btn;

class _PlaylistDetailsBody extends ConsumerStatefulWidget {
  final Text title;
  final Widget? subtitle;
  final Widget? image;
  final Future<void> Function() onRefresh;
  final Widget sliver;
  final List<Widget>? appBarActions;
  final bool? isPrivate;
  final VoidCallback? onPlayPressed;
  final String? podSourceId;

  const _PlaylistDetailsBody({
    Key? key,
    required this.title,
    this.subtitle,
    required this.sliver,
    required this.onRefresh,
    required this.image,
    this.isPrivate,
    required this.onPlayPressed,
    required this.podSourceId,
    this.appBarActions,
  }) : super(key: key);

  @override
  ConsumerState createState() => _PlaylistDetailsBodyState();
}

class _PlaylistDetailsBodyState extends ConsumerState<_PlaylistDetailsBody> {
  bool isTitleShownOnAppbar = false;
  StreamController<String> titleStreamController = StreamController.broadcast();

  bool onScrollUpdate(ScrollUpdateNotification scroll) {
    if (isTitleShownOnAppbar && scroll.metrics.extentBefore < 224) {
      isTitleShownOnAppbar = false;
      titleStreamController.add("Playlist");
    } else if (!isTitleShownOnAppbar && scroll.metrics.extentBefore >= 224) {
      isTitleShownOnAppbar = true;
      titleStreamController.add("Playlist - ${widget.title.data ?? ""}");
    }
    return false;
  }

  @override
  void dispose() {
    titleStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gradient = LinearGradient(
      colors: [
        Colors.black.withOpacity(0.2),
        Theme.of(context).scaffoldBackgroundColor,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    Widget? flexibleSpace;
    if (widget.image != null) {
      flexibleSpace = FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Stack(
          fit: StackFit.expand,
          children: [
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(gradient: gradient),
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
                child: widget.image,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _PlaylistImage(
                image: widget.image!,
                isPrivate: widget.isPrivate,
              ),
            ),
          ],
        ),
      );
    }
    return RefreshIndicator(
      onRefresh: widget.onRefresh,
      child: NotificationListener<ScrollUpdateNotification>(
        onNotification: onScrollUpdate,
        child: CustomScrollView(
          restorationId: "playlist",
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverAppBar(
              title: StreamBuilder<String>(
                  stream: titleStreamController.stream,
                  initialData: "Playlist",
                  builder: (context, snapshot) {
                    return Text(snapshot.data ?? "Playlist");
                  }),
              leading: ABackButton(),
              actions: widget.appBarActions,
              stretch: true,
              pinned: true,
              expandedHeight: flexibleSpace != null ? 246 : null,
              flexibleSpace: flexibleSpace,
            ),
            if (widget.onPlayPressed != null)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _PlaylistDetailsSection(
                    title: widget.title,
                    subtitle: widget.subtitle,
                    onPlayPressed: widget.onPlayPressed,
                    podSourceId: widget.podSourceId,
                  ),
                ),
              ),
            SliverSafeArea(top: false, sliver: widget.sliver),
          ],
        ),
      ),
    );
  }
}

class _PlaylistDetailsSection extends ConsumerWidget {
  final Widget title;
  final VoidCallback? onPlayPressed;
  final Widget? subtitle;
  final String? podSourceId;

  const _PlaylistDetailsSection({
    Key? key,
    required this.title,
    required this.onPlayPressed,
    required this.subtitle,
    required this.podSourceId,
  }) : super(key: key);

  bool isPlaylistEqualTo(PodPlayerSource? playingSource) {
    return (playingSource is ArrePlaylistPostsProvider &&
            playingSource.podSourceId == podSourceId) ||
        (playingSource is PodPlaylistWithPostIDs &&
            playingSource.podSourceId == podSourceId);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        DefaultTextStyle(style: ATextStyles.sys18Bold(), child: title),
        const SizedBox(height: 4),
        if (subtitle != null) ...[
          subtitle!,
          const SizedBox(height: 4),
        ],
        ValueListenableBuilder(
          valueListenable: PodPlayerV3.instance.sourceNotifier,
          builder: (context, playingSource, _) {
            if (isPlaylistEqualTo(playingSource)) {
              return Center(
                child: FilledButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(104, 28)),
                  ),
                  onPressed: () {
                    PodPlayerV3.instance.isPlaying
                        ? PodPlayerV3.instance.pause(_gaContext)
                        : PodPlayerV3.instance.play(_gaContext);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      StreamBuilder(
                        stream: PodPlayerV3.instance.playingValueStream,
                        builder: (context, snapshot) {
                          return ACommonLoader.dancingBars(
                            size: 20,
                            animate: snapshot.data == true,
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Playing All",
                        style: ATextStyles.sys14Bold(),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Center(
                child: FilledButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(104, 28)),
                  ),
                  onPressed: onPlayPressed,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(ArreIconsV2.play_filled, size: 20),
                      SizedBox(width: 5),
                      Text(
                        "Play All",
                        style: ATextStyles.sys14Bold(),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}

class _PlaylistImage extends StatelessWidget implements PreferredSizeWidget {
  final Widget image;
  final bool? isPrivate;

  const _PlaylistImage({
    required this.image,
    required this.isPrivate,
  });

  @override
  Size get preferredSize => Size.square(167 + 16);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: preferredSize,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: image,
              ),
            ),
            if (isPrivate != null)
              Positioned(
                top: 5,
                right: 5,
                child: CircleAvatar(
                  backgroundColor: AColors.BgDark,
                  radius: 10,
                  child: Icon(
                    isPrivate == true
                        ? ArreIconsV2.private_filled
                        : ArreIconsV2.public_filled,
                    color: AColors.tealPrimary,
                    size: 16,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
