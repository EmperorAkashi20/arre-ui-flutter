import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kMoodChipsHeight = 46.0;

class MoodChip extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String imageUrl;
  final VoidCallback onPressed;

  const MoodChip({
    super.key,
    required this.isSelected,
    required this.title,
    required this.imageUrl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Color borderColor, fillColor, textColor;
    if (isSelected) {
      borderColor = AColors.tealPrimary;
      fillColor = AColors.tealPrimary;
      textColor = Colors.white;
    } else {
      borderColor = AColors.textDark;
      fillColor = Colors.transparent;
      textColor = AColors.textLight;
    }
    return CupertinoButton(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      minSize: kMoodChipsHeight - 16,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              imageUrl,
              height: 20,
              width: 20,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 4),
            Text(
              title,
              style: ATextStyles.sys14Regular(textColor),
            ),
            SizedBox(width: 4),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
