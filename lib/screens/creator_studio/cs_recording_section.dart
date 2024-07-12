part of creator_studio;

class _RecordingSection extends ConsumerWidget {
  const _RecordingSection({
    Key? key,
  }) : super(key: key);

  Future<void> handleRestart(WidgetRef ref) async {
    arreAnalytics.logEvent(GAEvent.CS_RESTART_TAP);
    final shouldRestart = await _showRestartConfirmSheet(ref.context);
    if (shouldRestart == null) return;
    try {
      arreAnalytics.logEvent(
        GAEvent.CS_RESTART_CONFIRMED,
        parameters: {
          EventAttribute.GA_CONTEXT:
              shouldRestart ? "discard_and_restart" : "save_and_restart"
        },
      );
      if (shouldRestart) {
        //Discard recording changes
        await ref.read(creatorStudioProvider).clear();
        await ref.read(creatorStudioProvider).save();
      } else {
        //Save to drafts and start new session
        await ref.read(creatorStudioProvider).save();
        await ref.read(creatorStudioProvider).createNewSession();
      }
    } catch (err, st) {
      showErrorSnackBar(err);
      Utils.reportError(err, st);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget child = Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _ProTools(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: _IntegralSlabsListBody(),
              ),
              // Padding(
              //   padding:
              //   const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
              //   child: _TimeSections(),
              // ),
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 4),
                      child: _TimeSections(),
                    ),
                  ),
                  Column(
                    children: [
                      _PreviewControls(),
                      _CSModeOptions(),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 5),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _VisibleOnActivityAvailable(
                child: FilledIconButton(
                  onPressed: () => handleRestart(ref),
                  fillColor: Color(0xFF171e26),
                  size: 44,
                  icon: Icon(
                    ArreIconsV2.restart_outline,
                    size: 25,
                    color: Colors.white,
                  ),
                  label: Text("Restart"),
                ),
              ),
              SizedBox(width: 20),
              _RecordActionButton(),
              SizedBox(width: 20),
              _VisibleOnActivityAvailable(
                child: Consumer(builder: (_, ref, __) {
                  final showPreview = ref.watch(
                      csPreviewProvider.select((value) => value.showPreview));

                  return FilledIconButton(
                    onPressed: showPreview
                        ? () {
                            arreAnalytics.logEvent(GAEvent.CS_STOP_PREVIEW_TAP);
                            ref.read(csPreviewProvider).stop();
                          }
                        : () {
                            arreAnalytics.logEvent(GAEvent.CS_PREVIEW_TAP);
                            ref
                                .read(csPreviewProvider)
                                .playPreview(onError: showErrorSnackBar);
                          },
                    fillColor: Color(0xFF171e26),
                    elevation: 0,
                    size: 44,
                    label: Text("Preview"),
                    icon: Icon(
                      showPreview
                          ? ArreIconsV2.stop_filled
                          : ArreIconsV2.play_filled,
                      size: 20,
                      color: Colors.white,
                    ),
                  );
                }),
              ),
            ],
          ),
          SizedBox(height: _getDynamicSize(ref, 12)),
        ],
      ),
    );

    return BottomSheet(
      enableDrag: false,
      backgroundColor: Color(0xFF232c36),
      shape: NonUniformBorder(
        color: AColors.BgStroke,
        topWidth: 1,
        bottomWidth: 0,
        leftWidth: 0,
        rightWidth: 0,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      // shape: RoundedRectangleBorder(
      //   side: Border(),
      //   borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      // ),
      builder: (BuildContext context) {
        return child;
      },
      onClosing: () {},
    );
  }
}

class _ProTools extends ConsumerStatefulWidget {
  @override
  ConsumerState createState() => __ProToolsState();
}

class __ProToolsState extends ConsumerState<_ProTools>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    );
    ref.listenManual(creatorStudioProvider, (previous, next) {
      if (next.isProModeEnabled) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
    });
    animationController.value =
        ref.read(creatorStudioProvider).isProModeEnabled ? 1.0 : 0.0;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    child = Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: [
              Expanded(
                child: _GlobalEffectSlab(
                  leading: Icon(ArreIconsV2.import_outline),
                  hasValue: false,
                  title: Text("Import"),
                  onPressed: () {
                    arreAnalytics.logEvent(GAEvent.CS_IMPORT_MUSIC_TAP);
                    ref.read(csImportAudioProvider).importAudio(
                          onError: showErrorSnackBar,
                          trimConfirmation: (trimDuration) =>
                              _showImportAudioConfirmSheet(
                                  context, trimDuration),
                        );
                  },
                  valueCallback: () => null,
                ),
              ),
              SizedBox(width: 8.csDynamic(ref)),
              Expanded(
                child: _GlobalEffectSlab(
                  leading: Icon(ArreIconsV2.reaction_outline),
                  hasValue: false,
                  title: Text("Sounds"),
                  onPressed: () {
                    arreAnalytics.logEvent(GAEvent.CS_ADD_SOUNDS_TAP);
                    _showInsertablesDialog(ref);
                  },
                  valueCallback: () => null,
                ),
              ),
              SizedBox(width: 8.csDynamic(ref)),
              Expanded(
                child: Consumer(
                  builder: (context, ref, child) {
                    final voiceFilterPvd = ref.watch(csVoiceEffectsProvider);
                    return _GlobalEffectSlab(
                      leading: Icon(ArreIconsV2.voice_filter_outline),
                      hasValue: voiceFilterPvd.appliedEffect != null,
                      title: Text(
                        voiceFilterPvd.appliedEffect?.name ?? "Voice Filter",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onPressed: () {
                        arreAnalytics.logEvent(GAEvent.CS_VOICE_FILTER_TAP);
                        _showVoiceEffectSheet(ref);
                      },
                      valueCallback: () => voiceFilterPvd.appliedEffect,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: _BGMusicSlab(),
        ),
      ],
    );

    return SizeTransition(
      sizeFactor: animationController,
      axisAlignment: -1,
      axis: Axis.vertical,
      child: child,
    );
  }
}

//TODO Replace with [ArreGradientIconButton]
class _RecordActionButton extends ConsumerWidget {
  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this is set to null, the button will be disabled.

  const _RecordActionButton({
    Key? key,
  }) : super(key: key);

  Future<void> handleStartPauseAction(WidgetRef ref) async {
    final hasPermission = await handlePermission(Permission.microphone);
    if (!hasPermission.item1) {
      throw ArreException("App needs microphone permission to record");
    }
    if (!hasPermission.item2) return;
    final csRecordingPvd = ref.read(csMicRecordingProvider);

    if (csRecordingPvd.isRecording) {
      arreAnalytics.logEvent(GAEvent.CS_PAUSE_RECORD_BTN_TAP);
      csRecordingPvd.stop();
    } else {
      arreAnalytics.logEvent(GAEvent.CS_START_RECORD_BTN_TAP);
      csRecordingPvd.start(onError: showErrorSnackBar);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconSize = _getDynamicSize(ref, 86.0, 46);
    final isComplete =
        ref.watch(csActivityProvider.select((value) => value.isComplete));
    return Container(
      decoration: isComplete
          ? const BoxDecoration(
              color: AColors.greyDark,
              shape: BoxShape.circle,
            )
          : const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xFFEE8C34), Color(0xFFEA5434)],
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
              ),
            ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(iconSize),
        ),
        clipBehavior: Clip.hardEdge,
        child: IconButton(
          onPressed: () => handleStartPauseAction(ref),
          splashColor: const Color(0xFFEE8C34),
          padding: EdgeInsets.zero,
          iconSize: iconSize,
          color: Colors.white,
          icon: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              if (ref.watch(csMicRecordingProvider).isRecording) {
                return Icon(ArreIconsV2.pause_filled, size: 44);
              } else {
                return Icon(ArreIconsV2.mic_filled, size: 44);
              }
            },
          ),
        ),
      ),
    );
  }
}

///The child widget is visible when there's any activity (recording) is available
class _VisibleOnActivityAvailable extends ConsumerStatefulWidget {
  final Widget child;

  const _VisibleOnActivityAvailable({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _VisibilityOnMicActivityState createState() =>
      _VisibilityOnMicActivityState();
}

class _VisibilityOnMicActivityState
    extends ConsumerState<_VisibleOnActivityAvailable> {
  @override
  Widget build(BuildContext context) {
    final isMicActive =
        ref.watch(csMicRecordingProvider.select((value) => value.isRecording));
    final hasActivitiesForPreview = ref.watch(
        csActivityProvider.select((value) => value.hasActivitiesForPreview));

    return Visibility(
      visible: !isMicActive && hasActivitiesForPreview,
      maintainAnimation: true,
      maintainState: true,
      maintainSize: true,
      child: widget.child,
    );
  }
}

class _TimeSections extends ConsumerWidget {
  const _TimeSections({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = ATextStyles.user20Bold(AColors.textDark);
    Widget child = ValueListenableBuilder(
      valueListenable: ref.read(csActivityProvider).recordedDurationNotifier,
      builder: (context, value, child) {
        final secondsLeft =
            (value.abs().inMicroseconds / Duration.microsecondsPerSecond)
                .ceil();
        return Text("00:${secondsLeft.toStringAsFixedDigits(2)}", style: style);
      },
    );

    return Row(
      children: [
        child,
        Spacer(),
        Text("00:${kCSRecordingDuration.inSeconds}", style: style),
      ],
    );
  }
}

class _BGMusicSlab extends ConsumerWidget {
  const _BGMusicSlab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bgMusicPvd = ref.watch(csBgMusicProvider);
    final appliedEffect = bgMusicPvd.appliedEffect;
    return _GlobalEffectSlab(
      leading: Icon(ArreIconsV2.music_outline, size: 20),
      actions: [
        if (appliedEffect != null) _BGVolumeButton(),
        SizedBox(width: 8),
        if (appliedEffect == null)
          SizedBox.square(
            dimension: 34,
            child: Icon(
              ArreIconsV2.plus_outline,
              size: 20,
              color: AColors.textMedium,
            ),
          )
        else
          _RemoveSlabIconButton(onPressed: bgMusicPvd.removeEffect)
      ],
      hasValue: appliedEffect != null,
      title:
          appliedEffect != null ? Text(appliedEffect.name) : Text("BG Music"),
      valueCallback: () => bgMusicPvd.appliedEffect,
      onPressed: () {
        arreAnalytics.logEvent(GAEvent.CS_BG_MUSIC_TAP);
        _showBgMusicSheet(ref);
      },
    );
  }
}

class _BGVolumeButton extends ConsumerStatefulWidget {
  const _BGVolumeButton({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __BGVolumeButtonState();
}

class __BGVolumeButtonState extends ConsumerState<_BGVolumeButton> {
  bool isVolumePopupShown = false;

  Future<void> showVolumePopup() async {
    final RenderBox overlay = Navigator.of(context, rootNavigator: true)
        .overlay!
        .context
        .findRenderObject()! as RenderBox;
    final RenderBox button = context.findRenderObject()! as RenderBox;
    final position = RelativeRect.fromRect(
      Rect.fromPoints(button.localToGlobal(Offset.zero) - Offset(0, 120),
          button.localToGlobal(button.size.bottomRight(Offset.zero))),
      Offset.zero & overlay.size,
    );
    final bgMusicPvd = ref.read(csBgMusicProvider);
    setState(() {
      isVolumePopupShown = true;
    });
    await showCompactMenu(
      context: ref.context,
      position: position,
      clipBehavior: Clip.hardEdge,
      items: [
        PopupMenuItem(
          padding: EdgeInsets.zero,
          child: VolumeAdjustor(
            height: 120,
            width: 32,
            initialVolume: bgMusicPvd.player.volume,
            onChanged: (volume) {
              bgMusicPvd.player.setVolume(volume);
            },
          ),
          enabled: false,
          height: 120,
        ),
      ],
    );
    arreAnalytics.logEvent(
      GAEvent.CS_BG_VOLUME_CHANGED,
      parameters: {
        EventAttribute.EVENT_COUNT: bgMusicPvd.player.volume,
        EventAttribute.ENTITY_ID: bgMusicPvd.appliedEffect?.id,
        EventAttribute.ENTITY_TYPE: "bg_music",
      },
    );
    if (mounted) {
      setState(() {
        isVolumePopupShown = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = AColors.textMedium;
    return IconButton(
      constraints: BoxConstraints.tight(Size.square(34)),
      iconSize: 18,
      splashRadius: 18,
      color: iconColor,
      onPressed: showVolumePopup,
      icon: StreamBuilder(
          stream: ref.read(csBgMusicProvider).player.volumeStream,
          initialData: ref.read(csBgMusicProvider).player.volume,
          builder: (context, snapshot) {
            final volume = snapshot.data;
            if (volume == null || volume >= 0.6) {
              return const Icon(ArreIconsV2.volume_up_filled, size: 20);
            } else if (volume < 0.6 && volume > 0) {
              return const Icon(ArreIconsV2.volume_down_filled, size: 20);
            } else {
              return Icon(ArreIconsV2.volumeoff_filled, size: 20);
            }
          }),
    );
  }
}

class _RemoveSlabIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _RemoveSlabIconButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: BoxConstraints.tight(Size.square(34)),
      splashRadius: 18,
      iconSize: 16,
      color: AColors.textMedium,
      alignment: Alignment.center,
      // color: AColors.red,
      onPressed: onPressed,
      icon: Icon(ArreIconsV2.cross_outline),
    );
  }
}

///Background music slab
class _GlobalEffectSlab extends ConsumerStatefulWidget {
  final CSDraftField? Function() valueCallback;
  final Widget leading;
  final bool hasValue;
  final List<Widget> actions;
  final Color bgColor = const Color(0xFF171e26);

  ///Selected item's title
  final Widget title;
  final VoidCallback onPressed;

  const _GlobalEffectSlab({
    Key? key,
    required this.leading,
    required this.hasValue,
    required this.title,
    required this.onPressed,
    required this.valueCallback,
    this.actions = const [],
  }) : super(key: key);

  @override
  ConsumerState createState() => _GlobalEffectSlabState();
}

class _GlobalEffectSlabState extends ConsumerState<_GlobalEffectSlab>
    with RouteAware {
  CSDraftField? value;

  @override
  void initState() {
    super.initState();
    value = widget.valueCallback();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    rootRouteObserver.subscribe(this, ModalRoute.of(context) as Route);
  }

  @override
  void didUpdateWidget(covariant _GlobalEffectSlab oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.hasValue != oldWidget.hasValue) {
      value = widget.valueCallback();
    }
  }

  @override
  void didPopNext() {
    super.didPopNext();
    Future(() {
      if (this.value != widget.valueCallback()) {
        setState(() {
          value = widget.valueCallback();
        });
      }
    });
  }

  @override
  void dispose() {
    rootRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.hasValue ? AColors.tealPrimary : AColors.textMedium;
    return ShimmerHighlighter(
      value: value,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: widget.onPressed,
          child: Ink(
            height: 36,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                IconTheme(
                  data: Theme.of(context).iconTheme.copyWith(color: color),
                  child: widget.leading,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: DefaultTextStyle(
                    style: ATextStyles.sys12Regular(color),
                    child: widget.title,
                  ),
                ),
                ...widget.actions,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PreviewControls extends ConsumerStatefulWidget {
  const _PreviewControls({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __PreviewControlsState();
}

class __PreviewControlsState extends ConsumerState<_PreviewControls> {
  @override
  Widget build(BuildContext context) {
    final previewPvd = ref.watch(csPreviewProvider);

    Widget child;
    if (previewPvd.showPreview) {
      child = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PlayerSpeedButton(
            player: previewPvd.player,
            onPressed: previewPvd.switchSpeed,
          ),
          if (previewPvd.needsReInitialization)
            ArreGradientIconButton(
              size: 40,
              icon: Icon(
                ArreIconsV2.play_filled,
                size: 20,
                color: AColors.greyLight,
              ),
              onPressed: () {
                previewPvd.playPreview(onError: showErrorSnackBar);
              },
            )
          else
            AudioPlayerButtonState.gradient(
              player: previewPvd.player,
              gaContext: PlayerGAContext.cs_preview,
              iconSize: 20,
              size: 40,
            ),
          FilledIconButton(
            size: 32,
            icon: Icon(
              ArreIconsV2.forward_filled,
              size: 14,
              color: AColors.tealPrimary,
            ),
            fillColor: Color(0xFF232C36),
            padding: EdgeInsets.all(8),
            borderColor: Color(0xFF4BC7B6),
            onPressed: () {
              arreAnalytics.logEvent(GAEvent.CS_PREVIEW_SEEK_TAP);
              previewPvd.seek(Duration.zero);
            },
          )
        ],
      );
    } else {
      child = const SizedBox(height: 8);
    }
    return AnimatedSize(
      duration: Duration(milliseconds: 400),
      alignment: Alignment.bottomCenter,
      curve: Curves.easeInOut,
      child: child,
    );
  }
}

class _IntegralSlabsListBody extends ConsumerStatefulWidget {
  const _IntegralSlabsListBody({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __IntegralSlabsListBodyState();
}

class __IntegralSlabsListBodyState
    extends ConsumerState<_IntegralSlabsListBody> {
  @override
  Widget build(BuildContext context) {
    final activityPvd = ref.watch(csActivityProvider);
    final activities = activityPvd.activities;
    final showPreview =
        ref.watch(csPreviewProvider.select((value) => value.showPreview));
    final screenWidth = MediaQuery.sizeOf(context).width - 38;
    //deducting the surrounding padding 26px
    final slabsWidth = screenWidth;
    var slabsWidthRemaining = slabsWidth;
    List<Widget> children = [];
    for (var activity in activities) {
      final curSlabWidth = slabsWidth * activity.milliSeconds / 30000;
      children.add(SizedBox(
        width: math.min(curSlabWidth, slabsWidthRemaining),
        child: _ActivitySlabWrapper(activity),
      ));
      slabsWidthRemaining -= curSlabWidth;
    }
    //
    // print(
    //     "Activities ${activities.length} Recording? ${(activityPvd.isRunning || ref.read(csMicRecordingProvider).lock) && activityPvd.runningActivityPvd is CSMicRecordingProvider}");
    //
    // if ((activityPvd.isRunning || ref.read(csMicRecordingProvider).lock) &&
    //     activityPvd.runningActivityPvd is CSMicRecordingProvider) {
    children.add(
      Expanded(
        child: _AnimatingActivitySlab(
          duration: activityPvd.isRunning
              ? activityPvd.remainingDuration
              : Duration.zero,
          noOfActivities: activities.length,
          color: activityPvd.runningActivityPvd is CSAudioInsertablesProvider
              ? AColors.tealStroke
              : AColors.orangeStroke,
        ),
      ),
    );
    // }
    Widget slabBody = Container(
      height: 64,
      width: double.infinity,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Color(0xFF171e26),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(children: children),
    );

    return Stack(
      children: [
        slabBody,
        if (showPreview)
          Positioned(
            top: 0,
            left: 0,
            right: slabsWidthRemaining.clamp(0, slabsWidth),
            bottom: 0,
            child: LayoutBuilder(builder: (context, constraints) {
              return _PreviewProgressBar(maxWidth: constraints.maxWidth);
            }),
          ),
      ],
    );
  }
}

class _AnimatingActivitySlab extends StatefulWidget {
  final Duration duration;
  final Color color;
  final int noOfActivities;

  const _AnimatingActivitySlab({
    required this.duration,
    required this.color,
    required this.noOfActivities,
  });

  @override
  State<_AnimatingActivitySlab> createState() => _AnimatingActivitySlabState();
}

class _AnimatingActivitySlabState extends State<_AnimatingActivitySlab>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    // animationController.forward();
  }

  @override
  void didUpdateWidget(covariant _AnimatingActivitySlab oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.noOfActivities != oldWidget.noOfActivities) {
      animationController.value = 0;
    } else if (widget.duration > Duration.zero) {
      animationController.duration = widget.duration;
      animationController.forward(from: 0);
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizeTransition(
        sizeFactor: animationController,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: Container(
          margin: EdgeInsets.all(1),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: SizedBox(height: 24),
        ),
      ),
    );
  }
}

class _ActivitySlabWrapper extends ConsumerStatefulWidget {
  final CSIntegralActivity activity;

  const _ActivitySlabWrapper(this.activity, {Key? key}) : super(key: key);

  @override
  ConsumerState createState() => __ActivitySlabWrapperState();
}

class __ActivitySlabWrapperState extends ConsumerState<_ActivitySlabWrapper> {
  bool isSelected = false;

  RelativeRect getMenuPosition(
      BuildContext context, TapDownDetails tapDetails) {
    final RenderBox overlay = Navigator.of(context, rootNavigator: true)
        .overlay!
        .context
        .findRenderObject()! as RenderBox;
    final RenderBox button = context.findRenderObject()! as RenderBox;
    return RelativeRect.fromRect(
      Rect.fromCenter(
        center: Offset(tapDetails.globalPosition.dx,
            button.localToGlobal(Offset.zero).dy - 32),
        width: 0,
        height: 0,
      ),
      Offset.zero & overlay.size,
    );
  }

  Future<void> showActionsMenu(TapDownDetails details) async {
    setState(() {
      isSelected = true;
    });
    final selectedValue = await showCompactMenu<String>(
      context: context,
      position: getMenuPosition(context, details),
      items: [
        PopupMenuItem(
          child: Icon(ArreIconsV2.bin_filled, color: AColors.red, size: 24),
          padding: EdgeInsets.all(10),
          height: 44,
          value: "delete",
        ),
      ],
    );
    if (selectedValue == "delete") {
      arreAnalytics.logEvent(
        GAEvent.CS_DELETE_ACTIVITY,
        parameters: {
          EventAttribute.ENTITY_TYPE: widget.activity.activityType.name
        },
      );
      ref
          .read(csActivityProvider)
          .remove(widget.activity)
          .catchError(showErrorSnackBar);
    }
    if (mounted) {
      setState(() {
        isSelected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final activity = this.widget.activity;
    Widget child;
    if (activity is CSMicActivity || activity is CSImportActivity) {
      child = _RecordingSlab(isSelected: isSelected);
    } else if (activity is AudioInsertable) {
      child = _InsertableSlab(
        insertable: activity,
        isSelected: isSelected,
      );
    } else {
      throw UnimplementedError();
    }
    return GestureDetector(
      onTapDown: showActionsMenu,
      child: child,
    );
  }
}

///Integral activity - Recording/Import audio slab
class _RecordingSlab extends ConsumerStatefulWidget {
  final bool isSelected;

  const _RecordingSlab({
    Key? key,
    this.isSelected = false,
  }) : super(key: key);

  @override
  ConsumerState createState() => __RecordingSlabState();
}

class __RecordingSlabState extends ConsumerState<_RecordingSlab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.isSelected ? AColors.orangePrimary : Color(0x80FF8C34),
        borderRadius: BorderRadius.circular(4),
        border: widget.isSelected ? Border.all(color: Colors.white) : null,
      ),
      child: SizedBox(
        height: 24,
        child: _StaticWaves(
          color: widget.isSelected ? AColors.white : Color(0xFFa87141),
        ),
      ),
    );
  }
}

///Sound effect slab
class _InsertableSlab extends ConsumerWidget {
  final AudioInsertable insertable;
  final bool isSelected;

  const _InsertableSlab({
    Key? key,
    this.isSelected = false,
    required this.insertable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.all(1),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? AColors.tealPrimary : Color(0xFF377a76),
        borderRadius: BorderRadius.circular(4),
        border: isSelected ? Border.all(color: Colors.white) : null,
      ),
      child: ArreNetworkImage(
        insertable.iconUrl,
        height: 10,
        width: 10,
        color: isSelected ? AColors.white : Color(0xFF91959a),
      ),
    );
  }
}

class _StaticWaves extends StatelessWidget {
  final Color color;

  const _StaticWaves({Key? key, required this.color}) : super(key: key);
  final heights = const <double>[
    10,
    18,
    16,
    17,
    10,
    14,
    16,
    18,
    20,
    16,
    14,
    10,
    8
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      return Row(
        children: List.generate(
          width ~/ 3.5,
          (index) => Container(
            height: heights[index % heights.length],
            width: 2,
            margin: EdgeInsets.fromLTRB(0.75, 0, 0.75, 0),
            color: color,
          ),
        ),
      );
    });
  }
}

///Vertical divider that indicates the progress of preview audio
class _PreviewProgressBar extends ConsumerStatefulWidget {
  final double maxWidth;

  const _PreviewProgressBar({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  ConsumerState createState() => __PreviewProgressBarState();
}

class __PreviewProgressBarState extends ConsumerState<_PreviewProgressBar> {
  bool? wasPlaying;
  double? dx;

  void updateXAlignment(Offset localPosition) {
    dx = localPosition.dx.clamp(0, widget.maxWidth) * 2 / widget.maxWidth - 1;
  }

  void onTapDown(TapDownDetails tapDownDetails) {
    final previewPvd = ref.read(csPreviewProvider);
    updateXAlignment(tapDownDetails.localPosition);
    previewPvd.seek(previewPvd.player.duration! * ((dx! + 1) / 2));
  }

  void onHorizontalDragStart(DragStartDetails dragStartDetails) {
    final previewPvd = ref.read(csPreviewProvider);
    if (previewPvd.player.duration == null) return;
    setState(() {
      updateXAlignment(dragStartDetails.localPosition);
      wasPlaying = ref.read(csPreviewProvider).player.isPlaying;
    });
    ref.read(csPreviewProvider).player.pause();
  }

  void onHorizontalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    setState(() {
      updateXAlignment(dragUpdateDetails.localPosition);
    });
  }

  Future<void> onHorizontalDragEnd(DragEndDetails dragEndDetails) async {
    final previewPvd = ref.read(csPreviewProvider);
    await previewPvd.seek(previewPvd.player.duration! * ((dx! + 1) / 2));
    if (wasPlaying == true) ref.read(csPreviewProvider).player.play();
    setState(() {
      wasPlaying = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final previewPvd = ref.watch(csPreviewProvider);
    Widget child;
    if (wasPlaying != null) {
      child = Align(
        alignment: Alignment(dx!, 0),
        child: const VerticalDivider(
          color: Colors.white,
          width: 2,
          endIndent: 2,
          indent: 2,
          thickness: 2,
        ),
      );
    } else {
      child = StreamBuilder(
        stream: previewPvd.playerValueStream
            .map((event) => event.playedValue * 2 - 1),
        builder: (context, snapshot) {
          return Align(
            alignment: Alignment(snapshot.data ?? dx ?? -1, 0),
            child: const VerticalDivider(
              color: Colors.white,
              width: 2,
              endIndent: 2,
              indent: 2,
              thickness: 2,
            ),
          );
        },
      );
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: onTapDown,
      onHorizontalDragStart: onHorizontalDragStart,
      onHorizontalDragUpdate: onHorizontalDragUpdate,
      onHorizontalDragEnd: onHorizontalDragEnd,
      child: child,
    );
  }
}

class _CSModeOptions extends ConsumerStatefulWidget {
  @override
  ConsumerState createState() => __CSModeOptionsState();
}

class __CSModeOptionsState extends ConsumerState<_CSModeOptions>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  final quickBtnKey = GlobalKey(debugLabel: "Quick Button");
  final proBtnKey = GlobalKey(debugLabel: "Pro Button");
  double? quickBtnWidth, proBtnWidth;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 280),
    );
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _calculateButtonsWidth();
      if (ref.read(creatorStudioProvider).isProModeEnabled) {
        animationController.value = 1.0;
      } else {
        animationController.value = 0.0;
      }
    });
  }

  void _calculateButtonsWidth() {
    quickBtnWidth ??=
        (quickBtnKey.currentContext?.findRenderObject() as RenderBox)
            .size
            .width;
    proBtnWidth ??=
        (proBtnKey.currentContext?.findRenderObject() as RenderBox).size.width;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  ButtonStyle getStyle(bool isSelected) {
    return ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.padded,
      padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 6, horizontal: 12)),
      minimumSize: MaterialStatePropertyAll(Size(42, 24)),
      side: MaterialStatePropertyAll(
        BorderSide(
          color: isSelected ? AColors.tealPrimary : AColors.BgStroke,
        ),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      ),
      textStyle: MaterialStatePropertyAll(ATextStyles.sys14Regular()),
      foregroundColor: MaterialStatePropertyAll(
          isSelected ? AColors.textLight : AColors.greyLight),
    );
  }

  @override
  Widget build(BuildContext context) {
    final csPvd = ref.watch(creatorStudioProvider);
    return Center(
        child: AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        final offset = Tween(
                begin: Offset(((proBtnWidth ?? 0) / 2) + 8, 0),
                end: Offset((-(quickBtnWidth ?? 0) / 2) - 8, 0))
            .evaluate(animationController);
        return Transform.translate(
          offset: offset,
          child: child,
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton(
            key: quickBtnKey,
            style: getStyle(!csPvd.isProModeEnabled),
            onPressed: () {
              arreAnalytics.logEvent(GAEvent.CS_QUICK_MODE_TAP);
              animationController.reverse();
              csPvd.isProModeEnabled = false;
            },
            child: Text("Quick"),
          ),
          SizedBox(width: 16),
          OutlinedButton(
            key: proBtnKey,
            style: getStyle(csPvd.isProModeEnabled),
            onPressed: () {
              arreAnalytics.logEvent(GAEvent.CS_PRO_MODE_TAP);
              animationController.forward();
              csPvd.isProModeEnabled = true;
            },
            child: Text("Pro"),
          ),
        ],
      ),
    ));
  }
}
