// import 'package:arre_frontend_flutter/providers/explore_providers/explore_hashtag_posts_provider.dart';
// import 'package:arre_frontend_flutter/screens/explore/explore_banner_section.dart';
// import 'package:arre_frontend_flutter/screens/explore/explore_top_hashtags.dart';
// import 'package:arre_frontend_flutter/styles/styles.dart';
// import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
// import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
// import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../arre_routing/routing.dart';
// import '../search/search_screen.dart';
// import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
// import 'explore_top_creators.dart';
//
// class ExploreScreen extends ConsumerWidget {
//   const ExploreScreen();
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         titleSpacing: 1.0,
//         title: Text("Explore"),
//         actions: [
//           IconButton(
//             onPressed: () async {
//               arreAnalytics.logEvent(GAEvent.SEARCH_BAR_CLICKED);
//               ArreNavigator.instance.push(
//                 AAppPage(
//                   child: SearchScreen(),
//                   fullscreenDialog: true,
//                 ),
//               );
//             },
//             icon: Icon(ArreIconsV2.search_outline),
//           ),
//         ],
//       ),
//       body: SafeArea(child: ExploreBody()),
//     );
//   }
// }
//
// class ExploreBody extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final topCreatorsPvd = ref.watch(exploreTopCreatorProvider);
//     final hashtagsPvd = ref.watch(exploreTopHashtagProvider);
//     final bannerPvd = ref.watch(exploreDynamicCardsProvider);
//     Widget child;
//
//     if ((topCreatorsPvd.isLoading && !topCreatorsPvd.hasValue) ||
//         (hashtagsPvd.isLoading && !hashtagsPvd.hasValue) ||
//         (bannerPvd.isLoading && !bannerPvd.hasValue)) {
//       child = Center(child: ACommonLoader());
//     } else if (topCreatorsPvd.hasError &&
//         hashtagsPvd.hasError &&
//         bannerPvd.hasError) {
//       child = ArreErrorWidget(
//         error: hashtagsPvd.error,
//         onPressed: () {
//           ref.invalidate(exploreTopHashtagProvider);
//           ref.invalidate(exploreTopCreatorProvider);
//           ref.invalidate(exploreDynamicCardsProvider);
//         },
//       );
//     } else {
//       child = CustomScrollView(
//         slivers: [
//           SliverPadding(padding: EdgeInsets.only(top: 16)),
//           SliverToBoxAdapter(child: ExploreBannerSection()),
//           SliverToBoxAdapter(child: SizedBox(height: 20)),
//           if (topCreatorsPvd.hasValue) ...[
//             SliverToBoxAdapter(child: ExploreTopCreators()),
//             SliverToBoxAdapter(child: SizedBox(height: 20)),
//           ],
//           if (hashtagsPvd.hasValue) ...[
//             SliverPadding(
//               padding: EdgeInsets.only(left: 16, bottom: 3),
//               sliver: SliverToBoxAdapter(
//                 child: Text(
//                   "#HASHTAGS 🔥",
//                   style: TextStyle(
//                     fontFamily: "Acumin Pro",
//                     color: AColors.tealPrimary,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w700,
//                     letterSpacing: 0.5,
//                   ),
//                 ),
//               ),
//             ),
//             SliverList(
//               delegate: SliverChildListDelegate(
//                 hashtagsPvd.value!.map((data) => HashtagCard(data)).toList(),
//               ),
//             )
//           ]
//         ],
//       );
//     }
//     return child;
//   }
// }
