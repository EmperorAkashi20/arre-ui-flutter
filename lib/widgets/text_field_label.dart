import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

class TextFieldLabel extends StatelessWidget {
  final Widget child;
  final Widget label;
  final double gap;

  const TextFieldLabel({
    super.key,
    required this.child,
    required this.label,
    this.gap = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextStyle(
          style: ATextStyles.sys12Bold(AColors.textDark),
          child: label,
        ),
        SizedBox(height: gap),
        child
      ],
    );
  }
}
