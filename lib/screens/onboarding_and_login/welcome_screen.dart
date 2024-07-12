import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/arre_link_manager.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/verify_otp_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/src/arre_exceptions.dart';
import 'login_screen.dart';
import 'username_create_screen.dart';

class WelcomeScreen extends ConsumerStatefulWidget with ArreScreen {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.WELCOME;

  static maybeParse(Uri uri) {
    if (uri.path == "/welcome_screen") {
      return AGlobalPage(child: WelcomeScreen());
    }
    return null;
  }
}

class _WelcomeScreenState extends ConsumerState<WelcomeScreen> {
  bool isLoggingIn = false;

  @override
  void initState() {
    super.initState();
    ArreLinkManager.instance.initSingular();
  }

  Future<void> onboardUser() async {
    final isOnboarded = arrePref.getBool(PrefKey.IS_ONBOARDING_COMPLETE);
    //Handle username & gender entry
    if (isOnboarded != true) {
      final isOnboardingComplete = await ArreNavigator.instance
          .push(AGlobalPage(child: UsernameCreateScreen()));
      if (isOnboardingComplete != true) {
        throw ArreException("Could not create account, please try again");
      }
    }
  }

  Future<void> continueWithPreviousCredentials() async {
    try {
      setState(() {
        isLoggingIn = true;
      });
      final username = arrePref.userName;
      if (username.isValid) {
        ref.read(loginProvider).userIdentifierTextEditCtrl.text = username!;
        await ref.read(loginProvider).sendOtp();
        final response = await ArreNavigator.instance
            .push(AGlobalPage(child: VerifyOtpScreen()));
        if (response is! GVerifyOtpResponse) {
          return;
        }
        await onboardUser();
      } else {
        await ref.read(ensureAuthenticated.future);
      }
    } catch (err) {
      showErrorSnackBar(err);
    } finally {
      setState(() {
        isLoggingIn = false;
      });
      ArreNavigator.instance.refresh();
    }
  }

  Future<void> continueWithAnotherAccount() async {
    try {
      final response =
          await ArreNavigator.instance.push(AGlobalPage(child: LoginScreen()));
      if (response is! GVerifyOtpResponse) {
        return;
      }
      await onboardUser();
    } catch (err) {
      showErrorSnackBar(err);
    } finally {
      ArreNavigator.instance.refresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(loginProvider);
    return Scaffold(
      backgroundColor: Color(0xFF171E26),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: 16),
            Expanded(
              child: Center(
                child: Image.asset(
                  ArreAssets.ARRE_LOGO_DARK_VERSION_IMG,
                  fit: BoxFit.cover,
                  height: 74,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  UserAvatarV2(
                    size: 150,
                    mediaId:
                        arrePref.getString(PrefKey.PROFILE_PICTURE_MEDIA_ID),
                    userName: arrePref.userName ?? "Guest",
                  ),
                  SizedBox(height: 16),
                  Text(
                    arrePref.userName ?? "Guest",
                    style: ATextStyles.sys18Bold(),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 34,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: FilledFlatButton(
                      onPressed: continueWithPreviousCredentials,
                      borderRadius: 10,
                      child: isLoggingIn
                          ? ACommonLoader.dancingBars(size: 24)
                          : Text(
                              "Login as @${arrePref.userName ?? "guest"}",
                              style: ATextStyles.sys14Bold(),
                            ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: Divider(indent: 32, endIndent: 12)),
                      Text(
                        "Or",
                        style: ATextStyles.sys14Bold(AColors.textDark),
                      ),
                      Expanded(child: Divider(indent: 12, endIndent: 32))
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 34,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: OutlinedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        side: MaterialStatePropertyAll(
                            BorderSide(color: AColors.BgStroke)),
                      ),
                      onPressed: continueWithAnotherAccount,
                      child: Text(
                        "Log into another account",
                        style: ATextStyles.sys14Bold(AColors.textLight),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
