import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/remote_config_manager.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

Future<void> showProfileVerifiedConfeti(GUserDetails userDetails) async {
  final messageData = await RemoteConfigManager.instance
      .getMap("profile_verified_confeti_message");
  final message = messageData?[userDetails.userType.configKey];
  arreAnalytics.logEvent(GAEvent.ACCOUNT_VERIFIED);
  await showDialog(
    context: ArreNavigator.instance.context,
    useRootNavigator: true,
    barrierColor: Colors.black.withOpacity(0.75),
    useSafeArea: false,
    builder: (_) => ProfileVerifiedAnimationScreen(
      message: message ??
          "Your Profile is complete! So start creating those amazing voicepods!",
    ),
  );
}

class ProfileVerifiedAnimationScreen extends StatefulWidget with ArreScreen {
  final String message;

  const ProfileVerifiedAnimationScreen({
    super.key,
    required this.message,
  });

  @override
  State<ProfileVerifiedAnimationScreen> createState() =>
      _ProfileVerifiedAnimationScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.PROFILE_VERIFIED_ANIMATION;
}

class _ProfileVerifiedAnimationScreenState
    extends State<ProfileVerifiedAnimationScreen>
    with TickerProviderStateMixin {
  late AnimationController wohooAnimation = AnimationController(vsync: this);

  late AnimationController descriptionAnimation =
      AnimationController(vsync: this);

  late final celebrateAnimCtrl = OneShotAnimation(
    "Wohoo Animation",
    mix: 1,
    autoplay: true,
    onStart: _animate,
  );

  void _animate() {
    wohooAnimation.value = 0.0;
    descriptionAnimation.value = 0.0;
    wohooAnimation
        .animateTo(
          1.0,
          duration: Duration(milliseconds: 1000),
          curve: Curves.bounceOut,
        )
        .whenComplete(
          () => descriptionAnimation.animateTo(
            1.0,
            duration: Duration(milliseconds: 500),
          ),
        );
  }

  @override
  void dispose() {
    wohooAnimation.dispose();
    descriptionAnimation.dispose();
    celebrateAnimCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: GestureDetector(
              behavior: HitTestBehavior.deferToChild,
              onTap: () {
                if (mounted) Navigator.of(context).pop();
              },
              child: RiveAnimation.asset(
                ArreAssets.CELEBRATION_ANIM,
                fit: BoxFit.cover,
                controllers: [celebrateAnimCtrl],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: wohooAnimation,
                alignment: Alignment.center,
                child: Text(
                  "Wohoo!",
                  style: TextStyle(
                    fontFamily: "Acumin Pro",
                    fontSize: 62,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                        color: AColors.orangePrimary,
                        offset: Offset(-3.62, -3.62),
                      ),
                    ],
                    decorationThickness: 0.5,
                    decorationColor: AColors.orangePrimary,
                  ),
                ),
              ),
              SizedBox(height: 12),
              FadeTransition(
                opacity: descriptionAnimation,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 56),
                  child: Text(
                    widget.message,
                    textAlign: TextAlign.center,
                    style: ATextStyles.sys16Bold(AColors.textMedium),
                  ),
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
          if (kDebugMode)
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  _animate();
                },
                icon: Icon(Icons.add),
              ),
            ),
        ],
      ),
    );
  }
}
