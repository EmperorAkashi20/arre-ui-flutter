library home_screen;

import 'dart:async';
import 'dart:developer';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/network/real_time_session.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/communities/my_communities_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/recommended_communities_provider.dart';
import 'package:arre_frontend_flutter/providers/creators_recommended_provider.dart';
import 'package:arre_frontend_flutter/providers/device_app_manager.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/home_screen_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/home_page_feed_providers.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/remote_config_manager.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/providers/user_playlist_provider.dart';
import 'package:arre_frontend_flutter/providers/user_profile_provider.dart';
import 'package:arre_frontend_flutter/screens/arre_message/arre_message.dart';
import 'package:arre_frontend_flutter/screens/communities/discover_communities_screen.dart';
import 'package:arre_frontend_flutter/screens/communities/my_communities_screen.dart';
import 'package:arre_frontend_flutter/screens/language_selection_sheet.dart';
import 'package:arre_frontend_flutter/screens/onboarding/AB1_welcome_screen.dart';
import 'package:arre_frontend_flutter/screens/suggested_users_screen.dart';
import 'package:arre_frontend_flutter/screens/debugging_logs.dart';
import 'package:arre_frontend_flutter/screens/explore/explore_banner_section.dart';
import 'package:arre_frontend_flutter/screens/invite_user_new/invite_user_new.dart';
import 'package:arre_frontend_flutter/screens/playlist/playlist.dart';
import 'package:arre_frontend_flutter/screens/playlist_detail_screens/playlist_detail_screens.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/screens/search/search_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_close_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/community_card.dart';
import 'package:arre_frontend_flutter/widgets/creator_card.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/my_community_tile.dart';
import 'package:arre_frontend_flutter/widgets/playlist_card_v2.dart';
import 'package:arre_frontend_flutter/widgets/playlist_tile.dart';
import 'package:arre_frontend_flutter/widgets/stars_on_top.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../utils/arre_assets.dart';
import '../language_selection_screen.dart';
import '../notification_screen/notification_screen.dart';
import '../onboarding/ABV2_voicepods_story_screen.dart';
import '../onboarding/curating_feed_animation_screen.dart';

part 'home_tab.dart';

const _LOG = "HOME_PAGE";

class HomeScreen extends ConsumerStatefulWidget with ArreScreen {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomeScreenState();

  @override
  Uri? get uri => Uri.parse("/");

  @override
  String get screenName {
    if (kDebugMode) {
      return GAScreen.HOME_TAB;
    }
    final context = ArreNavigator.instance.navigatorKey?.currentContext;
    if (context == null) {
      return GAScreen.HOME_TAB;
    }
    final tabIndex = ProviderScope.containerOf(context)
        .read(homeScreenProvider)
        .currentTabIndex;
    String tab;
    switch (tabIndex) {
      case 1:
        tab = GAScreen.CONVERSATIONS;
        break;
      case 3:
        tab = GAScreen.NOTIFICATIONS;
        break;
      case 4:
        tab = GAScreen.SELF_PROFILE;
        break;
      default:
        tab = GAScreen.HOME_TAB;
    }
    return tab;
  }

// static ArrePage? maybeParse(Uri uri) {
//   if (uri.path == "/home") {
//     return AAppPage(child: HomeScreen_RE_WRITE());
//   }
//   return null;
// }
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  ProviderSubscription<CurrentArreUser>? _curUserDetailsSub;

  @override
  void initState() {
    super.initState();
    _loadCurrentUserData();
    ref.listenManual(currentUserProvider, (_, __) => _loadCurrentUserData());
    ref.read(initPodPLayerRef);
  }

  void _loadCurrentUserData() {
    final currentUserId = ref.read(currentUserProvider).userId;
    arreAnalytics.setUserId(currentUserId);
    if (currentUserId != null) {
      // print("[LOG] _loadCurrentUserData $currentUserId");
      DeviceAppManager.instance.saveUserDeviceInfo(currentUserId);
      ARealTimeSession.instance.init();
      ref.read(userShortDataProvider).refresh(currentUserId);
      ref.read(userProfileProvider(currentUserId));
      ref.read(myCommunitiesProvider).refresh();
      ref.read(recCommunitiesProvider).refresh();
      arreAnalytics.setUserProperty(
        UserProperty.AUTO_PLAY_STATUS,
        arrePref.getBool(PrefKey.IS_AUTO_PLAY_ON) != false ? "ON" : "OFF",
      );
      String userAuthStatus;
      if (arrePref.getBool(PrefKey.IS_ONBOARDING_COMPLETE) == true) {
        userAuthStatus = "logged_in_and_onboarded";
      } else if (arrePref.getString(PrefKey.PHONE_NUMBER) != null) {
        userAuthStatus = "logged_in_and_onboarded";
      } else {
        userAuthStatus = "guest";
      }
      arreAnalytics.setUserProperty(
          UserProperty.USER_AUTH_STATUS, userAuthStatus);
    }
  }

  @override
  void didChangeDependencies() {
    // homeScreenPvd = ref.read(homeScreenProvider);
    // appRouteObserver.subscribe(
    //   homeScreenPvd,
    //   ModalRoute.of(context) as PageRoute,
    // );
    super.didChangeDependencies();
    log("HomeScreenProvider Exists? ${ref.exists(homeScreenProvider)}",
        name: _LOG);
  }

  @override
  void dispose() {
    _curUserDetailsSub?.close();
    // appRouteObserver.unsubscribe(homeScreenPvd);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log("HomeScreen $hashCode", name: _LOG);
    final tabIndex =
        ref.watch(homeScreenProvider.select((value) => value.currentTabIndex));
    Widget tabBody;
    switch (tabIndex) {
      case 0:
        tabBody = _HomeTab();
        break;
      case 1:
        tabBody = ConversationsScreen();
      case 3:
        tabBody = NotificationScreen();
      case 4:
        final currentUserId = ref.watch(currentUserProvider).userId;
        tabBody = ProfileScreen(userId: currentUserId!);
        break;
      default:
        tabBody = Center(child: Text("TODO"));
    }

    return WillPopScope(
        onWillPop: () async {
          if (tabIndex == 0) {
            // User is on the home tab
            return true;
          } else {
            // User is not on the home tab
            ref.read(homeScreenProvider).changeTab(0);
            return false;
          }
        },
        child: tabBody);
  }
}
