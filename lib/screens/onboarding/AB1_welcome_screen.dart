library AB1WelcomeScreen;

import 'dart:async';
import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/main.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/onboarding_provider.dart';
import 'package:arre_frontend_flutter/screens/future_loader_dialog.dart';
import 'package:arre_frontend_flutter/screens/onboarding/ABV2_voicepods_story_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_gradient_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_markup_text.dart';
import 'package:arre_frontend_flutter/widgets/myadam_rive_animation.dart';
import 'package:arre_frontend_flutter/widgets/onboarding_scaffold.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/play_pause_button.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/demo_voicepod_card.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:arre_frontend_flutter/screens/creator_studio/creator_studio.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_drafts_provider.dart';
import 'package:arre_frontend_flutter/screens/onboarding/onboarding_share_clip.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:expandable_text/expandable_text.dart';
import '../../widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/providers/invite_link_provider.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/verify_otp_screen.dart';
import 'package:arre_frontend_flutter/screens/terms_and_condition/privacy_policies.dart';
import 'package:arre_frontend_flutter/screens/terms_and_condition/terms_and_condition.dart';
import 'package:arre_frontend_flutter/utils/styles.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

part 'AB1_phone_entry.dart';

part 'AB1CV_suggestion_screen.dart';

part 'AB1_drafts_screen.dart';

class AB1WelcomeScreen extends ConsumerStatefulWidget with ArreScreen {
  final String language;

  const AB1WelcomeScreen(this.language, {super.key});

  @override
  ConsumerState createState() => _AB1WelcomeScreenState();

  @override
  String get screenName => GAScreen.AB1_WELCOME_SCREEN;

  @override
  Uri? get uri => null;
}

class _AB1WelcomeScreenState extends ConsumerState<AB1WelcomeScreen>
    with TickerProviderStateMixin, RouteAware {
  final MyadamController myadamCtrl = MyadamController();
  late final rotationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 240));
  late final AnimationController podStackFadeAnimCtrl =
      AnimationController(vsync: this, duration: Duration(milliseconds: 250));

  late final AnimationController actionButtonsFadeAnimCtrl =
      AnimationController(vsync: this, duration: Duration(milliseconds: 340));

  void Function()? _nextStepCallback;
  Timer? nextStepCallbackTimer;
  StreamSubscription<PlayerState>? playerStateSub;
  StreamSubscription<bool>? podIsPlayingValueStreamSub;
  StreamSubscription<PlayerValue>? podPlayerValueStreamSub;
  StreamSubscription<void>? podPlayCompleteStreamSub;
  bool showPodIntroText = false;

  bool isLoading = true;
  dynamic error;
  Completer<void>? animatedTextCompleter;

  OnboardingStep? _step;

  OnboardingStep? get step => _step;

  set step(OnboardingStep? value) {
    _step = value;
  }

  void Function()? get nextStepCallback => _nextStepCallback;

  set nextStepCallback(void Function()? value) {
    if (value == null) {
      nextStepCallbackTimer?.cancel();
      _nextStepCallback = value;
    } else {
      // nextStepCallbackTimer = Timer(
      //   Duration(milliseconds: 4000),
      //   () async {
      //     await player.pause(PlayerGAContext.ignore);
      //     myadamCtrl.speak(false);
      //     myadamCtrl.explain(false);
      //     nextStepCallback?.call();
      //   },
      // );
      _nextStepCallback = () {
        nextStepCallbackTimer?.cancel();
        value.call();
      };
    }
  }

  SimpleAudioPlayerProvider2 player =
      SimpleAudioPlayerProvider2("voice_over_creator_first");

  Post? get samplePost => ref.read(onboardingProvider).creatorFlowSamplePost;

  @override
  void initState() {
    super.initState();
    startStory();
    playerStateSub = player.playerStateStream.listen((event) {
      if (event == PlayerState.completed) {
        myadamCtrl.speak(false);
        myadamCtrl.explain(false);
        nextStepCallback?.call();
      }
    });
    podIsPlayingValueStreamSub =
        PodPlayerV3.instance.playingValueStream.listen((isPlaying) {
      if (isPlaying) {
        myadamCtrl.turnOffAllAnimations();
        player.pause(PlayerGAContext.ignore);
      }
    });
  }

  @override
  void didChangeDependencies() {
    rootRouteObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
    super.didChangeDependencies();
  }

  @override
  void didPop() {
    PodPlayerV3.instance.stop();
    super.didPop();
  }

  // @override
  // void didPushNext() {
  //   if (PodPlayerV3.instance.source is CreatorFlowSamplePod) {
  //     PodPlayerV3.instance.stop();
  //   }
  //   super.didPushNext();
  // }

  void completeTextAnimation() {
    if (animatedTextCompleter?.isCompleted == false) {
      animatedTextCompleter!.complete();
    }
  }

  Future<void> playVoiceOver(String? voiceOverMedia) async {
    await player.pause(PlayerGAContext.ignore);
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

  Future<void> startStory() async {
    try {
      nextStepCallback = null;
      if (!isLoading) {
        setState(() {
          isLoading = true;
        });
      }
      myadamCtrl.waveHands();
      final onboardingPvd = ref.read(onboardingProvider);
      await Future.wait([
        onboardingPvd.initStoryCaptions(),
        onboardingPvd.initCreatorFlowSampleVoicepod(),
      ]);
      animatedTextCompleter = Completer();

      final curStep = OnboardingStep.welcomeUser1;
      await playVoiceOver(onboardingPvd.getMediaIdFor(curStep));

      setState(() {
        this.step = curStep;
        this.isLoading = false;
        this.error = null;
      });
      //Wait for text animation to complete
      // await animatedTextCompleter?.future;
      myadamCtrl.waveHands();

      nextStepCallback = () => introduceVoicepodCard();

      if (player.volume == 0 || player.value == null) {
        nextStepCallback?.call();
      }
    } catch (err, st) {
      Utils.reportError(err, st);
      setState(() {
        this.error = err;
        this.isLoading = false;
      });
    }
  }

  Future<void> introduceVoicepodCard() async {
    nextStepCallback = null;
    // animatedTextCompleter = Completer();

    setState(() {
      step = OnboardingStep.voicepodIntro;
      showPodIntroText = true;
    });
    //Wait for text animation to complete
    // await animatedTextCompleter?.future;
    await podStackFadeAnimCtrl.forward();
    ApiService.instance.markPodAsViewed(samplePost!.postId);
    onPlayPressed(samplePost!);
    await rotationController.forward();
    await actionButtonsFadeAnimCtrl.forward();
  }

  Future<void> onPlayPressed(Post post) async {
    nextStepCallback = null;
    PodPlayerV3.instance.init(
      podSourceFuture: () => SynchronousFuture(
        CreatorFlowSamplePod(
            ref.read(onboardingProvider).creatorFlowSamplePost!),
      ),
      context: context,
      autoplayQueue: false,
      gaContext: PlayerGAContext.voicepod_story_card,
      startIndex: 0,
    );
  }

  @override
  void dispose() {
    podStackFadeAnimCtrl.dispose();
    actionButtonsFadeAnimCtrl.dispose();
    rotationController.dispose();
    player.dispose();
    playerStateSub?.cancel();
    podPlayerValueStreamSub?.cancel();
    podPlayCompleteStreamSub?.cancel();
    ref.invalidate(onboardingProvider);
    rootRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onboardingPvd = ref.watch(onboardingProvider);
    Widget? body;
    if (isLoading) {
      body = Center(child: Text("Loading..."));
    } else if (error != null) {
      body = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Utils.getMessage4mError(error)),
            SizedBox(height: 8),
            CupertinoButton(
              child: Text("Retry"),
              onPressed: startStory,
            ),
          ],
        ),
      );
    }

    //Loading or error state
    if (body != null) {
      return OnboardingScaffold(
        body: body,
        canSkip: false,
      );
    }

    //Success State starts here

    Widget? animatedText;
    Widget topSection;
    // Widget podIntroSection = const SizedBox();

    final btnSpacing = MediaQuery.sizeOf(context).height * 0.03;
    Widget podsStack, bottomActionButtons;

    //Title
    OnboardingStep? titleStep;
    switch (step) {
      case OnboardingStep.welcomeUser1:
      case OnboardingStep.voicepodIntro:
      case OnboardingStep.playVoicepod:
      case OnboardingStep.createVoicepod:
      case OnboardingStep.letMeListenFirst:
        titleStep = OnboardingStep.welcomeUser1;
        break;
      default:
        titleStep = step;
    }
    if (titleStep != null) {
      animatedText = AnimatedTextKit(
        key: ValueKey(titleStep),
        animatedTexts: [
          TyperAnimatedRichText(
            onboardingPvd.getCaptionFor(titleStep),
            context: context,
            textAlign: TextAlign.left,
            style: ATextStyles.hind16SemiBold(AColors.textDark),
            onAnimationEnds: completeTextAnimation,
          ),
        ],
        totalRepeatCount: 0,
        isRepeatingAnimation: false,
        onFinished: completeTextAnimation,
      );
    }

    //Top section
    topSection = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          MyadamRiveAnimation(controller: myadamCtrl),
          SizedBox(width: 12),
          if (animatedText != null)
            Expanded(flex: 2, child: animatedText)
          else
            Spacer(flex: 2),
        ],
      ),
    );

    //Voicepod Intro text
    // Widget podIntroAnimatedText = Padding(
    //   padding: EdgeInsets.symmetric(horizontal: btnSpacing * 3),
    //   child: Stack(
    //     children: [
    //       Opacity(
    //         opacity: 0,
    //         child: MarkupText(
    //           onboardingPvd.getCaptionFor(OnboardingStep.voicepodIntro),
    //           style: ATextStyles.hind14Medium(),
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //       if (showPodIntroText)
    //         AnimatedTextKit(
    //           animatedTexts: [
    //             TyperAnimatedRichText(
    //               onboardingPvd
    //                   .getCaptionFor(OnboardingStep.voicepodIntro)
    //                   ,
    //               context: context,
    //               textAlign: TextAlign.center,
    //               style: ATextStyles.hind14Medium(),
    //             ),
    //           ],
    //           totalRepeatCount: 1,
    //           onFinished: completeTextAnimation,
    //         ),
    //     ],
    //   ),
    // );

    //Card
    podsStack = Container(
      alignment: Alignment(0, -0.2),
      margin: EdgeInsets.only(top: 8),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 376),
        child: FadeTransition(
          opacity: CurvedAnimation(
            parent: podStackFadeAnimCtrl,
            curve: Curves.easeIn,
          ),
          child: AnimatedBuilder(
            animation: rotationController,
            builder: (context, child) {
              final rotationValue = Tween<double>(
                begin: 0.0,
                end: -2.0,
              ).evaluate(rotationController);
              final rotationValue2 = Tween<double>(
                begin: 0.0,
                end: 2.0,
              ).evaluate(rotationController);
              return Stack(
                children: [
                  Transform.rotate(
                    angle: rotationValue2 * (pi / 150),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: DemoVoicepodCard(
                        samplePost!,
                        playButton: _VPPlayer(
                          post: samplePost!,
                          onPlayPressed: () => onPlayPressed(samplePost!),
                        ),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: rotationValue * (pi / 150),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: DemoVoicepodCard(
                        samplePost!,
                        playButton: _VPPlayer(
                          post: samplePost!,
                          onPlayPressed: () {
                            onPlayPressed(samplePost!);
                          },
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );

    // podIntroSection = Column(
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    // podIntroAnimatedText,
    // SizedBox(height: 16),
    // podsStack,
    // ],
    // );

    //create voicepod buttons
    bottomActionButtons = FadeTransition(
      opacity: CurvedAnimation(
        parent: actionButtonsFadeAnimCtrl,
        curve: Curves.easeIn,
      ),
      child: Column(
        children: [
          OutlinedButton(
            onPressed: () async {
              arreAnalytics.logEvent(GAEvent.ONB_CREATE_VOICEPOD_CLICK);
              await player.pause(PlayerGAContext.ignore);
              await PodPlayerV3.instance.stop();
              ArreNavigator.instance.push(
                  AGlobalPage(child: AB1CVSuggestionScreen(widget.language)));
            },
            style: OutlinedButton.styleFrom(
                backgroundColor: AColors.tealPrimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 40),
                foregroundColor: Colors.white,
                textStyle: ATextStyles.hind14Bold()),
            child: Text(
                onboardingPvd.getCaptionFor(OnboardingStep.createVoicepod)),
          ),
          TextButton(
            onPressed: () async {
              arreAnalytics.logEvent(GAEvent.ONB_LET_ME_LISTEN_CLICK);
              await player.pause(PlayerGAContext.ignore);
              await PodPlayerV3.instance.stop();
              ArreNavigator.instance.push(AGlobalPage(
                child: ABV2VoicepodsStoryScreen(skipWelcomeVoiceover: true),
              ));
            },
            child: Text(
              onboardingPvd.getCaptionFor(OnboardingStep.letMeListenFirst),
              style: ATextStyles.hind14Bold(),
            ),
          ),
          SizedBox(height: btnSpacing),
        ],
      ),
    );

    body = Column(
      children: [
        SizedBox(height: btnSpacing),
        topSection,
        Expanded(child: Center(child: podsStack)),
        bottomActionButtons,
        SizedBox(height: btnSpacing),
      ],
    );

    return OnboardingScaffold(
      body: body,
      canSkip: false,
    );

    // child = _MyadamRiveAnimation(alignment: Alignment.center);
  }
}

class _VPPlayer extends ConsumerWidget {
  final Post post;
  final void Function() onPlayPressed;

  const _VPPlayer({
    required this.post,
    Key? key,
    required this.onPlayPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget playButton = StreamBuilder(
      stream: PodPlayerV3.instance.activePod,
      builder: (context, snapshot) {
        Widget playButton;
        if (snapshot.data?.entityId == post.postId) {
          playButton = Stack(
            children: [
              AudioPlayerButtonState.gradient(
                player: PodPlayerV3.instance,
                size: 40,
                iconSize: 20,
                padding: EdgeInsets.zero,
                gaContext: PlayerGAContext.voicepod_story_card,
                animatePlaying: false,
              ),
              IgnorePointer(
                child: Container(
                  height: 40,
                  width: 40,
                  child: StreamBuilder<PlayerValue>(
                    stream: PodPlayerV3.instance.playerValueStream,
                    initialData: PlayerValue.zero,
                    builder: (context, playerValueSnapshot) {
                      return CircularProgressIndicator(
                        value: playerValueSnapshot.data?.playedValue ?? 0.0,
                        strokeWidth: 2,
                        color: AColors.tealPrimary,
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        } else {
          playButton = ArreGradientIconButton(
            icon: Icon(
              ArreIconsV2.play_filled,
              size: 20,
              color: AColors.white,
            ),
            padding: EdgeInsets.zero,
            size: 40,
            onPressed: onPlayPressed,
          );
        }
        return playButton;
      },
    );

    return playButton;
  }
}
