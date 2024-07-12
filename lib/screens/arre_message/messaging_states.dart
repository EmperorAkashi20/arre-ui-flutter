part of arre_message;

const _messagingDivider = Divider(
  indent: 20,
  endIndent: 20,
  height: 32,
  color: AColors.BgStroke,
);

class _MessageRequestSent extends StatelessWidget {
  const _MessageRequestSent();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _messagingDivider,
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
            child: Text(
              "Message Request Sent! You can send more messages after your request has been accepted",
              style: ATextStyles.sys14Regular(AColors.textMedium),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class _MessageRequestReceivedActions extends ConsumerWidget {
  final GConversation conversation;

  String get conversationId => conversation.conversationId;

  const _MessageRequestReceivedActions(this.conversation);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _messagingDivider,
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Text(
              "Accept message request from @${conversation.conversationTitle} ?",
              style: ATextStyles.user14Regular(AColors.textLight),
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                side: MaterialStatePropertyAll(BorderSide(color: AColors.red)),
                foregroundColor: MaterialStatePropertyAll(AColors.red),
                textStyle: MaterialStatePropertyAll(ATextStyles.sys14Bold()),
                minimumSize: MaterialStatePropertyAll(Size(85, 26)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () async {
                    arreAnalytics.logEvent(GAEvent.DM_REQUEST_BLOCK);
                    try {
                      final username = ref
                          .read(conversationDetailsProvider(conversationId))
                          .valueOrNull
                          ?.conversationTitle;
                      final blockOption = await showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        builder: (_) => _BlockOptionSheet(
                            username: username ?? "Arré User"),
                      );
                      if (blockOption != null) {
                        await showFutureLoaderDialog(ref.read(
                            blockConversationFuture(conversationId).future));
                        if (context.mounted) {
                          Navigator.of(context).pop();
                        }
                      }
                      if (blockOption == _BlockOption.blockAndReport) {
                        final userId =
                            Utils.getUserId4mConversationId(conversationId);
                        ArreNavigator.instance.push(
                          AAppPage(
                            child: ReportScreen(
                              entityType: ReportEntityType.user,
                              entityId: userId,
                              userId: userId,
                              communityId: null,
                            ),
                          ),
                        );
                      }
                    } catch (err) {
                      showSnackBarV2(context: context, error: err);
                    }
                  },
                  child: Text("Block"),
                ),
                OutlinedButton(
                  onPressed: () async {
                    arreAnalytics.logEvent(GAEvent.DM_REQUEST_DELETE);
                    try {
                      await showFutureLoaderDialog(ref.read(
                          deleteConversationFuture(conversationId).future));
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    } catch (err) {
                      showSnackBarV2(context: context, error: err);
                    }
                  },
                  child: Text("Delete"),
                ),
                OutlinedButton(
                  onPressed: () async {
                    arreAnalytics.logEvent(GAEvent.DM_REQUEST_ACCEPT);
                    try {
                      await showFutureLoaderDialog(ref.read(
                          acceptConversationFuture(conversationId).future));
                    } catch (err) {
                      showSnackBarV2(context: context, error: err);
                    }
                  },
                  style: ButtonStyle(
                    side: MaterialStatePropertyAll(
                        BorderSide(color: AColors.tealPrimary)),
                    foregroundColor:
                        MaterialStatePropertyAll(AColors.tealPrimary),
                  ),
                  child: Text("Accept"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BlockedByOtherUser extends StatelessWidget {
  const _BlockedByOtherUser();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _messagingDivider,
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
            child: Text(
              "You cannot reply to this conversation",
              style: ATextStyles.sys14Regular(AColors.textMedium),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class _BlockedOtherUser extends ConsumerWidget {
  final GConversation conversation;

  const _BlockedOtherUser(this.conversation);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _messagingDivider,
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
            child: Text(
              "You blocked this account. You can’t send messages to @${conversation.conversationTitle}",
              style: ATextStyles.user14Regular(AColors.textLight),
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                side: MaterialStatePropertyAll(BorderSide(color: AColors.red)),
                foregroundColor: MaterialStatePropertyAll(AColors.red),
                textStyle: MaterialStatePropertyAll(ATextStyles.sys14Bold()),
                minimumSize: MaterialStatePropertyAll(Size(136, 26)),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      try {
                        final userId = Utils.getUserId4mConversationId(
                            conversation.conversationId);
                        await showFutureLoaderDialog(() async {
                          await ApiService.instance.unblockUser(userId);
                          await Future.value(
                            ref.refresh(conversationDetailsProvider(
                                    conversation.conversationId)
                                .future),
                          );
                        }());
                      } catch (err) {
                        showSnackBarV2(context: context, error: err);
                      }
                    },
                    style: ButtonStyle(
                      side: MaterialStatePropertyAll(
                          BorderSide(color: AColors.white)),
                      foregroundColor: MaterialStatePropertyAll(AColors.white),
                    ),
                    child: Text("Unblock"),
                  ),
                  // SizedBox(width: 16),
                  // Expanded(
                  //   child: OutlinedButton(
                  //     onPressed: () async {
                  //       try {
                  //         await showFutureLoaderDialog(
                  //           ref.read(deleteConversationFuture(
                  //                   conversation.conversationId)
                  //               .future),
                  //         );
                  //         if (context.mounted) {
                  //           Navigator.of(context).pop();
                  //         }
                  //       } catch (err) {
                  //         showSnackBarV2(context: context, error: err);
                  //       }
                  //     },
                  //     child: Text("Delete"),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum _BlockOption { block, blockAndReport }

class _BlockOptionSheet extends StatelessWidget {
  final String username;

  const _BlockOptionSheet({required this.username});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(bottom: 24),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
        child: OutlinedButtonTheme(
          data: OutlinedButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStatePropertyAll(
                    ATextStyles.sys14Bold(AColors.red)),
                foregroundColor: MaterialStatePropertyAll(AColors.red),
                side: MaterialStatePropertyAll(BorderSide(color: AColors.red))),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Block @$username",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AColors.greyLight,
                    fontSize: 20,
                    fontFamily: "Acumin Pro",
                    height: 24 / 20),
              ),
              SizedBox(height: 10),
              Text(
                "Once you block @$username, you won’t be able to send or receive messages from this member",
                textAlign: TextAlign.center,
                style: ATextStyles.sys14Regular(AColors.greyLight),
              ),
              SizedBox(height: 16),
              OutlinedButton(
                onPressed: () => Navigator.of(context).pop(_BlockOption.block),
                child: Text("Block"),
              ),
              OutlinedButton(
                onPressed: () =>
                    Navigator.of(context).pop(_BlockOption.blockAndReport),
                child: Text("Block & Report"),
              ),
              CupertinoButton(
                child: Text(
                  "Cancel",
                  style: ATextStyles.sys14Bold(AColors.tealLight),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
