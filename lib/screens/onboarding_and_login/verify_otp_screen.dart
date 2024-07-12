import 'dart:async';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/invite_link_provider.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/onboarding_next_button.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/username_create_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_localizations.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/styles.dart';
import 'package:arre_frontend_flutter/widgets/onboarding_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

///Returns [GVerifyOtpResponse] on successful OTP verification
class VerifyOtpScreen extends ConsumerStatefulWidget with ArreScreen {
  const VerifyOtpScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _VerifyOtpScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.OTP_VALIDATION;
}

class _VerifyOtpScreenState extends ConsumerState<VerifyOtpScreen> {
  Future<void> sendOtp() async {
    if (!mounted) return;
    try {
      await ref.read(loginProvider).sendOtp(
            inviteLink:
                ref.read(inviteLinkProvider).valueOrNull?.uniqueInviteLink,
          );
      if (mounted) showInfoSnackBar("OTP sent again");
    } catch (err) {
      if (mounted) showErrorSnackBar(err);
    }
  }

  Future<void> verifyOtp() async {
    if (ref.read(loginProvider).isVerifying) return;
    try {
      final response = await ref.read(loginProvider).verifyOtp();
      if (mounted) {
        ref.invalidate(currentUserProvider);
        FocusScope.of(context).unfocus();
        Navigator.of(context).pop(response);
      }
    } catch (err) {
      showErrorSnackBar(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginPvd = ref.watch(loginProvider);
    final otpSentTo = loginPvd.userIdentifierTextEditCtrl.text;
    return Theme(
      data: getOnboardingTheme(context),
      child: OnboardingScaffold(
        canSkip: false,
        floatingActionButton: OnboardingNextButton(
          onPressed: verifyOtp,
          enabled: loginPvd.isOtpFieldValid,
          showLoadingIndicator: loginPvd.isVerifying,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 32, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.tr.enter_otp,
                  style: TextStyle(
                    fontFamily: 'Hind',
                    color: AColors.textLight,
                    fontSize: 24,
                    height: 38.42 / 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    text: "Enter the OTP we’ve sent on ",
                    style: ATextStyles.hind14Regular(AColors.textDark),
                    children: [
                      TextSpan(
                        text: otpSentTo,
                        style: ATextStyles.hind14Bold(AColors.textDark),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16),
                _OTPField(onSubmit: verifyOtp),
                SizedBox(height: 16),
                _ResendOtpTimer(resendOtpCallback: sendOtp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _OTPField extends ConsumerWidget {
  final void Function() onSubmit;

  const _OTPField({
    Key? key,
    required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginPvd = ref.watch(loginProvider);
    Color color = loginPvd.hasOtpError ? AColors.red : Color(0x4DA2E1D9);
    return PinCodeTextField(
      controller: loginPvd.otpTextEditCtrl,
      autoDisposeControllers: false,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      appContext: context,
      length: 6,
      onChanged: loginPvd.onOtpTextChanged,
      textInputAction: TextInputAction.next,
      onSubmitted: (_) => onSubmit(),
      useExternalAutoFillGroup: true,
      enablePinAutofill: true,
      onCompleted: (_) => onSubmit(),
      backgroundColor: Colors.transparent,
      cursorColor: AColors.tealPrimary,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 52,
        fieldWidth: 41,
        borderWidth: 1,
        activeColor: color,
        activeFillColor: color,
        inactiveColor: color,
        selectedFillColor: color,
        selectedColor: color,
      ),
      textStyle: TextStyle(
          fontFamily: "Manrope",
          fontSize: 26.0,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).hintColor),
      autoFocus: true,
      cursorHeight: 26,
      animationType: AnimationType.scale,
      animationDuration: Duration(milliseconds: 300),
      keyboardType: TextInputType.number,
    );
  }
}

class _ResendOtpTimer extends StatefulWidget {
  final VoidCallback resendOtpCallback;

  const _ResendOtpTimer({
    Key? key,
    required this.resendOtpCallback,
  }) : super(key: key);

  @override
  State<_ResendOtpTimer> createState() => _ResendOtpTimerState();
}

class _ResendOtpTimerState extends State<_ResendOtpTimer> {
  late Timer timer;
  final resendOtpInSecs = 40;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (this.timer.tick >= resendOtpInSecs) {
        this.timer.cancel();
        widget.resendOtpCallback();
        return;
      }
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: "Didn't receive the OTP?\nResending OTP"),
          if (timer.isActive) ...[
            TextSpan(text: " in "),
            TextSpan(text: "${resendOtpInSecs - timer.tick}"),
            TextSpan(text: " seconds"),
          ]
        ],
      ),
      textAlign: TextAlign.start,
      style: ATextStyles.hind14Regular(AColors.textDark),
    );
  }
}
