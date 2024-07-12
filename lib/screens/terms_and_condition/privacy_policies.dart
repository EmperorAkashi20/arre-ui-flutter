import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/arre_assets.dart';

class PrivacyPolicies extends StatefulWidget with ArreScreen {
  @override
  _PrivacyPoliciesState createState() => _PrivacyPoliciesState();

  @override
  Uri get uri => Uri.parse("/privacy_policy");

  @override
  String get screenName => GAScreen.PRIVACY_POLICY;

  static maybeParse(Uri uri) {
    if (uri.path == "/privacy_policy") {
      return AGlobalPage(child: PrivacyPolicies());
    }
    return null;
  }
}

class _PrivacyPoliciesState extends State<PrivacyPolicies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text('Privacy Policy'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<String>(
                future: readFilesFromAssets(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          snapshot.data!,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).hintColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    );
                  }
                  return Center(child: ACommonLoader());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> readFilesFromAssets() async {
    print("readFilesFromAssets");
    String assetContent = await rootBundle.loadString(
      ArreAssets.PRIVACY_POLICY_DOC,
    );
    print("assetContent : $assetContent");
    if (assetContent != "")
      return assetContent;
    else
      return "Unable to load Privacy Policy";
  }
}
