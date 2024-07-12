part of arre_message;

class MessageRequestsScreen extends ConsumerStatefulWidget with ArreScreen {
  const MessageRequestsScreen({super.key});

  @override
  ConsumerState createState() => _UsersMessageRequestScreenState();

  @override
  Uri? get uri => Uri.parse("/message/requests");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/message/requests") {
      return AAppPage(child: MessageRequestsScreen());
    }
    return null;
  }

  @override
  String get screenName => GAScreen.MESSAGE_REQUESTS;

  @override
  bool get isOnboardingRequired => true;
}

class _UsersMessageRequestScreenState
    extends ConsumerState<MessageRequestsScreen> {
  @override
  Widget build(BuildContext context) {
    Widget child;
    final requestsPvd = ref.watch(messageRequestsProvider);
    final data = requestsPvd.data;
    if (data != null) {
      if (data.isEmpty) {
        child = SliverFillRemaining(
          child: _NoMessageRequestsState(),
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
    } else if (requestsPvd.isLoading) {
      child = SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
        hasScrollBody: false,
      );
    } else {
      child = SliverFillRemaining(
        hasScrollBody: false,
        child: ArreErrorWidget(
          error: requestsPvd.error,
          onPressed: requestsPvd.init,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text("Message Requests"),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return ref.read(messageRequestsProvider).init();
        },
        child: NotificationListener<ScrollMetricsNotification>(
          onNotification: requestsPvd.onScrollNotification,
          child: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [child],
          ),
        ),
      ),
    );
  }
}

class _NoMessageRequestsState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56),
              child: Text(
                "Message requests from people you don’t follow will appear here",
                style: ATextStyles.sys14Regular(),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment(0, -0.4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 160),
                  child: Image.asset(ArreAssets.SEARCHING_WOMEN_DOG_IMG),
                ),
                SizedBox(height: 16),
                Text("Pretty empty out here")
              ],
            ),
          ),
        )
      ],
    );
  }
}
