import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/creators_recommended_provider.dart';
import 'package:arre_frontend_flutter/providers/invite_screen_providers/follow_status_provider.dart';
import 'package:arre_frontend_flutter/providers/profile_actions.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/arre_card.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_user_graph_gql/arre_user_graph_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/Firebase Analytics/firebase_analytics_service.dart';

class CreatorCard extends ConsumerStatefulWidget {
  final GGetRecommendedUsersData_response_data creatorData;

  const CreatorCard(this.creatorData, {Key? key}) : super(key: key);

  @override
  ConsumerState<CreatorCard> createState() => _CreatorDetailsState();
}

class _CreatorDetailsState extends ConsumerState<CreatorCard> {
  @override
  Widget build(BuildContext context) {
    final followStatusPvd = ref.watch(followStatusProvider);

    Widget actionButton;

    if (followStatusPvd.isFollowing(widget.creatorData.userId) ?? false) {
      actionButton = FilledFlatButton(
        backgroundColor: AColors.BgLight,
        onPressed: () async {
          arreAnalytics.logEvent(
            GAEvent.UNFOLLOW_USER,
            parameters: {
              EventAttribute.USER_ID: widget.creatorData.userId,
              EventAttribute.GA_CONTEXT: GAContext.suggested_user_card.name,
            },
          );
          await ProfileAction.unFollowUser(ref, widget.creatorData.userId);
          await ref.read(recommendedCreatorsProvider).refresh();
          ref.invalidate(topRecommendedUsersProvider);
        },
        child: Text("Following"),
      );
    } else {
      actionButton = FilledFlatButton(
        onPressed: () async {
          arreAnalytics.logEvent(
            GAEvent.FOLLOW_USER,
            parameters: {
              EventAttribute.USER_ID: widget.creatorData.userId,
              EventAttribute.GA_CONTEXT: GAContext.suggested_user_card.name,
            },
          );
          await ProfileAction.followUser(ref, widget.creatorData.userId);
          await ref.read(recommendedCreatorsProvider).refresh();
          ref.invalidate(topRecommendedUsersProvider);
        },
        child: Text("Follow"),
      );
    }

    return ArreCard(
      title: widget.creatorData.username,
      description: widget.creatorData.suggestionReason,
      imageMediaId: widget.creatorData.profilePictureMediaId,
      actionButton: SizedBox(height: 26, child: actionButton),
      onDismiss: () async {
        ref.read(recommendedCreatorsProvider).removeUser(widget.creatorData);
        ref.invalidate(topRecommendedUsersProvider);
      },
      onTap: () async {
        ArreNavigator.instance.push(
            AAppPage(child: ProfileScreen(userId: widget.creatorData.userId)));
        await ApiService.instance
            .removeRecommendedUser(widget.creatorData.userId);
        await ref.read(recommendedCreatorsProvider).refresh();
        ref.invalidate(topRecommendedUsersProvider);
      },
    );
    // return GestureDetector(
    //   onTap: () async {
    //
    //   },
    //   child: Container(
    //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(10),
    //       child: Stack(
    //         alignment: Alignment.center,
    //         fit: StackFit.passthrough,
    //         children: [
    //           DecoratedBox(
    //             position: DecorationPosition.foreground,
    //             decoration: BoxDecoration(
    //               gradient: gradient,
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //             child: ImageFiltered(
    //               imageFilter: ImageFilter.blur(
    //                   sigmaX: 4, sigmaY: 4, tileMode: TileMode.decal),
    //               child: ArreNetworkImage.mediaId(
    //                 widget.creatorData.profilePictureMediaId ?? "",
    //                 fit: BoxFit.cover,
    //                 showThumbnail: true,
    //               ),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(top: 20),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
    //               children: [
    //                 Container(
    //                   height: 65,
    //                   width: 65,
    //                   child: UserAvatarV2(
    //                     mediaId: widget.creatorData.profilePictureMediaId,
    //                     userName: widget.creatorData.username,
    //                     size: 64,
    //                     showThumbnail: false,
    //                   ),
    //                 ),
    //                 Container(
    //                   width: 150,
    //                   child: Text(widget.creatorData.username,
    //                       textAlign: TextAlign.center,
    //                       overflow: TextOverflow.ellipsis,
    //                       style: ATextStyles.sys14Bold()),
    //                 ),
    //                 Container(
    //                   width: 150,
    //                   child: Text(widget.creatorData.suggestionReason,
    //                       textAlign: TextAlign.center,
    //                       overflow: TextOverflow.ellipsis,
    //                       style: ATextStyles.sys14Regular()),
    //                 ),
    //
    //               ],
    //             ),
    //           ),
    //           Positioned(
    //             right: 0,
    //             top: 0,
    //             child: IconButton(
    //               icon: Icon(ArreIconsV2.cross_outline, size: 20),
    //               splashRadius: 18,
    //               onPressed: () async {
    //
    //               },
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
