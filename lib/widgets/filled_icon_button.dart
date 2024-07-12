import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

class FilledIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double size;
  final Widget icon;
  final Color fillColor;
  final Color? borderColor;
  final EdgeInsets padding;
  final double elevation;
  final Widget? label;

  const FilledIconButton({
    Key? key,
    this.size = 36,
    required this.icon,
    this.padding = const EdgeInsets.all(4),
    required this.onPressed,
    required this.fillColor,
    this.borderColor,
    this.elevation = 0,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child = Material(
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
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  borderColor != null ? Border.all(color: borderColor!) : null,
              boxShadow: kElevationToShadow[elevation],
              color: onPressed == null ? Color(0xFF8A8A8A) : fillColor,
            ),
            child: Center(
              child: IconTheme(
                  data: Theme.of(context).iconTheme.copyWith(
                        color: onPressed != null
                            ? Colors.white
                            : Color(0xFFafafaf),
                      ),
                  child: icon),
            ),
          ),
        ),
      ),
    );

    if (label != null) {
      child = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
          DefaultTextStyle(
            style: ATextStyles.sys12Regular(AColors.textMedium),
            child: label!,
          ),
        ],
      );
    }

    return child;
  }
}

class FilledFlatButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color backgroundColor, disabledColor;
  final double borderRadius;
  final BorderSide borderSide;

  const FilledFlatButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.backgroundColor = AColors.tealPrimary,
    this.disabledColor = AColors.stateDisabled,
    this.borderRadius = 5,
    this.borderSide = BorderSide.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
      style: ButtonStyle(
          minimumSize: MaterialStatePropertyAll(Size(74, 24)),
          backgroundColor: MaterialStatePropertyAll(
              onPressed != null ? backgroundColor : disabledColor),
          foregroundColor: MaterialStatePropertyAll(AColors.white),
          textStyle: MaterialStatePropertyAll(ATextStyles.sys12Regular()),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              side: borderSide,
              borderRadius: BorderRadius.circular(borderRadius)))),
    );
  }
}
