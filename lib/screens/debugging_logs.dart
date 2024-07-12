import 'dart:async';
import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:flutter/material.dart';

final debuggingLogs = [];

class DebuggingLogsScreen extends StatefulWidget with ArreScreen {
  const DebuggingLogsScreen({Key? key}) : super(key: key);

  @override
  State<DebuggingLogsScreen> createState() => _DebuggingLogsScreenState();

  @override
  Uri? get uri => Uri.parse("/debug");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/debug") {
      return AAppPage(child: DebuggingLogsScreen());
    }
    return null;
  }

  @override
  String get screenName => "debugging_screen";
}

class _DebuggingLogsScreenState extends State<DebuggingLogsScreen> {
  StreamSubscription<String>? _subscription;

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Debugging logs")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var log in debuggingLogs) ListTile(title: Text("$log"))
          ],
        ),
      ),
    );
  }
}
