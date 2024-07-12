import 'dart:io';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/language.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/onboarding_provider.dart';
import 'package:arre_frontend_flutter/screens/onboarding/AB1_welcome_screen.dart';
import 'package:arre_frontend_flutter/screens/onboarding/ABV2_voicepods_story_screen.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/widgets/confirmation_sheet.dart';
import 'package:arre_frontend_flutter/widgets/language_card.dart';
import 'package:arre_frontend_flutter/widgets/myadam_rive_animation.dart';
import 'package:arre_frontend_flutter/widgets/onboarding_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageSelectionScreen extends ConsumerStatefulWidget with ArreScreen {
  const LanguageSelectionScreen({super.key});

  @override
  ConsumerState createState() => _LanguageSelectionScreenState();

  @override
  String get screenName => GAScreen.LANGUAGE_SELECTION_SCREEN;

  @override
  Uri? get uri => null;
}

class _LanguageSelectionScreenState
    extends ConsumerState<LanguageSelectionScreen> {
  final myadamCtrl = MyadamController();
  late List<Language> orderedLanguages;

  @override
  void initState() {
    super.initState();
    myadamCtrl.waveHands();
    ref.read(initPodPLayerRef);
    orderedLanguages = List.from(LANGUAGES);
    final firstLang2Display = LANGUAGES.firstWhere(
        (element) =>
            Platform.localeName.startsWith(element.localeNamePrefix) &&
            element.localeNamePrefix != "en",
        orElse: () => LANGUAGES.first);
    orderedLanguages.remove(firstLang2Display);
    orderedLanguages.insert(0, firstLang2Display);
  }

  @override
  Widget build(BuildContext context) {
    final languageGridView = LayoutBuilder(builder: (context, constraints) {
      final onboardingPvd = ref.watch(onboardingProvider);
      return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 156 / 93,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        shrinkWrap: true,
        padding: EdgeInsets.all(16),
        children: orderedLanguages
            .map(
              (e) => LanguageCard(
                language: e,
                isSelected: onboardingPvd.speakingLanguage == e.value,
                onTap: () async {
                  onboardingPvd.selectSpeakingLanguage(e.value);
                  arreAnalytics
                      .logEvent(GAEvent.ONB_LANG_SELECTED, parameters: {
                    EventAttribute.EVENT_VALUE: e.value,
                  });
                  arreAnalytics.setGlobalParams(
                      {EventAttribute.ONBOARDING_LANGUAGE: e.value});
                  bool isCreatorFlow =
                      arrePref.getString(PrefKey.ONBOARDING_FLOW) ==
                          "creatorFlow";

                  //TODO remove this confirmation sheet
                  final isFlowA = await showModalBottomSheet<bool>(
                    context: context,
                    showDragHandle: true,
                    builder: (context) {
                      return ConfirmationSheet(
                        title: "Creator First or Listener First flow?",
                        description: "",
                        primaryBtnLabel: "Creator First",
                        secondaryBtnLabel: "Listener Flow",
                      );
                    },
                  );
                  if (isFlowA == true) {
                    ArreNavigator.instance
                        .push(AGlobalPage(child: AB1WelcomeScreen(e.value)));
                  } else {
                    ArreNavigator.instance
                        .push(AGlobalPage(child: ABV2VoicepodsStoryScreen()));
                  }
                },
                imageSize: Size(
                  constraints.maxWidth * 0.25,
                  constraints.maxWidth * 0.16,
                ),
                padding: EdgeInsets.fromLTRB(
                  constraints.maxWidth * 0.032,
                  constraints.maxWidth * 0.032,
                  constraints.maxWidth * 0.026,
                  constraints.maxWidth * 0.026,
                ),
              ),
            )
            .toList(),
      );
    });
    return OnboardingScaffold(
      canSkip: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                MyadamRiveAnimation(controller: myadamCtrl),
                SizedBox(width: 12),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Which language do you speak?",
                    style: TextStyle(
                      fontFamily: "Hind",
                      fontSize: 24 * (MediaQuery.sizeOf(context).width / 390),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: languageGridView)
        ],
      ),
    );
  }
}
