import 'package:arre_frontend_flutter/providers/user_profile_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../arre_routing/routing.dart';
import '../../providers/follow_providers/user_follow_details_provider.dart';
import '../../widgets/arre_back_button.dart';
import '../../widgets/arre_error_widget.dart';
import '../../widgets/user_list_tile.dart';

class FollowDetailsScreen extends ConsumerStatefulWidget with ArreScreen {
  final String? userId;
  final bool followersTab;

  const FollowDetailsScreen({this.userId, this.followersTab = false});

  @override
  _FollowDetailsScreenState createState() => _FollowDetailsScreenState();

  @override
  Uri get uri => Uri.parse("/user_network_list/$userId");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 2 &&
        uri.pathSegments.first == "user_network_list") {
      return AAppPage(child: FollowDetailsScreen(userId: uri.pathSegments[1]));
    }
    return null;
  }

  @override
  String get screenName => GAScreen.USER_NETWORK_LIST;
}

class _FollowDetailsScreenState extends ConsumerState<FollowDetailsScreen>
    with
        AutomaticKeepAliveClientMixin<FollowDetailsScreen>,
        TickerProviderStateMixin<FollowDetailsScreen> {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      initialIndex: widget.followersTab ? 0 : 1,
      vsync: this,
    );
    ref.read(userFollowersProvider(widget.userId!));
    ref.read(userFollowingsProvider(widget.userId!));
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required to maintain the state across tabs
    final userFollowCountPvd =
        ref.watch(userFollowCountsProvider(widget.userId!));
    final profilePvd = ref.watch(userProfileProvider(widget.userId!));
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text("${profilePvd.data?.username ?? ""}"),
      ),
      body: Consumer(
        builder: (context, watch, _) {
          return Column(
            children: [
              TabBar(
                controller: _tabController,
                labelColor: AColors.white,
                unselectedLabelColor: AColors.textDark,
                indicatorColor: AColors.white,
                tabs: [
                  Tab(
                    child: Text(
                      "${userFollowCountPvd.value?.numberOfFollowers.formatWithCommas ?? "-"} followers",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "${userFollowCountPvd.value?.numberOfFollowing.formatWithCommas ?? "-"} following",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // Follow Tab Content
                    Center(child: FollowersListBody(userId: widget.userId)),
                    // Following Tab Content
                    Center(child: FollowingListBody(userId: widget.userId)),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class FollowersListBody extends ConsumerStatefulWidget {
  final String? userId;

  const FollowersListBody({Key? key, this.userId}) : super(key: key);

  @override
  _FollowersListBodyState createState() => _FollowersListBodyState();
}

class _FollowersListBodyState extends ConsumerState<FollowersListBody>
    with AutomaticKeepAliveClientMixin<FollowersListBody> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final listOfFollowersPvd = ref.watch(userFollowersProvider(widget.userId!));
    Widget child;
    if (listOfFollowersPvd.hasData) {
      if (listOfFollowersPvd.data!.isNotEmpty) {
        final children = listOfFollowersPvd.data!
            .map((followerDataList) => UserListTile(
                  userId: followerDataList.userId,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  showFollowButton: true,
                ))
            .toList();
        child = RefreshIndicator(
          onRefresh: () async {
            await Future.wait([
              ref.read(userFollowersProvider(widget.userId!)).refresh(),
            ]);
          },
          child: NotificationListener(
            onNotification: listOfFollowersPvd.onScrollNotification,
            child: ListView(children: children),
          ),
        );
      } else {
        child = Center(child: Text("No followers found"));
      }
    } else if (listOfFollowersPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(child: ArreErrorWidget(error: listOfFollowersPvd.error));
    }
    return IconTheme(
      data: IconThemeData(size: 20, color: Color(0xffB1B8B6)),
      child: child,
    );
  }
}

class FollowingListBody extends ConsumerStatefulWidget {
  final String? userId;

  const FollowingListBody({Key? key, this.userId}) : super(key: key);

  @override
  _FollowingListBodyState createState() => _FollowingListBodyState();
}

class _FollowingListBodyState extends ConsumerState<FollowingListBody>
    with AutomaticKeepAliveClientMixin<FollowingListBody> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final listOfFollowingPvd =
        ref.watch(userFollowingsProvider(widget.userId!));
    Widget child;
    if (listOfFollowingPvd.hasData) {
      if (listOfFollowingPvd.data!.isNotEmpty) {
        final children = listOfFollowingPvd.data!
            .map((followingDataList) => UserListTile(
                  userId: followingDataList.userId,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  showFollowButton: true,
                ))
            .toList();
        child = RefreshIndicator(
          onRefresh: () async {
            await Future.wait([
              ref.read(userFollowingsProvider(widget.userId!)).refresh(),
            ]);
          },
          child: NotificationListener(
            onNotification: listOfFollowingPvd.onScrollNotification,
            child: ListView(children: children),
          ),
        );
      } else {
        child = Center(child: Text("No following users found"));
      }
    } else if (listOfFollowingPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(child: ArreErrorWidget(error: listOfFollowingPvd.error));
    }
    return IconTheme(
      data: IconThemeData(size: 20, color: Color(0xffB1B8B6)),
      child: child,
    );
  }
}
