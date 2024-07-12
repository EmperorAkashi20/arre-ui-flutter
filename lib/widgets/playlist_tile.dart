import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/play_history_provider.dart';
import 'package:arre_frontend_flutter/providers/playlist_providers.dart/my_liked_playlist_provider.dart';
import 'package:arre_frontend_flutter/providers/playlist_providers.dart/playlist_details_provider.dart';
import 'package:arre_frontend_flutter/screens/playlist/playlist.dart';
import 'package:arre_frontend_flutter/screens/playlist_detail_screens/playlist_detail_screens.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _gaContext = PlayerGAContext.playlist_tile_play_btn;

class PlaylistTile extends ConsumerWidget {
  final Widget thumbnail;
  final String title;
  final String? description;
  final bool isPrivate, showPrivacyIcon;
  final VoidCallback onPressed;

  // final VoidCallback onPlayPressed;
  ///Can be Playlist ID or `play_history` in case of play history provider
  final String podSourceId;

  // final double size;
  // final ShapeBorder shape;

  const PlaylistTile({
    super.key,
    required this.thumbnail,
    required this.title,
    this.description,
    required this.isPrivate,
    required this.showPrivacyIcon,
    required this.onPressed,
    // required this.onPlayPressed,
    required this.podSourceId,
  });

  factory PlaylistTile.history() {
    return PlaylistTile(
      thumbnail: Image.asset(ArreAssets.HISTORY_PLAYLIST),
      title: "Play History",
      isPrivate: true,
      showPrivacyIcon: false,
      description: "The list of voicepods you have heard",
      podSourceId: 'play_history',
      onPressed: () {
        ArreNavigator.instance.push(AAppPage(child: PlayHistoryScreen()));
      },
    );
  }

  factory PlaylistTile.myLikedPlaylist() {
    return PlaylistTile(
      thumbnail: Image.asset(ArreAssets.MY_LIKED_PLAYLIST),
      title: "My Liked",
      isPrivate: true,
      showPrivacyIcon: false,
      description: "The list of voicepods you have liked",
      podSourceId: 'my_liked_playlist',
      onPressed: () =>
          ArreNavigator.instance.push(AAppPage(child: MyLikedPlaylist())),
    );
  }

  static Widget loading() {
    return _PlaylistLoadingTile();
  }

  ProviderListenable get sourceProviderListenable {
    if (podSourceId == 'play_history') {
      return playHistoryProvider;
    } else if (podSourceId == 'my_liked_playlist') {
      return myLikedPlaylistProvider;
    } else {
      return playlistDetailsProvider(podSourceId);
    }
  }

  PodPlaylistWithPostIDs getSource(WidgetRef ref) {
    if (podSourceId == 'play_history') {
      return ref.read(playHistoryProvider);
    } else if (podSourceId == 'my_liked_playlist') {
      return ref.read(myLikedPlaylistProvider);
    } else {
      return ref.read(playlistDetailsProvider(podSourceId));
    }
  }

  bool thisPlaylistEqualTo(PodPlayerSource? playingSource) {
    return playingSource is PodPlaylistWithPostIDs &&
        playingSource.podSourceId == podSourceId;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SizedBox.square(
              dimension: 64,
              child: ClipRRect(
                child: thumbnail,
                borderRadius: BorderRadius.circular(8),
                clipBehavior: Clip.hardEdge,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: ATextStyles.sys14Bold(AColors.textLight),
                  ),
                  if (description != null) ...[
                    SizedBox(height: 4),
                    Text(
                      description!,
                      style: ATextStyles.sys12Regular(AColors.textDark),
                    ),
                  ]
                ],
              ),
            ),
            if (!showPrivacyIcon)
              SizedBox(width: 10)
            else if (isPrivate)
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  ArreIconsV2.private_filled,
                  size: 16,
                  color: AColors.textDark,
                ),
              )
            else
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  ArreIconsV2.public_filled,
                  size: 16,
                  color: AColors.textDark,
                ),
              ),
            ValueListenableBuilder(
              valueListenable: PodPlayerV3.instance.sourceNotifier,
              builder: (context, playingSource, _) {
                if (thisPlaylistEqualTo(playingSource)) {
                  return FilledIconButton(
                    fillColor: Color(0xFF44494e),
                    onPressed: () {
                      PodPlayerV3.instance.isPlaying
                          ? PodPlayerV3.instance.pause(_gaContext)
                          : PodPlayerV3.instance.play(_gaContext);
                    },
                    icon: Center(
                      child: StreamBuilder(
                        stream: PodPlayerV3.instance.playingValueStream,
                        builder: (context, snapshot) {
                          return ACommonLoader.dancingBars(
                            size: 16,
                            animate: snapshot.data == true,
                          );
                        },
                      ),
                    ),
                  );
                } else {
                  return FilledIconButton(
                    icon: Icon(ArreIconsV2.play_filled, size: 14.55),
                    onPressed: () {
                      PodPlayerV3.instance.init(
                          context: context,
                          gaContext: PlayerGAContext.playlist_tile_play_btn,
                          podSourceFuture: () =>
                              SynchronousFuture(getSource(ref)));
                    },
                    fillColor: Color(0xFF44494e),
                  );
                }
              },
            ),
            SizedBox(width: 14),
            Icon(
              ArreIconsV2.frontarrow_outline,
              size: 24,
              color: AColors.BgStroke,
            ),
            SizedBox(width: 4),
          ],
        ),
      ),
    );
  }
}

class CreateNewPlaylistTile extends StatelessWidget {
  const CreateNewPlaylistTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        ArreNavigator.instance.push(
          AAppPage(
            child: CreatePlaylistDialog(),
            fullscreenDialog: true,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AColors.BgStroke),
              ),
              width: 64,
              height: 64,
              child: Icon(ArreIconsV2.plus_outline),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create Playlist",
                    style: ATextStyles.sys14Bold(AColors.textLight),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Create a new playlist based on your liking!",
                    style: ATextStyles.sys12Regular(AColors.textDark),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlaylistLoadingTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AColors.BgLight),
            width: 64,
            height: 64,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(color: AColors.BgLight, height: 10, width: 64),
                SizedBox(height: 4),
                Container(color: AColors.BgLight, height: 10, width: 86),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
