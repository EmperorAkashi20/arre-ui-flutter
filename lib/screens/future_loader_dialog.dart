import 'dart:async';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

Future<T> showFutureLoaderDialog<T>(Future<T> future) async {
  final completer = Completer<T>();
  showDialog(
    context: ArreNavigator.instance.context,
    barrierDismissible: false,
    builder: (_) {
      return _FutureLoaderDialog(
        future: future,
        completer: completer,
      );
    },
  );
  return completer.future;
}

class _FutureLoaderDialog<T> extends StatefulWidget {
  final Future<T> future;
  final Completer<T> completer;

  const _FutureLoaderDialog({
    super.key,
    required this.future,
    required this.completer,
  });

  @override
  State<_FutureLoaderDialog> createState() => _FutureLoaderDialogState();
}

class _FutureLoaderDialogState extends State<_FutureLoaderDialog> {
  @override
  void initState() {
    super.initState();
    widget.future
        .then((value) => widget.completer.complete(value))
        .catchError((err, st) => widget.completer.completeError(err, st))
        .whenComplete(() {
      if (mounted) Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(child: CircularProgressIndicator(color: AColors.white)),
    );
  }
}
