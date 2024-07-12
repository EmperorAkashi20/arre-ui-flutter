// import 'package:arre_user_feed_gql/arre_user_feed_gql.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../arre_routing/routing.dart';
// import '../../styles/styles.dart';
// import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
// import '../../widgets/arre_network_image.dart';
// import 'explore_hashtag_posts.dart';
//
// class HashtagCard extends ConsumerWidget {
//   final GListTopHashtagsData_response_data hashtagCardData;
//
//   const HashtagCard(
//     this.hashtagCardData, {
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return InkWell(
//       onTap: () {
//         arreAnalytics
//             .logEvent(GAEvent.HASHTAG_ITEM_CLICKED, parameters: {
//           EventAttribute.ENTITY_ID: hashtagCardData.hashTagUniqueIdentifier,
//           EventAttribute.ENTITY_TYPE: EntityType.hashtag.name
//         });
//         ArreNavigator.instance.push(
//           AAppPage(
//             child: ExploreHashtagPosts(hashtagCardData.hashTagUniqueIdentifier),
//           ),
//         );
//       },
//       child: Container(
//           height: 71,
//           margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//           padding: EdgeInsets.only(left: 11, right: 10),
//           decoration: BoxDecoration(
//             color: AColors.BgLight,
//             borderRadius: BorderRadius.all(Radius.circular(15)),
//             border: Border.all(
//               color: AColors.tealPrimary.withOpacity(0.3),
//               width: 1,
//             ),
//           ),
//           child: Row(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   height: 50,
//                   width: 50,
//                   child: ArreNetworkImage.mediaId(
//                     hashtagCardData.mediaId,
//                     shape: CircleBorder(
//                       side: BorderSide(color: AColors.tealPrimary, width: 2),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Expanded(
//                 flex: 8,
//                 child: Container(
//                   margin: EdgeInsets.only(top: 5, bottom: 5),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "#${hashtagCardData.hashTagName}",
//                         style: TextStyle(
//                           fontFamily: "Acumin Pro",
//                           color: AColors.greyLight,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Container(
//                         width: 270,
//                         child: Text(
//                           hashtagCardData.hashTagDescription,
//                           overflow: TextOverflow.ellipsis,
//                           softWrap: true,
//                           maxLines: 2,
//                           style: TextStyle(
//                             fontFamily: "Acumin Pro",
//                             color: AColors.greyLight,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           )),
//     );
//   }
// }
