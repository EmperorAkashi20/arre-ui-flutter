import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/communities/my_communities_provider.dart';
import 'package:arre_frontend_flutter/screens/communities/discover_communities_screen.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/my_community_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCommunitiesScreen extends ConsumerStatefulWidget with ArreScreen {
  const MyCommunitiesScreen({super.key});

  @override
  ConsumerState createState() => _MyCommunitiesScreenState();

  @override
  Uri? get uri => Uri.parse("/u/voiceclubs");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/u/voiceclubs") {
      return AAppPage(child: MyCommunitiesScreen());
    }
    return null;
  }

  @override
  String get screenName => GAScreen.MY_VOICECLUBS_SCREEN;
}

class _MyCommunitiesScreenState extends ConsumerState<MyCommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    final myCommunitiesPvd = ref.watch(myCommunitiesProvider);
    Widget child;

    if (myCommunitiesPvd.hasData && myCommunitiesPvd.data!.isNotEmpty) {
      child = NotificationListener<ScrollMetricsNotification>(
        onNotification: myCommunitiesPvd.onScrollNotification,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 12),
          itemBuilder: (context, index) {
            return MyCommunityTile(community: myCommunitiesPvd.data![index]);
          },
          itemCount: myCommunitiesPvd.data!.length,
        ),
      );
    } else if (myCommunitiesPvd.hasData && myCommunitiesPvd.data!.isEmpty) {
      child = ArreErrorWidget.empty(
        message: "You're not part of any voiceclub",
        buttonText: "Discover Voiceclubs",
        onPressed: () {
          ArreNavigator.instance
              .push(AAppPage(child: DiscoverCommunitiesScreen()));
        },
      );
    } else if (myCommunitiesPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(child: ArreErrorWidget(error: myCommunitiesPvd.error));
    }
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text("My Voiceclubs"),
      ),
      body: child,
    );
  }
}
