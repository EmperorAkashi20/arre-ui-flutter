import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

class ShimmerHighlighter extends StatefulWidget {
  final Widget child;

  ///If there's any change in the value. The [child] will be highlighted
  final dynamic value;

  const ShimmerHighlighter({
    super.key,
    required this.child,
    required this.value,
  });

  @override
  State<ShimmerHighlighter> createState() => _ShimmerHighlighterState();
}

class _ShimmerHighlighterState extends State<ShimmerHighlighter>
    with SingleTickerProviderStateMixin {
  late final _shimmerController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 1000));

  LinearGradient get _shimmerGradient => LinearGradient(
        colors: [
          Colors.transparent,
          AColors.orangePrimary.withOpacity(0.2),
          Colors.transparent,
        ],
        stops: [
          0,
          0.5,
          1,
        ],
        begin: Alignment(-1.0, 0),
        end: Alignment(1.0, 0),
        tileMode: TileMode.clamp,
        transform: _SlidingGradientTransform(
            slidePercent:
                Tween(begin: -1.0, end: 1.0).animate(_shimmerController).value),
      );

  @override
  void initState() {
    super.initState();
    _shimmerController.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(covariant ShimmerHighlighter oldWidget) {
    if (widget.value != oldWidget.value && widget.value != null) {
      _shimmerController.forward(from: 0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return _shimmerGradient.createShader(bounds);
      },
      child: widget.child,
    );
  }
}

class _SlidingGradientTransform extends GradientTransform {
  const _SlidingGradientTransform({
    required this.slidePercent,
  });

  final double slidePercent;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
  }
}
