part of communities;

const _kSpaceBetweenInfo = 10.0;

class CommunityDetailScreen extends ConsumerStatefulWidget with ArreScreen {
  final String communityId;

  const CommunityDetailScreen(this.communityId, {super.key});

  @override
  ConsumerState createState() => _CommunityDetailScreenState();

  @override
  Uri get uri => Uri.parse("/voiceclub/c/$communityId");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 3 &&
        uri.pathSegments[0] == "voiceclub" &&
        uri.pathSegments[1] == "c") {
      return AAppPage(child: CommunityDetailScreen(uri.pathSegments[2]));
    }
    return null;
  }

  @override
  String get screenName => GAScreen.VOICECLUB_DETAIL_SCREEN;
}

class _CommunityDetailScreenState extends ConsumerState<CommunityDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final communityPvd = ref.watch(communityProvider(widget.communityId));
    Widget child;
    if (communityPvd.hasData) {
      child = _Body(communityId: communityPvd.communityId);
    } else if (communityPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget(
          error: communityPvd.error,
          onPressed: () {
            communityPvd.refresh();
          },
        ),
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(communityPvd.data?.title ?? ""),
          elevation: 0,
          backgroundColor: AColors.BgLight,
          leading: Navigator.of(context).canPop() ? ABackButton() : null,
          titleSpacing: Navigator.of(context).canPop() ? 0 : 20,
          actions: [
            if (communityPvd.hasData) ...[
              if (communityPvd.data?.isAdmin == true)
                IconButton(
                  onPressed: () => ArreNavigator.instance.push(AAppPage(
                      child: CommunityAdminLogsScreen(widget.communityId))),
                  icon: Icon(ArreIconsV2.shield_outline),
                  visualDensity: VisualDensity.compact,
                ),
              if (communityPvd.data?.isMember == true)
                IconButton(
                  onPressed: () => _showCommunityShareSheet(
                    context: context,
                    community: communityPvd.data!,
                  ),
                  icon: Icon(ArreIconsV2.user_plus_outline),
                  visualDensity: VisualDensity.compact,
                ),
              IconButton(
                onPressed: () =>
                    _showCommunityActionsSheet(ref, communityPvd.data!),
                icon: Icon(ArreIconsV2.kebeb_filled),
                visualDensity: VisualDensity.compact,
              ),
            ]
          ],
        ),
        body: child,
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  final String communityId;

  const _Body({
    Key? key,
    required this.communityId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canPostVoicepod = ref.watch(
      communityProvider(communityId).select((value) => value.canPostVoicepod),
    );
    Widget child = RefreshIndicator(
      color: Colors.white,
      onRefresh: () async {
        await Future.wait([
          ref.read(communityProvider(communityId)).refresh(),
          if (DefaultTabController.of(context).index == 0)
            ref.read(communityFeedProvider(communityId)).refresh(),
          if (DefaultTabController.of(context).index == 1)
            ref.read(communityChatsProvider(communityId)).refresh(),
          if (DefaultTabController.of(context).index == 2)
            ref.read(communityMembersProvider(communityId)).refresh(),
        ]);
      },
      notificationPredicate: (ScrollNotification notification) {
        return notification.depth == 2;
      },
      child: NestedScrollView(
        restorationId: "profile_screen_scroll",
        physics: AlwaysScrollableScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: _CommunityAppBar(communityId),
            ),
          ];
        },
        body: TabBarView(
          children: [
            _CommunityVoicepodsList(communityId),
            _CommunityChats(communityId),
            _CommunityMembers(communityId),
          ],
        ),
      ),
    );

    if (canPostVoicepod) {
      return Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(child: child),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _PodCreateButton(onPressed: () {
              openCreatorStudio(context, communityId: communityId);
            }),
          ),
        ],
      );
    }
    return child;
  }
}

class _CommunityAppBar extends ConsumerStatefulWidget {
  final String communityId;

  const _CommunityAppBar(
    this.communityId, {
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CommunityAppBarState();
}

class _CommunityAppBarState extends ConsumerState<_CommunityAppBar> {
  final profileInfoChildKey = GlobalKey();
  double? expandableHeight;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!mounted) return;
      final newHeight =
          (profileInfoChildKey.currentContext!.findRenderObject() as RenderBox)
              .size
              .height;
      if (expandableHeight != newHeight) {
        setState(() {
          expandableHeight = newHeight;
        });
      }
    });
    return SliverAppBar(
      primary: false,
      floating: true,
      snap: false,
      automaticallyImplyLeading: false,
      pinned: true,
      collapsedHeight: 12,
      expandedHeight: (expandableHeight ?? 120) + 56,
      toolbarHeight: 12,
      backgroundColor: Color(0xFF171E26),
      flexibleSpace: FlexibleSpaceBar(
        background: Align(
          alignment: Alignment.topCenter,
          child: _CommunityInfo(
            key: profileInfoChildKey,
            communityId: widget.communityId,
            onDismissProfileNudge: () {},
          ),
        ),
        collapseMode: CollapseMode.pin,
      ),
      bottom: PreferredSize(
        preferredSize: Size(double.maxFinite, 48.0),
        child: Stack(
          children: [
            Positioned(
              bottom: 6,
              left: 18,
              right: 18,
              child: Container(
                color: AColors.BgStroke,
                height: 2,
              ),
            ),
            TabBar(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              unselectedLabelStyle: ATextStyles.sys14Regular(),
              labelStyle: ATextStyles.sys14Regular(),
              labelColor: AColors.tealPrimary,
              labelPadding: EdgeInsets.all(0),
              tabAlignment: TabAlignment.fill,
              // indicatorWeight: 2,
              splashBorderRadius: BorderRadius.circular(24),
              unselectedLabelColor: AColors.white.withOpacity(0.4),
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(ArreIconsV2.voicepod_outline),
                      SizedBox(width: 6),
                      Flexible(
                        child: Text(
                          "Feed",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(ArreIconsV2.audio_message_outline),
                      SizedBox(width: 6),
                      Flexible(
                        child: Text(
                          "Chats",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(ArreIconsV2.users),
                      SizedBox(width: 6),
                      Flexible(
                        child: Text(
                          "Members",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CommunityInfo extends ConsumerStatefulWidget {
  final String communityId;
  final VoidCallback onDismissProfileNudge;

  const _CommunityInfo({
    required this.communityId,
    required this.onDismissProfileNudge,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CommunityInfoState();
}

class _CommunityInfoState extends ConsumerState<_CommunityInfo> {
  @override
  Widget build(BuildContext context) {
    final community = ref.watch(communityProvider(widget.communityId)).data!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!community.hasMatchingLanguages)
          _LanguagesNoMatchInfo(widget.communityId),
        Container(
          margin: EdgeInsets.only(
              left: 16, bottom: _kSpaceBetweenInfo / 2, top: 20),
          padding: EdgeInsets.only(right: 20, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: UserAvatarV2(
                            mediaId: community.thumbnailMediaId,
                            userName: community.title,
                            size: 60,
                            showThumbnail: false,
                          ),
                        ),
                        Positioned(
                          left: 35,
                          top: 35,
                          child: _VoiceBioPlayButton(widget.communityId),
                        )
                      ],
                    ),
                    SizedBox(width: 18),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4, top: 4),
                            child: Text(
                              community.title,
                              overflow: TextOverflow.ellipsis,
                              style: ATextStyles.sys14Bold(),
                            ),
                          ),
                          Tooltip(
                            message:
                                '${community.membersCount.formatWithCommas}',
                            child: Text(
                              community.membersCount.getLabel(
                                zero: "No members",
                                one: "1 member",
                                many:
                                    "${community.membersCount.shortify} members",
                              ),
                              style:
                                  ATextStyles.sys14Regular(AColors.textMedium),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (!community.isMember)
                FilledFlatButton(
                  onPressed: community.hasMatchingLanguages
                      ? () => _pushJoinScreen(
                            community: community,
                            ref: ref,
                            gaContext: 'primary',
                          )
                      : null,
                  child: Text("Join"),
                )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Text(
            community.description,
            // expandText: '',
            // animation: true,
            // linkStyle: ATextStyles.user12Regular(),
            // urlStyle: ATextStyles.user14Regular(AColors.tealPrimary),
            // onUrlTap: (value) => null,
            // hashtagStyle: ATextStyles.sys14Regular(AColors.tealPrimary),
            style: ATextStyles.sys14Regular(AColors.greyLight),
          ),
        ),
        SizedBox(height: 8),
        if (community.topics.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "You will love this voiceclub if you like",
              style: ATextStyles.sys12Regular(AColors.textLight),
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              runSpacing: 8,
              spacing: 10,
              children: community.topics.map((p0) => _TagChip(p0)).toList(),
            ),
          ),
          SizedBox(height: 16),
        ],
        if (community.languages.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "We speak",
              style: ATextStyles.sys12Regular(AColors.textLight),
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              runSpacing: 10,
              spacing: 10,
              children: community.languages
                  .map((p0) => _TagChip(p0.titleCase))
                  .toList(),
            ),
          ),
          SizedBox(height: 8),
        ],
      ],
    );
  }
}

class _VoiceBioPlayButton extends ConsumerStatefulWidget {
  final String communityId;

  const _VoiceBioPlayButton(this.communityId);

  @override
  ConsumerState createState() => __VoiceBioPlayButtonState();
}

class __VoiceBioPlayButtonState extends ConsumerState<_VoiceBioPlayButton> {
  final padding =
      EdgeInsets.symmetric(horizontal: 20, vertical: _kSpaceBetweenInfo / 2);

  void playVoiceBio(String mediaId) {
    final communityPvd = ref.read(communityProvider(widget.communityId));
    final source = PodPlayerV3.instance.source;
    if (source is UserBioPodSource && source.userId == widget.communityId) {
      PodPlayerV3.instance.stop();
      return;
    }

    if (communityPvd.data?.audioBioMediaId.isValid != true) return;

    final voiceBioItemSource = CommunityBioPodSource(
      audioMediaId: communityPvd.data!.audioBioMediaId!,
      communityId: widget.communityId,
      name: communityPvd.data!.title,
      profilePictureMediaId: communityPvd.data!.thumbnailMediaId,
    );

    PodPlayerV3.instance.init(
      gaContext: PlayerGAContext.voice_bio,
      context: context,
      podSourceFuture: () => SynchronousFuture(voiceBioItemSource),
      startIndex: 0,
      // context: context,
      // gaContext: PlayerGAContext.voice_bio,
    );
  }

  Widget buildPlayButton(String mediaId, bool isPlaying) {
    Widget playButton;
    if (isPlaying) {
      playButton = AudioPlayerButtonState.gradient(
        player: PodPlayerV3.instance,
        size: 28,
        iconSize: 14,
        gaContext: PlayerGAContext.voice_bio,
      );
    } else {
      playButton = ArreGradientIconButton(
        size: 28,
        icon: Icon(ArreIconsV2.play_filled, size: 14),
        onPressed: () => playVoiceBio(mediaId),
      );
    }
    return playButton;
  }

  @override
  Widget build(BuildContext context) {
    // return buildPlayButton("mediaId", false);
    return StreamBuilder(
      stream: PodPlayerV3.instance.activePod,
      builder: (BuildContext context, AsyncSnapshot<MediaItem?> snapshot) {
        final profilePvd = ref.watch(communityProvider(widget.communityId));
        final mediaId = profilePvd.data?.audioBioMediaId;
        if (mediaId?.isNotEmpty ?? false) {
          final isPlaying = snapshot.data?.mediaId == mediaId;
          return buildPlayButton(mediaId!, isPlaying);
          // } else if (profilePvd.isCurrentUser) {
          //   return ArreGradientIconButton(
          //     size: 28,
          //     icon: Icon(ArreIconsV2.mic_filled, size: 14),
          //     onPressed: () => _openEditProfileScreen(ref, scrollToEnd: true),
          //   );
        } else {
          return SizedBox();
        }
      },
    );
  }
}

class _CommunityVoicepodsList extends ConsumerStatefulWidget {
  final String communityId;

  const _CommunityVoicepodsList(
    this.communityId, {
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CommunityVoicepodsListState();
}

class _CommunityVoicepodsListState
    extends ConsumerState<_CommunityVoicepodsList>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    ref.read(communityFeedProvider(widget.communityId)).title =
        ref.read(communityProvider(widget.communityId)).data?.title;
    arreAnalytics.logEvent(
      GAEvent.VC_VOICECLUB_VISIBLE_TAB,
      parameters: {EventAttribute.GA_CONTEXT: "feed"},
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final communityFeedPvd =
        ref.watch(communityFeedProvider(widget.communityId));

    Widget child;
    if (communityFeedPvd.hasData) {
      if (communityFeedPvd.posts!.isNotEmpty) {
        child = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => VoicepodPostCard(
              communityFeedPvd.posts![index].postId,
              postDetails: communityFeedPvd.posts![index],
              onPlayPressed: (_) => PodPlayerV3.instance.init(
                context: context,
                podSourceFuture: () {
                  return SynchronousFuture(communityFeedPvd);
                },
                startIndex: index + (communityFeedPvd.pinnedPosts?.length ?? 0),
              ),
            ),
            childCount: communityFeedPvd.posts!.length,
          ),
        );
      } else {
        child = SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.only(bottom: 56),
            child: ArreErrorWidget.empty(message: "Pretty empty out here"),
          ),
        );
      }
    } else if (communityFeedPvd.isLoading) {
      child = SliverFillRemaining(
        child: Center(child: ACommonLoader()),
      );
    } else {
      child = SliverFillRemaining(
        child: ArreErrorWidget(
          error: communityFeedPvd.error,
          onPressed: communityFeedPvd.refresh,
        ),
      );
    }

    return NotificationListener<ScrollUpdateNotification>(
      onNotification: communityFeedPvd.onScrollNotification,
      child: CustomScrollView(
        restorationId: "community_screen_voicepods",
        // The "controller" and "primary" members should be left
        // unset, so that the NestedScrollView can control this
        // inner scroll view.
        // If the "controller" property is set, then this scroll
        // view will not be associated with the NestedScrollView.
        slivers: <Widget>[
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          if (communityFeedPvd.pinnedItems?.isNotEmpty ?? false) ...[
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Icon(
                      ArreIconsV2.pin,
                      color: AColors.textDark,
                      size: 16,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "Pinned Voicepods and Chats",
                      style: ATextStyles.sys14Regular(AColors.textDark),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final pinItem = communityFeedPvd.pinnedItems![index];
                  if (pinItem is Post) {
                    return VoicepodPostCard(
                      pinItem.postId,
                      postDetails: pinItem,
                      onPlayPressed: (_) {
                        final pinnedPostIndex =
                            communityFeedPvd.getPinnedPostIndex(pinItem);
                        PodPlayerV3.instance.init(
                          context: context,
                          podSourceFuture: () =>
                              SynchronousFuture(communityFeedPvd),
                          startIndex: pinnedPostIndex,
                        );
                      },
                    );
                  } else if (pinItem is CommunityChat) {
                    return _CommunityChatTile(
                      chat: pinItem,
                      onTap: () {
                        _pushCommunityChatScreen(
                          ref: ref,
                          chatDetails: pinItem,
                          chatId: pinItem.chatId,
                          communityId: widget.communityId,
                        );
                      },
                    );
                  } else {
                    return null;
                  }
                },
                childCount: communityFeedPvd.pinnedItems?.length ?? 0,
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(
                indent: 20,
                endIndent: 20,
                thickness: 0.5,
              ),
            ),
          ],
          SliverSafeArea(
            minimum: EdgeInsets.only(bottom: 8),
            sliver: SliverPadding(
              padding: EdgeInsets.only(bottom: 68),
              sliver: child,
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _CommunityMembers extends ConsumerStatefulWidget {
  final String communityId;

  const _CommunityMembers(this.communityId);

  @override
  ConsumerState createState() => __CommunityMembersState();
}

class __CommunityMembersState extends ConsumerState<_CommunityMembers>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    arreAnalytics.logEvent(
      GAEvent.VC_VOICECLUB_VISIBLE_TAB,
      parameters: {EventAttribute.GA_CONTEXT: "members"},
    );
  }

  void showActionSheet(ArreUser user) {
    _showMemberActionsSheet(
      ref: ref,
      community: ref.read(communityProvider(widget.communityId)).data!,
      user: user,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final community = ref.watch(communityProvider(widget.communityId)).data!;
    final communityMembersPvd =
        ref.watch(communityMembersProvider(widget.communityId));

    Widget child;
    if (communityMembersPvd.hasData) {
      final members = communityMembersPvd.data!;
      if (members.isNotEmpty) {
        child = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => UserListTile(
              userId: members[index].userId,
              userDetails: members[index],
              showMessageButton: true,
              padding: EdgeInsets.fromLTRB(20, 6, 12, 6),
              actionButton: IconButton(
                onPressed: () => showActionSheet(members[index]),
                splashRadius: 24,
                icon: Icon(ArreIconsV2.kebeb_filled),
              ),
            ),
            childCount: communityMembersPvd.data?.length ?? 0,
          ),
        );
      } else {
        child = SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.only(bottom: 56),
            child: ArreErrorWidget.empty(message: "Pretty empty out here"),
          ),
        );
      }
    } else if (communityMembersPvd.isLoading) {
      child = SliverFillRemaining(
        child: Center(child: ACommonLoader()),
      );
    } else {
      child = SliverFillRemaining(
        child: ArreErrorWidget(
          error: communityMembersPvd.error,
          onPressed: communityMembersPvd.refresh,
        ),
      );
    }

    return NotificationListener<ScrollUpdateNotification>(
      onNotification: communityMembersPvd.onScrollNotification,
      child: CustomScrollView(
        restorationId: "community_members",
        // The "controller" and "primary" members should be left
        // unset, so that the NestedScrollView can control this
        // inner scroll view.
        // If the "controller" property is set, then this scroll
        // view will not be associated with the NestedScrollView.
        slivers: <Widget>[
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          if (community.admins.isNotEmpty) ...[
            SliverPadding(
              padding: EdgeInsets.fromLTRB(20, 16, 20, 4),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Admins",
                  style: ATextStyles.sys14Bold(),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => UserListTile(
                  userId: community.admins[index],
                  showMessageButton: true,
                  padding: EdgeInsets.fromLTRB(20, 6, 12, 6),
                  actionButton: IconButton(
                    onPressed: () {
                      final user = ref
                          .read(userShortDataProvider)
                          .getData(community.admins[index])!;
                      showActionSheet(user);
                    },
                    splashRadius: 24,
                    icon: Icon(ArreIconsV2.kebeb_filled),
                  ),
                ),
                childCount: community.admins.length,
              ),
            ),
          ],
          if (communityMembersPvd.data?.isNotEmpty ?? false)
            SliverPadding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(height: 36),
                    // SizedBox(height: 20),
                    Text(
                      "Members (${community.membersCount})",
                      style: ATextStyles.sys14Bold(),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        ArreNavigator.instance.push(AAppPage(
                          child: CommunityMemberSearchScreen(
                            communityId: community.communityId,
                            initialUsers: communityMembersPvd.data!,
                          ),
                        ));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        decoration: BoxDecoration(
                          color: AColors.BgLight,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              ArreIconsV2.search_outline,
                              size: 16,
                              color: AColors.textDark,
                            ),
                            SizedBox(width: 8),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Text(
                                "Search Members",
                                style:
                                    ATextStyles.sys14Regular(AColors.textDark),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          SliverSafeArea(
            minimum: EdgeInsets.only(bottom: 8),
            sliver: SliverPadding(
              padding: EdgeInsets.only(bottom: 68),
              sliver: child,
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _TagChip extends StatelessWidget {
  final String text;

  const _TagChip(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AColors.BgStroke),
      ),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: Text(
        text,
        maxLines: 1,
        style: ATextStyles.sys12Regular(AColors.textMedium),
      ),
    );
  }
}

class _LanguagesNoMatchInfo extends ConsumerStatefulWidget {
  final String communityId;

  _LanguagesNoMatchInfo(this.communityId);

  @override
  ConsumerState createState() => __LanguagesNoMatchInfoState();
}

class __LanguagesNoMatchInfoState extends ConsumerState<_LanguagesNoMatchInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        color: AColors.BgLight,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AColors.BgDark,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "Languages Don't Match",
                  style: ATextStyles.sys12Regular(AColors.textMedium),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  "It seems like the languages this community speaks in does not match your preferred languages",
                  style: ATextStyles.sys12Regular(AColors.textMedium),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                ArreNavigator.instance
                    .push(AAppPage(child: DiscoverCommunitiesScreen()));
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 32)),
              ),
              child: Text(
                "Discover Voiceclubs",
                style: ATextStyles.sys12Bold(AColors.white),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () async {
                final selectedLanguages = await showLanguageSelectionSheet();
                if (selectedLanguages != null) {
                  showFutureLoaderDialog(ref
                      .read(communityProvider(widget.communityId))
                      .refresh());
                }
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                side: MaterialStatePropertyAll(
                    BorderSide(color: AColors.tealPrimary)),
                foregroundColor: MaterialStatePropertyAll(AColors.tealPrimary),
                fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 32)),
              ),
              child: Text(
                "Language Settings",
                style: ATextStyles.sys12Bold(AColors.tealPrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PodCreateButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _PodCreateButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).scaffoldBackgroundColor,
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: onPressed,
                splashColor: AColors.orangePrimary,
                borderRadius: BorderRadius.circular(32),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 36, minWidth: 252),
                  child: Ink(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFFA553),
                          Color(0xFFEE8C34),
                          Color(0xFFEA5434),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create Voicepod in Voiceclub",
                          style: ATextStyles.sys14Bold(AColors.white, 1.6),
                        ),
                        SizedBox(width: 8),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Icon(ArreIconsV2.create_filled, size: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _pushJoinScreen({
  required GArreCommunity community,
  required WidgetRef ref,
  required String gaContext,
}) {
  arreAnalytics.logEvent(
    GAEvent.VC_JOIN_TAP,
    parameters: {
      EventAttribute.ENTITY_TYPE: EntityType.voiceclub.name,
      EventAttribute.ENTITY_ID: community.communityId,
      EventAttribute.GA_CONTEXT: gaContext,
    },
  );
  ArreNavigator.instance.push(
    AAppPage(
      child: CommunityJoinScreen(
        title: community.title,
        rules: community.rules.toList(),
        acceptCallback: () =>
            CommunityActionManager.joinCommunity(community.communityId, ref),
      ),
    ),
  );
}
