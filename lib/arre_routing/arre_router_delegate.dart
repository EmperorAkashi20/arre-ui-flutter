part of arre_router;

enum AuthStatus { needsOnboarding, loggedOut, onboarded }

typedef OnPopPageCallback = void Function(dynamic result);

mixin _ARouterDelegateMixin<T> on RouterDelegate<T> {
  List<ArrePage> get _pages;

  Future<T?> _pushPage<T>(ArrePage page);

  Future<T?> _replacePage<T, S>(ArrePage page, {S? result}) {
    final lastPage = _pages.removeLast();
    lastPage.completer.complete(result);
    return _pushPage(page);
  }

  GlobalKey<NavigatorState>? get navigatorKey;
}

class ArreNavigator extends RouterDelegate<ArrePage>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin,
        _ARouterDelegateMixin {
  AuthStatus? _authStatus;

  ///Force update required to proceed with app.
  ///
  ///If true, Navigator shows force update screen, No navigation works
  bool? _forceUpdateRequired;
  List<AGlobalPage> _pages = [];

  bool? get isLoggedIn => _authStatus == AuthStatus.onboarded;

  // Map<ArrePage, Completer> _onPopPageCallbacks = {};
  GlobalKey<NavigatorState>? _navigatorKey;
  static ArreNavigator instance = ArreNavigator._();
  final routeInformationProvider = PlatformRouteInformationProvider(
      initialRouteInformation: RouteInformation(
          uri: Uri.tryParse(
              WidgetsBinding.instance.platformDispatcher.defaultRouteName)));

  ///Indicates whether the [_InternalRouter] is visible or not
  ///
  /// 1. true - Internal routes are visible and is not covered by any [AGlobalPage]
  /// 2. false - [AGlobalPage] is pushed on top of the Internal routes
  final internalRoutesVisibilityNotifier = ValueNotifier<bool>(false);

  BackButtonDispatcher backButtonDispatcher = RootBackButtonDispatcher();
  final _analyticsObserver = ArreAnalyticsObserver();

  ArreNavigator._()
      : _navigatorKey =
            GlobalKey<NavigatorState>(debugLabel: "Arre Navigator Key") {
    this.addListener(_refreshAppVisibility);
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  BuildContext get context => navigatorKey!.currentContext!;

  @override
  ArrePage? get currentConfiguration => _pages.isEmpty ? null : _pages.last;

  Future<bool> get ensureOnboardedFuture => ProviderScope.containerOf(context)
      .read(ensureOnboardedWithAppStateChange.future);

  bool get isFirstTimeUser =>
      arrePref.getString(PrefKey.SPEAKING_LANG) == null &&
      arrePref.getStringList(PrefKey.LANGUAGE_PREFERENCES) == null;

  @override
  Widget build(BuildContext context) {
    // log("Root router pages $_pages", name: _LOG);
    return Navigator(
      key: navigatorKey,
      restorationScopeId: 'arre_root_router',
      pages: _forceUpdateRequired == true
          ? [
              AGlobalPage(
                key: ValueKey("update_app"),
                child: UpdateAppScreen(),
              )
            ]
          : List.unmodifiable(_pages),
      // initialRoute: "/splash_screen_old",
      observers: [
        _analyticsObserver,
        rootRouteObserver,
        // arreAnalytics.getRouteObserver(),
      ],
      onGenerateRoute: _onGenerateRoute,
      onUnknownRoute: _onUnknownRoute,
      onGenerateInitialRoutes: _onGenerateInitialRoutes,
      onPopPage: (route, result) {
        log('#4 onPopPage route:$route result:$result');
        if (!route.didPop(result)) return false;
        if (route.settings is ArrePage) {
          (route.settings as ArrePage).completer.complete(result);
        }
        // _onPopPageCallbacks[route.settings]?.complete(result);
        // _onPopPageCallbacks.remove(route.settings);
        _pages = _pages
          ..removeLast()
          ..toList();
        if (_pages.isEmpty) {
          refresh();
        }
        notifyListeners();
        return true;
      },
    );
  }

  void _preSetupProviders(WidgetRef ref) {
    if (arrePref.getString(PrefKey.AUTH_TOKEN) == null &&
        arrePref.getString(PrefKey.USER_ID) == null &&
        arrePref.getString(PrefKey.USER_NAME) == null) {
      log("Pre setup providers login as guest", name: "DEBUGGING_ONBOARDING");
      ref.read(inviteLinkProvider);
      //No auth token or previously logged in user found, so we login as guest
      ref.read(ensureAuthenticated.future).then((value) {
        // ref.read(homePageFeedProvider(null));
        // ref.read(moodsDataFutureProvider);
      }).catchError((err) {
        //Ignore error
      });
    } else if (arrePref.getString(PrefKey.AUTH_TOKEN) != null) {
      //Auth token indicates, logged in user (Can be a guest as well)
      // ref.read(homePageFeedProvider(null));
      // ref.read(moodsDataFutureProvider);
    }
  }

  bool hasEnteredAppRootPage() {
    return _pages
        .any((element) => element.child.runtimeType == _InternalRouter);
  }

  void _refreshAppVisibility() {
    if (_pages.isEmpty) {
      internalRoutesVisibilityNotifier.value = false;
    } else if (_pages.length == 1 && _pages.first.child is _InternalRouter) {
      internalRoutesVisibilityNotifier.value = true;
    } else {
      internalRoutesVisibilityNotifier.value = false;
    }
  }

  ///Returns
  ///
  /// true: If there's auth state change, false otherwise
  bool _refreshAuthState() {
    AuthStatus authStatus;
    if (arrePref.getString(PrefKey.AUTH_TOKEN) == null &&
        arrePref.getString(PrefKey.USER_NAME) != null) {
      authStatus = AuthStatus.loggedOut;
    } else if (isFirstTimeUser) {
      authStatus = AuthStatus.needsOnboarding;
    } else {
      authStatus = AuthStatus.onboarded;
    }
    final hasAuthStateChanged = authStatus != this._authStatus;
    if (hasAuthStateChanged) {
      log('Auth state changed', name: _LOG);
      _authStatus = authStatus;
      notifyListeners();
    }
    return hasAuthStateChanged;
  }

  void refresh([ArrePage? initialPage]) {
    _checkForceAppUpdate();
    if (_refreshAuthState() || _pages.isEmpty) {
      var mainPage;
      switch (_authStatus) {
        case null:
        case AuthStatus.needsOnboarding:
          mainPage = AGlobalPage(child: LanguageSelectionScreen());
          break;
        case AuthStatus.loggedOut:
          mainPage = AGlobalPage(child: WelcomeScreen());
          break;
        case AuthStatus.onboarded:
          mainPage = AGlobalPage(child: _InternalRouter());
      }
      // if(kDebugMode){
      //   mainPage = AGlobalPage(child: LanguageSelectionScreen());
      // }
      _pages = [mainPage];
      // _refreshAppVisibility();
      notifyListeners();
      if (initialPage != null &&
          initialPage.uri.toString() != Navigator.defaultRouteName) {
        Future(() {
          push(initialPage);
        });
      }
    }
  }

  Future<T?> replace<T, S>(
    BuildContext context,
    ArrePage<T> page, {
    S? result,
  }) async {
    assert(
        Navigator.of(context) == page.delegate?.navigatorKey?.currentState,
        "The current navigator and the destination navigator are different. "
        "It is currently not supported to replace pages across the Navigators");
    if (Navigator.of(context) == page.delegate?.navigatorKey?.currentState) {
      return page.delegate!._replacePage(page, result: result);
    } else {
      //For backward compatibility
      return Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => page.child,
          settings: page,
        ),
      );
    }
  }

  Future<T?> push<T>(ArrePage<T> page) async {
    _checkForceAppUpdate();
    if (page.child.isOnboardingRequired) {
      await ensureOnboardedFuture;
    }
    // if (page is AAppPage && _hasLoggedOut != true) {
    //   log(
    //     "Push failed for ${page.child.runtimeType}",
    //     error: "Cannot push AAppPage without logging in",
    //     name: _LOG,
    //     stackTrace: StackTrace.current,
    //   );
    //   return null;
    // }
    if (currentConfiguration?.child.uri == page.uri && page.uri != null) {
      ///The requested route is already on top and visible
      return null;
    }
    assert(() {
      if (page.child.uri != null) {
        final parsedPage = ArreRouteInfoParser.instance
            .parsePage(RouteInformation(uri: page.child.uri));
        return parsedPage?.child.runtimeType == page.child.runtimeType;
      }
      return true;
    }(),
        "maybeParse is not set or set incorrectly for ${page.child.runtimeType}. "
        "Check if you've called the ${page.child.runtimeType}.maybeParse in ArreRouteInformationParser._parsePage");
    if (page.delegate == null) {
      log(
        "Changing the Page configuration for $page",
        error: "You've tried to push page whose delegate is null",
        name: _LOG,
      );
      return _pushPage(AGlobalPage(
        child: page.child,
        arguments: page.arguments,
        key: page.key,
        restorationId: page.restorationId,
      ));
    } else {
      return page.delegate!._pushPage(page);
    }
  }

  @override
  Future<T?> _pushPage<T>(covariant AGlobalPage<T> page) {
    _pages.add(page);
    notifyListeners();
    return page.completer.future;
  }

  Future<void> _checkForceAppUpdate() async {
    try {
      if (_forceUpdateRequired == null &&
          kReleaseMode &&
          !AppConfig.isDevToolsEnabled) {
        final updateDetails = await ProviderScope.containerOf(context)
            .read(appUpdateFutureProvider.future);
        switch (updateDetails.status) {
          case AppUpdateStatus.updateAvailable:
            _forceUpdateRequired = false;
            break;
          case AppUpdateStatus.forceUpdateAvailable:
            _forceUpdateRequired = true;
            notifyListeners();
            break;
          case AppUpdateStatus.latest:
            _forceUpdateRequired = false;
            break;
          default:
        }
      }
    } catch (err, st) {
      Utils.reportError(err, st, reason: "_checkForceAppUpdate failed");
    }
  }

  @override
  Future<void> setInitialRoutePath(ArrePage configuration) {
    print("Arre DEEP_LINK_DEBUG setInitialRoutePath ${configuration.uri}");
    // if (kDebugMode) {
    //   _pages = [AGlobalPage(child: MessageDetailedScreen())];
    // } else
    if (_pages.isEmpty) {
      _pages = [
        AGlobalPage(
          child: SplashScreen(
            onAnimationComplete: () => refresh(configuration),
            preSetupCallback: _preSetupProviders,
          ),
        )
      ];
    }
    return SynchronousFuture(null);
  }

  @override
  Future<void> setNewRoutePath(ArrePage? configuration) {
    print("Arre DEEP_LINK_DEBUG setNewRoutePath ${configuration?.uri}");
    if (configuration != null) push(configuration);
    return SynchronousFuture(null);
  }

  void pushRouteLocation(String location) {
    final uri = Uri.parse(location);
    routeInformationProvider
        .didPushRouteInformation(RouteInformation(uri: uri));
  }
}

Route<dynamic>? _onGenerateRoute(RouteSettings settings) {
  print("Arre DEEP_LINK_DEBUG _onGenerateRoute  $settings ");
  return null;
}

Route<dynamic>? _onUnknownRoute(RouteSettings settings) {
  print("Arre DEEP_LINK_DEBUG _onUnknownRoute  $settings ");
  return null;
}

List<Route<dynamic>> _onGenerateInitialRoutes(
    NavigatorState navigator, String initialRoute) {
  print(
      "Arre DEEP_LINK_DEBUG _onGenerateInitialRoutes initialRoute $initialRoute ${navigator.restorationId}");
  return [];
}
