import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/user_post_relation_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/voicepod_actions_provider.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _PLAYLIST_ITEM_HEIGHT = 64.0;

class CurrentPlaylistSheet extends ConsumerStatefulWidget with ArreScreen {
  @override
  ConsumerState createState() => __CurrentPlaylistSheetState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.CURRENT_PLAYLIST_SHEET;
}

class __CurrentPlaylistSheetState extends ConsumerState<CurrentPlaylistSheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      expand: false,
      maxChildSize: 1.0,
      builder: (context, controller) {
        return _PlaylistBody(controller);
      },
    );
  }
}

class _PlaylistBody extends ConsumerStatefulWidget {
  final ScrollController controller;

  const _PlaylistBody(this.controller);

  @override
  ConsumerState createState() => __PlaylistBodyState();
}

class __PlaylistBodyState extends ConsumerState<_PlaylistBody> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.controller.jumpTo(
          _PLAYLIST_ITEM_HEIGHT * (PodPlayerV3.instance.currentIndex - 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    final title = PodPlayerV3.instance.source?.playlistTitle;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: RichText(
            text: TextSpan(
              children: [
                if (title != null) ...[
                  TextSpan(
                    text: "From  ",
                    style: ATextStyles.user14Regular(),
                  ),
                  TextSpan(
                    text: title,
                    style: ATextStyles.user14Bold(),
                  ),
                ] else
                  TextSpan(
                    text: "Current playlist",
                    style: ATextStyles.user14Bold(),
                  )
              ],
            ),
          ),
        ),
        Expanded(
          child: StreamBuilder<MediaItem?>(
              stream: PodPlayerV3.instance.mediaItem,
              builder: (context, mediaItemSnapshot) {
                return StreamBuilder<List<MediaItem>>(
                  stream: PodPlayerV3.instance.queue,
                  builder: (context, queueSnapshot) {
                    return NotificationListener<ScrollMetricsNotification>(
                      onNotification: PodPlayerV3.instance.onScrollNotification,
                      child: ListView.builder(
                        controller: widget.controller,
                        itemCount: queueSnapshot.data?.length ?? 0,
                        itemBuilder: (context, i) {
                          return _PlayListItem(
                            item: queueSnapshot.data![i],
                            isPlaying: mediaItemSnapshot.data ==
                                queueSnapshot.data![i],
                          );
                        },
                      ),
                    );
                  },
                );
              }),
        )
      ],
    );
  }
}

class _PlayListItem extends StatelessWidget {
  final MediaItem item;
  final bool isPlaying;

  const _PlayListItem({
    required this.item,
    this.isPlaying = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        PodPlayerV3.instance.playMediaItem(item).then((value) =>
            PodPlayerV3.instance.play(PlayerGAContext.current_playlist));
      },
      child: Container(
        height: _PLAYLIST_ITEM_HEIGHT,
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.center,
        color: isPlaying ? Color(0x26898A8D) : null,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                UserAvatarV2(
                  size: 50,
                  mediaId: item.profilePictureMediaId,
                  userName: item.artist,
                ),
                Center(
                  child: isPlaying
                      ? StreamBuilder(
                          stream: PodPlayerV3.instance.playingValueStream,
                          builder: (context, snapshot) {
                            return ACommonLoader.dancingBars(
                              size: 28,
                              animate: snapshot.data ?? false,
                            );
                          },
                        )
                      : Icon(
                          ArreIconsV2.play_filled,
                          color: AColors.textLight.withOpacity(0.6),
                          size: 28,
                        ),
                )
              ],
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.title,
                    style: ATextStyles.user14Regular(AColors.textLight),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (item.artist != null) ...[
                    SizedBox(height: 4),
                    Text(
                      "@${item.artist}",
                      style: ATextStyles.sys12Bold(AColors.tealPrimary),
                    ),
                  ]
                ],
              ),
            ),
            if (PodPlayerV3.instance.source is! UserBioPodSource)
              Consumer(
                builder: (context, ref, child) {
                  final hasLiked = ref.watch(userPostRelationsProvider
                      .select((value) => value.hasLiked(item.entityId)));
                  return IconButton(
                    constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                    splashRadius: 24,
                    onPressed: () {
                      final event = hasLiked == true
                          ? GAEvent.VP_UNLIKE_ICON_CLICK
                          : GAEvent.VP_LIKE_ICON_CLICK;
                      arreAnalytics.logEvent(
                        event,
                        parameters: {EventAttribute.POST_ID: item.entityId},
                      );
                      VoicepodAction.applyLikeUnlike(ref, item.entityId);
                    },
                    iconSize: 24,
                    icon: hasLiked == true
                        ? Icon(
                            ArreIconsV2.heart_filled,
                            color: AColors.orangePrimary,
                          )
                        : Icon(ArreIconsV2.heart_outline),
                  );
                },
              ),
            IconButton(
              constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
              splashRadius: 24,
              onPressed: () {
                Navigator.of(context).pop();
                ArreScreen screen;
                if (PodPlayerV3.instance.source is UserBioPodSource) {
                  screen = ProfileScreen(userId: item.entityId);
                } else {
                  screen = VoicepodDetailScreen(postId: item.entityId);
                }
                arreAnalytics.logEvent(GAEvent.CP_POD_OPEN_DETAILS);
                ArreNavigator.instance.push(AAppPage(child: screen));
              },
              iconSize: 20,
              icon: Icon(ArreIconsV2.frontarrow_outline),
            ),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
