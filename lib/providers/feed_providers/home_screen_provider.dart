import 'dart:developer';

import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenProvider = ChangeNotifierProvider(
  (ref) {
    ref.onDispose(() {
      log("HomeScreenProvider is disposed!", name: _LOG);
    });
    return HomeScreenProvider();
  },
);
const _LOG = "HOME_SCREEN_PROVIDER";

class HomeScreenProvider extends RouteObserver<PageRoute> with ChangeNotifier {
  int _currentTabIndex = kDebugMode ? 0 : 0;

  ///This applies to AppRouter.Scaffold
  bool _resizeToAvoidBottomInset = true;

  bool _isVisible = true;

  void changeVisibility(Route? route) {
    if (route is PopupRoute) {
      return;
    }
    final isVisible =
        route?.isFirst == true && route?.settings.name == GAScreen.HOME_TAB;
    if (_isVisible != isVisible) {
      log("Bottom navigation bar $isVisible", name: _LOG);
      _isVisible = isVisible;
      Future(notifyListeners);
    }
  }

  //IMPROVE instead of having the boolean, keep AnimationController directly to control the bottom Nav Bar visibility
  bool get isVisible => _isVisible;

  int get currentTabIndex => _currentTabIndex;

  bool get resizeToAvoidBottomInset => _resizeToAvoidBottomInset;

  void _setCanAppRouterResize(bool resizeToAvoidBottomInset) {
    if (_resizeToAvoidBottomInset != resizeToAvoidBottomInset) {
      _resizeToAvoidBottomInset = resizeToAvoidBottomInset;
      notifyListeners();
    }
  }

  void changeTab(int index) {
    _currentTabIndex = index;
    notifyListeners();
    String? tab;
    switch (index) {
      case 0:
        tab = GAScreen.HOME_TAB;
        break;
      case 1:
        tab = GAScreen.CONVERSATIONS;
        break;
      case 3:
        tab = GAScreen.NOTIFICATIONS;
        break;
      case 4:
        tab = GAScreen.SELF_PROFILE;
        arreAnalytics.logEvent(GAEvent.MYSPACE_BUTTON_NAV_CLICKED);
        break;
    }
    if (tab != null) {
      arreAnalytics.setCurrentScreen(tab);
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    changeVisibility(previousRoute);
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    changeVisibility(newRoute);
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    changeVisibility(route);
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    changeVisibility(previousRoute);
    super.didPop(route, previousRoute);
  }

// @override
// void didPop() {
//   log("Hide NavBar didPop", name: _LOG);
//   Future(() {
//     _isVisible = false;
//     notifyListeners();
//   });
//   super.didPop();
// }
//
// @override
// void didPopNext() {
//   log("Show NavBar didPopNext", name: _LOG);
//   Future(() {
//     _isVisible = true;
//     notifyListeners();
//   });
//   super.didPopNext();
// }
//
// @override
// void didPush() {
//   log("Show NavBar didPush", name: _LOG);
//   Future(() {
//     _isVisible = true;
//     notifyListeners();
//   });
//   super.didPush();
// }
//
// @override
// void didPushNext() {
//   log("Hide NavBar didPushNext", name: _LOG);
//   Future(() {
//     _isVisible = false;
//     notifyListeners();
//   });
//   super.didPushNext();
// }
}

mixin NoAppResizeToAvoidBottomInset<T extends ConsumerStatefulWidget>
    on ConsumerState<T>, RouteAware {
  @override
  @mustCallSuper
  void didPush() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(homeScreenProvider)._setCanAppRouterResize(false);
    });
    super.didPush();
  }

  @override
  void didPop() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(homeScreenProvider)._setCanAppRouterResize(true);
    });
    super.didPop();
  }

  @override
  void didPopNext() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(homeScreenProvider)._setCanAppRouterResize(false);
    });
    super.didPopNext();
  }

  @override
  void didPushNext() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(homeScreenProvider)._setCanAppRouterResize(true);
    });
    super.didPushNext();
  }
}
