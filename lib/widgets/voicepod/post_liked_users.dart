import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/liked_users_provider.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/user_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/feed_providers/post_data_provider.dart';
import '../../widgets/arre_error_widget.dart';

Future<void> showPostLikedUsersSheet(String postId) async {
  final userId = await showModalBottomSheet(
    context: ArreNavigator.instance.context,
    showDragHandle: true,
    builder: (context) {
      return _PostLikedSheet(postId);
    },
  );
  if (userId is String) {
    ArreNavigator.instance.push(AAppPage(child: ProfileScreen(userId: userId)));
  }
}

class _PostLikedSheet extends ConsumerStatefulWidget {
  final String postId;

  const _PostLikedSheet(this.postId, {Key? key}) : super(key: key);

  @override
  ConsumerState createState() => __PostLikedSheetState();
}

class __PostLikedSheetState extends ConsumerState<_PostLikedSheet> {
  @override
  void initState() {
    final postDataPvd = ref.read(postDataProvider);
    final postData = postDataPvd.getData(widget.postId);
    arreAnalytics.logEvent(
      GAEvent.POST_LIKED_USERS_SHEET_VIEW,
      parameters: {
        EventAttribute.POST_ID: widget.postId,
        EventAttribute.EVENT_COUNT: postData?.likeCount,
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final voicepodLikedUsersPvd =
        ref.watch(voicepodLikedUsersProvider(widget.postId));
    Widget child;
    final postDataPvd = ref.watch(postDataProvider);
    final postData = postDataPvd.getData(widget.postId);
    if (voicepodLikedUsersPvd.hasData) {
      if (voicepodLikedUsersPvd.data!.isNotEmpty) {
        child = NotificationListener<ScrollUpdateNotification>(
          onNotification: voicepodLikedUsersPvd.onScrollNotification,
          child: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    "${postData?.likeCount.formatWithCommas ?? 0} " +
                        (postData?.likeCount ?? 0).getLabel(
                          zero: "Likes",
                          one: "Like",
                          many: "Likes",
                        ),
                    style: ATextStyles.sys18Bold(),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return UserListTile(
                      userId: voicepodLikedUsersPvd.data![index],
                      onTap: () => Navigator.of(context)
                          .pop(voicepodLikedUsersPvd.data![index]),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      showFollowButton: true,
                    );
                  },
                  childCount: voicepodLikedUsersPvd.data!.length,
                ),
              )
            ],
          ),
        );
      } else {
        child = Center(child: Text("No Likes found"));
      }
    } else if (voicepodLikedUsersPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child =
          Center(child: ArreErrorWidget(error: voicepodLikedUsersPvd.error));
    }
    return child;
  }
}
