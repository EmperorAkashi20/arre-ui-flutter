import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

import '../../utils/Firebase Analytics/firebase_analytics_service.dart';

class AudioPlayerButtonState extends StatelessWidget {
  final AudioPlayerState player;
  final double size;
  final EdgeInsets padding;
  final BoxDecoration? decoration;
  final PlayerGAContext gaContext;
  final bool showLoading;
  final bool animatePlaying;
  final double iconSize;
  final VoidCallback? initCallback;

  // final VoidCallback retryCallback;

  final Color? fillColor;
  final Color iconColor;

  const AudioPlayerButtonState({
    Key? key,
    required this.player,
    this.fillColor,
    this.size = 44,
    this.padding = const EdgeInsets.all(4),
    required this.gaContext,
    this.showLoading = false,
    this.animatePlaying = false,
    this.iconSize = 14,
    this.iconColor = Colors.white,
    this.initCallback,
  })  : decoration = null,
        super(key: key);

  const AudioPlayerButtonState.gradient({
    Key? key,
    required this.player,
    this.size = 44,
    this.padding = const EdgeInsets.all(4),
    required this.gaContext,
    this.showLoading = false,
    this.animatePlaying = false,
    this.iconSize = 14,
    this.iconColor = Colors.white,
    this.initCallback,
  })  : decoration = const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xFFFFA553), Color(0xFFEE8C34), Color(0xFFEA5434)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        fillColor = null,
        super(key: key);

  // const _IdlePlayButton({
  //   required this.isIdle,
  //   super.key,
  //   required super.size,
  //   required super.padding,
  //   required super.iconSize,
  //   super.initCallback,
  //   super.fillColor,
  //   required super.iconColor,
  //   super.animatePlaying,
  //   required super.gaContext,
  //   required super.player,
  //   super.showLoading,
  // });

  factory AudioPlayerButtonState.dynamic({
    required bool isIdle,
    Key? key,
    double size = 44,
    required AudioPlayerState player,
    EdgeInsets padding = const EdgeInsets.all(4),
    required PlayerGAContext gaContext,
    bool showLoading = false,
    bool animatePlaying = false,
    double iconSize = 14,
    Color iconColor = Colors.white,
    VoidCallback? initCallback,
    Color? fillColor,
  }) {
    return _IdlePlayButton(
      isIdle: isIdle,
      player: player,
      gaContext: gaContext,
      size: size,
      padding: padding,
      iconSize: iconSize,
      iconColor: iconColor,
      fillColor: fillColor,
      animatePlaying: animatePlaying,
      initCallback: initCallback,
      showLoading: showLoading,
      key: key,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: player.playingValueStream,
      builder: (context, playerState) {
        Widget child;
        Widget icon;
        if (player.isPlaying) {
          icon = Icon(
            ArreIconsV2.pause_filled,
            size: iconSize,
            color: iconColor,
          );
        } else {
          icon = Icon(
            ArreIconsV2.play_filled,
            size: iconSize,
            color: iconColor,
          );
        }

        child = Material(
          type: MaterialType.transparency,
          child: InkResponse(
            onTap: () {
              if (player.isPlaying) {
                player.pause(gaContext);
              } else {
                if (!player.isInitialized) {
                  initCallback?.call();
                } else {
                  player.play(gaContext);
                }
              }
            },
            highlightShape: BoxShape.circle,
            radius: size / 2,
            child: Padding(
              padding: padding,
              child: Ink(
                height: size,
                width: size,
                decoration: decoration ??
                    BoxDecoration(
                      shape: BoxShape.circle,
                      color: fillColor ??
                          Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0.5),
                    ),
                child: Center(child: icon),
              ),
            ),
          ),
        );

        child = Stack(
          alignment: Alignment.center,
          children: [
            if (animatePlaying && player.isPlaying)
              SizedBox.square(
                dimension: size,
                child: OverflowBox(
                  minHeight: size * 1.5,
                  maxHeight: size * 1.5,
                  minWidth: size * 1.5,
                  maxWidth: size * 1.5,
                  child: rive.RiveAnimation.asset(
                    ArreAssets.ANIMATION_PLAY_BG,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            child,
            ValueListenableBuilder(
              valueListenable: player.playLoadingNotifier,
              builder: (context, isLoading, _) {
                if (isLoading)
                  return IgnorePointer(
                    child: SizedBox.square(
                      dimension: size,
                      child: CircularProgressIndicator(
                        strokeWidth: 1,
                        color: Colors.white,
                      ),
                    ),
                  );
                return const SizedBox();
              },
            )
          ],
        );
        return child;
      },
    );
  }
}

class _IdlePlayButton extends AudioPlayerButtonState {
  final bool isIdle;

  const _IdlePlayButton({
    required this.isIdle,
    super.key,
    required super.size,
    required super.padding,
    required super.iconSize,
    super.initCallback,
    super.fillColor,
    required super.iconColor,
    super.animatePlaying,
    required super.gaContext,
    required super.player,
    super.showLoading,
  });

  @override
  Widget build(BuildContext context) {
    if (!isIdle) {
      return super.build(context);
    }
    Widget child;
    Widget icon = Icon(
      ArreIconsV2.play_filled,
      size: iconSize,
      color: iconColor,
    );

    child = Material(
      type: MaterialType.transparency,
      child: InkResponse(
        onTap: initCallback,
        highlightShape: BoxShape.circle,
        radius: size / 2,
        child: Padding(
          padding: padding,
          child: Ink(
            height: size,
            width: size,
            decoration: decoration ??
                BoxDecoration(
                  shape: BoxShape.circle,
                  color: fillColor ??
                      Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.5),
                ),
            child: Center(child: icon),
          ),
        ),
      ),
    );

    return child;
  }
}
