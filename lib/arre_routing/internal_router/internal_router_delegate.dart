part of arre_router;

class _InternalRouterDelegate extends RouterDelegate<ArrePage>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin,
        _ARouterDelegateMixin {
  bool isInitialRoutePushed = false;
  late List<AAppPage> _pages;
  final _navigatorKey =
      GlobalKey<NavigatorState>(debugLabel: "Internal Navigator Key");
  static final _InternalRouterDelegate instance = _InternalRouterDelegate._();
  final _analyticsObserver = ArreAnalyticsObserver();

  // Map<ArrePage, Completer> _onPopPageCallbacks = {};

  _InternalRouterDelegate._() : _pages = [AAppPage(child: HomeScreen())];

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  ArrePage? get currentConfiguration {
    return (_pages.lastOrNull ?? _navigatorKey.currentState?.widget.pages.last)
        as ArrePage?;
  }

  @override
  Widget build(BuildContext context) {
    // log("AppRouter.build ${this.hashCode}", name: _LOG);
    return Navigator(
      key: navigatorKey,
      restorationScopeId: "internal_navigator",
      pages: List.unmodifiable(_pages),
      observers: [
        _analyticsObserver,
        appRouteObserver,
        ProviderScope.containerOf(context).read(homeScreenProvider)
        // arreAnalytics.getRouteObserver(),
      ],
      onPopPage: (route, result) {
        log('#4 onPopPage route:$route result:$result');
        if (!route.didPop(result)) return false;
        if (route.settings is ArrePage) {
          (route.settings as ArrePage).completer.complete(result);
        }
        if (_pages.length > 1) {
          _pages = _pages..removeLast();
          notifyListeners();
          return true;
        }
        return false;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(covariant AAppPage configuration) {
    throw UnimplementedError();
  }

  @override
  Future<T?> _pushPage<T>(covariant AAppPage<T> page) {
    _pages.add(page);
    notifyListeners();
    return page.completer.future;
  }

  void removePages(bool Function(AAppPage page) appPagePredicate) {
    final pages = List.unmodifiable(_pages);
    for (var page in pages) {
      if (appPagePredicate(page)) {
        _pages.remove(page);
      }
    }
  }

  void removeTillFirstPage() {
    if (_pages.isNotEmpty) {
      _pages = [_pages.first];
      notifyListeners();
    }
  }

  void reset() {
    _pages = [AAppPage(child: HomeScreen())];
    notifyListeners();
  }
}
