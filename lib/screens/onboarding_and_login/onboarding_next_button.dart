import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';

class OnboardingNextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonLabel;
  final bool enabled, showLoadingIndicator;

  const OnboardingNextButton({
    Key? key,
    this.onPressed,
    this.buttonLabel = "Next",
    required this.enabled,
    this.showLoadingIndicator = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          enabled ? AColors.orangePrimary : AColors.stateDisabled,
        ),
        padding: MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(12, 7, 8, 7),
        ),
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        fixedSize: MaterialStatePropertyAll(Size(96, 34)),
        textStyle: MaterialStatePropertyAll(ATextStyles.sys18Regular()),
      ),
      child: showLoadingIndicator
          ? ACommonLoader.dancingBars(size: 24)
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(buttonLabel),
                SizedBox(width: 5),
                Icon(
                  ArreIconsV2.arrow_outline,
                  size: 20,
                ),
              ],
            ),
    );
  }
}
