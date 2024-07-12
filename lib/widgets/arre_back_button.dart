import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';

class ABackButton extends StatelessWidget {
  const ABackButton({super.key, this.color, this.onPressed});

  final Color? color;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    return IconButton(
      icon: Icon(
        ArreIconsV2.backarrow_outline,
        color: Colors.white,
        // size: 16,
      ),
      color: color,
      tooltip: MaterialLocalizations.of(context).backButtonTooltip,
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
