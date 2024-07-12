import 'dart:async';

import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

import '../utils/arre_assets.dart';
import 'arre_icons.dart';

void showArreSnackBar(
  BuildContext context, {
  required Widget title,
}) {
  OverlayEntry? entry;
  entry = OverlayEntry(
      builder: (context) {
        return ArreSnackBar(
          title: title,
          removeCallback: entry!.remove,
        );
      },
      maintainState: true,
      opaque: false);

  Overlay.of(context).insert(entry);
}

//Can be made common going forward
class ArreSnackBar extends StatefulWidget {
  final VoidCallback removeCallback;
  final Widget title;

  const ArreSnackBar({
    super.key,
    required this.removeCallback,
    required this.title,
  });

  @override
  State<ArreSnackBar> createState() => _ArreSnackBarState();
}

class _ArreSnackBarState extends State<ArreSnackBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 400),
  );

  @override
  void initState() {
    super.initState();
    controller.animateTo(1.0, curve: Curves.easeOut).whenCompleteOrCancel(() {
      Timer(Duration(seconds: 2), () {
        controller
            .animateBack(0.0, curve: Curves.easeIn)
            .whenCompleteOrCancel(() => widget.removeCallback());
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, 0.7),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Card(
            elevation: 8,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 7.5),
            color: AColors.BgLight,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: AColors.BgStroke)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: ClipRect(
                child: AnimatedBuilder(
                  animation: controller,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(ArreIconsV2.magic_wand_outline),
                      SizedBox(width: 6),
                      Flexible(
                        child: DefaultTextStyle(
                          style: ATextStyles.sys14Bold(),
                          child: widget.title,
                        ),
                      ),
                    ],
                  ),
                  builder: (context, child) {
                    return Align(
                      alignment: Alignment.centerLeft,
                      widthFactor: controller.value,
                      heightFactor: 1,
                      child: child,
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 36,
            child: Image.asset(
              ArreAssets.STAR_4_IMG,
              height: 14.54,
              width: 15,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 36,
            child: Image.asset(
              ArreAssets.STAR_4_IMG,
              height: 14.54,
              width: 15,
            ),
          ),
        ],
      ),
    );
  }
}
