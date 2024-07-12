import 'package:arre_frontend_flutter/models/src/language.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

class LanguageCard extends StatefulWidget {
  final Language language;
  final bool isSelected;
  final void Function() onTap;
  final EdgeInsets padding;
  final Size imageSize;

  const LanguageCard({
    required this.language,
    required this.isSelected,
    required this.onTap,
    this.padding = EdgeInsets.zero,
    required this.imageSize,
  });

  @override
  State<LanguageCard> createState() => _LanguageCardState();
}

class _LanguageCardState extends State<LanguageCard>
    with SingleTickerProviderStateMixin {
  late final animCtrl = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 160),
  );

  @override
  void initState() {
    super.initState();
    animCtrl.value = widget.isSelected ? 1.0 : 0.0;
  }

  @override
  void didUpdateWidget(covariant LanguageCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSelected) {
      animCtrl.forward();
    } else {
      animCtrl.reverse();
    }
  }

  @override
  void dispose() {
    animCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Material(
                color:
                    widget.isSelected ? AColors.tealPrimary : AColors.BgLight,
              ),
            ),
            Positioned(
              top: widget.padding.top / 1.6,
              right: widget.padding.right,
              height: 18,
              width: 18,
              child: Center(
                child: ScaleTransition(
                  scale: animCtrl,
                  child: Icon(Icons.check_circle, size: 18),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: widget.imageSize.height,
                width: widget.imageSize.width,
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  widget.language.assetName,
                  fit: BoxFit.contain,
                  color: widget.isSelected ? AColors.white : AColors.textDark,
                ),
              ),
            ),
            Positioned(
              top: widget.padding.top,
              left: widget.padding.left,
              child: Text(
                widget.language.displayName,
                style: TextStyle(
                  fontFamily: "Hind",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: widget.isSelected ? AColors.white : AColors.textDark,
                ),
              ),
            ),
            Positioned(
              bottom: widget.padding.bottom,
              left: widget.padding.left,
              child: Text(
                widget.language.firstLetter,
                style: TextStyle(
                  fontFamily: "Hind",
                  fontWeight: FontWeight.w500,
                  fontSize: 38,
                  height: 0.8,
                  color: widget.isSelected ? AColors.white : AColors.textDark,
                ),
              ),
            ),
            // if (!widget.isSelected)
            //   Positioned.fill(
            //     child: Material(color: Colors.black38),
            //   ),
          ],
        ),
      ),
    );
  }
}
