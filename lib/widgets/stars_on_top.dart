import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:flutter/material.dart';

class StarsOnTop extends StatelessWidget {
  final Widget child;

  const StarsOnTop({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset(
            ArreAssets.STAR_4_IMG,
            height: 14.54,
            width: 15,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            ArreAssets.STAR_4_IMG,
            height: 14.54,
            width: 15,
          ),
        ),
      ],
    );
  }
}
