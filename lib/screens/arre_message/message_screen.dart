part of arre_message;

class MessagesScreen extends ConsumerStatefulWidget with ArreScreen {
  final String conversationId;
  final GConversation? conversation;

  const MessagesScreen({
    super.key,
    required this.conversationId,
    this.conversation,
  });

  @override
  ConsumerState createState() => _MessageDetailedScreenState();

  @override
  Uri? get uri => Uri.parse("/message/t/$conversationId");

  static ArrePage? maybeParse(Uri uri) {
    final pathSegments = uri.pathSegments;
    if (pathSegments.length == 3 &&
        pathSegments[0] == "message" &&
        pathSegments[1] == "t" &&
        pathSegments[2].isValid) {
      return AAppPage(child: MessagesScreen(conversationId: pathSegments[2]));
    }
    return null;
  }

  @override
  String get screenName => GAScreen.MESSAGE_DETAILED_SCREEN;

  @override
  bool get isOnboardingRequired => true;
}

class _MessageDetailedScreenState extends ConsumerState<MessagesScreen>
    with RouteAware {
  @override
  void initState() {
    super.initState();
    Future.value(
        ref.refresh(conversationDetailsProvider(widget.conversationId).future));
  }

  @override
  void didChangeDependencies() {
    appRouteObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
    super.didChangeDependencies();
  }

  @override
  void didPushNext() {
    ref.read(voiceMessagePlayerProvider).pause();
    super.didPushNext();
  }

  @override
  void dispose() {
    appRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appBar;
    Widget? body, bottomNavBar;
    final conversationDetailsPvd =
        ref.watch(conversationDetailsProvider(widget.conversationId));
    final conversation =
        conversationDetailsPvd.valueOrNull ?? widget.conversation;

    final messagesPvd = ref.watch(messagesProvider(widget.conversationId));

    if (conversation != null) {
      appBar = AppBar(
        leading: ABackButton(),
        title: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            ArreNavigator.instance.push(
              AAppPage(
                child: ProfileScreen(
                  userId:
                      Utils.getUserId4mConversationId(widget.conversationId),
                ),
              ),
            );
          },
          child: Row(
            children: [
              UserAvatarV2(
                size: 32,
                mediaId: conversation.iconMediaId,
                userName: conversation.conversationTitle,
              ),
              SizedBox(width: 12),
              Expanded(child: Text(conversation.conversationTitle)),
            ],
          ),
        ),
        actions: [
          if (messagesPvd.hasAnySelectedMessage)
            _DeleteMessageIconButton(
              messageSelectionPvd: messagesPvd,
              gaDeleteBtnClick: GAEvent(
                GAEvent.MSG_DELETE_CLICK,
                entityId: widget.conversationId,
                entityType: "dm",
                eventValue: messagesPvd.selectedMessagesCount.toString(),
              ),
              gaDeleteConfirm: GAEvent(
                GAEvent.MSG_DELETE_CONFIRMED,
                entityId: widget.conversationId,
                entityType: "dm",
                eventValue: messagesPvd.selectedMessagesCount.toString(),
              ),
            ),
          IconButton(
            onPressed: () async {
              final actionPerformed =
                  await _showConversationActionSheet(ref, conversation);
              if (actionPerformed == _ConversationActionsEnum.block &&
                  mounted) {
                Navigator.of(context).pop();
              }
            },
            icon: Icon(ArreIconsV2.kebeb_filled),
          ),
        ],
      );

      if (conversation.conversationStatus == "requested" &&
          conversation.participantStatus == "published") {
        bottomNavBar = _MessageRequestSent();
      } else if (conversation.conversationStatus == "unpublished" &&
          conversation.participantStatus == "published") {
        bottomNavBar = _MessageRequestSent();
      } else if (conversation.conversationStatus == "requested" &&
          conversation.participantStatus == "requested") {
        bottomNavBar = _MessageRequestReceivedActions(conversation);
      } else if (conversation.conversationStatus == "blocked" &&
          conversation.participantStatus == "published") {
        bottomNavBar = _BlockedByOtherUser();
      } else if (conversation.conversationStatus == "blocked" &&
          conversation.participantStatus == "blocked") {
        bottomNavBar = _BlockedOtherUser(conversation);
      }
      bottomNavBar ??= MessageDraftWidget(
        conversationId: conversation.conversationId,
        messagingOn: MessageOn.DM,
      );
      bottomNavBar = SafeArea(child: bottomNavBar);
      body = _MessageListBody(conversation);
    } else {
      appBar = AppBar(leading: ABackButton());

      if (conversationDetailsPvd.isLoading) {
        body = Center(child: CircularProgressIndicator());
      } else {
        body = Center(
          child: ArreErrorWidget(
            error: conversationDetailsPvd.error,
            onPressed: () =>
                ref.refresh(conversationDetailsProvider(widget.conversationId)),
          ),
        );
      }
    }

    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavBar,
    );
  }
}

class _MessageListBody extends ConsumerStatefulWidget {
  final GConversation conversation;

  const _MessageListBody(this.conversation);

  @override
  ConsumerState createState() => __MessageListBodyState();
}

class __MessageListBodyState extends ConsumerState<_MessageListBody> {
  String get conversationId => widget.conversation.conversationId;

  @override
  void initState() {
    super.initState();
    ApiService.instance.markAllMessagesAsSeen(conversationId);
  }

  @override
  Widget build(BuildContext context) {
    final messagesPvd = ref.watch(messagesProvider(conversationId));
    final data = messagesPvd.data;
    final conversation =
        ref.watch(conversationDetailsProvider(conversationId)).valueOrNull;

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
      } else if (conversation != null) {
        return _MessageDetailedEmptyScreen(conversation);
      }
    }
    final oldestMessage = messagesPvd.oldestMessage;
    ref.watch(voiceMessagePlayerProvider);
    return NotificationListener<ScrollUpdateNotification>(
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
            _MessageSliverList(data: data, messageSelectionPvd: messagesPvd),
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
                      else if (messagesPvd.hasLoadedAllMessages &&
                          conversation != null) ...[
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            ArreNavigator.instance.push(
                              AAppPage(
                                child: ProfileScreen(
                                    userId: Utils.getUserId4mConversationId(
                                        conversationId)),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              UserAvatarV2(
                                size: 100,
                                mediaId: conversation.iconMediaId,
                                userName: conversation.conversationTitle,
                                showThumbnail: false,
                              ),
                              SizedBox(height: 16),
                              Text(
                                "@${conversation.conversationTitle}",
                                style: ATextStyles.sys16Bold(AColors.greyLight),
                              ),
                            ],
                          ),
                        ),
                      ]
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

class _UnreadMessageDivider extends StatelessWidget {
  const _UnreadMessageDivider();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AColors.tealPrimary, endIndent: 8)),
        Text(
          "Unread Messages",
          style: ATextStyles.sys12Regular(AColors.tealPrimary),
        ),
        Expanded(child: Divider(color: AColors.tealPrimary, indent: 8)),
      ],
    );
  }
}

class _MessageDetailedEmptyScreen extends StatelessWidget {
  final GConversation conversation;

  const _MessageDetailedEmptyScreen(this.conversation);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AColors.BgLight,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.fromLTRB(24, 40, 24, 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                  width: 45,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: UserAvatarV2(
                          size: 25,
                          mediaId: arrePref
                              .getString(PrefKey.PROFILE_PICTURE_MEDIA_ID),
                          userName: arrePref.userName,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: UserAvatarV2(
                          size: 25,
                          mediaId: conversation.iconMediaId,
                          userName: conversation.conversationTitle,
                        ),
                      )
                    ],
                  ),
                ),
                if (conversation.participantStatus == "canrequest") ...[
                  SizedBox(height: 12),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "You and"),
                        TextSpan(
                          text: " @${conversation.conversationTitle} ",
                          style: TextStyle(color: AColors.tealPrimary),
                        ),
                        TextSpan(
                            text:
                                "do not follow each other, so you can only send one message. Once"),
                        TextSpan(
                          text: " @${conversation.conversationTitle} ",
                          style: TextStyle(color: AColors.tealPrimary),
                        ),
                        TextSpan(
                            text:
                                "accepts your request you can send more messages."),
                      ],
                      style: ATextStyles.sys14Regular(AColors.textMedium),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                SizedBox(height: 12),
                Text(
                  "Please be respectful and follow our community guidelines when sending messages. If the receivers report you twice then your account will be suspended temporarily.",
                  style: ATextStyles.sys12Regular(AColors.textMedium),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height *
                  (conversation.participantStatus == "canrequest"
                      ? 0.05
                      : 0.12)),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  child: Image.asset(
                    ArreAssets.VOICE_DM_ILLUSTRATION_IMG,
                    fit: BoxFit.contain,
                  ),
                  constraints: BoxConstraints(maxHeight: 265),
                ),
                SizedBox(height: 8),
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
          ),
        ],
      ),
    );
  }
}

class _DeleteMessageIconButton extends StatelessWidget {
  final GAEvent? gaDeleteBtnClick, gaDeleteConfirm;
  final MessageSelectionMixin messageSelectionPvd;

  const _DeleteMessageIconButton({
    required this.messageSelectionPvd,
    this.gaDeleteBtnClick,
    this.gaDeleteConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        FocusScope.of(context).unfocus();
        gaDeleteBtnClick?.log();
        final confirmDelete = await showModalBottomSheet(
          context: context,
          showDragHandle: true,
          useRootNavigator: true,
          builder: (context) {
            return ConfirmationSheet(
              title: "Delete Message?",
              primaryBtnColor: AColors.red,
              description: "Are you sure you want to delete selected messages?",
              primaryBtnLabel: "Delete",
              secondaryBtnLabel: "Cancel",
            );
          },
        );
        if (confirmDelete == true) {
          gaDeleteConfirm?.log();
          showFutureLoaderDialog(messageSelectionPvd.deleteMessages())
              .catchError((err) {
            showSnackBarV2(context: context, error: err);
          });
        }
      },
      icon: Icon(
        ArreIconsV2.bin_filled,
        color: AColors.red,
      ),
    );
  }
}

class _MessageSliverList extends StatelessWidget {
  final List<ArreMessageTile> data;
  final MessageSelectionMixin messageSelectionPvd;
  final bool canSelectAnyMessage;
  final void Function(ContentMessage reportMessage)? onReportMessage;

  const _MessageSliverList({
    required this.data,
    required this.messageSelectionPvd,
    this.canSelectAnyMessage = false,
    this.onReportMessage,
  });

  @override
  Widget build(BuildContext context) {
    final messageConstraints = BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width * 0.7,
      minWidth: 84,
    );
    final length = data.length;
    Widget child = SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final messageTile = data[index];
          ContentMessage? nextMessage =
              index < length - 1 && data[index + 1] is ContentMessage
                  ? data[index + 1] as ContentMessage
                  : null;
          Widget child;
          Alignment alignment;
          EdgeInsets messagePadding;

          switch (messageTile) {
            case VoiceMessage():
              child = _VoiceMessageWidget(
                messageTile,
                padding: EdgeInsets.only(right: 8),
              );
            case TextMessage():
              child = _TextMessageWidget(
                messageTile,
                padding: EdgeInsets.all(8),
              );
            case PlaylistShareMessage():
              child = _PlaylistMessageWidget(
                messageTile,
                padding: EdgeInsets.all(8),
              );
            case VoicepodShareMessage():
              child = _VoicepodMessageWidget(
                messageTile,
                padding: EdgeInsets.all(8),
              );
            case DateDivider():
              child = Padding(
                padding: EdgeInsets.only(top: 16, bottom: 4),
                child: Text(
                  "${Utils.relativeReadableDate(messageTile.date)}",
                  style: ATextStyles.sys12Regular(AColors.greyMedium),
                ),
              );
            case UnreadDivider():
              child = _UnreadMessageDivider();
          }

          if (messageTile is ContentMessage) {
            final contentMessage = messageTile as ContentMessage;

            if (contentMessage.message.isDeleted) {
              child = Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                child: Text(
                  "This message was deleted",
                  style: ATextStyles.user14Regular(AColors.textDark),
                ),
              );
            }

            child = ConstrainedBox(
              constraints: messageConstraints,
              child: child,
            );

            if (contentMessage.showSenderName) {
              child = _UserNameWrapper(
                child: child,
                userId: contentMessage.message.senderId,
              );
            } else {
              child = Padding(
                padding: EdgeInsets.only(top: 4),
                child: child,
              );
            }

            child = _MessageTimeWrapper(
              child: child,
              messagedAt: contentMessage.message.createdAt,
            );

            final isSenderChanged = nextMessage?.message.senderId !=
                contentMessage.message.senderId;

            child = CustomPaint(
              painter: _MessageBoxPainter(
                isSentByCurrentUser: contentMessage.isSentByMe,
                showEdges: isSenderChanged,
              ),
              child: child,
            );

            if (contentMessage.message.messageOn == MessageOn.COMMUNITY_CHATS &&
                !contentMessage.isSentByMe) {
              child = Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isSenderChanged)
                    Consumer(
                      builder: (context, ref, child) {
                        final userDetails = ref.watch(
                            userShortDataProvider.select((value) => value
                                .getData(contentMessage.message.senderId)));
                        return UserAvatarV2(
                          size: 20,
                          userName: userDetails?.username,
                          mediaId: userDetails?.profilePictureMediaId,
                        );
                      },
                    )
                  else
                    SizedBox(width: 20),
                  SizedBox(width: 8),
                  child
                ],
              );
            }

            messagePadding = isSenderChanged
                ? EdgeInsets.fromLTRB(16, 12, 16, 2)
                : EdgeInsets.fromLTRB(16, 2, 16, 2);
          } else {
            messagePadding = EdgeInsets.fromLTRB(16, 16, 16, 0);
          }

          if (messageTile.isSentByMe == true) {
            alignment = Alignment.centerRight;
          } else if (messageTile.isSentByMe == false) {
            alignment = Alignment.centerLeft;
          } else {
            alignment = Alignment.center;
          }
          child = Align(
            alignment: alignment,
            child: Padding(
              padding: messagePadding,
              child: child,
            ),
          );

          ///Message selection for deleting or reporting
          if (messageTile is ContentMessage &&
              !(messageTile as ContentMessage).message.isDeleted) {
            ContentMessage contentMessage = messageTile as ContentMessage;

            if (contentMessage.isSentByMe || canSelectAnyMessage) {
              if (messageSelectionPvd.hasAnySelectedMessage) {
                child = IgnorePointer(child: child);
              }
              child = GestureDetector(
                onLongPress: () {
                  messageSelectionPvd.changeMessageSelection(contentMessage);
                },
                onTap: () {
                  if (messageSelectionPvd.hasAnySelectedMessage) {
                    messageSelectionPvd.changeMessageSelection(contentMessage);
                  }
                },
                behavior: HitTestBehavior.translucent,
                child: child,
              );
            } else if (onReportMessage != null &&
                !messageSelectionPvd.hasAnySelectedMessage) {
              child = _ReportableMessageWrapper(
                child: child,
                onReportMessage: onReportMessage!,
                reportMessage: contentMessage,
                messageSelectionPvd: messageSelectionPvd,
              );
            }

            if (contentMessage.isSelected) {
              child = Material(
                color: AColors.BgStroke,
                child: child,
              );
            }
          }
          return child;
        },
        childCount: data.length,
      ),
    );

    if (messageSelectionPvd.hasAnySelectedMessage &&
        !messageSelectionPvd.isForReporting) {
      child = WillPopScope(
        onWillPop: () {
          if (messageSelectionPvd.hasAnySelectedMessage) {
            messageSelectionPvd.clearSelection();
            return SynchronousFuture(false);
          }
          return SynchronousFuture(true);
        },
        child: child,
      );
    }

    return child;
  }
}

class _ReportableMessageWrapper extends StatelessWidget {
  final Widget child;
  final MessageSelectionMixin messageSelectionPvd;
  final ContentMessage reportMessage;
  final void Function(ContentMessage reportMessage) onReportMessage;

  const _ReportableMessageWrapper({
    required this.child,
    required this.onReportMessage,
    required this.reportMessage,
    required this.messageSelectionPvd,
  });

  RelativeRect getMenuPosition(
      BuildContext context, LongPressStartDetails tapDetails) {
    final RenderBox overlay = Navigator.of(context, rootNavigator: true)
        .overlay!
        .context
        .findRenderObject()! as RenderBox;
    final RenderBox button = context.findRenderObject()! as RenderBox;
    return RelativeRect.fromRect(
      Rect.fromCenter(
        center: Offset(tapDetails.globalPosition.dx,
            button.localToGlobal(Offset.zero).dy - 32),
        width: 0,
        height: 0,
      ),
      Offset.zero & overlay.size,
    );
  }

  Future<void> showReportMenu(
      BuildContext context, LongPressStartDetails details) async {
    messageSelectionPvd.changeMessageSelection(
      reportMessage,
      isForReporting: true,
    );
    final position = getMenuPosition(context, details);
    final selectedOption = await showCompactMenu<String>(
      context: context,
      position: position,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide.none,
      ),
      items: [
        PopupMenuItem(
          value: "report",
          child: Row(
            children: [
              Icon(
                Icons.error_outline,
                color: AColors.red,
              ),
              Text(
                "Report message",
                style: TextStyle(color: AColors.red),
              ),
            ],
          ),
        )
      ],
    );
    messageSelectionPvd.clearSelection();
    if (selectedOption == "report") {
      onReportMessage(reportMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onLongPressStart: (details) => showReportMenu(context, details),
      child: child,
    );
  }
}
