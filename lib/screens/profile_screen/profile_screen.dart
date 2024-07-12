library profile_screen;

import 'dart:developer';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/arre_message_providers/arre_message_providers.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/blocked_users_provider.dart';
import 'package:arre_frontend_flutter/providers/invite_screen_providers/follow_status_provider.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/providers/user_playlist_provider.dart';
import 'package:arre_frontend_flutter/providers/user_profile_provider.dart';
import 'package:arre_frontend_flutter/providers/user_voicepods_provider.dart';
import 'package:arre_frontend_flutter/screens/analytics/analytics_screen.dart';
import 'package:arre_frontend_flutter/screens/arre_message/arre_message.dart';
import 'package:arre_frontend_flutter/screens/edit_profile/edit_profile_screen.dart';
import 'package:arre_frontend_flutter/screens/playlist_detail_screens/playlist_detail_screens.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_picture_dailog.dart';
import 'package:arre_frontend_flutter/screens/web_view_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_close_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/playlist_tile.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:audio_service/audio_service.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../providers/follow_providers/user_follow_details_provider.dart';
import '../../providers/profile_actions.dart';
import '../../utils/snackbars.dart';
import '../../widgets/action_sheet_common.dart';
import '../../widgets/arre_gradient_icon_button.dart';
import '../../widgets/player_widgets/play_pause_button.dart';
import '../../widgets/voicepod/voicepod_card.dart';

import '../report_screens/report_screen.dart';
import '../settings/my_account_settings.dart';
import 'follow_details_screen.dart';

part 'profile_screen_actions.dart';

const _kSpaceBetweenInfo = 10.0;

class ProfileScreen extends ConsumerStatefulWidget with ArreScreen {
  final String userId;

  const ProfileScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ProfileScreenState();

  @override
  Uri? get uri => Uri.parse('/user/$userId');

  @override
  String get screenName =>
      '${userId == arrePref.userId ? GAScreen.SELF_PROFILE : GAScreen.OTHER_PROFILE}';

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 2 && uri.pathSegments.first == "user") {
      return AAppPage(child: ProfileScreen(userId: uri.pathSegments[1]));
    }
    return null;
  }
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    ref.read(followStatusProvider).fetchData(widget.userId);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(userVoicepodsProvider(widget.userId));
    final profilePvd = ref.watch(userProfileProvider(widget.userId));
    Widget child;
    if (profilePvd.hasData) {
      child = _Body(userId: profilePvd.userId);
    } else if (profilePvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget(
          error: profilePvd.error,
          onPressed: () {
            ref.read(userShortDataProvider).fetchData(arrePref.userId!);
            profilePvd.refresh();
          },
        ),
      );
    }
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
              profilePvd.data != null ? "@${profilePvd.data!.username}" : ""),
          elevation: 0,
          backgroundColor: AColors.BgLight,
          leading: Navigator.of(context).canPop() ? ABackButton() : null,
          titleSpacing: Navigator.of(context).canPop() ? 0 : 20,
          actions: [
            IconButton(
              onPressed: () {
                _performProfileAction(
                  ref,
                  action: _ProfileActionsEnum.shareTo,
                  userDetails: profilePvd.data!,
                );
              },
              icon: Icon(ArreIconsV2.share_outline),
              visualDensity: VisualDensity.compact,
            ),
            if (profilePvd.isCurrentUser)
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      arreAnalytics.logEvent(
                        GAEvent.MYSPACE_SETTINGS_BUTTON_CLICKED,
                      );
                      ArreNavigator.instance
                          .push(AAppPage(child: AccountSettings()));
                    },
                    icon: Icon(ArreIconsV2.settings_outline),
                    visualDensity: VisualDensity.compact,
                  ),
                  SizedBox(width: 8),
                ],
              ),
            if (!profilePvd.isCurrentUser)
              IconButton(
                onPressed: () {
                  arreAnalytics
                      .logEvent(GAEvent.MYSPACE_THREEDOT_MENU_BUTTON_CLICKED);
                  _showActionsSheetProfile(ref, profilePvd.data!);
                },
                icon: Icon(ArreIconsV2.kebeb_filled),
              ),
          ],
        ),
        body: child,
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  final String userId;

  const _Body({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      color: Colors.white,
      onRefresh: () async {
        await Future.wait([
          ref.read(userProfileProvider(userId)).refresh(),
          ref.read(followStatusProvider).fetchData(userId),
          ref.read(followStatusProvider).fetchData(userId),
          ref.refresh(userFollowCountsProvider(userId).future),
          if (DefaultTabController.of(context).index == 0)
            ref.read(userVoicepodsProvider(userId)).init()
          else if (DefaultTabController.of(context).index == 1)
            ref.read(userPlaylistProvider(userId)).init()
        ]);
      },
      notificationPredicate: (ScrollNotification notification) {
        return notification.depth == 2;
      },
      child: NestedScrollView(
        restorationId: "profile_screen_scroll",
        physics: AlwaysScrollableScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: _ProfileAppBar(userId),
            ),
          ];
        },
        body: TabBarView(
          children: [
            _UserVoicepodsList(userId),
            _UserPlaylistList(userId),
          ],
        ),
      ),
    );
  }
}

class _ProfileAppBar extends ConsumerStatefulWidget {
  final String userId;

  const _ProfileAppBar(
    this.userId, {
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __ProfileAppBarState();
}

class __ProfileAppBarState extends ConsumerState<_ProfileAppBar> {
  final profileInfoChildKey = GlobalKey();
  double? expandableHeight;

  @override
  void initState() {
    super.initState();
  }

  Future<void> dismissProfileNudge() async {
    arreAnalytics.logEvent(GAEvent.DISMISSED_FINISH_PROFILE_NUDGE);
    await arrePref.setBool(PrefKey.HAS_DISMISSED_PROFILE_COMPLETE_NUDGE, true);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!mounted) return;
      final newHeight =
          (profileInfoChildKey.currentContext!.findRenderObject() as RenderBox)
              .size
              .height;
      if (expandableHeight != newHeight) {
        setState(() {
          expandableHeight = newHeight;
          print("Profile screen appbar expandableHeight is $expandableHeight");
        });
      }
    });

    return SliverAppBar(
      primary: false,
      floating: true,
      snap: false,
      automaticallyImplyLeading: false,
      pinned: true,
      collapsedHeight: 12,
      expandedHeight: (expandableHeight ?? 120) + 56,
      toolbarHeight: 12,
      backgroundColor: Color(0xFF171E26),
      flexibleSpace: FlexibleSpaceBar(
        background: Align(
          alignment: Alignment.topCenter,
          child: _ProfileInfo(
            key: profileInfoChildKey,
            userId: widget.userId,
            onDismissProfileNudge: dismissProfileNudge,
          ),
        ),
        collapseMode: CollapseMode.pin,
      ),
      bottom: TabBar(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        unselectedLabelStyle: ATextStyles.sys14Regular(),
        labelStyle: ATextStyles.sys14Regular(),
        labelColor: AColors.tealPrimary,
        splashBorderRadius: BorderRadius.circular(24),
        unselectedLabelColor: AColors.white.withOpacity(0.4),
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(ArreIconsV2.voicepod_outline),
                SizedBox(width: 6),
                Text("Voicepods")
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(ArreIconsV2.podroll_outline),
                SizedBox(width: 6),
                Text("Playlist")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UserVoicepodsList extends ConsumerStatefulWidget {
  final String userId;

  const _UserVoicepodsList(
    this.userId, {
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __UserVoicepodsListState();
}

class __UserVoicepodsListState extends ConsumerState<_UserVoicepodsList>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("AppRouter Profile screen:\n"
        "MediaQuery.padding${MediaQuery.of(context).padding}\n"
        "MediaQuery.viewPadding${MediaQuery.of(context).viewPadding}\n"
        "MediaQuery.viewInsets${MediaQuery.of(context).viewInsets}\n");
    super.build(context);
    final userVoicepodsPvd = ref.watch(userVoicepodsProvider(widget.userId));

    Widget child;
    if (userVoicepodsPvd.hasData) {
      if (userVoicepodsPvd.data!.isNotEmpty) {
        child = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => VoicepodPostCard(
              userVoicepodsPvd.data![index],
              onPlayPressed: (_) => PodPlayerV3.instance.init(
                context: context,
                podSourceFuture: () => SynchronousFuture(userVoicepodsPvd),
                startIndex: index,
              ),
            ),
            childCount: userVoicepodsPvd.totalItems,
          ),
        );
      } else {
        child = SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.only(bottom: 56),
            child: ArreErrorWidget.empty(message: "Pretty empty out here"),
          ),
        );
      }
    } else if (userVoicepodsPvd.isLoading) {
      child = SliverFillRemaining(
        child: Center(child: ACommonLoader()),
      );
    } else {
      child = SliverFillRemaining(
        child: ArreErrorWidget(
          error: userVoicepodsPvd.error,
          onPressed: userVoicepodsPvd.refresh,
        ),
      );
    }

    return NotificationListener<ScrollUpdateNotification>(
      onNotification: userVoicepodsPvd.onScrollNotification,
      child: CustomScrollView(
        restorationId: "profile_screen_voicepods",
        // The "controller" and "primary" members should be left
        // unset, so that the NestedScrollView can control this
        // inner scroll view.
        // If the "controller" property is set, then this scroll
        // view will not be associated with the NestedScrollView.
        slivers: <Widget>[
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverSafeArea(sliver: child, minimum: EdgeInsets.only(bottom: 8)),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _UserPlaylistList extends ConsumerWidget {
  final String userId;

  const _UserPlaylistList(
    this.userId, {
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context, WidgetRef ref) {
    final playlistPvd = ref.watch(userPlaylistProvider(userId));
    final isCurrentUser = ref.watch(
        userProfileProvider(userId).select((value) => value.isCurrentUser));

    Widget child;
    if (playlistPvd.hasData) {
      final playlists = playlistPvd.data!;
      if (playlists.isNotEmpty) {
        child = SliverList(
          delegate: SliverChildListDelegate(
            [
              if (isCurrentUser)
                ...[
                  CreateNewPlaylistTile(),
                  PlaylistTile.myLikedPlaylist(),
                  PlaylistTile.history(),
                ].joinSeparator(SizedBox(height: 10)),
              SizedBox(height: 5),
              for (var index = 0; index < playlists.length; index++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: PlaylistTile(
                    title: playlists[index].title,
                    thumbnail:
                        ArreNetworkImage.mediaId(playlists[index].coverImage!),
                    showPrivacyIcon: !playlists[index].isSystemGenerated,
                    isPrivate: playlists[index].isPrivate,
                    podSourceId: playlists[index].playlistId,
                    onPressed: () => ArreNavigator.instance.push(
                      AAppPage(
                        child: UserPlaylistDetailsScreen(
                          playlistId: playlists[index].playlistId,
                          initialData: playlists[index],
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        );
      } else {
        child = SliverFillRemaining(
            child: Center(
                child: ArreErrorWidget.empty(message: "No playlists found")));
      }
    } else if (playlistPvd.isLoading) {
      child = SliverFillRemaining(child: Center(child: ACommonLoader()));
    } else {
      child = SliverFillRemaining(
          child: Center(child: ArreErrorWidget(error: playlistPvd.error)));
    }
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: playlistPvd.onScrollNotification,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
          SliverSafeArea(sliver: child, minimum: EdgeInsets.only(bottom: 8)),
        ],
      ),
    );
  }
}

class _ProfileInfo extends ConsumerStatefulWidget {
  final String userId;
  final VoidCallback onDismissProfileNudge;

  const _ProfileInfo({
    required this.userId,
    required this.onDismissProfileNudge,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __ProfileInfoState();
}

class __ProfileInfoState extends ConsumerState<_ProfileInfo> {
  bool get hasDismissedProfileNudge =>
      arrePref.getBool(PrefKey.HAS_DISMISSED_PROFILE_COMPLETE_NUDGE) ?? false;

  @override
  Widget build(BuildContext context) {
    final userId = widget.userId;
    final profilePvd = ref.watch(userProfileProvider(userId));
    final userDetails = profilePvd.data!;
    final followUnfollowPvd = ref.watch(followStatusProvider);
    final userFollowCountPvd = ref.watch(userFollowCountsProvider(userId));
    final fullName = Utils.getFullName(
      firstName: userDetails.firstname,
      lastName: userDetails.lastname,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (userDetails.isRejected &&
            profilePvd.isCurrentUser &&
            !hasDismissedProfileNudge &&
            userDetails.profileRejectionReasons != null)
          _ProfileRejected(
            rejectReasons: userDetails.profileRejectionReasons!.toList(),
            onPressed: () {
              arreAnalytics.logEvent(
                GAEvent.PROFILE_COMPLETE_NUDGE_CLICK,
                parameters: {EventAttribute.GA_CONTEXT: "profile_screen"},
              );
              _openEditProfileScreen(ref);
            },
            onDismiss: widget.onDismissProfileNudge,
          ),
        Container(
          margin: EdgeInsets.only(
              left: 16, bottom: _kSpaceBetweenInfo / 2, top: 20),
          padding: EdgeInsets.only(right: 20, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      GestureDetector(
                        onTap: () {
                          arreAnalytics
                              .logEvent(GAEvent.DISPLAY_PICTURE_CLICKED);
                          showProfilePictureDialog(userDetails);
                        },
                        child: UserAvatarV2(
                          mediaId: userDetails.profilePictureMediaId,
                          userName: userDetails.username,
                          size: 60,
                          showThumbnail: false,
                        ),
                      ),
                      Positioned(
                        left: 35,
                        top: 35,
                        child: _VoiceBioPlayButton(userId),
                      )
                    ],
                  ),
                  SizedBox(width: 18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (fullName != null)
                        Container(
                          padding: const EdgeInsets.only(bottom: 8, top: 4),
                          constraints: BoxConstraints(maxWidth: 154),
                          child: Text(
                            fullName,
                            overflow: TextOverflow.ellipsis,
                            style: ATextStyles.sys14Bold(),
                          ),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              if (profilePvd.isCurrentUser) {
                                arreAnalytics.logEvent(
                                    GAEvent.SELF_FOLLOWER_LIST_BUTTON_CLICKED);
                              } else {
                                arreAnalytics.logEvent(GAEvent
                                    .OTHERS_FOLLOWER_LIST_BUTTON_CLICKED);
                              }
                              ArreNavigator.instance.push(
                                AAppPage(
                                  child: FollowDetailsScreen(
                                    userId: userDetails.userId,
                                    followersTab: true,
                                  ),
                                ),
                              );
                            },
                            child: _CountInfo(
                              count: userFollowCountPvd
                                  .valueOrNull?.numberOfFollowers.shortify,
                              label: "Followers",
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              if (profilePvd.isCurrentUser) {
                                arreAnalytics.logEvent(
                                    GAEvent.SELF_FOLLOWING_LIST_BUTTON_CLICKED);
                              } else {
                                arreAnalytics.logEvent(GAEvent
                                    .OTHERS_FOLLOWING_LIST_BUTTON_CLICKED);
                              }
                              ArreNavigator.instance.push(
                                AAppPage(
                                    child: FollowDetailsScreen(
                                  userId: userDetails.userId,
                                  followersTab: false,
                                )),
                              );
                            },
                            child: _CountInfo(
                              count: userFollowCountPvd
                                  .valueOrNull?.numberOfFollowing.shortify,
                              label: "Following",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              if (profilePvd.isCurrentUser)
                FilledFlatButton(
                  onPressed: () {
                    arreAnalytics.logEvent(GAEvent.EDIT_BUTTON_CLICKED);
                    _openEditProfileScreen(ref);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Edit",
                      style: ATextStyles.sys12Bold(),
                    ),
                  ),
                )
              else if (followUnfollowPvd.isFollowing(profilePvd.userId) ??
                  false)
                FilledFlatButton(
                  backgroundColor: AColors.BgLight,
                  onPressed: () {
                    arreAnalytics.logEvent(
                      GAEvent.UNFOLLOW_USER,
                      parameters: {
                        EventAttribute.USER_ID: profilePvd.userId,
                        EventAttribute.GA_CONTEXT:
                            GAContext.profile_screen.name,
                      },
                    );
                    ProfileAction.unFollowUser(ref, userId);
                  },
                  child: Text("Following"),
                )
              else
                FilledFlatButton(
                  onPressed: () {
                    arreAnalytics.logEvent(
                      GAEvent.FOLLOW_USER,
                      parameters: {
                        EventAttribute.USER_ID: profilePvd.userId,
                        EventAttribute.GA_CONTEXT:
                            GAContext.profile_screen.name,
                      },
                    );
                    ProfileAction.followUser(ref, userId);
                  },
                  child: Text("Follow"),
                )
            ],
          ),
        ),
        if (userDetails.profile?.bio.isValid ?? false)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: ExpandableText(
              userDetails.profile!.bio!,
              expandText: '',
              animation: true,
              linkStyle: ATextStyles.user12Regular(),
              urlStyle: ATextStyles.user14Regular(AColors.tealPrimary),
              onUrlTap: (value) => ArreNavigator.instance.push(AAppPage(
                  child: WebViewScreen(
                url: value,
              ))),
              hashtagStyle: ATextStyles.sys14Regular(AColors.tealPrimary),
              maxLines: 4,
              style: ATextStyles.sys14Regular(AColors.greyLight),
            ),
          ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (profilePvd.isCurrentUser)
                _SocialHandle(
                  icon: Icon(ArreIconsV2.graph_outline,
                      size: 20, color: AColors.white),
                  onPressed: () {
                    arreAnalytics
                        .logEvent(GAEvent.CREATOR_ANALYTICS_ICON_CLICK);
                    ArreNavigator.instance
                        .push(AAppPage(child: AnalyticsScreen()));
                  },
                ),
              if (!profilePvd.isCurrentUser)
                FilledFlatButton(
                  backgroundColor: Colors.transparent,
                  borderSide: BorderSide(color: AColors.BgStroke),
                  onPressed: () async {
                    final conversationId =
                        await Utils.getConversationId(userId);
                    arreAnalytics.logEvent(
                      GAEvent.VOICE_DM_BTN_CLICK,
                      parameters: {
                        EventAttribute.ENTITY_ID: conversationId,
                        EventAttribute.ENTITY_TYPE: "conversation",
                        EventAttribute.GA_CONTEXT: GAContext.profile_screen.name
                      },
                    );
                    ArreNavigator.instance.push(AAppPage(
                        child: MessagesScreen(conversationId: conversationId)));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(ArreIconsV2.audio_message_outline, size: 16),
                      SizedBox(width: 5),
                      Text("Message"),
                    ],
                  ),
                ),
              // if (userDetails.profile?.socialHandlesVisibility == "public" ||
              //     profilePvd.isCurrentUser)
              _UserSocialHandles(userId: userId),
            ],
          ),
        ),
      ],
    );
  }
}

class _InviterDetails extends ConsumerStatefulWidget {
  final String userId;

  const _InviterDetails({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  ConsumerState createState() => __InviterDetailsState();
}

class __InviterDetailsState extends ConsumerState<_InviterDetails> {
  @override
  void initState() {
    super.initState();
    ref.read(userShortDataProvider).fetchData(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    final userDetails = ref.watch(
        userShortDataProvider.select((value) => value.getData(widget.userId)));
    return GestureDetector(
      onTap: () {
        ArreNavigator.instance.push(
          AAppPage(child: ProfileScreen(userId: widget.userId)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: _kSpaceBetweenInfo / 2),
        child: Row(
          children: [
            UserAvatarV2(
              size: 27,
              mediaId: userDetails?.profilePictureMediaId,
              userName: userDetails?.username,
              borderColor: AColors.tealStroke,
              borderWidth: 1.0,
            ),
            SizedBox(width: 5),
            Row(
              children: [
                Text(
                  "Invited By ",
                  style: ATextStyles.sys14Bold(AColors.textMedium),
                ),
                Text(
                  "@${userDetails?.username ?? " - "}",
                  style: ATextStyles.sys14Bold(AColors.tealPrimary),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _VoiceBioPlayButton extends ConsumerStatefulWidget {
  final String userId;

  const _VoiceBioPlayButton(this.userId);

  @override
  ConsumerState createState() => __VoiceBioPlayButtonState();
}

class __VoiceBioPlayButtonState extends ConsumerState<_VoiceBioPlayButton> {
  final padding =
      EdgeInsets.symmetric(horizontal: 20, vertical: _kSpaceBetweenInfo / 2);

  void playVoiceBio(String mediaId) {
    final userProfilePvd = ref.read(userProfileProvider(widget.userId));
    final source = PodPlayerV3.instance.source;
    if (source is UserBioPodSource && source.userId == widget.userId) {
      PodPlayerV3.instance.stop();
      return;
    }

    if (userProfilePvd.data?.profile?.audioBioMediaId.isValid != true) return;

    final voiceBioItemSource = UserBioPodSource(
      audioMediaId: userProfilePvd.data!.profile!.audioBioMediaId!,
      userId: widget.userId,
      username: userProfilePvd.data!.username,
      profilePictureMediaId: userProfilePvd.data!.profilePictureMediaId,
    );

    PodPlayerV3.instance.init(
      gaContext: PlayerGAContext.voice_bio,
      context: context,
      podSourceFuture: () => SynchronousFuture(voiceBioItemSource),
      startIndex: 0,
      // context: context,
      // gaContext: PlayerGAContext.voice_bio,
    );
  }

  Widget buildPlayButton(String mediaId, bool isPlaying) {
    Widget playButton;
    if (isPlaying) {
      playButton = AudioPlayerButtonState.gradient(
        player: PodPlayerV3.instance,
        size: 28,
        iconSize: 14,
        gaContext: PlayerGAContext.voice_bio,
      );
    } else {
      playButton = ArreGradientIconButton(
        size: 28,
        icon: Icon(ArreIconsV2.play_filled, size: 14),
        onPressed: () => playVoiceBio(mediaId),
      );
    }
    return playButton;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: PodPlayerV3.instance.activePod,
      builder: (BuildContext context, AsyncSnapshot<MediaItem?> snapshot) {
        final profilePvd = ref.watch(userProfileProvider(widget.userId));
        final mediaId = profilePvd.data?.profile?.audioBioMediaId;
        final isPlaying = snapshot.data?.mediaId == mediaId;
        if (mediaId?.isNotEmpty ?? false) {
          return buildPlayButton(mediaId!, isPlaying);
        } else if (profilePvd.isCurrentUser) {
          return ArreGradientIconButton(
            size: 28,
            icon: Icon(ArreIconsV2.mic_filled, size: 14),
            onPressed: () => _openEditProfileScreen(ref, scrollToEnd: true),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}

class _UserSocialHandles extends ConsumerWidget {
  final String userId;

  const _UserSocialHandles({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profilePvd = ref.watch(userProfileProvider(userId));
    final userDetails = profilePvd.data!;
    final instagramHandle =
        Utils.parseInstaUsername(userDetails.profile?.instagramHandle);
    final twitterHandle =
        Utils.parseTwitterUsername(userDetails.profile?.twitterHandle);
    final linkedinHandle =
        Utils.parseLinkedInUsername(userDetails.profile?.linkedinHandle);
    if (!instagramHandle.isValid &&
        !twitterHandle.isValid &&
        !linkedinHandle.isValid &&
        userDetails.profile?.website.isValid == false) {
      return SizedBox();
    }
    return Wrap(
      runSpacing: _kSpaceBetweenInfo,
      spacing: 24,
      children: [
        if (userDetails.profile?.website.isValid ?? false)
          _SocialHandle(
            onPressed: () {
              ArreNavigator.instance.push(AAppPage(
                  child: WebViewScreen(url: userDetails.profile!.website!)));
            },
            icon: FaIcon(
              ArreIconsV2.link_filled,
              color: AColors.white,
              size: 20,
            ),
          ),
        if (instagramHandle.isValid)
          _SocialHandle(
            onPressed: () {
              ArreNavigator.instance.push(AAppPage(
                  child: WebViewScreen(
                      url: Utils.getInstaAccountUrl(instagramHandle!))));
            },
            icon: FaIcon(
              ArreIconsV2.instagram_outline,
              color: AColors.white,
              size: 20,
            ),
          ),
        if (twitterHandle.isValid)
          _SocialHandle(
            icon: Icon(
              ArreIconsV2.x_outline,
              color: AColors.white,
              size: 20,
            ),
            onPressed: () {
              ArreNavigator.instance.push(AAppPage(
                  child: WebViewScreen(
                      url: Utils.getTwitterAccountUrl(twitterHandle!))));
            },
          ),
        if (linkedinHandle.isValid)
          _SocialHandle(
            icon: Icon(
              ArreIconsV2.linkedin_filled,
              color: AColors.white,
              size: 20,
            ),
            onPressed: () {
              ArreNavigator.instance.push(AAppPage(
                  child: WebViewScreen(
                      url: Utils.getLinkedInAccountUrl(linkedinHandle!))));
            },
          ),
      ],
    );
  }
}

class _CountInfo extends StatelessWidget {
  final String? count;
  final String label;

  const _CountInfo({Key? key, required this.count, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: '${count ?? "-"}',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("${count ?? "-"}",
              style: ATextStyles.sys16Bold(AColors.textLight)),
          SizedBox(width: 4),
          Text(label, style: ATextStyles.sys12Regular(AColors.textLight)),
        ],
      ),
    );
  }
}

class _SocialHandle extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;

  const _SocialHandle({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      minSize: 0,
      child: icon,
    );
  }
}

class _ProfileRejected extends StatelessWidget {
  final List<String?> rejectReasons;
  final VoidCallback onDismiss, onPressed;

  const _ProfileRejected({
    required this.rejectReasons,
    required this.onDismiss,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0x1AFF7B7B),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
        margin: EdgeInsets.fromLTRB(16, 4, 16, 16),
        child: Row(
          children: [
            Expanded(
              child: Text.rich(
                TextSpan(
                  text:
                      "Your ${rejectReasons.join(", ")} did not meet our community guidelines. ",
                  children: [
                    TextSpan(
                      text: "Click here ",
                      style: TextStyle(
                        color: AColors.textLight,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(text: "to retry."),
                  ],
                  style: ATextStyles.sys12Regular(AColors.red),
                ),
              ),
            ),
            ACloseButton(onPressed: onDismiss, iconSize: 16),
          ],
        ),
      ),
    );
  }
}

void _openEditProfileScreen(WidgetRef ref, {bool scrollToEnd = false}) {
  final profilePvd = ref.read(userProfileProvider(arrePref.userId!));
  ArreNavigator.instance.push(AGlobalPage(
      child: EditProfileScreen(
          userDetails: profilePvd.data!, scrollToEnd: scrollToEnd)));
}
