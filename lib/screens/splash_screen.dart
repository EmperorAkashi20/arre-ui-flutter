import 'dart:developer';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';

class SplashScreen extends ConsumerStatefulWidget with ArreScreen {
  final VoidCallback onAnimationComplete;
  final void Function(WidgetRef ref) preSetupCallback;

  SplashScreen({
    required this.onAnimationComplete,
    required this.preSetupCallback,
  });

  @override
  _SplashScreenState createState() => _SplashScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.SPLASH;
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late OneShotAnimation _controller;
  dynamic error;
  bool isRetrying = false;

  @override
  void initState() {
    super.initState();
    _controller = OneShotAnimation(
      "Splash Screen",
      autoplay: true,
      mix: 0,
      onStop: () async {
        // Navigator.of(context).pop();
        try {
          await ref.read(ensureAuthenticatedV2.future);
          ArreNavigator.instance.refresh();
        } catch (err) {
          setState(() {
            error = err;
          });
        }
      },
    );
    _controller.isActive = true;
    widget.preSetupCallback(ref);
    ref.read(ensureAuthenticatedV2);
  }

  Future<void> retryGuestLogin() async {
    try {
      setState(() {
        isRetrying = true;
      });
      await ref.read(ensureAuthenticatedV2.future);
      ArreNavigator.instance.refresh();
    } catch (err, st) {
      Utils.reportError(err, st);
      setState(() {
        error = err;
        isRetrying = false;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: RiveAnimation.asset(
                ArreAssets.SPLASH_SCREEN_ANIM,
                animations: ["Splash Screen"],
                controllers: [_controller],
                fit: BoxFit.fill,
                onInit: (artBoard) {
                  inspect(artBoard);
                },
              ),
            ),
          ),
          AnimatedSize(
            duration: Duration(milliseconds: 350),
            child: error == null
                ? SizedBox(width: MediaQuery.sizeOf(context).width)
                : Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Utils.getMessage4mError(error)),
                        SizedBox(height: 12),
                        SizedBox(
                          height: 56,
                          child: isRetrying
                              ? Center(child: CircularProgressIndicator())
                              : Center(
                                  child: CupertinoButton(
                                    child: Text("Retry"),
                                    onPressed: retryGuestLogin,
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
