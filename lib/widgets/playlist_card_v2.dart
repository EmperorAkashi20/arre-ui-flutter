import 'dart:ui';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/home_page_feed_providers.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_user_feed_gql/arre_user_feed_gql.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui show ImageFilter;

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../screens/playlist_detail_screens/playlist_detail_screens.dart';

const _gaContext = PlayerGAContext.playlist_thumbnail_play_btn;

class PlaylistCardV2 extends ConsumerWidget {
  final GHomePagePlaylist homePagePlaylist;
  final VoidCallback onPressed;

  const PlaylistCardV2({
    super.key,
    required this.homePagePlaylist,
    required this.onPressed,
  });

  void playThisPlaylist(WidgetRef ref) {
    PodPlayerV3.instance.init(
      gaContext: _gaContext,
      context: ref.context,
      podSourceFuture: () async {
        final arrePlaylistPvd = ref.read(
            arrePlaylistPostsProvider(homePagePlaylist.playlistUniqueLink));
        arrePlaylistPvd.playlistTitle = homePagePlaylist.title;
        return arrePlaylistPvd;
      },
    );
    ArreNavigator.instance.push(
      AAppPage(
        child: ArrePlaylistDetailsScreen(
          sectionUniqueLink: homePagePlaylist.playlistUniqueLink,
          coverImageId: homePagePlaylist.coverMediaId,
          title: homePagePlaylist.title,
          subtitle: homePagePlaylist.subTitle,
        ),
      ),
    );
  }

  static Widget loading() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AShimmerLoading(
          aspectRatio: 1,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        SizedBox(height: 4),
        AShimmerLoading(height: 16, width: 86),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              // clipBehavior: Clip.hardEdge,
              child: AspectRatio(
                aspectRatio: 1,
                child: Stack(
                  children: [
                    // if (kDebugMode)
                    //   Positioned.fill(
                    //     child: ArreNetworkImage(
                    //         "https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI"),
                    //   )
                    // else
                    Positioned.fill(
                      child: ArreNetworkImage.mediaId(
                          homePagePlaylist.coverMediaId),
                    ),
                    // if (titleSpans.isNotEmpty)
                    //   Positioned.fill(
                    //     child: DecoratedBox(
                    //       decoration: BoxDecoration(
                    //         gradient: LinearGradient(
                    //           colors: [
                    //             Colors.black.withOpacity(0.64),
                    //             Colors.black.withOpacity(0.0),
                    //           ],
                    //           begin: Alignment.topCenter,
                    //           end: Alignment.bottomCenter,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // Padding(
                    //   padding: EdgeInsets.all(10),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: titleSpans,
                    //   ),
                    // ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      height: 44,
                      width: 44,
                      child: ValueListenableBuilder<PodPlayerSource?>(
                          valueListenable: PodPlayerV3.instance.sourceNotifier,
                          builder: (context, source, child) {
                            final isPlayingThisSource =
                                source is ArrePlaylistPostsProvider &&
                                    source.playlistUniqueLink ==
                                        homePagePlaylist.playlistUniqueLink;
                            if (isPlayingThisSource) {
                              return _PlayButton(
                                onPressed: () {
                                  PodPlayerV3.instance.isPlaying
                                      ? PodPlayerV3.instance.pause(_gaContext)
                                      : PodPlayerV3.instance.play(_gaContext);
                                },
                                isPlaying: isPlayingThisSource,
                              );
                            } else {
                              return _PlayButton(
                                onPressed: () => playThisPlaylist(ref),
                                isPlaying: isPlayingThisSource,
                              );
                            }
                          }),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(
              homePagePlaylist.title,
              style: ATextStyles.sys16Medium(AColors.textLight),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isPlaying;

  const _PlayButton({
    required this.onPressed,
    required this.isPlaying,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipPath(
        clipper: ShapeBorderClipper(shape: CircleBorder()),
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 8,
            sigmaY: 8,
          ),
          child: CustomPaint(
            painter: _GradientBorderPainter(),
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.2),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: isPlaying
                    ? StreamBuilder(
                        stream: PodPlayerV3.instance.playingValueStream,
                        builder: (context, snapshot) {
                          return ACommonLoader.dancingBars(
                            size: 22,
                            animate: snapshot.data == true,
                          );
                        },
                      )
                    : const Icon(
                        ArreIconsV2.play_filled,
                        color: Colors.white,
                        size: 20,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.5),
          Colors.white.withOpacity(0.0),
        ],
      ).createShader(Rect.fromCircle(
          center: size.center(Offset.zero), radius: size.width / 2))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
