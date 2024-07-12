part of voicepod;

class VoicepodDetailScreen extends ConsumerStatefulWidget with ArreScreen {
  final String postId;
  final bool autoPlay;
  final bool showFirstTimeCta;
  final String? pinnedCommentId;
  final String? pinnedReplyId;

  const VoicepodDetailScreen({
    Key? key,
    required this.postId,
    this.autoPlay = false,
    this.showFirstTimeCta = false,
    this.pinnedCommentId,
    this.pinnedReplyId,
  }) : super(key: key);

  @override
  ConsumerState createState() => _VoicepodDetailScreenState();

  @override
  Uri? get uri => Uri(
      path: "/voicepod/$postId",
      queryParameters: {
        if (pinnedCommentId != null) "pcid": pinnedCommentId,
        if (pinnedReplyId != null) "prid": pinnedReplyId
      }.validValue);

  @override
  String get screenName => GAScreen.VOICEPOD_DETAIL;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 2 && uri.pathSegments.first == "voicepod") {
      return AAppPage(
        child: VoicepodDetailScreen(
          postId: uri.pathSegments[1],
          autoPlay: true,
          pinnedCommentId: uri.queryParameters["pcid"].validValue,
          pinnedReplyId: uri.queryParameters["prid"].validValue,
        ),
      );
    }
    return null;
  }
}

class _VoicepodDetailScreenState extends ConsumerState<VoicepodDetailScreen>
    with RouteAware, NoAppResizeToAvoidBottomInset {
  @override
  void initState() {
    super.initState();
    ref.read(userPostRelationsProvider).fetchData(widget.postId);
    ref.read(postDataProvider).fetchData(widget.postId).then((value) {
      if (!mounted) return;
      //Auto play
      if (value != null && widget.autoPlay && Utils.canAutoPlay()) {
        Future(() {
          PodPlayerV3.instance.init(
            gaContext: PlayerGAContext.auto_play,
            context: context,
            podSourceFuture: () => SynchronousFuture(
              ref.read(voicepodPlaylistProvider(widget.postId)),
            ),
          );
        });
      }

      //Show pinned comment/reply
      if (value != null && widget.pinnedCommentId != null) {
        Future(() {
          _showCommentBottomSheet(
            ref,
            post: value,
            pinnedCommentId: widget.pinnedCommentId,
            pinnedReplyId: widget.pinnedReplyId,
          );
        });
      }
    });
  }

  @override
  void didChangeDependencies() {
    appRouteObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    appRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(voicepodPlaylistProvider(widget.postId));
    final postDataSelector = <T>(T Function(PostDataProvider value) selector) {
      return ref.watch(postDataProvider.select(selector));
    };
    Widget child;
    final postData = postDataSelector((_) => _.getData(widget.postId));
    if (postData != null) {
      child = _VoicepodDetailsBody(
        post: postData,
        showFirstTimeCta: widget.showFirstTimeCta,
      );
    } else if (postDataSelector((_) => _.isLoading(widget.postId))) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget(
          error: postDataSelector((_) => _.error(widget.postId)),
          onPressed: () => ref.read(postDataProvider).fetchData(widget.postId),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: ABackButton(),
        title: Text("VOICEPOD"),
      ),
      body: child,
    );
  }
}

class _VoicepodDetailsBody extends ConsumerStatefulWidget {
  final Post post;
  final bool showFirstTimeCta;

  const _VoicepodDetailsBody({
    Key? key,
    required this.post,
    required this.showFirstTimeCta,
  }) : super(key: key);

  @override
  ConsumerState createState() => __VoicepodDetailsBodyState();
}

class __VoicepodDetailsBodyState extends ConsumerState<_VoicepodDetailsBody> {
  @override
  void initState() {
    super.initState();
    ApiService.instance
        .markPodAsViewed(widget.post.postId)
        .catchError((err) => null);
  }

  @override
  Widget build(BuildContext context) {
    Post post = widget.post;
    final showCta = !post.isPrivate && widget.showFirstTimeCta;
    final podPlaylistPvd =
        ref.watch(voicepodPlaylistProvider(widget.post.postId));
    final similarPosts = podPlaylistPvd.similarPosts;
    final posts4mSameUser = podPlaylistPvd.posts4mSameUser;

    final playButton = _VPPlayer(post, onPlayPressed: (_) {
      PodPlayerV3.instance.init(
        startIndex: 0,
        context: context,
        podSourceFuture: () => SynchronousFuture(podPlaylistPvd),
      );
    });

    final attachmentMedia = _PodEmbedWidget(post);

    final title = Padding(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: ExpandableText(
        post.title,
        expandText: "see more",
        animation: false,
        expanded: true,
        style: ATextStyles.user16Regular(AColors.white),
        linkStyle: ATextStyles.user12Regular(AColors.textLight),
        hashtagStyle: ATextStyles.user16Regular(AColors.tealPrimary),
        onHashtagTap: (tag) {},
        maxLines: 3,
      ),
    );

    final bottomActionBar = ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width -
            kVoicepodPlaySize.width -
            kVoicepodCardMargin.horizontal,
        minHeight: 40,
        maxHeight: 40,
      ),
      child: _BottomActionsBar(
        post: post,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );

    List<Widget> countWidgets = [
      if (post.likeCount > 0)
        _TextCountButtonBig(
          count: post.likeCount,
          label: post.likeCount.getLabel(
            zero: "Likes",
            one: "Like",
            many: "Likes",
          ),
          onPressed: () {
            arreAnalytics.logEvent(
              GAEvent.VP_LIKES_NUMBER_CLICK,
              parameters: {EventAttribute.POST_ID: post.postId},
            );
            showPostLikedUsersSheet(post.postId);
          },
        ),
      if (post.commentCount > 0)
        _TextCountButtonBig(
          count: post.commentCount,
          label: post.commentCount.getLabel(
            zero: "Comments",
            one: "Comment",
            many: "Comments",
          ),
          onPressed: () {
            _showCommentBottomSheet(ref, post: post);
          },
        ),
      if (post.impressionCount != null)
        _TextCountButtonBig(
          count: math.max(post.impressionCount!, 1),
          label: math.max(post.impressionCount!, 1).getLabel(
                zero: "Views",
                one: "View",
                many: "Views",
              ),
          onPressed: null,
        ),
    ];
    final podCountInfo = Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: countWidgets.joinSeparator(Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: Icon(Icons.lens, size: 4, color: AColors.greyDark),
        )),
      ),
    );

    final divider = Divider(
      height: 1,
      color: AColors.BgStroke,
      indent: 12,
      endIndent: 12,
      thickness: 1,
    );

    return NotificationListener<ScrollUpdateNotification>(
      onNotification: podPlaylistPvd.onScrollNotification,
      child: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(postCommentsProvider);
          await Future.wait([
            ref.read(postDataProvider).fetchData(
                  post.postId,
                  notifyLoading: false,
                  refresh: true,
                ),
            ref.read(userPostRelationsProvider).refresh(post.postId),
          ]);
          // ref.invalidate(postCommentsProvider(post.postId));
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _TopBar(
                      post: post,
                      padding: EdgeInsets.fromLTRB(12, 12, 12, 8),
                      showTimestamp: true,
                    ),
                    if (post.hasAnyMedia) ...[
                      Row(
                        children: [
                          Expanded(child: title),
                          playButton,
                        ],
                      ),
                      attachmentMedia,
                      SizedBox(height: 8),
                      podCountInfo,
                    ] else ...[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [title, podCountInfo],
                            ),
                          ),
                          playButton
                        ],
                      )
                    ],
                    SizedBox(height: 8),
                    divider,
                    bottomActionBar,
                    divider,
                  ],
                ),
              ),
            ),
            if (showCta)
              SliverFillRemaining(
                fillOverscroll: true,
                hasScrollBody: false,
                child: Center(child: _AfterCreationCta(post)),
              )
            else ...[
              ///Similar Voicepods section
              if (similarPosts != null && similarPosts.length > 0) ...[
                SliverToBoxAdapter(
                  child: ListTile(
                    title:
                        Text('More Like This', style: ATextStyles.sys18Bold()),
                    subtitle: Text('Sourced from across Arré Voice',
                        style: ATextStyles.sys14Regular(AColors.textDark)),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(bottom: 24),
                  sliver: SliverList.builder(
                    itemCount: similarPosts.length,
                    itemBuilder: (context, index) {
                      final postDetails = similarPosts[index];
                      return VoicepodPostCard(
                        postDetails.postId,
                        postDetails: postDetails,
                        onPlayPressed: (_) {
                          PodPlayerV3.instance.init(
                            startIndex: index + 1,
                            context: context,
                            podSourceFuture: () =>
                                SynchronousFuture(podPlaylistPvd),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],

              ///More from this user section
              if (posts4mSameUser != null && posts4mSameUser.length > 0) ...[
                SliverToBoxAdapter(
                  child: ListTile(
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'More From ',
                            style: ATextStyles.sys18Bold(),
                          ),
                          TextSpan(
                            text: '@${post.user?.username}',
                            style: ATextStyles.sys18Bold(AColors.tealPrimary),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      'Their latest voicepods',
                      style: ATextStyles.sys14Regular(AColors.textDark),
                    ),
                  ),
                ),
                SliverList.builder(
                  itemCount: posts4mSameUser.length,
                  itemBuilder: (context, index) {
                    final postDetails = posts4mSameUser[index];
                    return VoicepodPostCard(
                      postDetails.postId,
                      postDetails: postDetails,
                      onPlayPressed: (_) {
                        PodPlayerV3.instance.init(
                          startIndex: index + (similarPosts?.length ?? 0) + 1,
                          context: context,
                          podSourceFuture: () =>
                              SynchronousFuture(podPlaylistPvd),
                        );
                      },
                    );
                  },
                ),
              ],
              if (podPlaylistPvd.isLoadingOnScroll)
                SliverToBoxAdapter(
                  child: Container(
                    height: 126,
                    child: CircularProgressIndicator(),
                    alignment: Alignment.center,
                  ),
                ),
              SliverSafeArea(
                  sliver: SliverPadding(padding: EdgeInsets.only(bottom: 8)))
            ]
          ],
        ),
      ),
    );
  }
}

void _showCommentTextField(
  WidgetRef ref, {
  required String postId,
  Comment? replyToComment,
  bool showReplyDetails = false,
}) async {
  await ref.read(ensureOnboardedWithAppStateChange.future);
  final commentsPvd = ref.read(postCommentsProvider(postId));
  if (replyToComment != null) {
    commentsPvd.setReplyToComment(replyToComment);
  }
  final canSendComment = await showModalBottomSheet<bool>(
    context: ref.context,
    useRootNavigator: true,
    backgroundColor: AColors.BgDark,
    shape: Border(top: BorderSide(color: AColors.BgStroke, width: 0.5)),
    builder: (context) {
      return SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: _CommentTextField(
            postId: postId,
            enabled: true,
            autoFocus: true,
            enforceMaxLength: true,
            showReplyDetails: showReplyDetails,
            suffixIcon: ValueListenableBuilder<TextEditingValue>(
              valueListenable: commentsPvd.commentTextEditingCtrl,
              builder: (context, textEditValue, child) {
                final isValid = commentsPvd.isCommentValid(textEditValue);
                return IconButton(
                  onPressed:
                      isValid ? () => Navigator.of(context).pop(true) : null,
                  color: AColors.greyDark,
                  splashRadius: 20,
                  icon: CircleAvatar(
                    radius: 15,
                    backgroundColor: AColors.tealPrimary,
                    child: Icon(
                      ArreIconsV2.send_filled,
                      size: 20,
                      color: AColors.white,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      );
    },
  );
  if (canSendComment == true) {
    VoicepodAction.sendComment(ref, postId);
  }
}

class _CommentTextField extends ConsumerWidget {
  final String postId;
  final VoidCallback? onPressed;
  final bool enabled;
  final bool autoFocus;
  final Widget? suffixIcon;
  final bool enforceMaxLength;
  final bool showReplyDetails;

  const _CommentTextField({
    Key? key,
    this.onPressed,
    required this.postId,
    this.enabled = true,
    this.autoFocus = false,
    this.enforceMaxLength = false,
    this.suffixIcon,
    this.showReplyDetails = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentsPvdSelector =
        <T>(T Function(PostCommentsProvider value) selector) {
      return ref.watch(postCommentsProvider(postId).select(selector));
    };
    final replyToComment = commentsPvdSelector((_) => _.replyToComment);
    final BorderRadius textFieldBorderRadius = BorderRadius.circular(8);

    Widget child = TextField(
      controller: ref.read(postCommentsProvider(postId)).commentTextEditingCtrl,
      enabled: enabled,
      autofocus: autoFocus,
      minLines: 1,
      maxLines: 2,
      maxLength: enforceMaxLength ? MAX_COMMENT_LENGTH : null,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: AColors.BgLight,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintText: "Add a comment",
        hintStyle: ATextStyles.sys14Regular(AColors.textDark),
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AColors.BgStroke.withOpacity(0.6)),
          borderRadius: textFieldBorderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AColors.BgStroke),
          borderRadius: textFieldBorderRadius,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AColors.BgStroke),
          borderRadius: textFieldBorderRadius,
        ),
      ),
    );
    if (replyToComment != null && showReplyDetails) {
      final userDetails = ref.watch(userShortDataProvider
          .select((value) => value.getData(replyToComment.userId)));
      child = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(8, 8, 0, 2),
            // decoration: BoxDecoration(
            //   color: AColors.tealStroke.withOpacity(0.2),
            //   borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            // ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserAvatarV2(
                  mediaId: userDetails?.profilePictureMediaId,
                  userName: userDetails?.username,
                  size: 38,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              userDetails?.username ?? "",
                              maxLines: 1,
                              style: ATextStyles.sys14Bold(AColors.white),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            Utils.readableDateTime(replyToComment.createdAt),
                            style: ATextStyles.sys12Regular(AColors.greyLight),
                          )
                        ],
                      ),
                      SizedBox(height: 2),
                      Text(
                        replyToComment.body,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'Acumin Pro',
                          color: AColors.greyLight,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () =>
                      commentsPvdSelector((_) => _.setReplyToComment(null)),
                  color: AColors.greyLight,
                  splashRadius: 20,
                  icon: Icon(ArreIconsV2.cross_outline, size: 18),
                ),
              ],
            ),
          ),
          child,
        ],
      );
    }
    child = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: child,
    );
    if (onPressed != null) {
      return GestureDetector(
        onTap: onPressed,
        behavior: HitTestBehavior.translucent,
        child: child,
      );
    }
    return child;
  }
}

class _CommentWidget extends ConsumerStatefulWidget {
  final CommentOrReply commentOrReply;
  final VoidCallback? onReplyPressed;
  final EdgeInsets padding;
  final bool canDelete;
  final bool highlight;

  const _CommentWidget({
    Key? key,
    required this.commentOrReply,
    required this.padding,
    this.onReplyPressed,
    this.canDelete = false,
    this.highlight = false,
  }) : super(key: key);

  @override
  ConsumerState<_CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends ConsumerState<_CommentWidget> {
  CommentOrReply get commentOrReply => widget.commentOrReply;

  @override
  void initState() {
    super.initState();
    ref.read(userShortDataProvider).fetchData(widget.commentOrReply.userId);
    if (!widget.commentOrReply.isLikeDataFetched) {
      ref
          .read(postCommentsProvider(widget.commentOrReply.postId))
          .loadHasUserLiked(widget.commentOrReply);
    }
  }

  void onLikePressed() {
    ref
        .read(postCommentsProvider(commentOrReply.postId))
        .toggleLike(commentOrReply);
  }

  @override
  Widget build(BuildContext context) {
    final userDetails = ref.watch(userShortDataProvider
        .select((value) => value.getData(commentOrReply.userId)));
    final currentUserId = ref.watch(currentUserProvider).userId;
    Color likeCountColor;
    Color likeIconColor;
    Widget topBar;
    if (commentOrReply.hasCurrentUserLiked) {
      likeCountColor = AColors.white;
      likeIconColor = AColors.orangePrimary;
    } else {
      likeCountColor = AColors.greyDark;
      likeIconColor = AColors.greyDark;
    }
    topBar = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                ArreNavigator.instance.push(AAppPage(
                    child: ProfileScreen(userId: commentOrReply.userId)));
              },
              child: Text(
                "@${userDetails?.username ?? ""}",
                style: ATextStyles.sys14Bold(AColors.textLight),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(width: 10),
          Text(
            Utils.relativeTime(commentOrReply.createdAt),
            style: ATextStyles.sys12Regular(AColors.greyDark),
          ),
        ],
      ),
    );
    List<PopupMenuItem<String>> _commentActions = [
      if (widget.canDelete)
        PopupMenuItem(
          height: 32,
          child: Row(
            children: [
              Icon(
                ArreIconsV2.bin_filled,
                color: AColors.red,
                size: 24,
              ),
              SizedBox(width: 6),
              Text(
                "Delete",
                style: ATextStyles.sys14Regular(AColors.red),
              ),
            ],
          ),
          value: "delete",
        ),
      if (widget.commentOrReply.userId != currentUserId)
        PopupMenuItem(
          height: 32,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AColors.red),
                ),
                child: Icon(
                  ArreIconsV2.caution_outline,
                  size: 14,
                  color: AColors.red,
                ),
              ),
              SizedBox(width: 6),
              Text(
                "Report",
                style: ATextStyles.sys14Regular(AColors.red),
              ),
            ],
          ),
          value: "report",
        ),
    ];
    if (_commentActions.isNotEmpty) {
      topBar = Row(
        children: [
          Expanded(child: topBar),
          PopupMenuButton<String>(
            padding: EdgeInsets.all(4),
            itemBuilder: (_) => _commentActions,
            icon: Icon(
              ArreIconsV2.kebeb_filled,
              color: AColors.textLight,
              size: 18,
            ),
            splashRadius: 20,
            // constraints: BoxConstraints.loose(Size.square(16)),
            onSelected: (value) async {
              if (value == "delete") {
                VoicepodAction.deleteComment(ref, commentOrReply);
              } else if (value == "report") {
                Navigator.of(context).pop();
                try {
                  final post = await ref
                      .read(postDataProvider)
                      .fetchData(widget.commentOrReply.postId);

                  ArreNavigator.instance.push(
                    AAppPage(
                      child: ReportScreen(
                        entityType: ReportEntityType.fromStringValue(
                            widget.commentOrReply.entityType),
                        entityId: widget.commentOrReply.entityId,
                        userId: widget.commentOrReply.userId,
                        communityId: post?.communityId,
                      ),
                    ),
                  );
                } catch (err) {
                  showErrorSnackBar(err);
                }
              }
            },
          ),
        ],
      );
    }
    topBar = SizedBox(
      height: 36,
      child: topBar,
    );
    Widget child = Padding(
      padding: widget.padding,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              ArreNavigator.instance.push(AAppPage(
                  child: ProfileScreen(userId: commentOrReply.userId)));
            },
            child: UserAvatarV2(
              mediaId: userDetails?.profilePictureMediaId,
              userName: userDetails?.username,
              size: 37,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: widget.highlight ? AColors.BgStroke : AColors.BgLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  topBar,
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    child: Text(
                      commentOrReply.body,
                      style: ATextStyles.user14Regular(AColors.textMedium),
                    ),
                  ),
                  Row(
                    children: [
                      CupertinoButton(
                        child: commentOrReply.hasCurrentUserLiked
                            ? Text(
                                "Unlike",
                                style: ATextStyles.sys12Mini(AColors.textDark),
                              )
                            : Text(
                                "Like",
                                style:
                                    ATextStyles.sys12Mini(AColors.tealPrimary),
                              ),
                        onPressed: onLikePressed,
                      ),
                      if (widget.onReplyPressed != null)
                        CupertinoButton(
                          child: Text(
                            "Reply",
                            style: ATextStyles.sys12Mini(AColors.tealPrimary),
                          ),
                          onPressed: widget.onReplyPressed,
                        ),
                      Spacer(),
                      if (commentOrReply.likeCount > 0) ...[
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Tooltip(
                            message:
                                '${commentOrReply.likeCount.formatWithCommas}',
                            child: Text(
                              "${commentOrReply.likeCount.shortify}",
                              style: ATextStyles.sys12Mini(likeCountColor),
                            ),
                          ),
                        ),
                        SizedBox(width: 2),
                        Icon(
                          commentOrReply.hasCurrentUserLiked
                              ? ArreIconsV2.heart_filled
                              : ArreIconsV2.heart_outline,
                          size: 15,
                          color: likeIconColor,
                        ),
                      ],
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

    if (widget.highlight) {
      child = DecoratedBox(
        decoration: BoxDecoration(color: AColors.BgStroke),
        child: child,
      );
    }

    return child;
  }
}

class _ReplyCountWidget extends ConsumerWidget {
  final ReplyCountInfo replyCount;

  const _ReplyCountWidget({
    Key? key,
    required this.replyCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (replyCount.count <= 0) return SizedBox();
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 51),
        child: CupertinoButton(
          child: Text(
            "View ${replyCount.count.shortify} " +
                (replyCount.count)
                    .getLabel(zero: "", one: "reply", many: "replies"),
            style: ATextStyles.sys14Bold(AColors.textDark),
          ),
          onPressed: () {
            ref
                .read(postCommentsProvider(replyCount.postId))
                .loadReplies(replyCount);
          },
        ),
      ),
    );
  }
}

class _PostCommentReply extends ConsumerWidget {
  final Reply reply;
  final bool canDelete;

  const _PostCommentReply(
    this.reply, {
    Key? key,
    required this.canDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var padding = EdgeInsets.fromLTRB(63, 6, 16, 6);
    return _CommentWidget(
      commentOrReply: reply,
      padding: padding,
      canDelete: canDelete,
      highlight: reply.isPinned,
    );
  }
}

class _PostComment extends ConsumerWidget {
  final Comment comment;
  final bool canDelete;
  final bool highlight;

  const _PostComment(
    this.comment, {
    Key? key,
    required this.canDelete,
    required this.highlight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var padding = EdgeInsets.fromLTRB(16, 6, 16, 6);
    return _CommentWidget(
      commentOrReply: comment,
      canDelete: canDelete,
      highlight: highlight,
      onReplyPressed: () {
        _showCommentTextField(
          ref,
          postId: comment.postId,
          replyToComment: comment,
          showReplyDetails: true,
        );
      },
      padding: padding,
    );
  }
}
