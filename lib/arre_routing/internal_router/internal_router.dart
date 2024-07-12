part of arre_router;

class _InternalRouter extends ConsumerStatefulWidget with ArreScreen {
  const _InternalRouter({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _AppRouterState();

  @override
  Uri? get uri =>
      _InternalRouterDelegate.instance.currentConfiguration?.child.uri;

  @override
  String get screenName =>
      _InternalRouterDelegate.instance.currentConfiguration?.name ?? '/';

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/") {
      return AGlobalPage(child: HomeScreen());
    }
    return null;
  }
}

class _AppRouterState extends ConsumerState<_InternalRouter> with RouteAware {
  late BackButtonDispatcher parentBackButtonDispatcher;
  ChildBackButtonDispatcher? _backButtonDispatcher;
  StreamSubscription<String>? deepLinkSub, notificationSub;

  @override
  void initState() {
    super.initState();
    ref.listenManual(ensureLanguagesSelected(true), (previous, next) {
      if (next.hasValue) {
        ref.read(recCommunitiesProvider).refresh();
        ref.invalidate(homePageFeedProvider(null));
        _setupLinkListeners();
      } else {
        deepLinkSub?.cancel();
        notificationSub?.cancel();
      }
    });
    if (ref.read(ensureLanguagesSelected(true)).hasValue) {
      // print("ArreLinkManager ref.read(ensureLanguagesSelected).hasValue");
      _setupLinkListeners();
    }
  }

  Future<void> _setupLinkListeners() async {
    // print("ArreLinkManager _setupLinkListeners");
    Permission.notification.request();
    ArreLinkManager.instance.listenToLinkStream();
    await deepLinkSub?.cancel().catchError((err) {});
    await notificationSub?.cancel().catchError((err) {});
    deepLinkSub = ArreLinkManager.instance.onLink.listen(pushDeepLinkScreen);
    notificationSub = PushNotificationManager.instance.notificationStream
        .listen(pushDeepLinkScreen);
    _pushInitialRoutes();
  }

  Future<void> pushDeepLinkScreen(String link) async {
    final deepLink = await ArreLinkManager.instance.getArreVoiceDeepLink(link);
    ArreNavigator.instance.pushRouteLocation(deepLink);
  }

  Future<void> _pushInitialRoutes() async {
    if (_InternalRouterDelegate.instance.isInitialRoutePushed) return;
    _InternalRouterDelegate.instance.isInitialRoutePushed = true;
    String? uri = await ArreLinkManager.instance.initialLink;
    if (!uri.isValid) {
      uri = await PushNotificationManager.instance.initialMessage;
    }
    final latestLink = ArreLinkManager.instance.latestLink;
    if (uri == null && latestLink != null) {
      final arreVoiceLink =
          await ArreLinkManager.instance.getArreVoiceDeepLink(latestLink);
      if (ArreRouteInfoParser.instance.isValidAppLocation(arreVoiceLink)) {
        uri = arreVoiceLink;
      }
    }

    if (uri != null) {
      ArreNavigator.instance.pushRouteLocation(uri);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    parentBackButtonDispatcher = Router.of(context).backButtonDispatcher!;
    _backButtonDispatcher ??=
        parentBackButtonDispatcher.createChildBackButtonDispatcher();
    // _backButtonDispatcher!.takePriority();
    // _branchDeepLinkSub ??=
    //     FlutterBranchSdk.initSession().listen(handleBranchLink);
    rootRouteObserver.subscribe(this, ModalRoute.of(context) as Route);
  }

  /// Called when the top route has been popped off, and the current route
  /// shows up.
  void didPopNext() {
    _backButtonDispatcher?.takePriority();
    log("didPopNext ${this.runtimeType}", name: _LOG);
  }

  /// Called when the current route has been pushed.
  void didPush() {
    _backButtonDispatcher?.takePriority();
    log("didPush ${this.runtimeType}", name: _LOG);
  }

  /// Called when the current route has been popped off.
  void didPop() {
    parentBackButtonDispatcher.takePriority();
    log("didPop ${this.runtimeType}", name: _LOG);
  }

  /// Called when a new route has been pushed, and the current route is no
  /// longer visible.
  void didPushNext() {
    parentBackButtonDispatcher.takePriority();
    log("didPushNext ${this.runtimeType}", name: _LOG);
  }

  void _disposeAllProviders() {
    final _appProviderContainer =
        ProviderScope.containerOf(ArreNavigator.instance.context);
    final allProviders = _appProviderContainer.getAllProviderElements();
    for (var provider in allProviders) {
      _appProviderContainer.invalidate(provider.provider);
    }
  }

  @override
  void dispose() {
    // print("ArreLinkManager _AppRouterState.dispose");
    deepLinkSub?.cancel();
    notificationSub?.cancel();
    rootRouteObserver.unsubscribe(this);
    if (ArreNavigator.instance._authStatus == AuthStatus.loggedOut) {
      _disposeAllProviders();
      _InternalRouterDelegate.instance.reset();
    }
    // _branchDeepLinkSub?.cancel();
    // _branchDeepLinkSub = null;
    parentBackButtonDispatcher.forget(_backButtonDispatcher!);
    // _InternalRouterDelegate.instance = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // log("AppRouter build:\n"
    //     "MediaQuery.padding${MediaQuery.of(context).padding}\n"
    //     "MediaQuery.viewPadding${MediaQuery.of(context).viewPadding}\n"
    //     "MediaQuery.viewInsets${MediaQuery.of(context).viewInsets}\n");
    final authStatusPvd = ref.watch(ensureAuthenticated);

    if (authStatusPvd.isLoading) {
      return Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (!authStatusPvd.hasValue) {
      return Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ArreErrorWidget(
          error: authStatusPvd.error,
          onPressed: () {
            ref.invalidate(ensureAuthenticated);
          },
        ),
      );
    }

    return ValueListenableBuilder(
      valueListenable: PodPlayerV3.instance.hasActivePod,
      builder: (context, hasActivePod, _) {
        Widget? bottomNavBar, podPlayerBar;
        final homeScreenPvd = ref.watch(homeScreenProvider);

        if (homeScreenPvd.isVisible) {
          bottomNavBar = _BottomNavigationBar();
        }
        if (hasActivePod) {
          podPlayerBar = _PodPlayerBar();
        }
        return Scaffold(
          primary: false,
          resizeToAvoidBottomInset: homeScreenPvd.resizeToAvoidBottomInset,
          body: Stack(
            fit: StackFit.expand,
            children: [
              Builder(builder: (context) {
                MediaQueryData data = MediaQuery.of(context);
                if (podPlayerBar != null) {
                  var bottomPadding = EdgeInsets.only(bottom: kPodBarHeight);
                  data = data.copyWith(
                    padding: data.padding + bottomPadding,
                  );
                }
                return MediaQuery(
                  data: data,
                  child: ScaffoldMessenger(
                    key: Utils.appScaffoldMessengerKey,
                    child: Router(
                      routerDelegate: _InternalRouterDelegate.instance,
                      backButtonDispatcher: _backButtonDispatcher,
                    ),
                  ),
                );
              }),
              if (podPlayerBar != null)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: podPlayerBar,
                ),
            ],
          ),
          bottomNavigationBar: bottomNavBar,
        );
      },
    );
  }
}
