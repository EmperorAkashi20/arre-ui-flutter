import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../providers/explore_providers/explore_hashtag_posts_provider.dart';
import '../../styles/styles.dart';
import '../../utils/arre_assets.dart';

class ExploreHashtagPosts extends ConsumerStatefulWidget with ArreScreen {
  final String? hashtagPostId;

  const ExploreHashtagPosts(this.hashtagPostId);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExploreHashtagPostsState();

  @override
  Uri? get uri => Uri.parse('/hashtag_posts/$hashtagPostId');

  @override
  String get screenName => GAScreen.HASHTAG_POSTS;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 2 &&
        uri.pathSegments.first == "hashtag_posts") {
      return AAppPage(child: ExploreHashtagPosts(uri.pathSegments[1]));
    }
    return null;
  }
}

class _ExploreHashtagPostsState extends ConsumerState<ExploreHashtagPosts> {
  @override
  void initState() {
    super.initState();
    ref.read(exploreHashtagPostProvider(widget.hashtagPostId!));
  }

  @override
  Widget build(BuildContext context) {
    final hashtagPodsPvd =
        ref.watch(exploreHashtagPostProvider(widget.hashtagPostId!));
    final hashtagVoicepodsData = hashtagPodsPvd.data;
    Widget child;
    if (hashtagPodsPvd.hasData) {
      child = RefreshIndicator(
        onRefresh: () async {
          await Future.wait([
            ref
                .read(exploreHashtagPostProvider(widget.hashtagPostId!))
                .refresh(),
          ]);
        },
        child: ListView.builder(
          itemCount: hashtagVoicepodsData!.length,
          itemBuilder: (_, i) {
            return VoicepodPostCard(
              hashtagVoicepodsData[i].voicepodId,
              onPlayPressed: (String voicepodId) {
                PodPlayerV3.instance.init(
                  startIndex: i,
                  context: context,
                  podSourceFuture: () => SynchronousFuture(hashtagPodsPvd),
                );
              },
            );
          },
        ),
      );
    } else if (hashtagPodsPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else if (hashtagPodsPvd.hasError) {
      child = ArreErrorWidget(
        error: hashtagPodsPvd.error,
      );
    } else {
      child = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ArreAssets.EMPTY_EXPLORE_VOICEPOD_IMG),
            SizedBox(height: 20),
            Text(
              "We don't have anything related to the hashtag at the moment. Why not create one?",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text("#${widget.hashtagPostId.toString()}"),
      ),
      backgroundColor: AColors.BgDark,
      body: child,
    );
  }
}

// class _TopSection extends StatelessWidget {
//   const _TopSection({
//     Key? key,
//     required this.widget,
//     required this.hashtahPostDataPvd,
//   }) : super(key: key);

//   final ExploreHashtagPosts widget;
//   final ExploreHashtagPostProvider hashtahPostDataPvd;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             height: 150,
//             width: 150,
//             decoration: BoxDecoration(
//               color: AColors.tealPrimary,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Tooltip(
//                   message: widget.hashtagPostId,
//                   child: Text(
//                     "#",
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontFamily: 'Acumin Pro',
//                       fontWeight: FontWeight.w400,
//                       color: AColors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 Tooltip(
//                   message: widget.hashtagPostId,
//                   child: Text(
//                     widget.hashtagPostId!,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontFamily: 'Acumin Pro',
//                       fontWeight: FontWeight.w400,
//                       color: AColors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 2),
//               if (hashtahPostDataPvd.data!.length > 0)
//                 RichText(
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: " · ",
//                         style: TextStyle(
//                           fontFamily: 'Acumin Pro',
//                           fontSize: 14,
//                           height: 2,
//                         ),
//                       ),
//                       TextSpan(
//                         text: "${hashtahPostDataPvd.data!.length.toString()}",
//                         style: TextStyle(
//                           fontFamily: 'Acumin Pro',
//                           fontWeight: FontWeight.bold,
//                           color: AColors.greyText,
//                           fontSize: 16,
//                         ),
//                       ),
//                       TextSpan(
//                         text: " Posts",
//                         style: TextStyle(
//                           fontFamily: 'Acumin Pro',
//                           fontWeight: FontWeight.w400,
//                           color: AColors.greyText,
//                           fontSize: 16,
//                         ),
//                       ),
//                       TextSpan(
//                         text: " · ",
//                         style: TextStyle(
//                           fontFamily: 'Acumin Pro',
//                           fontSize: 14,
//                           height: 2,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               SizedBox(height: 4),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Container(
//                   alignment: Alignment.centerLeft,
//                   constraints: BoxConstraints(maxWidth: 138, maxHeight: 46),
//                   clipBehavior: Clip.hardEdge,
//                   decoration: BoxDecoration(
//                     color: AColors.appBarDark,
//                     border:
//                         Border.all(color: AColors.tealStroke.withOpacity(0.3)),
//                     borderRadius: BorderRadius.all(Radius.circular(23)),
//                   ),
//                   child: Material(
//                     type: MaterialType.transparency,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Consumer(builder: (context, ref, child) {
//                           final podPlayerPvd = ref.watch(podPlayerProvider);
//                           final isThisPlaylistPlaying = podPlayerPvd
//                               .isPlayingPodSource(hashtahPostDataPvd);
//                           return FilledIconButton(
//                             icon: Icon(
//                               ArreIconsV2.autoplay_filled,
//                               size: 24,
//                               color: Colors.white,
//                             ),
//                             size: 46,
//                             padding: EdgeInsets.zero,
//                             borderColor: AColors.tealPrimary,
//                             onPressed: () {
//                               if (!isThisPlaylistPlaying &&
//                                   hashtahPostDataPvd.data!.isNotEmpty) {
//                                 podPlayerPvd.init(
//                                   hashtahPostDataPvd.data!.first.voicepodId,
//                                   podPlayerSource: hashtahPostDataPvd,
//                                   context: context,
//                                 );
//                               } else if (hashtahPostDataPvd.data!.isEmpty) {
//                                 showInfoSnackBar("No pods found");
//                               }
//                             },
//                             fillColor: AColors.orangePrimary,
//                           );
//                         }),
//                         Text('Restart'),
//                         SizedBox(),
//                         SizedBox(),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(),
//           SizedBox(),
//         ],
//       ),
//     );
//   }
// }
