part of communities;

class _CommunityChats extends ConsumerStatefulWidget {
  final String communityId;

  const _CommunityChats(this.communityId);

  @override
  ConsumerState createState() => __CommunityChatsState();
}

class __CommunityChatsState extends ConsumerState<_CommunityChats>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    arreAnalytics.logEvent(
      GAEvent.VC_VOICECLUB_VISIBLE_TAB,
      parameters: {EventAttribute.GA_CONTEXT: "chats"},
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final communityChatsPvd =
        ref.watch(communityChatsProvider(widget.communityId));

    Widget child;
    if (communityChatsPvd.hasData) {
      final chats = communityChatsPvd.data!;
      if (chats.isNotEmpty) {
        child = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _CommunityChatTile(
              onTap: () {
                _pushCommunityChatScreen(
                  ref: ref,
                  chatDetails: chats[index],
                  chatId: chats[index].chatId,
                  communityId: widget.communityId,
                );
              },
              chat: chats[index],
            ),
            childCount: chats.length,
          ),
        );
      } else {
        child = SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.only(bottom: 56),
            child: ArreErrorWidget.empty(message: "Voiceclub Chats will appear here"),
          ),
        );
      }
    } else if (communityChatsPvd.isLoading) {
      child = SliverFillRemaining(
        child: Center(child: ACommonLoader()),
      );
    } else {
      child = SliverFillRemaining(
        child: ArreErrorWidget(
          error: communityChatsPvd.error,
          onPressed: () => communityChatsPvd.init(notifyLoading: true),
        ),
      );
    }

    return NotificationListener<ScrollUpdateNotification>(
      onNotification: communityChatsPvd.onScrollNotification,
      child: CustomScrollView(
        restorationId: "community_chats",
        // The "controller" and "primary" members should be left
        // unset, so that the NestedScrollView can control this
        // inner scroll view.
        // If the "controller" property is set, then this scroll
        // view will not be associated with the NestedScrollView.
        slivers: <Widget>[
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverSafeArea(
            minimum: EdgeInsets.only(bottom: 8),
            sliver: SliverPadding(
              padding: EdgeInsets.only(bottom: 68, top: 8),
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

class _CommunityChatTile extends StatelessWidget {
  final CommunityChat chat;
  final VoidCallback onTap;

  const _CommunityChatTile({
    required this.chat,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            if (chat.chatStatus == ChatStatus.ACTIVE)
              _ActiveWrapper(
                size: 56,
                child: UserAvatarV2(
                  size: 52,
                  mediaId: chat.iconMediaId,
                  userName: chat.chatTitle,
                ),
              )
            else
              UserAvatarV2(
                size: 56,
                mediaId: chat.iconMediaId,
                userName: chat.chatTitle,
              ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          chat.chatTitle,
                          maxLines: 1,
                          style: ATextStyles.sys14Bold(null, 1.5),
                        ),
                      ),
                      SizedBox(width: 8),
                      if (!chat.userNotificationStatus)
                        Icon(
                          ArreIconsV2.notification_off,
                          color: AColors.BgStroke,
                          size: 16,
                        )
                    ],
                  ),
                  if (chat.description.isValid) ...[
                    SizedBox(height: 6),
                    Text(
                      chat.description!,
                      maxLines: 2,
                      style: ATextStyles.sys12Regular(AColors.textDark),
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(width: 12),
            Text(
              DateFormat("d MMM").format(chat.createdAt),
              style: ATextStyles.sys12Regular(AColors.textLight),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class _ActiveWrapper extends StatelessWidget {
  final double size;
  final Widget child;

  const _ActiveWrapper({required this.child, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(57),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFA553),
                  Color(0xFFEE8C34),
                  Color(0xFFEA5434),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          child,
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              transform: Matrix4.translationValues(0, 2, 0),
              padding: EdgeInsets.fromLTRB(6, 2, 4, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFA553),
                    Color(0xFFEE8C34),
                    Color(0xFFEA5434),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Active",
                    style: ATextStyles.sys10Bold(),
                  ),
                  SizedBox(width: 2),
                  Icon(
                    ArreIconsV2.active_circle,
                    size: 12,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _pushCommunityChatScreen({
  required WidgetRef ref,
  required String communityId,
  required String chatId,
  required CommunityChat chatDetails,
}) {
  final community = ref.read(communityProvider(communityId)).data!;
  final tabIndex = DefaultTabController.maybeOf(ref.context)?.index;

  arreAnalytics.logEvent(
    GAEvent.VC_CHAT_TILE_TAP,
    parameters: {
      EventAttribute.ENTITY_ID: chatId,
      EventAttribute.ENTITY_TYPE: EntityType.vc_chats.name,
      if (tabIndex == 0) EventAttribute.GA_CONTEXT: "feed_tab",
      if (tabIndex == 1) EventAttribute.GA_CONTEXT: "chats_tab",
      if (community.isAdmin == true)
        EventAttribute.USER_TYPE: "admin"
      else if (community.isMember == true)
        EventAttribute.USER_TYPE: "member"
      else
        EventAttribute.USER_TYPE: "non_member",
    },
  );
  if (community.isMember != true) {
    showSnackBar(
      content: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: "Join"),
            TextSpan(
                text: " ${community.title} ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    "now and stay updated with engaging conversations happening here "),
          ],
        ),
      ),
      action: SnackBarAction(
        label: "Join Now",
        onPressed: () {
          _pushJoinScreen(
            community: community,
            ref: ref,
            gaContext: 'chats_tap_snackbar',
          );
        },
      ),
    );
    return;
  }
  ArreNavigator.instance.push(
    AAppPage(
      child: CommunityChatScreen(
        chatId: chatId,
        communityId: communityId,
        chatDetails: chatDetails,
        communityDetails: community,
      ),
    ),
  );
}
