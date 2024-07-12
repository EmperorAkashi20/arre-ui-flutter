import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/styles.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'onboarding_next_button.dart';
import 'verify_otp_screen.dart';

///Returns [GVerifyOtpResponse]
class LoginScreen extends ConsumerStatefulWidget with ArreScreen {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _LoginScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.LOGIN;
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  Future<void> sendOtp() async {
    try {
      await ref.read(loginProvider).sendOtp();
      final response = await ArreNavigator.instance
          .push(AGlobalPage(child: VerifyOtpScreen()));
      if (response is GVerifyOtpResponse && mounted) {
        Navigator.of(context).pop(response);
      }
    } catch (err) {
      showErrorSnackBar(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginPvd = ref.watch(loginProvider);
    final textFieldStyle = TextStyle(
      fontFamily: "Manrope",
      fontWeight: FontWeight.w700,
      fontSize: 26,
      color: Color(0xFFBDCAC9),
    );
    return Theme(
      data: getOnboardingTheme(context),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kFloatingActionButtonMargin),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "We'll text an OTP to verify your number",
                  style: ATextStyles.sys14Regular(Color(0xFFAAB5B3)),
                ),
              ),
              SizedBox(width: 16),
              OnboardingNextButton(
                onPressed: sendOtp,
                enabled: loginPvd.isUserIdentifierValid,
                showLoadingIndicator: loginPvd.isSendingOtp,
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kFloatingActionButtonMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Login to Arré",
                  textAlign: TextAlign.center,
                  style: ATextStyles.sys24Bold(Color(0xFFE4F1EE)),
                ),
                SizedBox(height: 16),
                Text(
                  "Let’s get your journey started at Arré Voice",
                  textAlign: TextAlign.center,
                  style: ATextStyles.sys14Regular(Color(0xFF848E92)),
                ),
                SizedBox(height: 56),
                Text(
                  "PHONE NO./USERNAME",
                  style: ATextStyles.sys14Bold(AColors.darkMode),
                ),
                SizedBox(height: 4),
                TextFormField(
                  key: loginPvd.userIdentifierField,
                  controller: loginPvd.userIdentifierTextEditCtrl,
                  style: textFieldStyle,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  validator: loginPvd.userIdentifierValidator,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  autovalidateMode: AutovalidateMode.disabled,
                  inputFormatters: [PhoneFieldConditionalFormatter()],
                  maxLines: 1,
                  autofocus: true,
                  autocorrect: false,
                  cursorColor: AColors.tealPrimary,
                  onChanged: loginPvd.onUserIdentifierFieldChanged,
                  onFieldSubmitted: (_) => sendOtp(),
                  decoration: InputDecoration(
                    counterText: "",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    // hintText: "Phone no/username",
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
