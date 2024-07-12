import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

Future<void> showProfileReviewPendingAnim() async {
  await showDialog(
    context: ArreNavigator.instance.context,
    useRootNavigator: true,
    barrierColor: Colors.black.withOpacity(0.75),
    useSafeArea: false,
    builder: (_) => ProfileReviewPendingAnimationScreen(),
  );
}

class ProfileReviewPendingAnimationScreen extends StatefulWidget
    with ArreScreen {
  const ProfileReviewPendingAnimationScreen({
    super.key,
  });

  @override
  State<ProfileReviewPendingAnimationScreen> createState() =>
      _ProfileReviewPendingAnimationScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.PROFILE_VERIFIED_ANIMATION;
}

class _ProfileReviewPendingAnimationScreenState
    extends State<ProfileReviewPendingAnimationScreen> {
  @override
  void initState() {
    super.initState();
    arreAnalytics.logEvent(GAEvent.PROFILE_IN_REVIEW_ANIM_PAGE);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 136,
                child: RiveAnimation.asset(
                  ArreAssets.VERIFICATION_IN_PROGRESS_ANIM,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Text(
                "You did it!",
                style: TextStyle(
                  fontFamily: "Acumin Pro",
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: AColors.orangePrimary,
                      offset: Offset(-2.24, -0.24),
                    ),
                  ],
                  decorationThickness: 0.5,
                  decorationColor: AColors.orangePrimary,
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 56),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Our"),
                      TextSpan(
                          text: " women moderators ",
                          style: TextStyle(color: AColors.tealPrimary)),
                      TextSpan(
                          text:
                              "are now giving your profile a short check. We will get back to you in 24-48 hours. Till then, nothing should stop you from exploring some amazing voices here!"),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  style: ATextStyles.sys16Bold(AColors.textMedium),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: CloseButton(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
