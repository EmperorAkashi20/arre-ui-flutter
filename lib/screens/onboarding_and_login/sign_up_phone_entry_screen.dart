import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/main.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/home_screen_provider.dart';
import 'package:arre_frontend_flutter/providers/invite_link_provider.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/screens/onboarding/AB1_welcome_screen.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/username_create_screen.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/verify_otp_screen.dart';
import 'package:arre_frontend_flutter/screens/terms_and_condition/privacy_policies.dart';
import 'package:arre_frontend_flutter/screens/terms_and_condition/terms_and_condition.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/styles.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/confirmation_sheet.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> showLoginSheet(Ref ref) async {
  print("#DEBUGGING_ONBOARDING showing login sheet");

  final phoneNumber = arrePref.getString(PrefKey.PHONE_NUMBER);

  //Handle Login with phone number
  if (phoneNumber == null) {
    var loginResponse;
    if (ArreNavigator.instance.hasEnteredAppRootPage()) {
      loginResponse = await showModalBottomSheet(
        context: ArreNavigator.instance.context,
        routeSettings: RouteSettings(name: GAScreen.SIGN_UP_PHONE_ENTRY),
        useRootNavigator: true,
        showDragHandle: true,
        isScrollControlled: true,
        builder: (context) {
          return PhoneEntrySheet();
        },
      );
    } else {
      loginResponse = await ArreNavigator.instance
          .push(AGlobalPage(child: AB1PhoneEntryScreen()));
    }

    if (loginResponse is! GVerifyOtpResponse) {
      throw ArreException("Could not login, please try again");
    }
    ref.invalidate(currentUserProvider);
  }

  final isOnboarded = arrePref.getBool(PrefKey.IS_ONBOARDING_COMPLETE);

  //Handle username & gender entry
  if (isOnboarded != true) {
    if (phoneNumber != null) {
      //[phoneNumber] is read from preferences, so if it's there, user has logged into the account before
      final canProceedToOnboarding = await showModalBottomSheet(
          context: ArreNavigator.instance.context,
          showDragHandle: true,
          routeSettings:
              RouteSettings(name: GAScreen.COMPLETE_ONBOARDING_PROMPT_SHEET),
          builder: (_) {
            return ConfirmationSheet(
              title: "You are almost there",
              description:
                  "Do not miss out on the chance to be a part of 300k+ community.",
              primaryBtnLabel: "Sign Up",
              secondaryBtnLabel: "Cancel",
            );
          });

      if (canProceedToOnboarding != true) {
        throw ArreIgnoreException("Sign up cancelled");
      }
    }

    final isOnboardingComplete = await ArreNavigator.instance
        .push(AGlobalPage(child: UsernameCreateScreen()));
    if (isOnboardingComplete != true) {
      throw ArreException("Could not sign up, please try again");
    }
    ref.invalidate(currentUserProvider);
  }
}

@visibleForTesting
class PhoneEntrySheet extends ConsumerStatefulWidget with ArreScreen {
  const PhoneEntrySheet({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SignUpPhoneEntryScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.SIGN_UP_PHONE_ENTRY;
}

class _SignUpPhoneEntryScreenState extends ConsumerState<PhoneEntrySheet>
    with RouteAware, NoAppResizeToAvoidBottomInset {
  Future<void> sendOtp() async {
    if (!ref.read(loginProvider).hasAgreedToTerms) {
      showInfoSnackBar(
          "You need agree to the terms and conditions to continue");
      return;
    }
    try {
      await ref.read(loginProvider).sendOtp(
            inviteLink:
                ref.read(inviteLinkProvider).valueOrNull?.uniqueInviteLink,
          );
      final response = await ArreNavigator.instance
          .push(AGlobalPage(child: VerifyOtpScreen()));
      if (response is GVerifyOtpResponse && mounted) {
        Navigator.of(context).pop(response);
      }
    } catch (err) {
      showSnackBarV2(context: context, error: err);
    }
  }

  @override
  void didChangeDependencies() {
    rootRouteObserver.subscribe(this, ModalRoute.of(context) as Route);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    rootRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginPvd = ref.watch(loginProvider);
    final numberTextStyle = TextStyle(
      fontFamily: "Manrope",
      fontWeight: FontWeight.w700,
      fontSize: 26,
      color: Color(0xFFBDCAC9),
    );
    return Theme(
      data: getOnboardingTheme(context),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom) +
              EdgeInsets.fromLTRB(24, 0, 24, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Welcome to Arré Voice!",
                textAlign: TextAlign.center,
                style: ATextStyles.sys20Bold(Color(0xFFE4F1EE)),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Image.asset(
                    ArreAssets.WOMEN_ON_SPEAKER_IMG,
                    width: 80.98,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      "Join the growing community of 300k+ members. Let's start by creating your account.",
                      textAlign: TextAlign.start,
                      style: ATextStyles.sys14Regular(AColors.textMedium),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Phone Number",
                  style: ATextStyles.sys14Bold(Color(0xFF848E92)),
                ),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      key: loginPvd.phoneField,
                      controller: loginPvd.userIdentifierTextEditCtrl,
                      style: numberTextStyle,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      autofillHints: [AutofillHints.telephoneNumber],
                      inputFormatters: [
                        PhoneFieldFormatter(),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      maxLength: 10,
                      validator: loginPvd.phoneNumberValidator,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      autovalidateMode: AutovalidateMode.disabled,
                      maxLines: 1,
                      autofocus: true,
                      textAlignVertical: TextAlignVertical.top,
                      autocorrect: true,
                      cursorColor: AColors.tealPrimary,
                      onChanged: loginPvd.onPhoneFieldChanged,
                      onFieldSubmitted: (_) => sendOtp(),
                      decoration: InputDecoration(
                        counterText: "",
                        isDense: true,
                        constraints: BoxConstraints(maxHeight: 46),
                        // hintText: "PHONE NUMBER",
                        // hintStyle: ATextStyles.sys18Bold(AColors.textDark),
                        contentPadding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                        prefixIcon: Container(
                          width: 64,
                          height: 36,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: Color(0x4DA2E1D9)))),
                          child: Center(
                            child: Text(
                              "+91",
                              style: numberTextStyle,
                            ),
                          ),
                        ),
                        suffixIcon: SizedBox(
                          height: double.infinity,
                          width: 50,
                          child: FilledButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(8)),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AColors.stateDisabled;
                                }
                                return AColors.orangePrimary;
                              }),
                            ),
                            // backgroundColor: AColors.orangePrimary,
                            // borderRadius: ,
                            child: loginPvd.isSendingOtp
                                ? ACommonLoader.dancingBars(size: 24)
                                : Icon(Icons.arrow_forward, size: 24),
                            onPressed:
                                loginPvd.isPhoneFieldValid ? sendOtp : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              _TermsConditionsCheckboxTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TermsConditionsCheckboxTile extends ConsumerStatefulWidget {
  const _TermsConditionsCheckboxTile({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __TermsConditionsCheckboxTileState();
}

class __TermsConditionsCheckboxTileState
    extends ConsumerState<_TermsConditionsCheckboxTile> {
  late TapGestureRecognizer termsTap, policyTap;

  @override
  void initState() {
    super.initState();
    termsTap = TapGestureRecognizer()
      ..onTap = () {
        ArreNavigator.instance.push(AGlobalPage(child: TermsAndCondition()));
      };
    policyTap = TapGestureRecognizer()
      ..onTap = () {
        ArreNavigator.instance.push(AGlobalPage(child: PrivacyPolicies()));
      };
  }

  @override
  void dispose() {
    termsTap.dispose();
    policyTap.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final linkStyle = TextStyle(
      color: AColors.tealPrimary,
      decorationStyle: TextDecorationStyle.solid,
      fontWeight: FontWeight.w700,
      decorationThickness: 2,
      decoration: TextDecoration.underline,
    );
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: "By continuing, you agree to our "),
          TextSpan(
            text: "Terms of Service",
            style: linkStyle,
            recognizer: termsTap,
          ),
          TextSpan(text: " and "),
          TextSpan(
            text: " Privacy Policy ",
            style: linkStyle,
            recognizer: policyTap,
          ),
        ],
      ),
      style: ATextStyles.sys14Regular(Color(0xFFBDCAC9)),
    );
  }
}

class SignUpProgressIndicator extends StatelessWidget {
  final double value;

  const SignUpProgressIndicator({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: LinearProgressIndicator(
        minHeight: 6,
        value: value,
        color: AColors.tealPrimary,
        backgroundColor: Color(0xFF232C36),
      ),
    );
  }
}
