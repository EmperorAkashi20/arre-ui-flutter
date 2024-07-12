part of arre_message;

class CommunityChatScreen extends ConsumerStatefulWidget with ArreScreen {
  final String communityId;
  final String chatId;
  final CommunityChat? chatDetails;
  final GArreCommunity? communityDetails;

  const CommunityChatScreen({
    required this.chatId,
    required this.communityId,
    super.key,
    this.chatDetails,
    this.communityDetails,
  });

  @override
  ConsumerState createState() => _ChatScreenState();

  @override
  Uri? get uri => Uri.parse("/voiceclub/c/$communityId/chat/v/$chatId");

  @override
  bool get isOnboardingRequired => true;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 6 &&
        uri.pathSegments[0] == "voiceclub" &&
        uri.pathSegments[1] == "c" &&
        uri.pathSegments[3] == "chat" &&
        uri.pathSegments[4] == "v") {
      return AAppPage(
        child: CommunityChatScreen(
          communityId: uri.pathSegments[2],
          chatId: uri.pathSegments[5],
        ),
      );
    }
    return null;
  }

  @override
  String get screenName => GAScreen.VOICECLUB_CHAT_SCREEN;
}

class _ChatScreenState extends ConsumerState<CommunityChatScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  ///If returns String, User cannot send message. Show the returned value as message
  String? validateMessagingAccess({
    required CommunityChat? chatDetails,
    required WidgetRef ref,
  }) {
    if (chatDetails?.chatStatus == ChatStatus.ENDED) {
      return "This chat has ended";
    }
    final role = Utils.getUserCommunityRole(ref, widget.communityId);
    //If member cannot send messages, check the current user's role and return error message if not a member
    if (chatDetails is CommunityChatDetails &&
        chatDetails.canMemberSendMessages == false &&
        role != "admin") {
      return "Only voiceclub admins can send messages to this chat";
    }
    return null;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && !ASocketService.isConnected) {
      ref.read(chatMessagesProvider(widget.chatId)).refresh();
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    ASocketService.leaveCommunityChat(widget.chatId);
    super.dispose();
  }

  String? getCommunityName(String communityId, WidgetRef ref) {
    if (ref.exists(communityProvider(communityId)) &&
        ref.read(communityProvider(communityId)).hasData) {
      return ref.read(communityProvider(communityId)).data?.title;
    }
    return ref.watch(communityNameProvider(communityId)).valueOrNull;
  }

  @override
  Widget build(BuildContext context) {
    final chatDetailsPvd = ref.watch(chatDetailsProvider(widget.chatId));
    final chatDetails = chatDetailsPvd.valueOrNull ?? widget.chatDetails;

    Widget child;
    Widget? title;
    bool isAdmin = false;
    if (chatDetails != null) {
      isAdmin = ref.watch(communityRoleProvider(chatDetails.communityId)
          .select((value) => value.valueOrNull?.role == "admin"));
      child = _ChatListBody(
        chatId: widget.chatId,
        isAdmin: isAdmin,
        communityId: chatDetails.communityId,
      );
      title = GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
          GAEvent(
            GAEvent.VC_CHAT_TITLE_TAP,
            entityId: chatDetails.chatId,
            entityType: "vc_chats",
            userType: Utils.getUserCommunityRole(ref, chatDetails.communityId),
          ).log();
          ArreNavigator.instance.push(
              AAppPage(child: CommunityChatsInfoScreen(chatId: widget.chatId)));
        },
        child: Row(
          children: [
            UserAvatarV2(
              size: 35,
              mediaId: chatDetails.iconMediaId,
              userName: chatDetails.chatTitle,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chatDetails.chatTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: ATextStyles.sys14Bold(),
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      return Text(
                        getCommunityName(chatDetails.communityId, ref) ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: ATextStyles.sys12Bold(AColors.textDark),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else if (chatDetailsPvd.isLoading) {
      child = Center(child: CircularProgressIndicator());
    } else {
      child = ArreErrorWidget(error: chatDetailsPvd.error);
    }

    final role = Utils.getUserCommunityRole(ref, widget.communityId);
    final selectedMessagesCount = ref.watch(chatMessagesProvider(widget.chatId)
        .select((value) => value.selectedMessagesCount));
    final isReportingMessage = ref.watch(chatMessagesProvider(widget.chatId)
        .select((value) => value.isForReporting));

    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: selectedMessagesCount > 0 && !isReportingMessage
            ? Text("$selectedMessagesCount Selected")
            : title,
        actions: [
          if (selectedMessagesCount > 0 && !isReportingMessage)
            _DeleteMessageIconButton(
              messageSelectionPvd:
                  ref.read(chatMessagesProvider(widget.chatId)),
              gaDeleteBtnClick: GAEvent(
                GAEvent.MSG_DELETE_CLICK,
                userType: role,
                entityId: widget.chatId,
                entityType: "vc_chats",
                eventValue: selectedMessagesCount.toString(),
              ),
              gaDeleteConfirm: GAEvent(
                GAEvent.MSG_DELETE_CONFIRMED,
                userType: role,
                entityId: widget.chatId,
                entityType: "vc_chats",
                eventValue: selectedMessagesCount.toString(),
              ),
            ),
          if (chatDetails is CommunityChatDetails &&
              (chatDetails.chatStatus != ChatStatus.ENDED || isAdmin) &&
              (selectedMessagesCount == 0 || isReportingMessage))
            IconButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                _showChatsActionsSheet(
                  ref: ref,
                  chatDetails: chatDetails,
                  isAdmin: isAdmin,
                );
              },
              splashRadius: 24,
              icon: Icon(ArreIconsV2.kebeb_filled),
            ),
          SizedBox(width: 8),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Consumer(builder: (context, ref, child) {
          final errorMessage =
              validateMessagingAccess(chatDetails: chatDetails, ref: ref);
          if (errorMessage != null) {
            return Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: AColors.BgStroke),
                ),
              ),
              child: Text(
                errorMessage,
                style: ATextStyles.user14Regular(AColors.textDark),
                textAlign: TextAlign.center,
              ),
            );
          }
          return MessageDraftWidget(
            conversationId: widget.chatId,
            messagingOn: MessageOn.COMMUNITY_CHATS,
          );
        }),
      ),
      body: child,
    );
  }
}

class _ChatListBody extends ConsumerStatefulWidget {
  final String chatId;
  final String communityId;
  final bool isAdmin;
  final EdgeInsets padding = const EdgeInsets.symmetric(vertical: 16);

  const _ChatListBody({
    required this.chatId,
    required this.isAdmin,
    required this.communityId,
  });

  @override
  ConsumerState createState() => _ChatListBodyState();
}

class _ChatListBodyState extends ConsumerState<_ChatListBody> {
  String get chatId => widget.chatId;

  @override
  Widget build(BuildContext context) {
    final messagesPvd = ref.watch(chatMessagesProvider(chatId));
    final data = messagesPvd.data;

    if (data.isEmpty) {
      if (messagesPvd.isLoading) {
        return Center(child: CircularProgressIndicator());
      } else if (messagesPvd.error != null) {
        return Center(
          child: ArreErrorWidget(
            onPressed: messagesPvd.init,
            error: messagesPvd.error,
          ),
        );
      } else {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Image.asset(
                    ArreAssets.VOICE_DM_ILLUSTRATION_IMG,
                    fit: BoxFit.contain,
                  ),
                ),
                constraints: BoxConstraints(maxHeight: 265),
              ),
              SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "Enjoy the best of both worlds as Arré Voice effortlessly blends text and audio messaging",
                  style: ATextStyles.sys14Regular(),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      }
    }
    final oldestMessage = messagesPvd.oldestMessage;
    ref.watch(voiceMessagePlayerProvider);
    return NotificationListener<ScrollMetricsNotification>(
      onNotification: messagesPvd.onScrollNotification,
      child: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.reverse) {
            FocusScope.of(context).unfocus();
          }
          return false;
        },
        child: CustomScrollView(
          reverse: true,
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: widget.padding,
              sliver: _MessageSliverList(
                data: data,
                messageSelectionPvd: messagesPvd,
                canSelectAnyMessage: widget.isAdmin,
                onReportMessage: (message) {
                  arreAnalytics.logEvent(
                    GAEvent.MSG_REPORT_CLICK,
                    parameters: {
                      EventAttribute.USER_TYPE:
                          widget.isAdmin ? "admin" : "member",
                      EventAttribute.ENTITY_ID: widget.chatId,
                      EventAttribute.ENTITY_TYPE: "vc_chats",
                    },
                  );
                  ArreNavigator.instance.push(
                    AAppPage(
                      child: ReportScreen(
                        entityType: ReportEntityType.reportMessage,
                        entityId: message.message.messageId,
                        userId: message.message.senderId,
                        communityId: widget.communityId,
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 4),
                  child: Text(
                    oldestMessage != null
                        ? "${Utils.relativeReadableDate(oldestMessage.createdAt)}"
                        : "",
                    style: ATextStyles.sys12Regular(AColors.greyMedium),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment(0, -0.75),
                child: Padding(
                  padding: const EdgeInsets.all(56),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (!messagesPvd.hasLoadedAllMessages)
                        VisibilityDetector(
                          key: ValueKey(this.hashCode),
                          child: SizedBox(height: 56, width: 56),
                          onVisibilityChanged: (info) {
                            if (info.visibleFraction > 0.0) {
                              messagesPvd.onScroll();
                            }
                          },
                        )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class _MuteNotificationPopup extends StatelessWidget {
//   final String chatName;
//
//   const _MuteNotificationPopup({
//     required this.chatName,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AColors.BgLight,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Stack(
//         children: [
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(56, 16, 56, 16),
//                 child: Text(
//                   "Mute notifications for chats",
//                   textAlign: TextAlign.center,
//                   style: ATextStyles.sys16Bold(AColors.tealLight),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Text(
//                   "Once you mute notifications you will miss out on the new conversations happening on $chatName",
//                   textAlign: TextAlign.center,
//                   style: ATextStyles.sys12Regular(AColors.textMedium),
//                 ),
//               ),
//               OutlinedButton(
//                 onPressed: () {},
//                 child: Text("Mute notifications"),
//                 style: ButtonStyle(
//                   textStyle: MaterialStatePropertyAll(ATextStyles.sys12Bold()),
//                   foregroundColor: MaterialStatePropertyAll(AColors.textLight),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
