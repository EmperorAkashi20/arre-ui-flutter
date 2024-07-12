import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget with ArreScreen {
  final Uri? notFoundPath;

  const NotFoundScreen({Key? key, this.notFoundPath}) : super(key: key);

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.NOT_FOUND;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(ArreAssets.NOT_FOUND_404_IMG),
            if (notFoundPath != null)
              Text(
                notFoundPath!.toString(),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
