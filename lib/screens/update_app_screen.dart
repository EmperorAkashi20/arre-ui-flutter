import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/device_app_manager.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/widgets/arre_close_button.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:flutter/material.dart';

class UpdateAppScreen extends StatefulWidget with ArreScreen {
  const UpdateAppScreen({Key? key}) : super(key: key);

  @override
  State<UpdateAppScreen> createState() => _UpdateAppScreenState();

  @override
  Uri? get uri => Uri.parse("/update_app");

  @override
  String get screenName => GAScreen.UPDATE_APP;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/update_app") {
      return AGlobalPage(
        fullscreenDialog: true,
        child: UpdateAppScreen(),
      );
    }
    return null;
  }
}

class _UpdateAppScreenState extends State<UpdateAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          ACloseButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Update Required",
              style: ATextStyles.sys24Bold(),
            ),
            Column(
              children: [
                Image.asset(ArreAssets.FORCE_UPDATE_ROCKET),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Looks like you have an older version of the app. For new features and a better experience, kindly update your app.",
                  style: ATextStyles.user16Regular(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 44,
              width: 130,
              child: FilledFlatButton(
                onPressed: DeviceAppManager.instance.openStore,
                child: Text(
                  "Update Now",
                  style: ATextStyles.buttons(),
                ),
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
