import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:flutter/material.dart';

import '../../arre_routing/routing.dart';

class RulesAndRegulations extends StatefulWidget with ArreScreen {
  @override
  _RulesAndRegulationsState createState() => _RulesAndRegulationsState();

  @override
  Uri get uri => Uri.parse("/rules_and_regulations");

  @override
  String get screenName => GAScreen.RULES_AND_REGULATIONS;

  static maybeParse(Uri uri) {
    if (uri.path == "/rules_and_regulations") {
      return AAppPage(child: RulesAndRegulations());
    }
    return null;
  }
}

class _RulesAndRegulationsState extends State<RulesAndRegulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AColors.BgDark,
      appBar: AppBar(
        leading: ABackButton(),
        title: Text('Rules and Regulations'),
      ),
      body: Center(
        child: Text(
          "Coming Soon...",
          style: TextStyle(
            color: AColors.textDark,
            fontSize: 20,
            fontFamily: "Acumin Pro",
          ),
        ),
      ),
    );
  }
}
