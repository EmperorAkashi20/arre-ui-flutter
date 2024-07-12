part of arre_message;

class ConversationsScreen extends ConsumerStatefulWidget with ArreScreen {
  const ConversationsScreen({super.key});

  @override
  ConsumerState createState() => _MessagesScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.CONVERSATIONS;

  @override
  bool get isOnboardingRequired => true;
}

class _MessagesScreenState extends ConsumerState<ConversationsScreen> {
  @override
  void initState() {
    super.initState();
    if (ref.exists(conversationsProvider)) {
      ref.read(conversationsProvider).init(notifyLoading: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    final conversationsPvd = ref.watch(conversationsProvider);
    final data = conversationsPvd.data;
    if (data != null) {
      if (data.isEmpty) {
        child = SliverFillRemaining(
          child: _EmptyConversationsState(),
          hasScrollBody: false,
        );
      } else {
        child = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _UserMessageTile(conversation: data[index]),
            childCount: data.length,
          ),
        );
      }
    } else if (conversationsPvd.isLoading) {
      child = SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
        hasScrollBody: false,
      );
    } else {
      child = SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: ArreErrorWidget(
            error: conversationsPvd.error,
            onPressed: conversationsPvd.init,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        titleSpacing: NavigationToolbar.kMiddleSpacing,
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future.wait([
            ref.read(conversationsProvider).init(),
            ref.read(messageRequestsProvider).init(),
          ]);
        },
        child: NotificationListener<ScrollMetricsNotification>(
          onNotification: (notification) {
            ALogger.d(
                "Notification ${notification.runtimeType} $notification ");
            conversationsPvd.onScrollNotification(notification);
            return false;
          },
          child: SafeArea(
            child: CustomScrollView(
              // key: ValueKey(conversationsPvd.data?.length),
              slivers: [
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer(builder: (context, ref, _) {
                      final requestsPvd = ref.watch(messageRequestsProvider);
                      Widget child = SizedBox(width: double.infinity);
                      final data = requestsPvd.data;
                      if (data != null && data.isNotEmpty) {
                        child = CupertinoButton(
                          onPressed: () {
                            ArreNavigator.instance
                                .push(AAppPage(child: MessageRequestsScreen()));
                          },
                          child: Text(
                            "Requests (${data.length})",
                            style:
                                ATextStyles.sys16Regular(AColors.tealPrimary),
                          ),
                        );
                      }
                      return AnimatedSize(
                        duration: Duration(milliseconds: 350),
                        child: child,
                        alignment: Alignment.centerRight,
                      );
                    }),
                  ),
                ),
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyConversationsState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Your Messages",
          style: ATextStyles.sys20Bold(AColors.stateActive),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Text(
            "The messages you send and receive will appear here!",
            style: ATextStyles.sys16Regular(AColors.textMedium),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 10,
          child: Align(
            alignment: Alignment(0, -0.3),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 160),
                  child: Image.asset(
                    ArreAssets.SEARCHING_WOMEN_DOG_IMG,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 24),
                Text("Pretty empty out here"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _UserMessageTile extends ConsumerWidget {
  final GConversation conversation;

  const _UserMessageTile({required this.conversation});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget? lastMessage;

    switch (conversation.lastMessage?.messageType) {
      case "audio":
        lastMessage = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(ArreIconsV2.mic_filled, size: 16, color: AColors.textLight),
            SizedBox(width: 4),
            Text(
              Utils.readableDuration(
                  Duration(seconds: conversation.lastMessage?.duration ?? 30)),
              style: ATextStyles.sys14Regular(AColors.textLight),
              maxLines: 1,
            ),
          ],
        );
        break;
      case "voicepod":
        lastMessage = Text(
          "Shared a Voicepod",
          style: ATextStyles.sys14Regular(AColors.textLight),
        );
        break;
      case "playlist":
        lastMessage = Text(
          "Shared a Playlist",
          style: ATextStyles.sys14Regular(AColors.textLight),
        );
        break;
      case "user":
        lastMessage = Text(
          "Shared a User's profile",
          style: ATextStyles.sys14Regular(AColors.textLight),
        );
        break;
      case "text":
        lastMessage = Text(
          conversation.lastMessage?.body ?? '',
          style: ATextStyles.sys14Regular(AColors.textLight),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );
        break;
    }

    return GestureDetector(
      onTap: () async {
        arreAnalytics.logEvent(
          GAEvent.VOICE_DM_BTN_CLICK,
          parameters: {
            EventAttribute.ENTITY_ID: conversation.conversationId,
            EventAttribute.ENTITY_TYPE: "conversation",
            EventAttribute.GA_CONTEXT: GAContext.conversation_tile.name
          },
        );
        await ArreNavigator.instance.push(
          AAppPage(
            child: MessagesScreen(
              conversationId: conversation.conversationId,
            ),
          ),
        );
        ref.read(conversationsProvider).init(notifyLoading: false);
      },
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 10, 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            UserAvatarV2(
              size: 56,
              mediaId: conversation.iconMediaId,
              userName: conversation.conversationTitle,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    conversation.conversationTitle,
                    style: ATextStyles.sys14Bold(AColors.textLight),
                    maxLines: 1,
                  ),
                  if (lastMessage != null) ...[
                    SizedBox(height: 4),
                    lastMessage
                  ],
                ],
              ),
            ),
            if (conversation.lastMessage != null)
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    Utils.relativeTime(DateTime.fromMillisecondsSinceEpoch(
                        conversation.lastMessage!.updatedAt)),
                    style: ATextStyles.sys12Regular(AColors.textLight),
                    maxLines: 1,
                  ),
                  if (conversation.unreadMessageCount > 0) ...[
                    SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DecoratedBox(
                        decoration: ShapeDecoration(
                            shape: StadiumBorder(), color: AColors.tealPrimary),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: Text(
                            "${conversation.unreadMessageCount}",
                            style:
                                ATextStyles.user12Regular(AColors.white, 1.0),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    )
                  ]
                ],
              )
          ],
        ),
      ),
    );
  }
}
