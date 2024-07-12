import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/username_provider.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/gender_selection_screen.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/onboarding_next_button.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/styles.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/onboarding_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsernameCreateScreen extends ConsumerStatefulWidget with ArreScreen {
  const UsernameCreateScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _UsernameCreateScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.USERNAME_CREATE;
}

class _UsernameCreateScreenState extends ConsumerState<UsernameCreateScreen> {
  Future<void> updateOnboardingInfo() async {
    try {
      final username = await ref.read(usernameProvider).checkAvailability();
      FocusScope.of(context).unfocus();
      final isOnboardingComplete = await ArreNavigator.instance
          .push(AGlobalPage(child: GenderSelectionScreen(username: username)));
      if (isOnboardingComplete == true && mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (err) {
      showErrorSnackBar(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    final usernamePvd = ref.read(usernameProvider);
    final fieldTextStyle = TextStyle(
      fontFamily: "Manrope",
      fontWeight: FontWeight.w700,
      fontSize: 26,
      color: Color(0xFFBDCAC9),
    );
    return Theme(
      data: getOnboardingTheme(context),
      child: OnboardingScaffold(
        canSkip: true,
        floatingActionButton: Consumer(builder: (context, ref, child) {
          final usernamePvd = ref.watch(usernameProvider);
          return OnboardingNextButton(
            onPressed: updateOnboardingInfo,
            enabled: usernamePvd.isValid,
            showLoadingIndicator: usernamePvd.isLoading,
          );
        }),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pick a username",
                  textAlign: TextAlign.center,
                  style: ATextStyles.sys24Bold(Color(0xFFE4F1EE)),
                ),
                SizedBox(height: 30),
                Text(
                  "This is how people in this space will know you",
                  textAlign: TextAlign.center,
                  style: ATextStyles.sys14Regular(Color(0xFF848E92)),
                ),
                SizedBox(height: 16),
                TextFormField(
                  //Note: validator is not set we're validating
                  // this field completely in the provider
                  key: usernamePvd.textFieldKey,
                  controller: usernamePvd.usernameTextEditCtrl,
                  autovalidateMode: AutovalidateMode.disabled,
                  style: fieldTextStyle,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        usernamePvd.usernameRegexp),
                  ],
                  maxLength: 15,
                  maxLengthEnforcement: MaxLengthEnforcement.none,
                  maxLines: 1,
                  autofocus: true,
                  autocorrect: false,
                  cursorColor: AColors.tealPrimary,
                  onChanged: usernamePvd.onUsernameChanged,
                  onFieldSubmitted: (_) => updateOnboardingInfo(),
                  decoration: InputDecoration(
                      fillColor: AColors.BgDark,
                      counterText: "",
                      errorText: "",
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      prefixText: "@",
                      prefixStyle: fieldTextStyle,
                      hintText: "username",
                      hintStyle:
                          fieldTextStyle.copyWith(color: Color(0xFF8D8D8D))),
                ),
                SizedBox(height: 8),
                _RuleCheckGroup(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RuleCheckGroup extends ConsumerWidget {
  const _RuleCheckGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernamePvd = ref.watch(usernameProvider);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: AColors.BgDark,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AColors.tealStroke.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          _UsernameRuleCheck(
            label: "minimum 5 and maximum 15 characters",
            isChecked: usernamePvd.validateTextLengthLimit,
          ),
          _UsernameRuleCheck(
            label: "only special characters ‘. ’ and ‘_’ are allowed",
            isChecked: usernamePvd.validateSpecialCharacters,
          ),
          _UsernameRuleCheck(
            label: "should be unique",
            isChecked: usernamePvd.validateUnique,
          ),
        ],
      ),
    );
  }
}

class _UsernameRuleCheck extends StatelessWidget {
  final String label;
  final bool? isChecked;

  const _UsernameRuleCheck(
      {Key? key, required this.label, required this.isChecked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Row(
        children: [
          if (isChecked == true)
            CircleAvatar(
              backgroundColor: AColors.tealPrimary,
              radius: 10,
              child: Icon(
                ArreIconsV2.tick_outline,
                size: 16,
                color: AColors.BgDark,
              ),
            )
          else if (isChecked == false)
            CircleAvatar(
              backgroundColor: AColors.red,
              radius: 10,
              child: Icon(
                ArreIconsV2.cross_outline,
                size: 10,
                color: AColors.BgDark,
              ),
            )
          else
            Icon(
              ArreIconsV2.lens,
              size: 20,
              color: AColors.BgLight,
            ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              label,
              style: ATextStyles.sys12Mini(AColors.textDark),
            ),
          ),
        ],
      ),
    );
  }
}
