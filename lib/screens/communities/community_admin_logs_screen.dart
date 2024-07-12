part of communities;

class CommunityAdminLogsScreen extends ConsumerStatefulWidget with ArreScreen {
  final String communityId;

  const CommunityAdminLogsScreen(this.communityId, {super.key});

  @override
  ConsumerState createState() => _CommunityAdminLogsScreenState();

  @override
  Uri get uri => Uri.parse("/voiceclub/c/$communityId/logs");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 4 &&
        uri.pathSegments[0] == "voiceclub" &&
        uri.pathSegments[1] == "c" &&
        uri.pathSegments[3] == "logs") {
      return AAppPage(child: CommunityAdminLogsScreen(uri.pathSegments[2]));
    }
    return null;
  }

  @override
  String get screenName => GAScreen.VOICECLUB_ADMIN_LOGS_SCREEN;
}

class _CommunityAdminLogsScreenState
    extends ConsumerState<CommunityAdminLogsScreen> {
  @override
  Widget build(BuildContext context) {
    ref.watch(communityModRequestsProvider(widget.communityId));
    ref.watch(communityModResolvedLogsProvider(widget.communityId));
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: ABackButton(),
          title: Text("Admin Logs"),
          bottom: TabBar(
            labelColor: AColors.tealPrimary,
            unselectedLabelColor: Color(0xFF74787d),
            labelStyle: ATextStyles.sys14Bold(),
            unselectedLabelStyle: ATextStyles.sys14Bold(),
            tabs: [
              Tab(text: "Pending"),
              Tab(text: "Resolved"),
            ],
          ),
        ),
        body: TabBarView(children: [
          _PendingLogsList(widget.communityId),
          _ResolvedLogsList(widget.communityId),
        ]),
      ),
    );
  }
}

class _PendingLogsList extends ConsumerStatefulWidget {
  final String communityId;

  const _PendingLogsList(this.communityId);

  @override
  ConsumerState createState() => __PendingLogsListState();
}

class __PendingLogsListState extends ConsumerState<_PendingLogsList>
    with AutomaticKeepAliveClientMixin {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    ref.read(communityModRequestsProvider(widget.communityId)).initAnimatedList(
          listKey: listKey,
          builder: (request, context, animation) {
            return SizeTransition(
              sizeFactor: animation,
              axis: Axis.vertical,
              axisAlignment: 0,
              child: IgnorePointer(
                child: _PendingLog(
                  request: request,
                  animation: animation,
                ),
              ),
            );
          },
        );
    arreAnalytics.logEvent(
      GAEvent.VC_ADMIN_LOGS_VISIBLE_TAB,
      parameters: {EventAttribute.GA_CONTEXT: "pending_logs"},
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Widget child;

    final requestLogsPvd =
        ref.watch(communityModRequestsProvider(widget.communityId));

    if (requestLogsPvd.hasData && requestLogsPvd.data!.isNotEmpty) {
      child = NotificationListener<ScrollMetricsNotification>(
        onNotification: requestLogsPvd.onScrollNotification,
        child: SafeArea(
          child: AnimatedList(
            key: listKey,
            initialItemCount: requestLogsPvd.data!.length,
            // itemCount: requestLogsPvd.data!.length,
            padding: EdgeInsets.symmetric(vertical: 20),
            itemBuilder: (context, index, animation) {
              final request = requestLogsPvd.data![index];
              final disable = requestLogsPvd
                  .isPerformingAction(request.moderationRequestId);

              Widget child = _PendingLog(
                request: request,
                animation: animation,
                actionCallback: (action) {
                  arreAnalytics.logEvent(
                    GAEvent.VC_LOG_ACTION_CLICK,
                    parameters: {
                      EventAttribute.ENTITY_TYPE: request.entityType,
                      EventAttribute.ENTITY_ID: request.entityId,
                      EventAttribute.VOICECLUB_ID: widget.communityId,
                      EventAttribute.GA_CONTEXT: action.value,
                    },
                  );
                  requestLogsPvd.updateModRequest(
                    request: request,
                    action: action,
                  );
                },
              );

              if (disable) {
                child =
                    IgnorePointer(child: Opacity(opacity: 0.5, child: child));
              }

              return child;
            },
          ),
        ),
      );
    } else if (requestLogsPvd.hasData && requestLogsPvd.data!.isEmpty) {
      child = ArreErrorWidget.empty(message: "There are no new requests yet");
    } else if (requestLogsPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget(error: requestLogsPvd.error),
      );
    }
    return child;
  }
}

class _PendingLog extends StatelessWidget {
  final GCommunityModRequest request;
  final void Function(GCommunityModAction action)? actionCallback;

  final Animation<double> animation;

  const _PendingLog({
    required this.request,
    required this.animation,
    this.actionCallback,
  });

  Widget? getStatusIcon() {
    switch (request.entityType) {
      case "reportedVoicepod":
        return Icon(ArreIconsV2.report_voicepod, size: 32);
      case "reportedComment":
        return Icon(ArreIconsV2.report_comment, size: 32);
      case "reportedReply":
        return Icon(ArreIconsV2.report_comment, size: 32);
      case "reportedUser":
        return Icon(ArreIconsV2.user_caution, size: 32);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final redirectUrl = request.redirectUrl;
    // debugger(when: request.moderationRequestTitle?.contains("member reported")??false);
    Widget? leading;

    if (request.iconMediaId.isValid) {
      leading = ArreNetworkImage.mediaId(
        "${request.iconMediaId}",
        height: 32,
        width: 32,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(42)),
      );
    }

    leading ??= getStatusIcon();

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (redirectUrl.isValid) {
          ArreNavigator.instance.pushRouteLocation(redirectUrl!);
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
        child: Column(
          children: [
            Row(
              children: [
                if (leading != null) ...[
                  leading,
                  SizedBox(width: 12),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        request.moderationRequestTitle ?? "",
                        style: ATextStyles.sys14Bold(AColors.textLight),
                      ),
                      if (request.moderationRequestLog.isValid) ...[
                        SizedBox(height: 2),
                        Text(
                          request.moderationRequestLog ?? "",
                          style: ATextStyles.sys14Regular(AColors.textMedium),
                        ),
                      ],
                      SizedBox(height: 4),
                      Text(
                        DateFormat("h:mm a, d MMM y").format(
                            DateTime.fromMillisecondsSinceEpoch(
                                request.updatedAt)),
                        style: ATextStyles.sys12Regular(AColors.textDark),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                if (redirectUrl.isValid)
                  Icon(
                    ArreIconsV2.frontarrow_outline,
                    size: 24,
                    color: AColors.BgStroke,
                  )
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: request.moderationActions
                  .map<Widget>((p0) {
                    final color = Color(int.tryParse(p0.color) ?? 0xFFFFFFFF);
                    return Expanded(
                      child: OutlinedButton(
                        onPressed: () => actionCallback?.call(p0),
                        style: ButtonStyle(
                          foregroundColor: MaterialStatePropertyAll(color),
                          minimumSize: MaterialStatePropertyAll(Size(256, 24)),
                          textStyle:
                              MaterialStatePropertyAll(ATextStyles.sys12Bold()),
                          side: MaterialStatePropertyAll(
                            BorderSide(color: color, width: 0.6),
                          ),
                        ),
                        child: Text(p0.label),
                      ),
                    );
                  })
                  .toList()
                  .joinSeparator(SizedBox(width: 10)),
            ),
            Divider(color: AColors.BgLight, height: 16),
          ],
        ),
      ),
    );
  }
}

class _ResolvedLogsList extends ConsumerStatefulWidget {
  final String communityId;

  const _ResolvedLogsList(this.communityId);

  @override
  ConsumerState createState() => __ResolvedLogsListState();
}

class __ResolvedLogsListState extends ConsumerState<_ResolvedLogsList>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    arreAnalytics.logEvent(
      GAEvent.VC_ADMIN_LOGS_VISIBLE_TAB,
      parameters: {EventAttribute.GA_CONTEXT: "resolved_logs"},
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Widget child;

    final resolvedLogsPvd =
        ref.watch(communityModResolvedLogsProvider(widget.communityId));

    if (resolvedLogsPvd.hasData && resolvedLogsPvd.data!.isNotEmpty) {
      child = NotificationListener<ScrollMetricsNotification>(
        onNotification: resolvedLogsPvd.onScrollNotification,
        child: SafeArea(
          child: ListView.separated(
            itemCount: resolvedLogsPvd.data!.length,
            padding: EdgeInsets.symmetric(vertical: 20),
            separatorBuilder: (context, index) => Divider(
              height: 16,
              color: AColors.BgLight,
            ),
            itemBuilder: (context, index) {
              return _ResolvedLog(log: resolvedLogsPvd.data![index]);
            },
          ),
        ),
      );
    } else if (resolvedLogsPvd.hasData && resolvedLogsPvd.data!.isEmpty) {
      child = ArreErrorWidget.empty(message: "No resolved logs found");
    } else if (resolvedLogsPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget(error: resolvedLogsPvd.error),
      );
    }
    return child;
  }
}

class _ResolvedLog extends StatelessWidget {
  final GCommunityModRequest log;

  const _ResolvedLog({required this.log});

  @override
  Widget build(BuildContext context) {
    Widget? leading;
    if (log.iconMediaId.isValid) {
      leading = ArreNetworkImage.mediaId(
        "${log.iconMediaId}",
        height: 42,
        width: 42,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(42)),
      );
    }

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (log.redirectUrl.isValid) {
          ArreNavigator.instance.pushRouteLocation(log.redirectUrl!);
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    log.moderationActionLog ?? "",
                    maxLines: 1,
                    style: ATextStyles.sys12Regular(AColors.textMedium),
                  ),
                ),
                Text(
                  DateFormat("h:mm a, d MMM y").format(
                      DateTime.fromMillisecondsSinceEpoch(log.updatedAt)),
                  style: ATextStyles.sys12Regular(AColors.textDark),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                if (leading != null) ...[
                  leading,
                  SizedBox(width: 12),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        log.moderationRequestTitle ?? "",
                        style: ATextStyles.sys14Bold(AColors.textLight),
                      ),
                      if (log.moderationActionLog.isValid)
                        Text(
                          log.moderationActionLog ?? "",
                          style: ATextStyles.sys14Regular(AColors.textMedium),
                        ),
                    ],
                  ),
                ),
                if (log.redirectUrl.isValid)
                  Icon(
                    ArreIconsV2.frontarrow_outline,
                    color: AColors.BgStroke,
                    size: 24,
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
