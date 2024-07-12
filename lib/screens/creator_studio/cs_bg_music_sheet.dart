part of creator_studio;
//IMPROVE Auto scroll to the item that is selected

Future<void> _showBgMusicSheet(WidgetRef ref) async {
  final releaseError = await ref.read(csActivityProvider).canReleaseActivity();
  if (releaseError != null) {
    showErrorMessageSnackBar(releaseError);
    return;
  }

  // final moodPvd = ref.watch(csMoodProvider);
  // if (moodPvd.mood == null) {
  //   final mood = await showMoodSelectionSheet(ref.context, moodPvd.mood);
  //   if (mood == null) return;
  //   moodPvd.selectMood(mood);
  // }

  final providerContainer = ProviderScope.containerOf(ref.context);
  await showModalBottomSheet(
    context: ref.context,
    isScrollControlled: true,
    showDragHandle: true,
    backgroundColor: AColors.BgLight,
    builder: (ctx) {
      return ProviderScope(
        parent: providerContainer,
        child: DraggableScrollableSheet(
          expand: false,
          minChildSize: 0.3,
          initialChildSize: 0.5,
          maxChildSize: 0.9,
          builder: (ctx, controller) =>
              _CSBgMusicBottomSheet(scrollController: controller),
        ),
      );
    },
  );
  ref.read(csBgMusicProvider).dismiss();
}

class _CSBgMusicBottomSheet extends ConsumerStatefulWidget {
  final ScrollController scrollController;

  const _CSBgMusicBottomSheet({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  ConsumerState createState() => __CSBgMusicBottomSheetState();
}

class __CSBgMusicBottomSheetState extends ConsumerState<_CSBgMusicBottomSheet> {
  Mood? moodFilterTmp;

  @override
  void initState() {
    super.initState();
    moodFilterTmp = ref.read(csBgMusicProvider).moodFilter;
  }

  @override
  Widget build(BuildContext context) {
    final bgMusicPvd = ref.watch(csBgMusicProvider);
    final selectedEffectId = bgMusicPvd.selectedEffect?.id;

    return Column(
      children: [
        Text(
          'Background Music',
          style: ATextStyles.sys20Bold(AColors.greyLight),
        ),
        SizedBox(height: 4),
        _BgMusicMoodsGroup(
          selectedMood: moodFilterTmp,
          onMoodSelect: (selectedMood) {
            setState(() {
              moodFilterTmp = selectedMood;
            });
          },
        ),
        Expanded(
          child: ref.watch(bgMusicDataFutureProvider(moodFilterTmp)).map(
            data: (data) {
              return ListView.builder(
                controller: widget.scrollController,
                itemCount: data.value.length,
                itemBuilder: (context, index) {
                  final bg = data.value[index];
                  return _EffectTile(
                    isApplied: bg.id == bgMusicPvd.appliedEffect?.id,
                    isSelected: bg.id == selectedEffectId,
                    title: bg.name,
                    imageUrl: bg.iconUrl,
                    onApplyOrRemovePressed: () {
                      bgMusicPvd.applyOrRemoveEffect(bg, moodFilterTmp);
                      if (bgMusicPvd.appliedEffect != null) {
                        arreAnalytics.logEvent(
                          GAEvent.CS_BG_MUSIC_APPLY,
                          parameters: {
                            EventAttribute.ENTITY_ID: bg.id,
                            EventAttribute.ENTITY_TYPE: EntityType.bg_music.name
                          },
                        );
                      } else {
                        arreAnalytics.logEvent(
                          GAEvent.CS_BG_MUSIC_REMOVE,
                          parameters: {
                            EventAttribute.ENTITY_ID: bg.id,
                            EventAttribute.ENTITY_TYPE: EntityType.bg_music.name
                          },
                        );
                      }
                    },
                    player: bgMusicPvd.player,
                    onTap: () {
                      if (bgMusicPvd.selectedEffect == bg) {
                        bgMusicPvd.dismiss();
                      } else {
                        arreAnalytics.logEvent(
                          GAEvent.CS_BG_MUSIC_PLAY,
                          parameters: {
                            EventAttribute.ENTITY_ID: bg.id,
                            EventAttribute.ENTITY_TYPE: EntityType.bg_music.name
                          },
                        );
                        bgMusicPvd.play(bg, onError: (err) {
                          Fluttertoast.showToast(
                              msg: Utils.getMessage4mError(err));
                        });
                      }
                    },
                  );
                },
              );
            },
            error: (error) {
              return ArreErrorWidget(
                error: error,
                onPressed: () =>
                    ref.refresh(bgMusicDataFutureProvider(moodFilterTmp)),
                buttonText: "Retry",
              );
            },
            loading: (_) {
              return ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 240),
                child: Center(child: ACommonLoader()),
              );
            },
            // ... (handle loading and error cases)
          ),
        ),
      ],
    );
  }
}

class _BgMusicMoodsGroup extends ConsumerWidget {
  final Mood? selectedMood;

  ///If [selectedMood] is null, no mood is selected
  final void Function(Mood? selectedMood) onMoodSelect;

  const _BgMusicMoodsGroup({
    required this.selectedMood,
    required this.onMoodSelect,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moods = ref.watch(moodsDataFutureProvider).valueOrNull;
    if (moods == null || moods.isEmpty) return SizedBox();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: moods.map((mood) {
              return ChoiceChip(
                label: Text(
                  mood.name,
                  style: ATextStyles.sys14Regular(AColors.textLight),
                ),
                selectedColor: AColors.orangePrimary,
                materialTapTargetSize: MaterialTapTargetSize.padded,
                visualDensity: VisualDensity.compact,
                backgroundColor: Colors.transparent,
                side: BorderSide(
                    color: mood == selectedMood
                        ? AColors.orangePrimary
                        : AColors.BgStroke),
                selected: mood == selectedMood,
                onSelected: (isSelected) {
                  onMoodSelect(isSelected ? mood : null);
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
