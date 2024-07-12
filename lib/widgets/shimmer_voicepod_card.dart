import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

class ShimmerVoicepodCard extends StatelessWidget {
  const ShimmerVoicepodCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        color: AColors.BgLight,
        elevation: 0,
      ),
    );
  }
}
