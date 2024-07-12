// import 'package:arre_explore_page_gql/arre_explore_page_gql.dart';
// import 'package:arre_frontend_flutter/arre_routing/routing.dart';
// import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
// import 'package:arre_frontend_flutter/styles/styles.dart';
// import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
// import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../providers/explore_providers/explore_hashtag_posts_provider.dart';
// import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
// import '../profile_screen/profile_screen.dart';
//
// class ExploreTopCreators extends ConsumerWidget {
//   const ExploreTopCreators({
//     Key? key,
//   }) : super(key: key);
//
//   Widget creatorBody(
//       WidgetRef ref, AsyncData<List<GListTopCreatorsData_response_data>> data) {
//     List<GListTopCreatorsData_response_data> creatorListData = data.value;
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 16, bottom: 6),
//           child: Text(
//             "TOP CREATORS",
//             style: TextStyle(
//               fontFamily: "Acumin Pro",
//               color: AColors.tealPrimary,
//               fontSize: 14,
//               fontWeight: FontWeight.w700,
//               letterSpacing: 0.5,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 170,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             children: creatorListData
//                 .map((creatorData) => _UserCard(creatorData))
//                 .toList(),
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final child = ref.watch(exploreTopCreatorProvider).map(
//           data: (data) => creatorBody(ref, data),
//           error: (error) => SizedBox(),
//           loading: (loading) => Center(child: ACommonLoader()),
//         );
//     return child;
//   }
// }
//
// class _UserCard extends ConsumerStatefulWidget {
//   final GListTopCreatorsData_response_data creatorData;
//
//   const _UserCard(this.creatorData, {Key? key}) : super(key: key);
//
//   @override
//   ConsumerState<_UserCard> createState() => _CreatorDetailsState();
// }
//
// class _CreatorDetailsState extends ConsumerState<_UserCard> {
//   @override
//   void initState() {
//     super.initState();
//     ref.read(userShortDataProvider).fetchData(widget.creatorData.userId);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final userDataPvd = ref.watch(userShortDataProvider);
//     final userData = userDataPvd.getData(widget.creatorData.userId);
//     Widget child;
//     if (userDataPvd.hasData(widget.creatorData.userId)) {
//       child = Column(
//         children: [
//           Container(
//             height: 100,
//             width: 120,
//             padding: EdgeInsets.only(top: 10),
//             //commented out mediaId for now - may use in future
//             // child: ArreNetworkImage.mediaId(
//             //   widget.creatorData.mediaId,
//             //   shape: CircleBorder(
//             //     side: BorderSide(color: AColors.tealPrimary, width: 2),
//             //   ),
//             // ),
//             child: UserAvatarV2(
//               mediaId: userData?.profilePictureMediaId,
//               userName: userData?.username,
//               size: 80,
//               borderColor: AColors.tealPrimary,
//               showThumbnail: false,
//             ),
//           ),
//           Container(
//             alignment: Alignment.center,
//             width: 100,
//             height: 45,
//             child: Text(
//               userData!.username,
//               textAlign: TextAlign.center,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                 fontFamily: "Acumin Pro",
//                 color: AColors.tealPrimary,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//         ],
//       );
//
//       child = Container(
//         margin: EdgeInsets.only(right: 10),
//         decoration: BoxDecoration(
//           color: AColors.BgLight,
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(
//             color: AColors.tealPrimary.withOpacity(0.3),
//             width: 1,
//           ),
//         ),
//         child: child,
//       );
//
//       child = GestureDetector(
//         behavior: HitTestBehavior.translucent,
//         onTap: () {
//           arreAnalytics
//               .logEvent(GAEvent.TOP_CREATOR_ITEM_CLICKED, parameters: {
//             EventAttribute.ENTITY_ID: widget.creatorData.userId,
//             EventAttribute.ENTITY_TYPE: EntityType.user.name
//           });
//           ArreNavigator.instance.push(AAppPage(
//               child: ProfileScreen(userId: widget.creatorData.userId)));
//         },
//         child: child,
//       );
//     } else if (userDataPvd.isLoading(widget.creatorData.userId)) {
//       child = Center();
//     } else {
//       child = SizedBox();
//     }
//     return child;
//   }
// }
