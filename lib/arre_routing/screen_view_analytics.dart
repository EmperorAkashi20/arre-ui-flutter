part of arre_router;

class ArreAnalyticsObserver extends RouteObserver<Route<dynamic>> {
  /// Creates a [NavigatorObserver] that sends events to [FirebaseAnalytics].
  ///
  /// When a route is pushed or popped, [nameExtractor] is used to extract a
  /// name from [RouteSettings] of the now active route and that name is sent to
  /// Firebase. Defaults to `defaultNameExtractor`.
  ///
  /// If a [PlatformException] is thrown while the observer attempts to send the
  /// active route to [analytics], `onError` will be called with the
  /// exception. If `onError` is omitted, the exception will be printed using
  /// `debugPrint()`.

  void _sendScreenView(Route<dynamic> route) {
    final settings = route.settings;
    if (settings is ArrePage) {
      arreAnalytics.setCurrentScreen(
          settings.child.screenName, settings.child.uri);
    } else if (settings.name != null) {
      arreAnalytics.setCurrentScreen(settings.name!);
    }
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log("ArreAnalyticsObserver didPush ${previousRoute?.settings.name} to ${route.settings.name}");
    super.didPush(route, previousRoute);
    // if (this == _InternalRouterDelegate.instance._analyticsObserver &&
    //     previousRoute == null) {
    //This is to avoid duplicate home screen_view events logged from both  _InternalRouterDelegate & ArreNavigator
    // return;
    // }
    _sendScreenView(route);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null) {
      _sendScreenView(newRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute != null) {
      _sendScreenView(previousRoute);
    }
  }
}
