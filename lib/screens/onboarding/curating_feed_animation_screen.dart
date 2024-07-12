import 'dart:developer';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/onboarding_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_markup_text.dart';
import 'package:arre_frontend_flutter/widgets/myadam_rive_animation.dart';
import 'package:arre_frontend_flutter/widgets/onboarding_scaffold.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';

class CuratingFeedAnimationScreen extends ConsumerStatefulWidget
    with ArreScreen {
  const CuratingFeedAnimationScreen({super.key});

  @override
  ConsumerState createState() => _CuratingFeedAnimationScreenState();

  @override
  String get screenName => GAScreen.CURATING_FEED_ANIM_SCREEN;

  @override
  Uri? get uri => null;
}

class _CuratingFeedAnimationScreenState
    extends ConsumerState<CuratingFeedAnimationScreen> {
  final player = SimpleAudioPlayerProvider2("curating_feed_animation");
  MyadamController myadamCtrl = MyadamController();
  late OneShotAnimation _controller;

  @override
  void initState() {
    super.initState();
    _controller = OneShotAnimation(
      "NUE_Feed Creation",
      autoplay: true,
      mix: 0,
      onStop: () {
        Navigator.of(context).popUntil((route) => false);
      },
    );
    _controller.isActive = true;
    playVoiceOver(ref
        .read(onboardingProvider)
        .getMediaIdFor(OnboardingStep.curatingFeedTitle));
  }

  Future<void> playVoiceOver(String? voiceOverMedia) async {
    await player.stop();
    if (voiceOverMedia != null) {
      await player
          .init(UrlSource(voiceOverMedia))
          .then((value) {
            if (!PodPlayerV3.instance.isPlaying) {
              player.play();
            }
          })
          .timeout(Duration(seconds: 3))
          .catchError((err, st) {
            player.pause(PlayerGAContext.ignore);
            Utils.reportError(err, st);
          });
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      canSkip: false,
      player: player,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: MediaQuery.sizeOf(context).height * 0.03,
            ),
            child: Row(
              children: [
                MyadamRiveAnimation(controller: myadamCtrl),
                SizedBox(width: 12),
                Expanded(
                  flex: 2,
                  child: AMarkupText(
                    ref
                        .read(onboardingProvider)
                        .getCaptionFor(OnboardingStep.curatingFeedTitle),
                    style: ATextStyles.hind16SemiBold(AColors.textLight),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: RiveAnimation.asset(
                ArreAssets.CURATING_FEED_ANIM,
                controllers: [_controller],
                alignment: Alignment.topCenter,
                animations: ["NUE_Feed Creation"],
                onInit: (artboard) {
                  inspect(artboard);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
