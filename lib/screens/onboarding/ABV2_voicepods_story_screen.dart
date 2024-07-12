import 'dart:async';
import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/main.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/onboarding_provider.dart';
import 'package:arre_frontend_flutter/screens/onboarding/curating_feed_animation_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_markup_text.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/myadam_rive_animation.dart';
import 'package:arre_frontend_flutter/widgets/onboarding_scaffold.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/play_pause_button.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ABV2VoicepodsStoryScreen extends ConsumerStatefulWidget with ArreScreen {
  final bool skipWelcomeVoiceover;

  const ABV2VoicepodsStoryScreen({
    super.key,
    this.skipWelcomeVoiceover = false,
  });

  @override
  ConsumerState createState() => _ABV2VoicepodsStoryScreenState();

  @override
  String get screenName => GAScreen.VOICEPOD_STORY_SCREEN;

  @override
  Uri? get uri => null;
}

class _ABV2VoicepodsStoryScreenState
    extends ConsumerState<ABV2VoicepodsStoryScreen>
    with TickerProviderStateMixin, RouteAware {
  int currentShownIndex = 0;
  final MyadamController myadamCtrl = MyadamController();
  late final AnimationController podStackFadeAnimCtrl = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 400),
    debugLabel: "podStackFadeAnimCtrl",
  );
  late final AnimationController podStackOffsetAnimCtrl = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 240),
    debugLabel: "podStackOffsetAnimCtrl",
  );
  late final AnimationController likeBtnScaleAnimCtrl = AnimationController(
    vsync: this,
    duration: Duration(seconds: 1),
    lowerBound: 0.9,
    upperBound: 1.0,
    debugLabel: "likeBtnScaleAnimCtrl",
  );
  late final AnimationController likeBtnFadeAnimCtrl = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 600),
    reverseDuration: Duration(milliseconds: 400),
    debugLabel: "likeBtnFadeAnimCtrl",
  );
  late final AnimationController podIntroSlideAnimCtrl = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 500),
    reverseDuration: Duration(milliseconds: 680),
    debugLabel: "podIntroSlideAnimCtrl",
  );

  late final AnimationController playBtnScaleAnimCtrl = AnimationController(
    vsync: this,
    duration: Duration(seconds: 1),
    lowerBound: 0.9,
    upperBound: 1.0,
    debugLabel: "playBtnScaleAnimCtrl",
  );

  void Function()? _nextStepCallback;
  Timer? nextStepCallbackTimer;
  StreamSubscription<PlayerState>? playerStateSub;
  StreamSubscription<bool>? podIsPlayingValueStreamSub;
  StreamSubscription<PlayerValue>? podPlayerValueStreamSub;
  StreamSubscription<void>? podPlayCompleteStreamSub;

  // Timer? autoPlayTimer;
  bool showPodIntroText = false;
  bool isTapReactionToLikeOrDislike = false;

  final cardSwipeCtrl = ACardSwiperController();

  bool isLoading = true, responded2AllPods = false;
  dynamic error;
  Completer<void>? animatedTextCompleter;

  OnboardingStep? _step;

  OnboardingStep? get step => _step;

  set step(OnboardingStep? value) {
    _step = value;
    ALogger.d("Current Step is $value");
  }

  SimpleAudioPlayerProvider2 player =
      SimpleAudioPlayerProvider2("voice_over-ABV2VoicepodsStoryScreen");

  List<Post>? get posts => ref.read(onboardingProvider).data;

  @override
  void initState() {
    super.initState();
    podIntroSlideAnimCtrl.value = 1.0;
    if (widget.skipWelcomeVoiceover) {
      skipStory();
    } else {
      startStory();
    }
    playerStateSub = player.playerStateStream.listen((event) {
      if (event == PlayerState.completed) {
        myadamCtrl.speak(false);
        myadamCtrl.explain(false);
        ALogger.d("Story state $step Voiceover play completed ");
        nextStepCallback?.call();
      }
    });
    podPlayCompleteStreamSub =
        PodPlayerV3.instance.onPlayerComplete.listen((event) {
      ALogger.d("Story state $step pod play completed ");
      likeUnlikePrompt();
    });
    podIsPlayingValueStreamSub =
        PodPlayerV3.instance.playingValueStream.listen((isPlaying) {
      ALogger.d("Story state $step pod playing $isPlaying ");
      // autoPlayTimer?.cancel();
      if (isPlaying) {
        myadamCtrl.turnOffAllAnimations();
        player.pause(PlayerGAContext.ignore);
        playBtnScaleAnimCtrl.forward();
      } else if (step == OnboardingStep.playVoicepod) {
        likeBtnFadeAnimCtrl.forward();
      }
    });
    podPlayerValueStreamSub =
        PodPlayerV3.instance.playerValueStream.listen((event) {
      if (event.position > Duration(seconds: 3)) {
        ALogger.d("Story state $step pod player value $event");
        podPlayerValueStreamSub?.cancel();
        likeBtnFadeAnimCtrl.forward();
      }
    });
  }

  void Function()? get nextStepCallback => _nextStepCallback;

  set nextStepCallback(void Function()? value) {
    if (value == null) {
      nextStepCallbackTimer?.cancel();
      _nextStepCallback = value;
    } else {
      // nextStepCallbackTimer = Timer(
      //   Duration(milliseconds: 10000),
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

  @override
  void didPushNext() {
    PodPlayerV3.instance.stop();
    super.didPushNext();
  }

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
              myadamCtrl.speak(true);
            }
          })
          .timeout(Duration(seconds: 3))
          .catchError((err, st) {
            player.pause(PlayerGAContext.ignore);
            Utils.reportError(err, st);
          });
    }
  }

  Future<void> skipStory() async {
    try {
      nextStepCallback = null;
      if (!isLoading) {
        setState(() {
          isLoading = true;
        });
      }
      step = OnboardingStep.welcomeUser2;
      showPodIntroText = true;
      podIntroSlideAnimCtrl.value = 0.0;
      podStackFadeAnimCtrl.value = 1.0;
      podStackOffsetAnimCtrl.value = 1.0;
      final onboardingPvd = ref.read(onboardingProvider);
      await Future.wait([
        onboardingPvd.initStoryCaptions(),
        onboardingPvd.initOnboardingFeed(),
      ]);
      ref.read(onboardingProvider).trackImpression(0);
      onPlayPressed(onboardingPvd.data!.first);

      setState(() {
        this.step = OnboardingStep.welcomeUser2;
        this.isLoading = false;
        this.error = null;
      });
    } catch (err, st) {
      Utils.reportError(err, st);
      setState(() {
        this.error = err;
        this.isLoading = false;
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
      final onboardingPvd = ref.read(onboardingProvider);
      await Future.wait([
        onboardingPvd.initStoryCaptions(),
        onboardingPvd.initOnboardingFeed(),
      ]);
      animatedTextCompleter = Completer();
      final curStep = OnboardingStep.welcomeUser2;
      await playVoiceOver(onboardingPvd.getMediaIdFor(curStep));
      myadamCtrl.waveHands();

      arreAnalytics.logEvent(GAEvent.ONB_STORY_WELCOME);
      setState(() {
        this.step = curStep;
        this.isLoading = false;
        this.error = null;
      });
      //Wait for text animation to complete
      await animatedTextCompleter?.future;

      nextStepCallback = () => introduceVoicepodCard();

      if (player.volume == 0 || player.value == null) {
        nextStepCallback?.call();
      }
    } catch (err, st) {
      arreAnalytics.logEvent(GAEvent.ONB_STORY_LOADING_FAILED);
      Utils.reportError(err, st);
      setState(() {
        this.error = err;
        this.isLoading = false;
      });
    }
  }

  Future<void> introduceVoicepodCard() async {
    nextStepCallback = null;
    animatedTextCompleter = Completer();
    await playVoiceOver(ref
        .read(onboardingProvider)
        .getMediaIdFor(OnboardingStep.voicepodIntro));
    arreAnalytics.logEvent(GAEvent.ONB_STORY_INTRO_PODS);
    setState(() {
      step = OnboardingStep.voicepodIntro;
      showPodIntroText = true;
    });
    myadamCtrl.explain(true);
    //Wait for text animation to complete
    await animatedTextCompleter?.future;
    await podStackFadeAnimCtrl.forward();
    ref.read(onboardingProvider).trackImpression(0);
    nextStepCallback = () => guide2PlayVoicepod();
  }

  Future<void> guide2PlayVoicepod({bool voiceOver = true}) async {
    nextStepCallback = null;
    playBtnScaleAnimCtrl.repeat(reverse: true);
    if (voiceOver) {
      await playVoiceOver(ref
          .read(onboardingProvider)
          .getMediaIdFor(OnboardingStep.playVoicepod));
    }
    arreAnalytics.logEvent(GAEvent.ONB_STORY_VO_TO_PLAY);
    setState(() {
      step = OnboardingStep.playVoicepod;
    });
  }

  Future<void> onPlayPressed(Post post) async {
    // autoPlayTimer?.cancel();
    nextStepCallback = null;
    podIntroSlideAnimCtrl
        .reverse()
        .then((value) => podStackOffsetAnimCtrl.forward());
    final onboardingPvd = ref.read(onboardingProvider);
    final index = onboardingPvd.data!.indexOf(post);

    PodPlayerV3.instance
      ..play(PlayerGAContext.ignore)
      ..init(
        podSourceFuture: () => SynchronousFuture(ref.read(onboardingProvider)),
        context: context,
        autoplayQueue: false,
        gaContext: PlayerGAContext.voicepod_story_card,
        startIndex: index,
      );
    onboardingPvd.trackPlay(index);
  }

  Future<void> likeUnlikePrompt() async {
    nextStepCallback = null;
    final onboardingPvd = ref.read(onboardingProvider);
    arreAnalytics.logEvent(GAEvent.ONB_STORY_VO_TO_LIKE_OR_DISLIKE);
    setState(() {
      step = OnboardingStep.likeUnlikeVoicepod;
    });
    if (onboardingPvd.likedPods.isEmpty && onboardingPvd.dislikedPods.isEmpty) {
      await likeBtnFadeAnimCtrl.forward();
      await playVoiceOver(
          onboardingPvd.getMediaIdFor(OnboardingStep.likeUnlikeVoicepod));
      likeBtnScaleAnimCtrl.repeat(reverse: true);
      nextStepCallback = () {
        nextStepCallback = null;
        if (step == OnboardingStep.likeUnlikeVoicepod) {
          playVoiceOver(onboardingPvd
              .getMediaIdFor(OnboardingStep.guide2ThumbsUpThumbsDown));
        }
      };
    }

    //User not interacted with like buttons. So we wait for 10 sec and dislike it
    // autoPlayTimer?.cancel();
    // autoPlayTimer = Timer(Duration(seconds: 20), () async {
    //   nextStepCallback = null;
    //   await playVoiceOver(onboardingPvd
    //       .getMediaIdFor(OnboardingStep.notInteractedWithLikeButtons));
    //   arreAnalytics.logEvent(GAEvent.ONB_STORY_NOT_INTERACTED_WITH_POD);
    //   setState(() {
    //     step = OnboardingStep.notInteractedWithLikeButtons;
    //   });
    //   nextStepCallback = () => cardSwipeCtrl.swipe(CardSwiperDirection.left);
    // });
  }

  Future<void> moveToCuratingFeedScreen() async {
    await likeBtnFadeAnimCtrl.reverse();
    ArreNavigator.instance.replace(
      context,
      AGlobalPage(child: CuratingFeedAnimationScreen()),
    );
  }

  void skipToNext(int? curIndex) {
    // autoPlayTimer?.cancel();

    final playCallback = (int index) {
      PodPlayerV3.instance
        ..setVolume(1.0)
        ..init(
          podSourceFuture: () =>
              SynchronousFuture(ref.read(onboardingProvider)),
          context: context,
          autoplayQueue: false,
          gaContext: PlayerGAContext.ignore,
          startIndex: index,
        )
        ..play(PlayerGAContext.ignore);
      ref.read(onboardingProvider).trackPlay(index);
    };

    if (curIndex != null) {
      playCallback(curIndex);
      // } else if (curIndex != null) {
      //   autoPlayTimer = Timer(Duration(seconds: 1), () {
      //     playCallback(curIndex);
      //   });
    } else {
      PodPlayerV3.instance.stop();
    }
  }

  Future<void> likeVoicepod(int prevIndex, int? curIndex) async {
    // autoPlayTimer?.cancel();
    ref.read(onboardingProvider).like(
          prevIndex,
          isTapReactionToLikeOrDislike ? "tap" : "swipe",
        );
    isTapReactionToLikeOrDislike = false;

    myadamCtrl.thumbsUp(true);
    await player.pause(PlayerGAContext.ignore);
    likeBtnScaleAnimCtrl.forward();
    skipToNext(curIndex);
    setState(() {
      responded2AllPods = ref.read(onboardingProvider).hasResponded2AllPods;
      step = curIndex != null ? OnboardingStep.likedVoicepod : null;
    });
    if (responded2AllPods) moveToCuratingFeedScreen();
  }

  Future<void> dislikeVoicepod(int prevIndex, int? curIndex) async {
    // autoPlayTimer?.cancel();
    ref.read(onboardingProvider).dislike(
          prevIndex,
          isTapReactionToLikeOrDislike ? "tap" : "swipe",
        );
    isTapReactionToLikeOrDislike = false;
    await player.pause(PlayerGAContext.ignore);
    likeBtnScaleAnimCtrl.forward();
    skipToNext(curIndex);
    if (step != OnboardingStep.notInteractedWithLikeButtons &&
        curIndex != null) {
      myadamCtrl.sad(true);
      setState(() {
        responded2AllPods = ref.read(onboardingProvider).hasResponded2AllPods;
        step = OnboardingStep.dislikedVoicepod;
      });
    } else {
      setState(() {
        responded2AllPods = ref.read(onboardingProvider).hasResponded2AllPods;
      });
    }
    if (responded2AllPods) moveToCuratingFeedScreen();
  }

  @override
  void dispose() {
    podStackFadeAnimCtrl.dispose();
    player.dispose();
    playerStateSub?.cancel();
    playBtnScaleAnimCtrl.dispose();
    podPlayerValueStreamSub?.cancel();
    podPlayCompleteStreamSub?.cancel();
    likeBtnFadeAnimCtrl.dispose();
    podIsPlayingValueStreamSub?.cancel();
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
        player: player,
        progress: 0.0,
        canSkip: true,
      );
    }

    //Success State starts here

    Widget? animatedText;
    Widget topSection;
    Widget bottomSection = const SizedBox();

    //Title
    OnboardingStep? titleStep;
    bool animateTitle = true;
    switch (step) {
      case OnboardingStep.welcomeUser2:
      case OnboardingStep.voicepodIntro:
      case OnboardingStep.playVoicepod:
        titleStep = OnboardingStep.welcomeUser2;
        animateTitle = !widget.skipWelcomeVoiceover;
        break;
      default:
        titleStep = step;
    }
    if (titleStep != null) {
      final titleTextStyle = ATextStyles.hind16SemiBold(AColors.textDark);
      if (animateTitle) {
        animatedText = AnimatedTextKit(
          key: ValueKey(titleStep),
          animatedTexts: [
            TyperAnimatedRichText(
              onboardingPvd.getCaptionFor(titleStep),
              context: context,
              style: titleTextStyle,
              onAnimationEnds: completeTextAnimation,
            ),
          ],
          totalRepeatCount: 1,
          onFinished: completeTextAnimation,
        );
      } else {
        animatedText = AMarkupText(
          onboardingPvd.getCaptionFor(titleStep),
          style: titleTextStyle,
        );
      }
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

    //Bottom Section
    Widget podsStack, likeUnlikeButtons, podIntroCaptionWidget;
    final btnSpacing = MediaQuery.sizeOf(context).height * 0.03;

    //Voicepod Intro text
    final podIntroTextStyle = TextStyle(
      fontSize: 14,
      fontFamily: "Hind",
      fontWeight: FontWeight.w500,
    );
    final podIntroText =
        onboardingPvd.getCaptionFor(OnboardingStep.voicepodIntro);
    final podIntroMarkupText = AMarkupText(
      podIntroText,
      textAlign: TextAlign.center,
      style: podIntroTextStyle,
    );
    Widget? podIntroAnimatedText;

    if (showPodIntroText) {
      podIntroAnimatedText = AnimatedTextKit(
        key: ValueKey(OnboardingStep.voicepodIntro),
        animatedTexts: [
          TyperAnimatedRichText(
            onboardingPvd.getCaptionFor(OnboardingStep.voicepodIntro),
            context: context,
            textAlign: TextAlign.center,
            style: podIntroTextStyle,
            onAnimationEnds: completeTextAnimation,
          ),
        ],
        totalRepeatCount: 1,
        onFinished: completeTextAnimation,
      );
    }

    podIntroCaptionWidget = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
      child: ClipPath(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.0,
              child: podIntroMarkupText,
            ),
            SlideTransition(
              position: Tween(
                begin: Offset(0, 2),
                end: Offset(0, 0),
              ).animate(podIntroSlideAnimCtrl),
              child: widget.skipWelcomeVoiceover
                  ? podIntroMarkupText
                  : podIntroAnimatedText,
            ),
          ],
        ),
      ),
    );

    //Card
    podsStack = Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 376),
        child: FadeTransition(
          opacity: CurvedAnimation(
            parent: podStackFadeAnimCtrl,
            curve: Curves.easeIn,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (posts!.isNotEmpty)
                AnimatedBuilder(
                  animation: podStackOffsetAnimCtrl,
                  builder: (context, child) {
                    final yOffset = Tween(begin: 0.0, end: -26.0)
                        .evaluate(podStackOffsetAnimCtrl);
                    return CardSwiper(
                      controller: cardSwipeCtrl,
                      numberOfCardsDisplayed: posts!.length.clamp(0, 5),
                      cardBuilder: (context, index, horizontalOffsetPercentage,
                          verticalOffsetPercentage) {
                        return _VoicepodCard(
                          post: posts![index],
                          playBtnScaleAnim:
                              index == 0 ? playBtnScaleAnimCtrl : null,
                          onPlayPressed: () => onPlayPressed(posts![index]),
                        );
                      },
                      onSwipe: (previousIndex, currentIndex, direction) {
                        currentShownIndex = currentIndex ?? posts!.length;
                        ALogger.d("Swipe card: previousIndex:$previousIndex, "
                            "currentIndex:$currentIndex, "
                            "direction:$direction, "
                            "Post: ${currentIndex != null ? posts![currentIndex].title : null}");
                        if (direction == CardSwiperDirection.right) {
                          likeVoicepod(previousIndex, currentIndex);
                        } else if (direction == CardSwiperDirection.left) {
                          dislikeVoicepod(previousIndex, currentIndex);
                        }
                        if (currentIndex != null) {
                          ref
                              .read(onboardingProvider)
                              .trackImpression(currentIndex);
                        }
                        return true;
                      },
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      threshold: 80,
                      cardsCount: posts!.length,
                      isLoop: false,
                      backCardOffset: Offset(0, yOffset),
                      maxAngle: 10,
                      allowedSwipeDirection: AllowedSwipeDirection.symmetric(
                          horizontal: true, vertical: false),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );

    //Like Dislike buttons
    likeUnlikeButtons = Padding(
      padding: EdgeInsets.symmetric(vertical: btnSpacing),
      child: FadeTransition(
        opacity: CurvedAnimation(
          parent: likeBtnFadeAnimCtrl,
          curve: Curves.easeIn,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ScaleTransition(
              scale: likeBtnScaleAnimCtrl,
              child: SizedBox.square(
                dimension: 60,
                child: FloatingActionButton(
                  heroTag: "thumbs_down",
                  onPressed: () {
                    isTapReactionToLikeOrDislike = true;
                    PodPlayerV3.instance.setVolume(0.0);
                    cardSwipeCtrl.swipe(CardSwiperDirection.left);
                  },
                  child: Icon(Icons.thumb_down),
                  foregroundColor: Colors.white,
                  backgroundColor: AColors.red,
                ),
              ),
            ),
            SizedBox(),
            ScaleTransition(
              scale: likeBtnScaleAnimCtrl,
              child: SizedBox.square(
                dimension: 60,
                child: FloatingActionButton(
                  heroTag: "thumbs_up",
                  onPressed: () {
                    isTapReactionToLikeOrDislike = true;
                    PodPlayerV3.instance.setVolume(0.0);
                    cardSwipeCtrl.swipe(CardSwiperDirection.right);
                  },
                  child: Icon(Icons.thumb_up),
                  foregroundColor: Colors.white,
                  backgroundColor: AColors.tealPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    bottomSection = Column(
      children: [
        podIntroCaptionWidget,
        Expanded(child: podsStack),
        likeUnlikeButtons,
      ],
    );

    body = Column(
      children: [
        SizedBox(height: btnSpacing),
        Expanded(child: topSection),
        SizedBox(height: btnSpacing * 1.6),
        Expanded(flex: 4, child: bottomSection),
        // CupertinoButton(
        //   child: Text("DEBUG"),
        //   onPressed: () async {
        //     myadamCtrl.explain(true);
        //     await Future.delayed(Duration(seconds: 3));
        //     myadamCtrl.superHandSign(true);
        //     await Future.delayed(Duration(seconds: 3));
        //     myadamCtrl.thumbsUp(true);
        //     await Future.delayed(Duration(seconds: 3));
        //     myadamCtrl.speak(true);
        //     await Future.delayed(Duration(seconds: 3));
        //     myadamCtrl.waveHands();
        //     await Future.delayed(Duration(seconds: 3));
        //   },
        // ),
      ],
    );

    return WillPopScope(
      onWillPop: () async {
        if (currentShownIndex > 0) {
          setState(() {
            currentShownIndex--;
          });
          cardSwipeCtrl.undo();
          PodPlayerV3.instance.skipToPrevious(PlayerGAContext.ignore);
          return false;
        }
        return true;
      },
      child: OnboardingScaffold(
        body: body,
        canSkip: true,
        progress: currentShownIndex / onboardingPvd.totalItems,
        player: player,
        onMuteChanged: (isMuted) {},
      ),
    );

    // child = _MyadamRiveAnimation(alignment: Alignment.center);
  }
}

class _VoicepodCard extends ConsumerStatefulWidget {
  final Post post;
  final Animation<double>? playBtnScaleAnim;
  final void Function() onPlayPressed;

  const _VoicepodCard({
    required this.post,
    required this.playBtnScaleAnim,
    required this.onPlayPressed,
  });

  @override
  ConsumerState createState() => __VoicepodCardState();
}

class __VoicepodCardState extends ConsumerState<_VoicepodCard> {
  @override
  Widget build(BuildContext context) {
    final post = widget.post;
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AColors.BgLight,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AColors.BgStroke, width: 0.5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              UserAvatarV2(
                size: 24,
                mediaId: post.user?.profilePictureMediaId,
                userName: post.user?.username ?? "AV",
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  "@${post.user?.username ?? "Arré Voice"}",
                  style: TextStyle(
                    color: Color(0xFFE4F1EE),
                    fontFamily: 'Hind',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    // height: 2,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ExpandableText(
                    post.title,
                    expandText: "see more",
                    animation: true,
                    maxLines: 3,
                    style: ATextStyles.user16Regular(AColors.white),
                    linkStyle: ATextStyles.user12Regular(AColors.textLight),
                    hashtagStyle:
                        ATextStyles.user16Regular(AColors.tealPrimary),
                    onHashtagTap: (tag) {},
                  ),
                ),
                Flexible(
                  child: ArreNetworkImage.mediaId(
                    post.imageMediaId ?? "", //TODO default image
                    showThumbnail: true,
                    fit: BoxFit.cover,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: _VPPlayer(
              post: post,
              padding: EdgeInsets.zero,
              playBtnScaleAnim: widget.playBtnScaleAnim,
              onPlayPressed: widget.onPlayPressed,
            ),
          )
        ],
      ),
    );
  }
}

class _VPPlayer extends ConsumerWidget {
  final Post post;
  final EdgeInsets padding;
  final void Function() onPlayPressed;
  final Animation<double>? playBtnScaleAnim;

  const _VPPlayer({
    required this.post,
    required this.padding,
    Key? key,
    required this.onPlayPressed,
    this.playBtnScaleAnim,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: padding,
      child: StreamBuilder<MediaItem?>(
          stream: PodPlayerV3.instance.mediaItem,
          builder: (context, snapshot) {
            Widget child = Stack(
              children: [
                AudioPlayerButtonState.gradient(
                  player: PodPlayerV3.instance,
                  size: 56,
                  iconSize: 26,
                  initCallback: onPlayPressed,
                  gaContext: PlayerGAContext.voicepod_story_card,
                  animatePlaying: false,
                ),
                if (snapshot.data?.entityId == post.postId)
                  IgnorePointer(
                    child: Container(
                      height: 62,
                      width: 62,
                      margin: EdgeInsets.all(1),
                      padding: const EdgeInsets.all(2),
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

            if (playBtnScaleAnim != null) {
              child = ScaleTransition(
                scale: playBtnScaleAnim!,
                child: child,
              );
            }

            return child;
          }),
    );
  }
}

class TyperAnimatedRichText extends TyperAnimatedText {
  late RichText richText;
  late final TextStyle style;
  void Function()? onAnimationEnds;
  late int actualCharacters;

  TyperAnimatedRichText(
    super.text, {
    required BuildContext context,
    this.onAnimationEnds,
    TextStyle? style,
    TextAlign textAlign = TextAlign.start,
  }) : super(speed: Duration(milliseconds: 20), textAlign: textAlign) {
    this.style = style ?? ATextStyles.user16Regular();
    richText = AMarkupText(text, style: this.style).build(context) as RichText;
    actualCharacters = (richText.text as TextSpan).children?.fold<int>(
            0,
            (previousValue, element) =>
                previousValue +
                (element is TextSpan ? (element.text?.length ?? 0) : 1)) ??
        text.length;
    Timer(
      Duration(milliseconds: 20 * actualCharacters),
      () => onAnimationEnds?.call(),
    );
  }

  @override
  Widget textWidget(String data) {
    final rootSpan = richText.text as TextSpan;
    List<InlineSpan> currentSpans = [];
    var remainingChars = data.length;

    for (InlineSpan span in rootSpan.children!) {
      final curSpanChars = span is TextSpan ? span.text?.length ?? 0 : 1;
      var curSpanChars2Consider = min(remainingChars, curSpanChars);
      if (curSpanChars2Consider > 0) {
        if (span is TextSpan) {
          currentSpans.add(
            TextSpan(
              text: span.text?.substring(0, curSpanChars2Consider),
              style: span.style,
              children: span.children,
              locale: span.locale,
              onEnter: span.onEnter,
              onExit: span.onExit,
              recognizer: span.recognizer,
              spellOut: span.spellOut,
              mouseCursor: span.mouseCursor,
              semanticsLabel: span.semanticsLabel,
            ),
          );
        } else {
          currentSpans.add(span);
        }
        remainingChars -= curSpanChars2Consider;
      } else {
        break;
      }
    }

    return RichText(
      textDirection: TextDirection.ltr,
      textAlign: textAlign,
      text: TextSpan(
        style: style,
        children: currentSpans,
      ),
    );
  }
}

// class _CuratingFeedAnimation extends StatefulWidget {
//   const _CuratingFeedAnimation({super.key});
//
//   @override
//   State<_CuratingFeedAnimation> createState() => _CuratingFeedAnimationState();
// }
//
// class _CuratingFeedAnimationState extends State<_CuratingFeedAnimation> {
//   @override
//   Widget build(BuildContext context) {
//     return  Text("Curating Feed");
//     return Center(
//       child: const Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Expanded(
//           //   child: Center(
//           //     child: RiveAnimation.asset(ArreAssets.CURATING_FEED_ANIM),
//           //   ),
//           // ),
//           // SizedBox(height: 56),
//           Text("Curating Feed"),
//         ],
//       ),
//     );
//   }
// }

class ACardSwiperController extends CardSwiperController {
  @override
  Future<void> dispose() async {}

  Future<void> close() => super.dispose();
}
