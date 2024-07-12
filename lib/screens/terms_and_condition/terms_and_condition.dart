import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../arre_routing/routing.dart';
import '../../utils/arre_assets.dart';

class TermsAndCondition extends StatefulWidget with ArreScreen {
  @override
  _TermsAndConditionState createState() => _TermsAndConditionState();

  @override
  Uri get uri => Uri.parse("/terms_and_conditions");

  @override
  String get screenName => GAScreen.TERMS_AND_CONDITIONS;

  static maybeParse(Uri uri) {
    if (uri.path == "/terms_and_conditions") {
      return AAppPage(child: TermsAndCondition());
    }
    return null;
  }
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text('Terms & Conditions'),
      ),
      body: SafeArea(
        bottom: true,
        top: true,
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
      ArreAssets.TERMS_CONDITION_DOC,
    );
    print("assetContent : $assetContent");
    if (assetContent != "")
      return assetContent;
    else
      return "Unable to load Terms and Conditions";
  }
}
