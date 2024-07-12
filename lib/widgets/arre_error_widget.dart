import 'package:arre_frontend_flutter/graphql/graphql_exceptions.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/material.dart';

class ArreErrorWidget extends StatelessWidget {
  final dynamic error;
  final String? buttonText;
  final String? message;
  final void Function()? onPressed;
  final String imageAsset;
  final bool isEmptyError;

  const ArreErrorWidget({
    Key? key,
    required this.error,
    this.buttonText = "RETRY",
    this.onPressed,
  })  : imageAsset = ArreAssets.SEARCHING_WOMEN_DOG_IMG,
        isEmptyError = false,
        message = null,
        super(key: key);

  const ArreErrorWidget.empty({
    Key? key,
    required this.message,
    String? buttonText,
    this.onPressed,
  })  : error = message,
        buttonText = buttonText,
        isEmptyError = true,
        imageAsset = ArreAssets.EMPTY_BOX,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageAsset = this.imageAsset;
    if (error is ArreApiException &&
        (error as ArreApiException).statusCode ==
            ArreApiStatusCode.NO_INTERNET) {
      imageAsset = ArreAssets.WIFI_GHOST_IMG;
    }
    Widget child;
    if (error is ArreApiException &&
        (error as ArreApiException).errorCodeForClient == 'privateVoicepod') {
      child = _PrivateVoicepodErrorWidget(error);
    } else if (isEmptyError) {
      child = Padding(
        padding: const EdgeInsets.all(24),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(child: Image.asset(imageAsset)),
            Align(
              alignment: Alignment(0, 0.42),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message ?? Utils.getMessage4mError(error),
                    textAlign: TextAlign.center,
                  ),
                  if (onPressed != null && buttonText != null)
                    TextButton(
                      onPressed: onPressed,
                      child: Text(
                        buttonText!,
                        style: TextStyle(color: AColors.tealPrimary),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      child = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: Image.asset(imageAsset)),
          SizedBox(height: 24),
          Text(
            message ?? Utils.getMessage4mError(error),
            textAlign: TextAlign.center,
          ),
          if (onPressed != null && buttonText != null)
            TextButton(
              onPressed: onPressed,
              child: Text(
                buttonText!,
                style: TextStyle(color: AColors.tealPrimary),
              ),
            )
        ],
      );
    }

    if (Scrollable.maybeOf(context) != null) {
      switch (Scrollable.of(context).axisDirection) {
        case AxisDirection.up:
        case AxisDirection.down:
          child = SizedBox(
            height: 400,
            child: child,
          );
          break;
        case AxisDirection.right:
        case AxisDirection.left:
          child = SizedBox(
            width: 400,
            child: child,
          );
          break;
      }
    } else {
      return LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight.clamp(100, 400),
          width: constraints.maxWidth.clamp(100, 400),
          padding: EdgeInsets.all(16),
          // width: constraints.maxWidth,
          child: Center(child: child),
        );
      });
    }

    return child;
  }
}

class _PrivateVoicepodErrorWidget extends StatelessWidget {
  final dynamic error;

  const _PrivateVoicepodErrorWidget(this.error);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Image.asset(
            ArreAssets.PRIVATE_POD_ERROR_IMG,
            width: 177,
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            Utils.getMessage4mError(error),
            textAlign: TextAlign.center,
            style: ATextStyles.sys14Regular(AColors.textMedium),
          ),
        ),
        Container(
          width: 210,
          height: 38,
          margin: EdgeInsets.only(top: 24),
          child: FilledButton(
            onPressed: () =>
                Navigator.popUntil(context, ModalRoute.withName('/')),
            child: Text("Go to home"),
          ),
        )
      ],
    );
  }
}
