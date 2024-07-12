import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

import 'filled_icon_button.dart';

class ConfirmationSheet extends StatelessWidget {
  final String title, primaryBtnLabel, secondaryBtnLabel, description;
  final Axis actionsDirection;
  final Color primaryBtnColor;

  const ConfirmationSheet({
    Key? key,
    required this.title,
    this.primaryBtnColor = AColors.tealPrimary,
    required this.description,
    required this.primaryBtnLabel,
    required this.secondaryBtnLabel,
    this.actionsDirection = Axis.vertical,
  }) : super(key: key);

  factory ConfirmationSheet.image({
    Key? key,
    required Widget assetImage,
    required String title,
    Color primaryBtnColor,
    required String description,
    required String primaryBtnLabel,
    required String secondaryBtnLabel,
    Axis actionsDirection,
  }) = _ConfirmationSheetWithImage;

  @override
  Widget build(BuildContext context) {
    final primaryAction = FilledFlatButton(
      onPressed: () => Navigator.of(context).pop(true),
      backgroundColor: primaryBtnColor,
      child: Text(
        primaryBtnLabel,
        style: ATextStyles.buttons(),
      ),
    );

    final secondaryAction = TextButton(
      style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(AColors.tealLight)),
      onPressed: () => Navigator.of(context).pop(false),
      child: Text(
        secondaryBtnLabel,
        style: ATextStyles.buttons(),
      ),
    );
    return SafeArea(
      minimum: EdgeInsets.only(bottom: 24),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AColors.greyLight,
                  fontSize: 20,
                  fontFamily: "Acumin Pro",
                  height: 24 / 20),
            ),
            SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: ATextStyles.sys14Regular(AColors.greyLight),
            ),
            SizedBox(height: 16),
            if (actionsDirection == Axis.vertical) ...[
              primaryAction,
              Center(child: secondaryAction),
            ] else
              Row(
                children: [
                  Expanded(child: primaryAction),
                  SizedBox(height: 4),
                  Expanded(child: secondaryAction),
                ],
              )
          ],
        ),
      ),
    );
  }
}

class _ConfirmationSheetWithImage extends ConfirmationSheet {
  final Widget assetImage;

  _ConfirmationSheetWithImage({
    required this.assetImage,
    super.key,
    required super.title,
    required super.description,
    required super.primaryBtnLabel,
    required super.secondaryBtnLabel,
    super.primaryBtnColor = AColors.tealPrimary,
    super.actionsDirection = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    final primaryAction = FilledFlatButton(
      onPressed: () => Navigator.of(context).pop(true),
      backgroundColor: primaryBtnColor,
      child: Text(
        primaryBtnLabel,
        style: ATextStyles.buttons(),
      ),
    );

    final secondaryAction = TextButton(
      style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(AColors.tealLight)),
      onPressed: () => Navigator.of(context).pop(false),
      child: Text(
        secondaryBtnLabel,
        style: ATextStyles.buttons(),
      ),
    );
    return SafeArea(
      minimum: EdgeInsets.only(bottom: 24),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AColors.greyLight,
                  fontSize: 20,
                  fontFamily: "Acumin Pro",
                  height: 24 / 20),
            ),
            SizedBox(height: 10),
            assetImage,
            SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: ATextStyles.sys14Regular(AColors.greyLight),
            ),
            SizedBox(height: 16),
            if (actionsDirection == Axis.vertical) ...[
              primaryAction,
              Center(child: secondaryAction),
            ] else
              Row(
                children: [
                  Expanded(child: primaryAction),
                  SizedBox(height: 4),
                  Expanded(child: secondaryAction),
                ],
              )
          ],
        ),
      ),
    );
  }
}
