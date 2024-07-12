import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

class DragIndicator extends StatelessWidget {
  final EdgeInsets padding;

  const DragIndicator({
    Key? key,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      margin: padding,
      width: 20,
      color: AColors.greyDark,
    );
  }
}
