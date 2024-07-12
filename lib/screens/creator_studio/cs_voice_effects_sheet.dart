part of creator_studio;

Future<void> _showVoiceEffectSheet(WidgetRef ref) async {
  final releaseError = await ref.read(csActivityProvider).canReleaseActivity();
  if (releaseError != null) {
    showErrorMessageSnackBar(releaseError);
    return;
  }
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
              _CSVoiceEffectsBottomSheet(scrollController: controller),
        ),
      );
    },
  );
  ref.read(csVoiceEffectsProvider).dismiss();
}

class _CSVoiceEffectsBottomSheet extends ConsumerWidget {
  final ScrollController scrollController;

  const _CSVoiceEffectsBottomSheet({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  void _previewEffect(WidgetRef ref, VoiceEffect effect) {
    if (ref.read(csVoiceEffectsProvider).selectedEffect == effect) {
      return ref.read(csVoiceEffectsProvider).dismiss();
    }
    arreAnalytics.logEvent(GAEvent.CS_VOICE_FILTER_PLAY, parameters: {
      EventAttribute.ENTITY_ID: effect.id,
      EventAttribute.ENTITY_TYPE: EntityType.voice_filter.name
    });
    ref.read(csVoiceEffectsProvider).playWithEffect(effect,
        onError: (err) =>
            Fluttertoast.showToast(msg: Utils.getMessage4mError(err)));
  }

  Widget buildBody(WidgetRef ref, AsyncData<List<VoiceEffect>> data) {
    final voiceEffectsPvd = ref.watch(csVoiceEffectsProvider);

    return ListView(
      controller: scrollController,
      children: [
        Center(
          child: Text(
            'Voice Filter',
            style: ATextStyles.sys20Bold(AColors.greyLight),
          ),
        ),
        SizedBox(height: 8),
        for (var effect in data.value)
          _EffectTile(
            onTap: () => _previewEffect(ref, effect),
            isSelected: effect.id == voiceEffectsPvd.selectedEffect?.id,
            isApplied: effect.id == voiceEffectsPvd.appliedEffect?.id,
            title: effect.name,
            imageUrl: effect.iconUrl,
            onApplyOrRemovePressed: () {
              voiceEffectsPvd.applyOrRemoveEffect(effect);
              if (voiceEffectsPvd.appliedEffect != null) {
                arreAnalytics.logEvent(
                  GAEvent.CS_VOICE_FILTER_APPLY,
                  parameters: {
                    EventAttribute.ENTITY_ID: effect.id,
                    EventAttribute.ENTITY_TYPE: EntityType.voice_filter.name
                  },
                );
              } else {
                arreAnalytics.logEvent(
                  GAEvent.CS_VOICE_FILTER_REMOVE,
                  parameters: {
                    EventAttribute.ENTITY_ID: effect.id,
                    EventAttribute.ENTITY_TYPE: EntityType.voice_filter.name
                  },
                );
              }
            },
            player: voiceEffectsPvd.player,
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final child = ref.watch(voiceEffectsDataFutureProvider).map(
          data: (data) => buildBody(ref, data),
          error: (error) {
            return Center(child: ArreErrorWidget(error: error));
          },
          loading: (loading) => Center(child: ACommonLoader()),
        );

    //Wrapping this Scaffold for showing the SnackBar. IMPROVE A global ScaffoldMessenger which should handle the snackbars in any context
    return child;
  }
}
