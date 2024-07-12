part of voicepod;

class _PodEmbedWidget extends ConsumerWidget {
  final Post post;

  const _PodEmbedWidget(
    this.post, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(post.hasAnyMedia);
    Widget? child;
    final heroTag = post;
    if (post.mediaTypeIsImage) {
      child = GestureDetector(
        onTap: () {
          showPhotoViewDialog(
            context: context,
            mediaId: post.imageMediaId,
            heroTag: heroTag,
          );
        },
        child: Hero(
          tag: heroTag,
          child: ArreNetworkImage.mediaId(
            post.imageMediaId!,
            showThumbnail: true,
            fit: BoxFit.cover,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      );
    } else if (post.mediaTypeIsVideo) {
      child = _PodEmbedVideoPlayer(
        post,
        fit: BoxFit.cover,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      );
    }
    if (child != null) {
      child = Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: child,
        ),
      );
    }
    return child ?? SizedBox();
  }
}

class _PodEmbedVideoPlayer extends ConsumerStatefulWidget {
  final Post post;
  final BoxFit fit;
  final ShapeBorder shape;

  const _PodEmbedVideoPlayer(
    this.post, {
    Key? key,
    required this.fit,
    required this.shape,
  }) : super(key: key);

  @override
  ConsumerState createState() => __PodEmbedVideoPlayerState();
}

class __PodEmbedVideoPlayerState extends ConsumerState<_PodEmbedVideoPlayer>
    with RouteAware {
  late bool _isCurrentRouteOnTop;
  VisibilityInfo? visibilityInfo;
  late VideoPlayerProvider videoPlayerProvider;
  bool _pausedManually = false;

  PostVisibilityKey? get spotlightPost =>
      PostVisibilityProvider.instance.curSpotlightPost.value;

  @override
  void initState() {
    super.initState();
    PostVisibilityProvider.instance.curSpotlightPost
        .addListener(_onSpotlightVideoChange);
    videoPlayerProvider = VideoPlayerProvider(
      widget.post.videoMediaId!,
      debugLabel: widget.post.postId,
    );
    _isCurrentRouteOnTop = true;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    appRouteObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  Future<void> _onSpotlightVideoChange() async {
    if (videoPlayerProvider.isDisposed) return;
    if (spotlightPost == PostVisibilityKey.fromPostData(widget.post) &&
        _isCurrentRouteOnTop &&
        !_pausedManually) {
      log("Play ${widget.post.title}", name: widget.post.postId);
      // if (videoPlayerProvider.isInitialized) {
      //   await videoPlayerProvider.play();
      // } else {
      await videoPlayerProvider.init();
      // }
    } else {
      log("Pause ${widget.post.title}", name: widget.post.postId);
      await videoPlayerProvider.pause();
    }
  }

  @override
  void didPushNext() {
    PostVisibilityProvider.instance
        .setInvisible(PostVisibilityKey.fromPostData(widget.post));
    _isCurrentRouteOnTop = false;
    super.didPush();
  }

  @override
  void didPopNext() {
    PostVisibilityProvider.instance
        .setInvisible(PostVisibilityKey.fromPostData(widget.post));
    _isCurrentRouteOnTop = true;
    super.didPopNext();
  }

  @override
  void deactivate() {
    PostVisibilityProvider.instance
        .setInvisible(PostVisibilityKey.fromPostData(widget.post));
    log("Deactivate ${widget.post.title}");
    super.deactivate();
  }

  @override
  void dispose() {
    appRouteObserver.unsubscribe(this);
    videoPlayerProvider.dispose();
    PostVisibilityProvider.instance.curSpotlightPost
        .removeListener(_onSpotlightVideoChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: videoPlayerProvider.isPlaying,
        builder: (context, isPlaying, child) {
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black26),
            // key: ValueKey(widget.post),
            // onVisibilityChanged: PostImpressionProvider.instance.setVisibilityInfo,
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (!videoPlayerProvider.isInitialized ||
                    videoPlayerProvider.isCompleted)
                  Positioned.fill(
                    child: ArreNetworkImage.mediaId(
                      widget.post.videoMediaId!,
                      showThumbnail: true,
                      shape: widget.shape,
                      fit: BoxFit.contain,
                    ),
                  ),
                if (videoPlayerProvider.isInitialized &&
                    !videoPlayerProvider.isCompleted)
                  Center(
                    child: AspectRatio(
                      aspectRatio:
                          videoPlayerProvider.controller.value.aspectRatio,
                      child: VideoPlayer(videoPlayerProvider.controller),
                    ),
                  ),
                if (isPlaying)
                  Material(
                    type: MaterialType.transparency,
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        videoPlayerProvider.pause();
                        _pausedManually = true;
                      },
                    ),
                  )
                else
                  Material(
                    type: MaterialType.transparency,
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: videoPlayerProvider.play,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.black45,
                          radius: 24,
                          child: videoPlayerProvider.isCompleted
                              ? Icon(
                                  ArreIconsV2.restart_outline,
                                  size: 32,
                                  color: Colors.white,
                                )
                              : Icon(
                                  ArreIconsV2.play_filled,
                                  size: 20,
                                  color: Colors.white70,
                                ),
                        ),
                      ),
                    ),
                  ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Material(
                    type: MaterialType.transparency,
                    child: ValueListenableBuilder(
                      valueListenable: videoPlayerProvider.isMuted,
                      builder: (context, isMuted, child) {
                        if (isMuted) {
                          return IconButton(
                            splashRadius: 24,
                            onPressed: () => MediaSoundManager.instance
                                .unMuteThisType(videoPlayerProvider),
                            icon: Icon(
                              ArreIconsV2.volumeoff_filled,
                              color: Colors.white70,
                            ),
                          );
                        } else {
                          return IconButton(
                            splashRadius: 24,
                            onPressed: () => MediaSoundManager.instance
                                .muteThisType(videoPlayerProvider),
                            icon: Icon(
                              ArreIconsV2.volume_up_filled,
                              color: Colors.white70,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
