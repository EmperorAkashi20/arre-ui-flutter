part of AB1WelcomeScreen;

class AB1PhoneEntryScreen extends ConsumerStatefulWidget with ArreScreen {
  const AB1PhoneEntryScreen({
    Key? key,
  }) : super(key: key);

  @override
  _AB1PhoneEntryScreenState createState() => _AB1PhoneEntryScreenState();

  @override
  String get screenName => GAScreen.AB1_PHONE_ENTRY_SCREEN;

  Uri? get uri => null;
}

class _AB1PhoneEntryScreenState extends ConsumerState<AB1PhoneEntryScreen>
    with TickerProviderStateMixin {
  final MyadamController myadamCtrl = MyadamController();

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
  Widget build(BuildContext context) {
    final loginPvd = ref.watch(loginProvider);
    final onboardingPvd = ref.watch(onboardingProvider);
    final numberTextStyle = TextStyle(
      fontFamily: "Manrope",
      fontWeight: FontWeight.w700,
      fontSize: 26,
      color: Color(0xFFBDCAC9),
    );

    //Success State starts here
    Widget? animatedText;
    Widget topSection;

    animatedText = AMarkupText(
      onboardingPvd.getCaptionFor(OnboardingStep.signUpWithPhone),
      style: ATextStyles.hind16SemiBold(AColors.textDark),
    );

    //Top section
    topSection = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          MyadamRiveAnimation(controller: myadamCtrl),
          SizedBox(width: 12),
          Expanded(flex: 2, child: animatedText),
        ],
      ),
    );

    //PhoneNumber section
    Widget phoneEntrySection;
    final btnSpacing = MediaQuery.sizeOf(context).height * 0.03;

    phoneEntrySection = Theme(
      data: getOnboardingTheme(context),
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "PHONE NUMBER",
                style: ATextStyles.sys14Bold(AColors.textMedium),
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
    );

    //share and post buttons

    Widget body = Column(
      children: [
        SizedBox(height: btnSpacing),
        Expanded(child: topSection),
        SizedBox(height: btnSpacing * 1.6),
        Expanded(flex: 4, child: phoneEntrySection),
      ],
    );

    return OnboardingScaffold(
      body: body,
      canSkip: false,
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
