import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart' as rive;

class AppLoadingScreen extends ConsumerStatefulWidget with ArreScreen {
  const AppLoadingScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _GratificationScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.GRATIFICATION;
}

class _GratificationScreenState extends ConsumerState<AppLoadingScreen> {
  // late Timer timer;
  // final maxAnimationTimeInSec = 4;

  @override
  void initState() {
    super.initState();
    // timer = Timer.periodic(Duration(seconds: 1), (_) {
    //   if (timer.tick >= maxAnimationTimeInSec) {
    //     ArreNavigator.instance.refresh();
    //     if (kDebugMode) {
    //       Navigator.of(context).pop();
    //     }
    //   }
    // });
  }

  @override
  void dispose() {
    // timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AColors.BgDark,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            heightFactor: 0.4,
            alignment: Alignment.topCenter,
            child: DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0B413C),
                    AColors.BgDark,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 56),
                  Image.asset(
                    ArreAssets.WELCOME_DECORATION_IMG,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    constraints: BoxConstraints(maxWidth: 280),
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(text: "Welcome to a family of\n100k+ Voices🥳"),
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        height: 49.18 / 36,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 310),
                        child: rive.RiveAnimation.asset(
                          ArreAssets.UNICORN_HORSE_ANIM,
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Loading...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        height: 20.49 / 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
