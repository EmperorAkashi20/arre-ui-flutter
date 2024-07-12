import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';

class ACloseButton extends StatelessWidget {
  final double? iconSize, splashRadius;

  const ACloseButton({
    super.key,
    this.color = Colors.white,
    this.onPressed,
    this.iconSize,
    this.splashRadius,
  });

  final Color color;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    return IconButton(
      icon: const Icon(ArreIconsV2.cross_outline),
      color: color,
      iconSize: iconSize,
      splashRadius: splashRadius,
      tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        } else {
          Navigator.maybePop(context);
        }
      },
    );
  }
}
