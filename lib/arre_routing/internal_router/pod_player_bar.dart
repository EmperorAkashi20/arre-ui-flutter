part of arre_router;

const kPodBarHeight = 68.0;

class _PodPlayerBar extends ConsumerStatefulWidget {
  @override
  ConsumerState createState() => __PodPlayerBarState();
}

class __PodPlayerBarState extends ConsumerState<_PodPlayerBar> {
  late StreamSubscription<bool> _playerStateSub;
  late PageController pageController = PageController();
  int _lastReportedPage = 0;
  StreamSubscription<MediaItem?>? mediaItemSub;

  @override
  void initState() {
    super.initState();
    _playerStateSub = PodPlayerV3.instance.playingValueStream.listen(
      (event) {},
      onError: (err) {
        if ({PlayerState.playing, PlayerState.completed, PlayerState.stopped}
            .contains(PodPlayerV3.instance.playerState)) {
          return;
        }
        if (AppConfig.isDevToolsEnabled) {
          debuggingLogs.add(
              "Player \nstate: ${PodPlayerV3.instance.playerState}\nisPlaying:${PodPlayerV3.instance.isPlaying}\nerror: $err");
        }
        ScaffoldMessenger.of(ArreNavigator.instance.context)
            .removeCurrentSnackBar();
        showErrorMessageSnackBar(Utils.getMessage4mError(err));
      },
    );
    mediaItemSub = PodPlayerV3.instance.mediaItem.listen((value) {
      if (_lastReportedPage != PodPlayerV3.instance.currentIndex &&
          value != null) {
        _lastReportedPage = PodPlayerV3.instance.currentIndex;
        if (arrePref.getBool(PrefKey.POD_GESTURE_USED) == true) {
          pageController.jumpToPage(PodPlayerV3.instance.currentIndex);
        } else {
          pageController.animateToPage(
            PodPlayerV3.instance.currentIndex,
            curve: Curves.easeOut,
            duration: Duration(milliseconds: 300),
          );
        }
      }
    });
  }

  bool onScrollNotification(notification) {
    if (notification.depth == 0 &&
        notification is ScrollUpdateNotification &&
        notification.dragDetails == null) {
      final PageMetrics metrics = notification.metrics as PageMetrics;
      final int currentPage = metrics.page!.round();
      if (currentPage != _lastReportedPage) {
        arreAnalytics.logEvent(
          GAEvent.POD_SWIPE_GESTURE,
          parameters: {
            EventAttribute.GESTURE:
                currentPage < _lastReportedPage ? "left" : "right"
          },
        );
        _lastReportedPage = currentPage;
        PodPlayerV3.instance.skipToQueueItem(currentPage);
        arrePref.setBool(PrefKey.POD_GESTURE_USED, true);
      }
    }
    return false;
  }

  @override
  void dispose() {
    _playerStateSub.cancel();
    mediaItemSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final podPlayerPvd = PodPlayerV3.instance;
    Widget child = Material(
      color: Color(0xFF171E26),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: kPodBarHeight,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              PlayerProgressBar(
                player: podPlayerPvd,
                padding: EdgeInsets.zero,
                height: 1,
                enableScrub: false,
              ),
              Expanded(
                child: StreamBuilder<MediaItem?>(
                    stream: podPlayerPvd.mediaItem.stream,
                    builder: (context, snapshot) {
                      if (snapshot.hasError &&
                          snapshot.error is PodInitException) {
                        return Padding(
                          padding: EdgeInsets.only(left: 16, right: 8),
                          child: _PodPlayerError(
                              exception: snapshot.error as PodInitException),
                        );
                      }

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: StreamBuilder<List<MediaItem>>(
                                initialData:
                                    PodPlayerV3.instance.queue.valueOrNull,
                                stream: PodPlayerV3.instance.queue,
                                builder: (context, snapshot) {
                                  if (snapshot.data?.isNotEmpty != true) {
                                    return _PodInfo(title: "Loading...");
                                  }
                                  return NotificationListener<
                                      ScrollNotification>(
                                    onNotification: onScrollNotification,
                                    child: PageView.builder(
                                      itemCount:
                                          podPlayerPvd.queue.value.length,
                                      controller: pageController,
                                      // onPageChanged: (value) {
                                      //   PodPlayerV3.instance.playMediaItem(
                                      //       snapshot.data![value]);
                                      // },
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final mediaItem = snapshot.data?[index];
                                        final artist = mediaItem?.artist;
                                        final userId = mediaItem?.userId;
                                        return _PodInfo(
                                          title: mediaItem?.displayTitle ??
                                              "Voicepod",
                                          username: artist,
                                          userId: userId,
                                        );
                                      },
                                    ),
                                  );
                                }),
                          ),
                          PlayerSpeedButton(
                            player: podPlayerPvd,
                            onPressed: podPlayerPvd.switchSpeed,
                          ),
                          AudioPlayerButtonState.gradient(
                            player: podPlayerPvd,
                            size: 40,
                            iconSize: 18.18,
                            gaContext: PlayerGAContext.pod_player_bar,
                          ),
                          IconButton(
                            icon: Icon(
                              ArreIconsV2.playlist,
                              size: 32,
                              color: AColors.tealPrimary,
                            ),
                            padding: EdgeInsets.all(8),
                            splashRadius: 24,
                            onPressed: () {
                              final currentRoute = _InternalRouterDelegate
                                  .instance.currentConfiguration;

                              if (currentRoute?.name ==
                                  GAScreen.CURRENT_PLAYLIST_SHEET) {
                                _InternalRouterDelegate
                                    .instance.navigatorKey.currentState
                                    ?.pop();
                              } else {
                                _InternalRouterDelegate.instance.removePages(
                                    (page) =>
                                        page.name ==
                                        GAScreen.CURRENT_PLAYLIST_SHEET);
                                ArreNavigator.instance.push(
                                  AAppModalBottomSheetPage(
                                    child: CurrentPlaylistSheet(),
                                    fullscreenDialog: true,
                                    useSafeArea: true,
                                    enableDrag: true,
                                    showDragHandle: true,
                                    isScrollControlled: true,
                                  ),
                                );
                              }
                            },
                          ),
                          SizedBox(width: 8),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
    // child = BottomSheet(
    //   onClosing: () {},
    //   builder: (_) => child,
    // );
    child = GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        final entityId = podPlayerPvd.activePod.valueOrNull?.entityId;
        arreAnalytics.logEvent(
          GAEvent.POD_PLAYER_BAR_CLICKED,
          parameters: {EventAttribute.ENTITY_ID: entityId},
        );
        if (entityId == null) return;
        final source = PodPlayerV3.instance.source;
        if (source is UserBioPodSource) {
          ArreNavigator.instance
              .push(AAppPage(child: ProfileScreen(userId: entityId)));
        } else if (source is CommunityBioPodSource) {
          ArreNavigator.instance
              .push(AAppPage(child: CommunityDetailScreen(entityId)));
        } else if (source != null) {
          ArreNavigator.instance
              .push(AAppPage(child: VoicepodDetailScreen(postId: entityId)));
        }
      },
      child: child,
    );
    // }
    child = Dismissible(
      key: ValueKey(podPlayerPvd.activePod),
      direction: DismissDirection.down,
      onDismissed: (_) {
        podPlayerPvd.stop();
        arreAnalytics.logEvent(
          GAEvent.POD_DISMISSED,
          parameters: {EventAttribute.GESTURE: "swipe_down"},
        );
        _InternalRouterDelegate.instance.removePages(
            (page) => page.name == GAScreen.CURRENT_PLAYLIST_SHEET);
      },
      child: child,
    );
    return child;
  }
}

class _PodInfo extends StatelessWidget {
  final String title;
  final String? username, userId;

  const _PodInfo({
    required this.title,
    this.username,
    this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: ATextStyles.user14Regular(AColors.white)),
          if (username != null) ...[
            SizedBox(height: 5),
            InkWell(
              onTap: () {
                ArreNavigator.instance
                    .push(AAppPage(child: ProfileScreen(userId: userId!)));
              },
              child: Text(
                username!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: ATextStyles.sys12Regular(AColors.tealPrimary),
              ),
            )
          ]
        ],
      ),
    );
  }
}

class _PodPlayerError extends StatelessWidget {
  final PodInitException exception;

  const _PodPlayerError({required this.exception});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(exception.message)),
        CupertinoButton(
          child: Text("Retry"),
          onPressed: () {
            PodPlayerV3.instance.init(
              podSourceFuture: exception.podSourceFuture,
              gaContext: PlayerGAContext.ignore,
              startIndex: exception.startIndex,
              context: null,
            );
          },
        ),
        IconButton(
          constraints: BoxConstraints(maxWidth: 36),
          onPressed: PodPlayerV3.instance.stop,
          color: AColors.greyMedium,
          icon: Icon(Icons.close),
        ),
      ],
    );
  }
}
