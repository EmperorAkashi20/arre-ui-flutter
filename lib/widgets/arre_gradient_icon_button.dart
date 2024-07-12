import 'package:flutter/material.dart';

class ArreGradientIconButton extends StatelessWidget {
  final double size;
  final Widget icon;
  final EdgeInsets padding;
  final VoidCallback? onPressed;

  const ArreGradientIconButton({
    Key? key,
    this.size = 36,
    required this.icon,
    this.padding = const EdgeInsets.all(4),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkResponse(
        onTap: onPressed,
        highlightShape: BoxShape.circle,
        radius: size / 2,
        child: Padding(
          padding: padding,
          child: Ink(
            height: size,
            width: size,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFA553),
                  Color(0xFFEE8C34),
                  Color(0xFFEA5434)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(child: icon),
          ),
        ),
      ),
    );
  }
}

class ArreAnimatedGradientIconButton extends StatefulWidget {
  final double size;
  final Widget icon;
  final EdgeInsets padding;
  final VoidCallback? onPressed;
  final Animation<double>? playBtnScaleAnim;

  const ArreAnimatedGradientIconButton({
    Key? key,
    this.size = 36,
    required this.icon,
    this.padding = const EdgeInsets.all(4),
    required this.onPressed,
    this.playBtnScaleAnim,
  }) : super(key: key);

  @override
  State<ArreAnimatedGradientIconButton> createState() =>
      _ArreAnimatedGradientIconButtonState();
}

class _ArreAnimatedGradientIconButtonState
    extends State<ArreAnimatedGradientIconButton> {
  // late final scaleAnimCtrl = AnimationController(
  //   vsync: this,
  //   lowerBound: 0.9,
  //   upperBound: 1.0,
  //   duration: Duration(milliseconds: 600),
  // );
  List<Color> colorList = [
    Color(0xFFFFA553),
    Color(0xFFEE8C34),
    Color(0xFFEA5434)
  ];
  Color bottomColor = Color(0xFFFFA553);
  Color topColor = Color(0xFFEA5434);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child = Material(
      type: MaterialType.transparency,
      child: InkResponse(
        onTap: widget.onPressed,
        highlightShape: BoxShape.circle,
        radius: widget.size / 2,
        child: Padding(
          padding: widget.padding,
          child: Ink(
            height: widget.size,
            width: widget.size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFA553),
                  Color(0xFFEE8C34),
                  Color(0xFFEA5434)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(child: widget.icon),
          ),
        ),
      ),
    );

    if (widget.playBtnScaleAnim != null) {
      child = ScaleTransition(
        scale: widget.playBtnScaleAnim!,
        child: child,
      );
    }
    return child;
  }
}
