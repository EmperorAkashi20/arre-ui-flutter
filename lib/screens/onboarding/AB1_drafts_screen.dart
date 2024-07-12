part of AB1WelcomeScreen;

class AB1CVDraftedScreen extends ConsumerStatefulWidget with ArreScreen {
  final CSDraft draft;
  final Future<String> Function() postCallback;

  const AB1CVDraftedScreen({
    Key? key,
    required this.draft,
    required this.postCallback,
  }) : super(key: key);

  @override
  _AB1CVDraftedScreenState createState() => _AB1CVDraftedScreenState();

  @override
  String get screenName => GAScreen.AB1_CV_DRAFTED_SCREEN;

  @override
  Uri? get uri => null;
}

class _AB1CVDraftedScreenState extends ConsumerState<AB1CVDraftedScreen>
    with TickerProviderStateMixin {
  final MyadamController myadamCtrl = MyadamController();
  late final AnimationController draftFadeAnimCtrl =
      AnimationController(vsync: this, duration: Duration(milliseconds: 400));
  late final AnimationController actionButtonFadeAnimCtrl =
      AnimationController(vsync: this, duration: Duration(milliseconds: 1000));

  void Function()? nextStepCallback;
  StreamSubscription<PlayerState>? playerStateSub;
  StreamSubscription<bool>? podIsPlayingValueStreamSub;
  StreamSubscription<PlayerValue>? podPlayerValueStreamSub;
  StreamSubscription<void>? podPlayCompleteStreamSub;

  dynamic error;
  Completer<void>? animatedTextCompleter;

  OnboardingStep? _step;

  OnboardingStep? get step => _step;

  set step(OnboardingStep? value) {
    _step = value;
  }

  SimpleAudioPlayerProvider2 player = SimpleAudioPlayerProvider2("voice_over1");

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
  }

  void completeTextAnimation() {
    if (animatedTextCompleter?.isCompleted == false) {
      animatedTextCompleter!.complete();
    }
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

  Future<void> startStory() async {
    try {
      nextStepCallback = null;
      myadamCtrl.waveHands();
      myadamCtrl.thumbsUp(true);
      animatedTextCompleter = Completer();
      final voiceoverMediaId = ref
          .read(onboardingProvider)
          .getMediaIdFor(OnboardingStep.firstVoicepodUp);
      await playVoiceOver(voiceoverMediaId);
      await draftFadeAnimCtrl.forward();
      //Wait for text animation to complete
      await animatedTextCompleter?.future;
      await actionButtonFadeAnimCtrl.forward();
    } catch (err, st) {
      Utils.reportError(err, st);
      setState(() {
        this.error = err;
      });
    }
  }

  Future<void> postVoicepod() async {
    arreAnalytics.logEvent(GAEvent.ONB_DRAFT_POD_POST_CLICK);
    try {
      await ref.read(ensureOnboarded.future);
      try {
        final String postId =
            await showFutureLoaderDialog<String>(widget.postCallback());
        await arrePref.setBool(PrefKey.CAN_SHOW_ADD_LANG_SHEET, false);
        ArreNavigator.instance.refresh(
          AAppPage(
            child: VoicepodDetailScreen(
              postId: postId,
              showFirstTimeCta: true,
            ),
          ),
        );
      } catch (err) {
        showErrorSnackBar(err);
      }
    } catch (err, st) {
      Utils.reportError(err, st);
    }
  }

  @override
  void dispose() {
    draftFadeAnimCtrl.dispose();
    actionButtonFadeAnimCtrl.dispose();
    player.dispose();
    playerStateSub?.cancel();
    podPlayerValueStreamSub?.cancel();
    podPlayCompleteStreamSub?.cancel();
    super.dispose();
  }

  Future<void> _showShareClipPopup({
    required BuildContext context,
    required CSDraft draft,
  }) async {
    arreAnalytics.logEvent(GAEvent.ONB_DRAFT_POD_SHARE_CLICK);
    await showModalBottomSheet(
      useRootNavigator: true,
      backgroundColor: Color(0xFFF6FCFB),
      elevation: 10,
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      builder: (BuildContext context) {
        return Container(
          child: ShareDraftClip(draft),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final onboardingPvd = ref.watch(onboardingProvider);
    Widget? body;
    if (error != null) {
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
        canSkip: true,
      );
    }

    //Success State starts here
    Widget? animatedText;
    Widget topSection;

    animatedText = AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedRichText(
          onboardingPvd.getCaptionFor(OnboardingStep.firstVoicepodUp),
          context: context,
          style: ATextStyles.hind16SemiBold(AColors.textDark),
        ),
      ],
      totalRepeatCount: 1,
      onFinished: completeTextAnimation,
    );

    //Top section
    topSection = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          MyadamRiveAnimation(controller: myadamCtrl),
          SizedBox(width: 12),
          Expanded(flex: 2, child: animatedText)
        ],
      ),
    );

    //Bottom Section
    Widget draftTile, bottomActionButtons;
    final btnSpacing = MediaQuery.sizeOf(context).height * 0.03;

    //draft
    draftTile = Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment(0, -0.3),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 376),
          child: FadeTransition(
            opacity: CurvedAnimation(
              parent: draftFadeAnimCtrl,
              curve: Curves.easeIn,
            ),
            child: _DraftTile(draft: widget.draft),
          ),
        ),
      ),
    );

    //share and post buttons
    bottomActionButtons = FadeTransition(
      opacity: CurvedAnimation(
        parent: actionButtonFadeAnimCtrl,
        curve: Curves.easeIn,
      ),
      child: Column(
        children: [
          OutlinedButton(
            onPressed: () {
              _showShareClipPopup(
                context: context,
                draft: widget.draft,
              );
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.6, 40),
              maximumSize: Size(MediaQuery.of(context).size.width * 0.8, 40),
              foregroundColor: Colors.white,
              side: BorderSide(color: AColors.BgStroke),
              textStyle: ATextStyles.hind14Bold(),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(onboardingPvd
                      .getCaptionFor(OnboardingStep.shareOnSocial)),
                  Icon(ArreIconsV2.wa_outline),
                  Icon(ArreIconsV2.instagram_outline),
                  Icon(ArreIconsV2.facebook)
                ].joinSeparator(Container(width: 10))),
          ),
          SizedBox(height: btnSpacing * 0.3),
          OutlinedButton(
            onPressed: postVoicepod,
            style: OutlinedButton.styleFrom(
                backgroundColor: AColors.tealPrimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 40),
                foregroundColor: Colors.white,
                textStyle: ATextStyles.hind14Bold()),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(onboardingPvd
                    .getCaptionFor(OnboardingStep.createProfile2Share)),
                SizedBox(width: 8),
                Image.asset(
                  ArreAssets.WAVES_IMG,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ],
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
        Expanded(child: draftTile),
        bottomActionButtons,
      ],
    );

    return OnboardingScaffold(
      body: body,
      canSkip: true,
      player: player,
      onMuteChanged: (isMuted) {},
    );
  }
}

class _DraftTile extends StatelessWidget {
  final CSDraft draft;

  const _DraftTile({
    Key? key,
    required this.draft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ExpandableText(
        draft.title ?? "",
        expandText: "see more",
        animation: true,
        maxLines: 3,
        style: ATextStyles.user14Regular(AColors.white),
        linkStyle: ATextStyles.user12Regular(AColors.textLight),
        hashtagStyle: ATextStyles.user14Regular(AColors.tealPrimary),
      ),
    );

    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.5),
          side: BorderSide(color: AColors.BgStroke, width: 0.5)),
      margin: EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(child: title),
            _PlayAndProgress(draft: draft),
          ],
        ),
      ),
    );
  }
}

class _PlayAndProgress extends ConsumerWidget {
  final CSDraft draft;

  const _PlayAndProgress({
    required this.draft,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draftPvd = ref.watch(csDraftsProvider);
    Widget child;
    if (draft == draftPvd.playingDraft) {
      child = Stack(
        fit: StackFit.expand,
        children: [
          StreamBuilder<PlayerValue>(
            stream: draftPvd.player.playerValueStream,
            initialData: PlayerValue.zero,
            builder: (context, playerValueSnapshot) {
              return CircularProgressIndicator(
                value: playerValueSnapshot.data?.playedValue ?? 0.0,
                strokeWidth: 2,
                color: AColors.tealPrimary,
              );
            },
          ),
          AudioPlayerButtonState.gradient(
            player: draftPvd.player,
            size: 36,
            padding: EdgeInsets.zero,
            gaContext: PlayerGAContext.ignore,
            showLoading: draftPvd.isLoadingPlay,
          ),
        ],
      );
    } else {
      child = ArreGradientIconButton(
        icon: Icon(
          ArreIconsV2.play_filled,
          color: Colors.white,
          size: 12,
        ),
        onPressed: () {
          ref
              .read(csDraftsProvider)
              .playDraft(draft, context: context, onError: showErrorSnackBar);
        },
      );
    }

    return SizedBox.square(dimension: 42, child: child);
  }
}
