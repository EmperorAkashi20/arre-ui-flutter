import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/user_profile_provider.dart';
import 'package:arre_frontend_flutter/providers/user_voicepods_provider.dart';
import 'package:arre_frontend_flutter/screens/analytics/about_analytics_sheet.dart';
import 'package:arre_frontend_flutter/screens/analytics/profile_analytics.dart';
import 'package:arre_frontend_flutter/screens/creator_studio/creator_studio.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnalyticsScreen extends ConsumerStatefulWidget with ArreScreen {
  const AnalyticsScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _AnalyticsScreenState();

  @override
  Uri? get uri => Uri.parse("/analytics");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/analytics") {
      return AAppPage(child: AnalyticsScreen());
    }
    return null;
  }

  @override
  String get screenName => GAScreen.ANALYTICS;
}

class _AnalyticsScreenState extends ConsumerState<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentUserId = ref.watch(currentUserProvider).userId;
    final userDetailsPvd = ref.watch(userProfileProvider(currentUserId!));
    final userVoicepodsPvd = ref.watch(userVoicepodsProvider(currentUserId));

    Widget child;

    if (userDetailsPvd.hasError || userVoicepodsPvd.hasError) {
      return Scaffold(
          body: Center(
              child: ArreErrorWidget(
                  error: userDetailsPvd.error ?? userVoicepodsPvd.error)));
    }

    if (userDetailsPvd.isLoading || userVoicepodsPvd.isLoading) {
      return Scaffold(body: Center(child: ACommonLoader()));
    }

    if (userVoicepodsPvd.data!.isEmpty) {
      child = buildEmptyProfileWidget(
        message:
            "Pretty empty out here!\nNo analytics yet as you haven’t posted\nany public voicepods.",
        buttonText: "Create Voicepod",
        onPressed: () => openCreatorStudio(context),
      );
    } else {
      child = ProfileAnalytics();
    }

    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        backgroundColor: AColors.BgLight,
        title: Text("Analytics"),
        actions: [
          IconButton(
              onPressed: () => showAboutAnalyticsSheet(context),
              icon: Icon(ArreIconsV2.info_outline))
        ],
      ),
      body: child,
    );
  }

  Widget buildEmptyProfileWidget(
      {required String message,
      required String buttonText,
      required VoidCallback onPressed}) {
    return Column(
      children: [
        SizedBox(height: 30),
        Image.asset(ArreAssets.SEARCHING_WOMEN_DOG_IMG),
        Text(
          message,
          style: ATextStyles.sys14Regular(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        FilledFlatButton(
          onPressed: onPressed,
          borderRadius: 10,
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            alignment: Alignment.center,
            child: Text(
              buttonText,
              style: ATextStyles.sys14Bold(),
            ),
          ),
        ),
      ],
    );
  }
}
