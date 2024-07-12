import 'dart:math';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/gender_provider.dart';
import 'package:arre_frontend_flutter/providers/username_provider.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/sign_up_phone_entry_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_close_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/onboarding_scaffold.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'onboarding_next_button.dart';

///On successful onboarding, returns `true`
class GenderSelectionScreen extends ConsumerStatefulWidget with ArreScreen {
  final String username;

  GenderSelectionScreen({required this.username});

  @override
  _GenderSelectionScreenState createState() => _GenderSelectionScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.GENDER_SELECTION;
}

class _GenderSelectionScreenState extends ConsumerState<GenderSelectionScreen> {
  bool isSubmitting = false;

  Future<void> selectGender(Gender gender) async {
    final genderPvd = ref.read(genderProvider);
    if (gender != Gender.other) {
      genderPvd.setMainGender(gender);
    } else {
      showSelectNonBinaryGenderPop();
    }
  }

  Future<void> submit() async {
    final genderValue = ref.read(genderProvider).value;
    if (genderValue == null) {
      showInfoSnackBar("Please select your gender to continue");
      return;
    }
    try {
      setState(() {
        isSubmitting = true;
      });
      await ref.read(
          updateOnboardingFutureProvider((widget.username, genderValue))
              .future);
      if (mounted) Navigator.of(context).pop(true);
    } catch (err, st) {
      setState(() {
        isSubmitting = false;
      });
      showErrorSnackBar(err);
      Utils.reportError(err, st);
    }
  }

  Widget build(BuildContext context) {
    return OnboardingScaffold(
      canSkip: false,
      floatingActionButton: Consumer(builder: (context, ref, child) {
        final genderPvd = ref.watch(genderProvider);
        return OnboardingNextButton(
          onPressed: submit,
          buttonLabel: "Finish",
          enabled: genderPvd.hasValue,
          showLoadingIndicator: isSubmitting,
        );
      }),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select your gender",
                textAlign: TextAlign.center,
                style: ATextStyles.sys24Bold(Color(0xFFE4F1EE)),
              ),
              SizedBox(height: 30),
              Text(
                "I identify as",
                textAlign: TextAlign.center,
                style: ATextStyles.systemPrimaryNormal(Color(0xFF848E92)),
              ),
              SizedBox(height: 16),
              for (var gender in Gender.values)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: _ABGenderButton(
                    gender: gender,
                    onSelected: selectGender,
                  ),
                ),
              SizedBox(height: 96),
              // SizedBox(
              //   height: 34,
              //   width: MediaQuery.of(context).size.width * 0.8,
              //   child: FilledFlatButton(
              //     onPressed: submit,
              //     borderRadius: 10,
              //     child: Text(
              //       "Continue",
              //       style: ATextStyles.buttons(Colors.white),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showSelectNonBinaryGenderPop() async {
    final canContinue = await showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xFF171E26),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return _NonBinaryGenderSelectionSheet();
      },
    );
    if (canContinue == true) {
      submit();
    }
  }
}

// class _InviterDetails extends ConsumerWidget {
//   const _InviterDetails({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final inviterId = ref.watch(inviteLinkProvider).valueOrNull?.userId;
//     final inviterDetails =
//         ref.watch(inviterDetailsFutureProvider(inviterId ?? "")).valueOrNull;
//     return Column(
//       children: [
//         ConstrainedBox(
//           constraints: BoxConstraints(
//             maxWidth: 100,
//             maxHeight: 100,
//             minHeight: 50,
//             minWidth: 50,
//           ),
//           child: UserAvatar(
//             imageUrl: inviterDetails?.profilePictureSignedUrl,
//             userName: inviterDetails?.username,
//           ),
//         ),
//         SizedBox(height: 16),
//         Text(
//           inviterDetails != null ? "You have been invited by" : "",
//           style: ATextStyles.sys14Regular(Color(0xFFBDCAC9)),
//         ),
//         SizedBox(height: 8),
//         Text(
//           "${inviterDetails?.username != null ? "@" : ""} ${inviterDetails?.username ?? " "}",
//           style: TextStyle(
//             fontSize: 18,
//             fontFamily: "Acumin Pro",
//             fontWeight: FontWeight.w700,
//             color: AColors.tealPrimary,
//           ),
//         ),
//       ],
//     );
//   }
// }

class _GenderButton extends ConsumerWidget {
  final Gender gender;
  final void Function(Gender value) onSelected;

  const _GenderButton({
    Key? key,
    required this.gender,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedGender = ref.watch(genderProvider).gender;
    Color? selectedColor = selectedGender == gender ? Color(0xFFEE8C34) : null;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => onSelected(gender),
        child: LayoutBuilder(builder: (context, constraints) {
          final shortestSide = min(constraints.maxWidth, constraints.maxHeight);
          final iconSpacing4mCorner = shortestSide * 0.06;
          return Center(
            child: SizedBox(
              height: shortestSide,
              width: shortestSide,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: selectedColor ?? Color(0x4DA2E1D9),
                                width: 2.0),
                            color: Color(0xFF232C36),
                          ),
                          child: Align(
                            alignment: gender.alignment,
                            child: SvgPicture.asset(
                              gender.assetImage,
                              height: shortestSide * 0.35,
                              width: shortestSide * 0.35,
                              fit: BoxFit.contain,
                              colorFilter: ColorFilter.mode(
                                  selectedColor ?? AColors.tealPrimary,
                                  BlendMode.srcIn),
                            ),
                          ),
                        ),
                        if (selectedGender == gender) ...[
                          Positioned(
                            top: iconSpacing4mCorner,
                            right: iconSpacing4mCorner,
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(2),
                              decoration: ShapeDecoration(
                                shape: CircleBorder(
                                  side: BorderSide(
                                    color: AColors.orangePrimary,
                                    width: 2,
                                  ),
                                ),
                                color: AColors.BgLight,
                              ),
                              child: Icon(
                                ArreIconsV2.tick_outline,
                                size: shortestSide * 0.15,
                                color: selectedColor,
                              ),
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    gender.label,
                    style: ATextStyles.sys14Regular(
                        selectedColor ?? Color(0xFFBDCAC9)),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

///GENDER SELECTION SHEET
class _NonBinaryGenderSelectionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Select your gender",
                            style: TextStyle(
                                fontFamily: 'Acumin Pro',
                                color: Theme.of(context).hintColor,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.9,
                                fontStyle: FontStyle.normal,
                                fontSize: 24),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Pick what describes you the best.\nBe you on Arré Voice",
                          textAlign: TextAlign.center,
                          style: ATextStyles.systemPrimaryNormal(
                              Color(0xFF848E92)),
                        ),
                        SizedBox(height: 24),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.only(bottom: 86),
                            children: NonBinaryGender.values
                                .map((e) => _NonBinaryGenderListTile(e))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.6, 1],
                  colors: [
                    Color(0xFF171E26),
                    Color(0xFF171E26).withOpacity(0.0),
                  ],
                ),
              ),
              child: SizedBox(
                height: 44,
                child: FilledFlatButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text("Save and Continue"),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: ACloseButton(color: AColors.greyLight),
          ),
        ],
      ),
    );
  }
}

class _NonBinaryGenderListTile extends ConsumerWidget {
  final NonBinaryGender gender;

  const _NonBinaryGenderListTile(
    this.gender, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(
        genderProvider.select((value) => value.nonBinaryGender == gender));
    final color = isSelected ? AColors.orangePrimary : AColors.tealPrimary;
    Widget child = Container(
      decoration: BoxDecoration(
        color: Color(0xFF232C36),
        borderRadius: BorderRadius.circular(4),
        border: isSelected
            ? Border.all(color: color, width: 1)
            : Border.all(color: Color(0x4DA2E1D9), width: 0.5),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
      child: Text(
        gender.label,
        style: ATextStyles.sys14Regular(),
      ),
    );
    if (isSelected) {
      child = Stack(
        children: [
          Positioned.fill(child: child),
          Positioned(
            top: 0,
            right: 24,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(2),
              decoration: ShapeDecoration(
                shape: CircleBorder(
                    side: BorderSide(color: AColors.orangePrimary, width: 2)),
                color: AColors.white,
              ),
              child: Icon(
                ArreIconsV2.tick_outline,
                size: 16,
                color: color,
              ),
            ),
          ),
        ],
      );
    }
    return GestureDetector(
      onTap: () => ref
          .read(genderProvider)
          .setNonBinaryGender(isSelected ? null : gender),
      child: SizedBox(
        height: 60,
        child: child,
      ),
    );
  }
}

class _ABGenderButton extends ConsumerWidget {
  final Gender gender;
  final void Function(Gender value) onSelected;

  const _ABGenderButton({
    Key? key,
    required this.gender,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedGender = ref.watch(genderProvider).gender;
    Color? selectedColor =
        selectedGender == gender ? AColors.orangePrimary : null;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => onSelected(gender),
      child: ClipRect(
        child: Container(
          height: 88,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AColors.BgLight,
            border: Border.all(color: selectedColor ?? Colors.transparent),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SvgPicture.asset(
                  gender.assetImage,
                  width: 74,
                  height: 98,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      selectedColor ?? AColors.tealPrimary, BlendMode.srcIn),
                ),
              ),
              SizedBox(width: gender.value == 'female' ? 34 : 10),
              Expanded(
                child: Text(
                  gender.label,
                  style:
                      ATextStyles.sys16Bold(selectedColor ?? Color(0xFFBDCAC9)),
                ),
              ),
              if (selectedGender == gender)
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.all(4),
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: AColors.orangePrimary,
                  ),
                  child: Icon(
                    ArreIconsV2.tick_outline,
                    size: 20,
                    color: AColors.BgDark,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
