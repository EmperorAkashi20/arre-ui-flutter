// ignore_for_file: unused_field, unused_element

import 'dart:async';

import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:flutter/material.dart';

import '../../providers/audio_player/pod_player_v3.dart';

const _trackHeight = 5.0;
const _thumbRadius = 10.0;

class PlayerProgressColors {
  const PlayerProgressColors({
    this.playedColor = AColors.tealStroke,
    this.bufferedColor = AColors.greyLight,
    this.backgroundColor = const Color(0x4DA2E1D9),
    this.handleColor = AColors.tealPrimary,
  });

  final Color playedColor;
  final Color bufferedColor;
  final Color backgroundColor;
  final Color handleColor;
}

class PlayerProgressBar extends StatefulWidget {
  final double height, handleRadius;
  final double? initialValue;
  final EdgeInsets padding;
  final AudioPlayerPosition player;
  final bool enableScrub;

  static const Widget noProgress = _NoProgressBar();

  PlayerProgressBar({
    this.colors = const PlayerProgressColors(),
    this.height = _trackHeight,
    this.padding = const EdgeInsets.symmetric(vertical: 18),
    this.handleRadius = _thumbRadius,
    this.initialValue,
    required this.player,
    this.enableScrub = true,
  });

//  final VideoPlayerController controller;
  final PlayerProgressColors colors;

  @override
  _PlayerProgressBarState createState() => _PlayerProgressBarState();
}

class _NoProgressBar extends StatelessWidget {
  const _NoProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.fromHeight(_trackHeight),
      painter: _PlayerProgressBarPainter(
        animationValue: 0,
        playedValue: 0,
        colors: PlayerProgressColors(),
        strokeWidth: _trackHeight,
        handleRadius: null,
      ),
    );
  }
}

class _PlayerProgressBarState extends State<PlayerProgressBar>
    with SingleTickerProviderStateMixin {
  bool _controllerWasPlaying = false;
  double? playedValue;
  StreamSubscription? seekCompleteSub;

  // late AnimationController _controller;

  // bool get isLoading =>
  //     widget.player?.isPlayerInitialized != true && widget.initialValue == null;

  @override
  void initState() {
    super.initState();
    // seekCompleteSub = widget.player.onSeekComplete.listen((event) {
    //   setState(() {
    //     playedValue = null;
    //   });
    // });
  }

  void refresh() {
    setState(() {});
  }

  @override
  void dispose() {
    seekCompleteSub?.cancel();
    super.dispose();
  }

  void seekToRelativePosition(Offset globalPosition, Duration duration) async {
    final box = context.findRenderObject() as RenderBox;
    final Offset tapPos = box.globalToLocal(globalPosition);
    final double relative = tapPos.dx.clamp(0, box.size.width) / box.size.width;
    final Duration position = widget.player.duration! * relative;
    setState(() {
      playedValue = position.inMilliseconds / duration.inMilliseconds;
    });
  }

  Widget _buildIndicator({
    required BuildContext context,
    required double animationValue,
    required double? playedValue,
    // required double? bufferedValue,
  }) {
    // print("Building indicator with "
    //     "\nanimationValue: $animationValue"
    //     "\nplayedValue: $playedValue"
    //     "\nbufferedValue: $bufferedValue");
    return Container(
      padding: widget.padding,
      alignment: Alignment.center,
      constraints: BoxConstraints(minWidth: double.infinity),
      child: CustomPaint(
        size: Size.fromHeight(widget.height),
        painter: _PlayerProgressBarPainter(
          animationValue: animationValue,
          // bufferedValue: bufferedValue,
          playedValue: playedValue,
          colors: widget.colors,
          strokeWidth: widget.height,
          handleRadius: widget.enableScrub ? widget.handleRadius : null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // if (isLoading) {
    //   return AnimatedBuilder(
    //     animation: _controller.view,
    //     builder: (BuildContext context, Widget? child) {
    //       return _buildIndicator(
    //         context: context,
    //         animationValue: _controller.value,
    //         bufferedValue: 0,
    // playedValue: null,
    // );
    // },
    // );
    // } else
    if (widget.initialValue != null) {
      return _buildIndicator(
        context: context,
        animationValue: 0,
        // bufferedValue: null,
        playedValue: widget.initialValue,
      );
    }
    return StreamBuilder<PlayerValue>(
      stream: widget.player.playerValueStream,
      initialData: PlayerValue.zero,
      builder: (context, playerValue) {
        Widget child = _buildIndicator(
          context: context,
          animationValue: 0,
          // bufferedValue: playerValue.data!.bufferedValue,
          playedValue: playedValue ?? playerValue.data?.playedValue ?? 0.0,
        );

        if (widget.enableScrub && widget.player.duration != null) {
          child = GestureDetector(
            behavior: HitTestBehavior.translucent,
            child: child,
            onHorizontalDragStart: (DragStartDetails details) {
              _controllerWasPlaying = widget.player.isPlaying;
              widget.player.pause(PlayerGAContext.ignore);
            },
            onHorizontalDragUpdate: (DragUpdateDetails details) {
              seekToRelativePosition(
                details.globalPosition,
                playerValue.data?.duration ?? Duration.zero,
              );
            },
            onHorizontalDragEnd: (DragEndDetails details) async {
              if (playedValue != null && playerValue.hasData) {
                await widget.player
                    .seek(playerValue.data!.duration * playedValue!);
              }
              setState(() {
                playedValue = null;
              });
              if (_controllerWasPlaying) {
                widget.player.play(PlayerGAContext.ignore);
              }
            },
            onTapDown: (TapDownDetails details) async {
              seekToRelativePosition(
                details.globalPosition,
                playerValue.data?.duration ?? Duration.zero,
              );
              if (playedValue != null && playerValue.hasData) {
                await widget.player
                    .seek(playerValue.data!.duration * playedValue!);
              }
              setState(() {
                playedValue = null;
              });
            },
          );
        }
        return child;
      },
    );
  }
}

const int _kIndeterminateLinearDuration = 1800;

class _PlayerProgressBarPainter extends CustomPainter {
  _PlayerProgressBarPainter({
    required this.colors,
    required this.handleRadius,
    this.strokeWidth = 12,
    // this.bufferedValue,
    required this.playedValue,
    required this.animationValue,
  });

  final PlayerProgressColors colors;
  final double? handleRadius;
  final double strokeWidth;

  // final double? bufferedValue;
  final double animationValue;
  final double? playedValue;

  // The indeterminate progress animation displays two lines whose leading (head)
  // and trailing (tail) endpoints are defined by the following four curves.
  static const Curve line1Head = Interval(
    0.0,
    750.0 / _kIndeterminateLinearDuration,
    curve: Cubic(0.2, 0.0, 0.8, 1.0),
  );
  static const Curve line1Tail = Interval(
    333.0 / _kIndeterminateLinearDuration,
    (333.0 + 750.0) / _kIndeterminateLinearDuration,
    curve: Cubic(0.4, 0.0, 1.0, 1.0),
  );
  static const Curve line2Head = Interval(
    1000.0 / _kIndeterminateLinearDuration,
    (1000.0 + 567.0) / _kIndeterminateLinearDuration,
    curve: Cubic(0.0, 0.0, 0.65, 1.0),
  );
  static const Curve line2Tail = Interval(
    1267.0 / _kIndeterminateLinearDuration,
    (1267.0 + 533.0) / _kIndeterminateLinearDuration,
    curve: Cubic(0.10, 0.0, 0.45, 1.0),
  );

  @override
  bool shouldRepaint(_PlayerProgressBarPainter oldPainter) {
    return oldPainter.playedValue != playedValue ||
        // oldPainter.bufferedValue != bufferedValue ||
        oldPainter.colors != colors ||
        oldPainter.animationValue != animationValue ||
        oldPainter.handleRadius != handleRadius ||
        oldPainter.strokeWidth != strokeWidth;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final y = strokeWidth / 2;
    Paint paint = Paint()
      ..color = colors.backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    // canvas.drawRect(Offset.zero & size, paint);

    void drawBar(double x, double width) {
      if (width <= 0.0) {
        return;
      }
      canvas.drawLine(Offset(x, y), Offset(width + x, y), paint);
    }

    // //BUFFERED
    // if (bufferedValue != null && bufferedValue! > 0) {
    //   paint.color = colors.bufferedColor;
    //   canvas.drawLine(Offset(0, y),
    //       Offset(bufferedValue!.clamp(0.0, 1.0) * size.width, y), paint);
    // }
    if (playedValue != null && playedValue! > 0) {
      //PLAYED
      paint.color = colors.playedColor;
      canvas.drawLine(
          Offset(0, y), Offset(playedValue! * size.width, y), paint);
    } else {
      // paint.color = colors.playedColor;
      // final double x1 = size.width * line1Tail.transform(animationValue);
      // final double width1 =
      //     size.width * line1Head.transform(animationValue) - x1;
      //
      // final double x2 = size.width * line2Tail.transform(animationValue);
      // final double width2 =
      //     size.width * line2Head.transform(animationValue) - x2;
      //
      // drawBar(x1, width1);
      // drawBar(x2, width2);
    }

    // //HANDLE BAR
    if (handleRadius != null && playedValue != null) {
      paint = Paint()..color = colors.handleColor;
      canvas.drawCircle(
        Offset(playedValue! * size.width, size.height - y),
        handleRadius!,
        paint,
      );
    }
  }
}
