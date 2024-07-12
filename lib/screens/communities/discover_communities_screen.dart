import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/communities/recommended_communities_provider.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_card.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/community_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiscoverCommunitiesScreen extends ConsumerStatefulWidget with ArreScreen {
  const DiscoverCommunitiesScreen({super.key});

  @override
  ConsumerState createState() => _DiscoverCommunitiesScreenState();

  @override
  Uri? get uri => Uri.parse("/voiceclub/discover");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/voiceclub/discover") {
      return AAppPage(child: DiscoverCommunitiesScreen());
    }
    return null;
  }

  @override
  String get screenName => GAScreen.DISCOVER_VOICECLUBS_SCREEN;
}

class _DiscoverCommunitiesScreenState
    extends ConsumerState<DiscoverCommunitiesScreen> {


  @override
  void initState() {
    super.initState();
    final recCommunityPvd = ref.read(recCommunitiesProvider);
    recCommunityPvd.initAnimatedGrid(
      removedItemBuilder: (context, animation, community) {
        return FadeTransition(
          opacity: animation,
          child: IgnorePointer(
            child: CommunityCard(community: community),
          ),
        );
      },
    );

    if ((recCommunityPvd.data?.isEmpty ?? true) && !recCommunityPvd.isLoading) {
      recCommunityPvd.refresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    final recCommunitiesPvd = ref.watch(recCommunitiesProvider);
    if (recCommunitiesPvd.hasData && recCommunitiesPvd.data!.isNotEmpty) {
      child = AnimatedGrid(
        key: recCommunitiesPvd.gridStateKey,
        padding: EdgeInsets.all(16),
        initialItemCount: recCommunitiesPvd.data!.length,
        itemBuilder: (context, index, animation) {
          final community = recCommunitiesPvd.data![index];
          return CommunityCard(
            community: community,
            onDismiss: () => recCommunitiesPvd.dismissCommunity(community),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: ARRE_CARD_ASPECT_RATIO,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
      );
    } else if (recCommunitiesPvd.hasData && recCommunitiesPvd.data!.isEmpty) {
      child = Center(
        child: ArreErrorWidget.empty(message: "No voiceclubs found"),
      );
    } else if (recCommunitiesPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget(error: recCommunitiesPvd.error),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text("Discover Voiceclubs"),
      ),
      body: child,
    );
  }
}
