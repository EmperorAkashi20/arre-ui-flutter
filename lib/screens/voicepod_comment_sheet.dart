part of voicepod;

void _showCommentBottomSheet(
  WidgetRef ref, {
  required Post post,
  String? pinnedCommentId,
  String? pinnedReplyId,
  Comment? replyToComment,
  bool autoFocus = false,
}) async {
  final commentsPvd = ref.read(postCommentsProvider(post.postId))
    ..init(
      pinnedCommentId: pinnedCommentId,
      pinnedReplyId: pinnedReplyId,
    );
  if (replyToComment != null) {
    commentsPvd.setReplyToComment(replyToComment);
  }
  final canSendComment = await showModalBottomSheet<bool>(
    context: ref.context,
    useRootNavigator: true,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    backgroundColor: AColors.BgLight,
    builder: (ctx) {
      return DraggableScrollableSheet(
        expand: false,
        minChildSize: 0.3,
        initialChildSize: 0.6,
        maxChildSize: 0.9,
        builder: (ctx, controller) => _CommentBottomSheet(
          scrollController: controller,
          post: post,
          autoFocus: autoFocus,
          pinnedCommentId: pinnedCommentId,
          pinnedReplyId: pinnedReplyId,
        ),
      );
    },
  );
  if (canSendComment == true) {
    VoicepodAction.sendComment(ref, post.postId);
  }
}

class _CommentBottomSheet extends ConsumerStatefulWidget {
  final Post post;
  final ScrollController scrollController;
  final bool autoFocus;
  final String? pinnedCommentId;
  final String? pinnedReplyId;

  const _CommentBottomSheet({
    Key? key,
    required this.post,
    required this.scrollController,
    this.autoFocus = false,
    this.pinnedCommentId,
    this.pinnedReplyId,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CommentBottomSheetState();
}

class _CommentBottomSheetState extends ConsumerState<_CommentBottomSheet> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.autoFocus)
        _showCommentTextField(ref,
            postId: widget.post.postId, showReplyDetails: false);
    });
    super.initState();
  }

  @override
  void dispose() {
    ref.invalidate(postCommentsProvider(widget.post.postId));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final commentsPvd = ref.watch(postCommentsProvider(widget.post.postId));
    final isPostCreator = widget.post.userId == arrePref.userId;

    Widget commentsListWidget;
    if (commentsPvd.hasData) {
      final commentsData = commentsPvd.data;
      if (commentsData?.length != 0) {
        commentsListWidget = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final obj = commentsData?[index];
              if (obj is Comment) {
                return _PostComment(
                  obj,
                  canDelete: isPostCreator || obj.userId == arrePref.userId,
                  highlight: obj.isPinned && commentsPvd.pinnedReplyId == null,
                );
              } else if (obj is ReplyCountInfo) {
                return _ReplyCountWidget(replyCount: obj);
              } else if (obj is Reply) {
                return _PostCommentReply(
                  obj,
                  canDelete: isPostCreator ||
                      obj.userId == arrePref.userId ||
                      obj.comment.userId == arrePref.userId,
                );
              } else {
                return kDebugMode ? Placeholder() : SizedBox();
              }
            },
            childCount: commentsData?.length,
          ),
        );
      } else {
        commentsListWidget = SliverFillRemaining(
          child: Column(
            children: [
              SvgPicture.asset(ArreAssets.No_COMMENTS_YET),
              SizedBox(height: 25),
              Text(
                'Be the first one to comment',
                style: ATextStyles.sys14Regular(),
              ),
            ],
          ),
        );
      }
    } else if (commentsPvd.isLoading) {
      commentsListWidget =
          SliverFillRemaining(child: Center(child: ACommonLoader()));
    } else {
      commentsListWidget = SliverFillRemaining(
          child: Center(child: ArreErrorWidget(error: commentsPvd.error)));
    }

    return Stack(
      children: [
        NotificationListener<ScrollUpdateNotification>(
          onNotification: commentsPvd.onScrollNotification,
          child: CustomScrollView(
            controller: widget.scrollController,
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: PersistentPinnedHeaderDelegate(
                  height: 42,
                  child: Container(
                    color: Theme.of(context).bottomSheetTheme.backgroundColor,
                    child: Column(
                      children: [
                        Text(
                          "${widget.post.commentCount.formatWithCommas} " +
                              (widget.post.commentCount).getLabel(
                                zero: "Comments",
                                one: "Comment",
                                many: "Comments",
                              ),
                          style: ATextStyles.sys20Bold(AColors.greyLight),
                        ),
                        SizedBox(height: 5),
                        Divider(
                          height: 1,
                          color: AColors.BgStroke,
                          indent: 12,
                          endIndent: 12,
                          thickness: 1,
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
              ),
              commentsListWidget,
              SliverSafeArea(
                  sliver: SliverPadding(padding: EdgeInsets.only(bottom: 64)))
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            color: Theme.of(context).bottomSheetTheme.backgroundColor,
            child: SafeArea(
              child: _CommentTextField(
                postId: widget.post.postId,
                onPressed: () => _showCommentTextField(ref,
                    postId: widget.post.postId, showReplyDetails: false),
                enabled: false,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
