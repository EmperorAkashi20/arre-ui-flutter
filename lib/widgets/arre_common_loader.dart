import 'dart:developer';

import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ACommonLoader extends StatelessWidget {
  final Color? color;
  final bool animate;
  final double? size;

  ACommonLoader._({
    this.color = Colors.white,
    this.size,
    this.animate = true,
  });

  ACommonLoader({
    this.color = Colors.white,
    this.size,
  }) : animate = true;

  factory ACommonLoader.dancingBars({required double? size, bool animate}) =
      _LoadingBars;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: CircularProgressIndicator(color: color),
    );
  }
}

class _LoadingBars extends ACommonLoader {
  _LoadingBars({
    required double? size,
    bool animate = true,
  }) : super._(size: size, animate: animate);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: RiveAnimation.asset(
        ArreAssets.LOADING_RIV_ANIM,
        animations: animate ? ["Dancing Bars"] : [],
        //Improve use rive animation controller to animate
        fit: BoxFit.contain,
        onInit: (artBoard) {
          inspect(artBoard);
        },
      ),
    );
  }
}

class AShimmerLoading extends StatelessWidget {
  final double? aspectRatio;
  final double? height, width;
  final BorderRadius? borderRadius;

  const AShimmerLoading({
    super.key,
    this.aspectRatio,
    this.height,
    this.width,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AColors.LoadingColor,
        borderRadius: borderRadius,
      ),
    );
    if (aspectRatio != null) {
      child = AspectRatio(aspectRatio: aspectRatio!, child: child);
    }

    return child;
  }
}
