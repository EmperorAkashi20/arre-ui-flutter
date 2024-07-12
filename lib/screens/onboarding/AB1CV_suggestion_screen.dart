part of AB1WelcomeScreen;

class AB1CVSuggestionScreen extends ConsumerStatefulWidget with ArreScreen {
  final String language;

  const AB1CVSuggestionScreen(this.language, {super.key});

  @override
  _AB1CVSuggestionScreenState createState() => _AB1CVSuggestionScreenState();

  @override
  String get screenName => GAScreen.AB1_CV_SUGGESTION_SCREEN;

  @override
  Uri? get uri => null;
}

class _AB1CVSuggestionScreenState extends ConsumerState<AB1CVSuggestionScreen> {
  late StreamSubscription<PlayerState>? playerStateSub;

  bool isLoading = true;
  dynamic error;
  Completer<void>? animatedTextCompleter;

  SimpleAudioPlayerProvider2 player = SimpleAudioPlayerProvider2("voice_over2");

  @override
  void initState() {
    super.initState();
    startStory();
    playerStateSub = player.playerStateStream.listen((event) {
      if (event == PlayerState.completed) {}
    });
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
      if (!isLoading) {
        setState(() {
          isLoading = true;
        });
      }
      final onboardingPvd = ref.read(onboardingProvider);
      final csPromptsPvd = ref.read(creatorPromptsProvider(widget.language));
      await Future.wait([
        onboardingPvd.initStoryCaptions(),
        if (!csPromptsPvd.hasValue)
          ref.read(creatorPromptsProvider(widget.language).future),
      ]);
      animatedTextCompleter = Completer();

      final curStep = OnboardingStep.tryFunPrompts;
      await playVoiceOver(onboardingPvd.getMediaIdFor(curStep));

      setState(() {
        this.isLoading = false;
        this.error = null;
      });
      //Wait for text animation to complete
      await animatedTextCompleter?.future;
    } catch (err, st) {
      Utils.reportError(err, st);
      setState(() {
        this.error = err;
        this.isLoading = false;
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
    final onboardingPvd = ref.watch(onboardingProvider);
    final creatorPromptsPvd =
        ref.watch(creatorPromptsProvider(widget.language));
    Widget? body;
    if (isLoading) {
      body = Center(child: Text("Loading..."));
    } else if (error != null || !creatorPromptsPvd.hasValue) {
      body = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Utils.getMessage4mError(error ?? creatorPromptsPvd.error)),
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

    Widget? animatedText;

    animatedText = Padding(
      padding: EdgeInsets.fromLTRB(
        MediaQuery.sizeOf(context).width * 0.1,
        MediaQuery.sizeOf(context).height * 0.04,
        MediaQuery.sizeOf(context).width * 0.1,
        0,
      ),
      child: Stack(
        children: [
          Opacity(
            opacity: 0,
            child: Text(
              onboardingPvd.getCaptionFor(OnboardingStep.tryFunPrompts),
              style: ATextStyles.hind20Bold(AColors.white),
              textAlign: TextAlign.center,
            ),
          ),
          AnimatedTextKit(
            key: ValueKey(OnboardingStep.tryFunPrompts),
            animatedTexts: [
              TyperAnimatedText(
                onboardingPvd.getCaptionFor(OnboardingStep.tryFunPrompts),
                textAlign: TextAlign.center,
                textStyle: ATextStyles.hind20SemiBold(AColors.white),
              ),
            ],
            totalRepeatCount: 1,
            onFinished: completeTextAnimation,
          ),
        ],
      ),
    );

    //Top section
    Widget _body;
    _body = Column(
      children: [
        animatedText,
        Expanded(
          child: _PromptBody(
            language: widget.language,
            player: player,
          ),
        ),
      ],
    );

    return OnboardingScaffold(
      body: _body,
      player: player,
      canSkip: true,
    );
  }
}

class _PromptBody extends ConsumerStatefulWidget {
  final String language;
  final SimpleAudioPlayerProvider2 player;

  const _PromptBody({
    required this.language,
    required this.player,
  });

  @override
  __PromptBodyState createState() => __PromptBodyState();
}

class __PromptBodyState extends ConsumerState<_PromptBody> {
  int _currentSlide = 0;

  void onPageChanged(int index, CarouselPageChangedReason reason) {
    arreAnalytics.logEvent(GAEvent.ONB_PROMPT_SLIDE, parameters: {
      EventAttribute.GESTURE: index > _currentSlide ? "right" : "left"
    });
    setState(() {
      _currentSlide = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final creatorPromptsPvd =
        ref.watch(creatorPromptsProvider(widget.language));

    Widget child;

    if (creatorPromptsPvd.hasValue) {
      child = _PromptsWidget(
        promptData: creatorPromptsPvd.value!,
        onPageChanged: onPageChanged,
        language: widget.language,
        player: widget.player,
      );
    } else if (creatorPromptsPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = ArreErrorWidget(error: creatorPromptsPvd.error);
    }

    Widget body = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: child),
        if (creatorPromptsPvd.value != null &&
            creatorPromptsPvd.value!.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: creatorPromptsPvd.value!.map((item) {
              int index = creatorPromptsPvd.value!.indexOf(item);
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentSlide == index
                      ? AColors.tealPrimary
                      : AColors.greyLight.withOpacity(0.44),
                ),
              );
            }).toList(),
          ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            child: OutlinedButton(
              onPressed: () async {
                arreAnalytics.logEvent(GAEvent.ONB_CREATE_POD_ON_OWN_TOPIC);
                await widget.player.pause(PlayerGAContext.ignore);
                ArreNavigator.instance.push(AGlobalPage(
                    child: CreatorStudioScreen(draftOnlyMode: true)));
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                side: BorderSide(color: AColors.BgStroke),
                minimumSize: Size(326, 38),
                foregroundColor: AColors.textLight,
                textStyle: ATextStyles.hind14Medium(AColors.textLight),
              ),
              child: Text(ref
                  .read(onboardingProvider)
                  .getCaptionFor(OnboardingStep.createAnyTopic)),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
    return body;
  }
}

class _PromptsWidget extends StatelessWidget {
  final List<GGetCreatorStudioPromptsData_response_data> promptData;
  final Function(int, CarouselPageChangedReason) onPageChanged;
  final SimpleAudioPlayerProvider2 player;
  final String language;

  const _PromptsWidget({
    required this.promptData,
    required this.onPageChanged,
    required this.player,
    required this.language,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Carousel
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.73,
        aspectRatio: 278 / 468,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        enlargeFactor: 0.3,
        disableCenter: true,
        enlargeCenterPage: true,
        animateToClosest: true,
        enableInfiniteScroll: false,
        onPageChanged: onPageChanged,
      ),
      items: promptData.map((item) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: AspectRatio(
              aspectRatio: 278 / 468,
              child: Container(
                // margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: item.backgroundColors
                        .map((p0) => Color(
                            int.tryParse(p0) ?? AColors.tealPrimary.value))
                        .toList(),
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 10,
                      child: Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: MediaQuery.sizeOf(context).height * 0.2,
                            maxHeight: MediaQuery.sizeOf(context).height * 0.5,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: ArreNetworkImage(
                              item.mediaUrl,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        item.prompt,
                        textAlign: TextAlign.center,
                        style: ATextStyles.hind24Bold(),
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                    ElevatedButton(
                      onPressed: () async {
                        arreAnalytics.logEvent(
                          GAEvent.ONB_CREATE_POD_ON_PROMPT,
                          parameters: {EventAttribute.EVENT_VALUE: item.prompt},
                        );
                        await player.pause(PlayerGAContext.ignore);
                        ArreNavigator.instance.push(
                          AGlobalPage(
                            child: CreatorStudioScreen(
                              title: item.caption,
                              language: language,
                              draftOnlyMode: true,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        minimumSize: Size(188, 46),
                        backgroundColor: AColors.white,
                        foregroundColor: AColors.tealPrimary,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        textStyle: TextStyle(
                          fontFamily: 'Hind',
                          color: AColors.tealPrimary,
                          fontSize: 20,
                          height: 32.02 / 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      child: Text(item.ctaText),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
