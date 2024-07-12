import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar({
  required Widget content,
  SnackBarAction? action,
}) {
  return Utils.scaffoldMessenger.showSnackBar(
    SnackBar(
      content: content,
      actionOverflowThreshold: 0.4,
      action: action,
    ),
  );
}

///Use it on bottom sheets or dialogs
ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? showSnackBarV2({
  required BuildContext context,
  required dynamic error,
}) {
  final message = Utils.getMessage4mError(error);
  if (ModalRoute.of(context) is PopupRoute ||
      ScaffoldMessenger.maybeOf(context) == null) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.white,
      textColor: AColors.BgDark,
    );
    return null;
  }
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      actionOverflowThreshold: 0.4,
    ),
  );
}

///Use it on bottom sheets or dialogs
ScaffoldFeatureController<SnackBar, SnackBarClosedReason>?
    showSnackBarMessageV2({
  required BuildContext context,
  required String message,
}) {
  if (ModalRoute.of(context) is PopupRoute ||
      ScaffoldMessenger.maybeOf(context) == null) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.white,
      textColor: AColors.BgDark,
    );
    return null;
  }
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      actionOverflowThreshold: 0.4,
    ),
  );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showInfoSnackBar(
  String message, {
  SnackBarAction? action,
}) {
  return showSnackBar(
    content: Text(message, maxLines: 4),
    action: action,
  );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
    showErrorMessageSnackBar(String message) {
  return showSnackBar(
    content: Row(
      children: [
        Icon(ArreIconsV2.caution_outline, color: AColors.red),
        SizedBox(width: 4),
        Expanded(child: Text(message, maxLines: 4)),
      ],
    ),
  );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? showErrorSnackBar(
    dynamic err) {
  if (err is ArreIgnoreException) return null;
  return showErrorMessageSnackBar(Utils.getMessage4mError(err));
}
