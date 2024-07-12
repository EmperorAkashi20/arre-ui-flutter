part of arre_router;

class ArreRouteInfoParser extends RouteInformationParser<ArrePage> {
  static final instance = ArreRouteInfoParser._();

  ArreRouteInfoParser._();

  bool isValidAppLocation(String uriString) {
    return parsePage(RouteInformation(uri: Uri.tryParse(uriString))) != null;
  }

  @visibleForTesting
  ArrePage? parsePage(RouteInformation routeInformation) {
    Uri uri = routeInformation.uri;
    ArrePage? page;
    page ??= _InternalRouter.maybeParse(uri);
    page ??= ProfileScreen.maybeParse(uri);
    page ??= InviteScreenNew.maybeParse(uri);
    page ??= VoicepodDetailScreen.maybeParse(uri);
    page ??= CreatePlaylistDialog.maybeParse(uri);
    page ??= UserPlaylistDetailsScreen.maybeParse(uri);
    page ??= CreatorStudioScreen.maybeParse(uri);
    page ??= AnalyticsScreen.maybeParse(uri);
    // page ??= WelcomeScreen.maybeParse(uri);
    page ??= AccountSettings.maybeParse(uri);
    page ??= NotificationScreen.maybeParse(uri);
    page ??= RulesAndRegulations.maybeParse(uri);
    page ??= SearchScreen.maybeParse(uri);
    page ??= PrivacyPolicies.maybeParse(uri);
    page ??= TermsAndCondition.maybeParse(uri);
    page ??= UpdateAppScreen.maybeParse(uri);
    page ??= ExploreHashtagPosts.maybeParse(uri);
    page ??= PlayHistoryScreen.maybeParse(uri);
    page ??= WebViewScreen.maybeParse(uri);
    page ??= ArrePlaylistDetailsScreen.maybeParse(uri);
    page ??= MyPlaylistScreen.maybeParse(uri);
    page ??= EditProfileScreen.maybeParse(uri);
    page ??= BlockedUsersScreen.maybeParse(uri);
    page ??= MessageRequestsScreen.maybeParse(uri);
    page ??= MessagesScreen.maybeParse(uri);
    page ??= SuggestedUsersScreen.maybeParse(uri);
    page ??= MyTopicsScreen.maybeParse(uri);
    page ??= DownloadedPodsScreen.maybeParse(uri);
    page ??= MyLikedPlaylist.maybeParse(uri);
    page ??= DebuggingLogsScreen.maybeParse(uri);
    page ??= CommunityDetailScreen.maybeParse(uri);
    page ??= CommunityAdminLogsScreen.maybeParse(uri);
    page ??= DiscoverCommunitiesScreen.maybeParse(uri);
    page ??= MyCommunitiesScreen.maybeParse(uri);
    page ??= ChatFormScreen.maybeParse(uri);
    page ??= CommunityChatScreen.maybeParse(uri);
    page ??= CommunityChatsInfoScreen.maybeParse(uri);
    page ??= FollowDetailsScreen.maybeParse(uri);
    if (AppConfig.isDevToolsEnabled) {
      page ??= NetworkLogsScreen.maybeParse(uri);
    }
    return page;
  }

  @override
  Future<ArrePage> parseRouteInformation(RouteInformation routeInformation) {
    print("Arre DEEP_LINK_DEBUG parseRouteInformation ${routeInformation.uri}");
    ArrePage? navigateToPage;
    navigateToPage = parsePage(routeInformation);
    if (navigateToPage == null &&
        !WebViewScreen.isHandled(routeInformation.uri) &&
        routeInformation.uri.pathSegments.length > 1 &&
        routeInformation.uri.isScheme("https")) {
      navigateToPage =
          AAppPage(child: NotFoundScreen(notFoundPath: routeInformation.uri));
    }
    if (navigateToPage == null) {
      throw ArreIgnoreException(
          "ArrePage not found for path ${routeInformation.uri}");
    }
    return SynchronousFuture(navigateToPage);
  }

  @override
  RouteInformation? restoreRouteInformation(ArrePage configuration) {
    return super.restoreRouteInformation(configuration);
  }
}
