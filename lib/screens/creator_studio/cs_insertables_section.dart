part of creator_studio;

Future<void> _showInsertablesDialog(WidgetRef ref) async {
  final releaseError = await ref.read(csActivityProvider).canReleaseActivity();
  if (releaseError != null) {
    showErrorMessageSnackBar(releaseError);
    return;
  }
  final providerContainer = ProviderScope.containerOf(ref.context);
  final selectedItem = await showDialog(
    context: ref.context,
    useRootNavigator: true,
    builder: (context) {
      return ProviderScope(
        parent: providerContainer,
        child: _InsertableAudioClipsSection(),
      );
    },
  );
  if (selectedItem is AudioInsertable) {
    arreAnalytics.logEvent(
      GAEvent.CS_SOUNDS_ADDED,
      parameters: {
        EventAttribute.ENTITY_TYPE: EntityType.insertable.name,
        EventAttribute.ENTITY_ID: selectedItem.id,
      },
    );
    ref.read(csInsertablesProvider).insert(
          selectedItem,
          onError: showErrorSnackBar,
        );
  }
}

class _InsertableAudioClipsSection extends ConsumerWidget {
  const _InsertableAudioClipsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final insertablesDataPvd = ref.watch(csInsertablesDataFutureProvider);
    final insertableBtnSize = _getDynamicSize(ref, 50, 36);
    final insertablesPvd = ref.watch(csInsertablesProvider);
    final isMicActive =
        ref.watch(csMicRecordingProvider.select((value) => value.isRecording));

    final insertableState = (AudioInsertable item) {
      if (item == insertablesPvd.loadingItem) {
        if (insertablesPvd.player.isPlaying) {
          arreAnalytics.logEvent(GAEvent.CS_INSERTIBLES_ADDED, parameters: {
            EventAttribute.ENTITY_ID: item.id,
            EventAttribute.ENTITY_TYPE: EntityType.insertable.name
          });
          return _InsertableAudioState.playing;
        }
        return _InsertableAudioState.downloading;
      }
      return _InsertableAudioState.idle;
    };

    Widget child = insertablesDataPvd.map(
      data: (data) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              for (var item in data.value)
                _InsertableAudioIconButton(
                  size: insertableBtnSize,
                  status: insertableState(item),
                  onPressed: isMicActive
                      ? null
                      : () => Navigator.of(context).pop(item),
                  label: item.name,
                  iconUrl: item.iconUrl,
                ),
            ],
          ),
        );
      },
      error: (err) => ArreErrorWidget(
        error: err,
        onPressed: () => ref.refresh(csInsertablesDataFutureProvider),
      ),
      loading: (_) => Center(child: CircularProgressIndicator()),
    );

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 104,
        alignment: Alignment.center,
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AColors.BgStroke),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: AColors.BgStroke),
      ),
      backgroundColor: AColors.BgLight,
    );
  }
}

enum _InsertableAudioState { idle, downloading, playing }

class _InsertableAudioIconButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String label;
  final String iconUrl;
  final _InsertableAudioState status;
  final double size;

  const _InsertableAudioIconButton({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.iconUrl,
    required this.status,
    required this.size,
  }) : super(key: key);

  @override
  State<_InsertableAudioIconButton> createState() =>
      _InsertableAudioIconButtonState();
}

class _InsertableAudioIconButtonState
    extends State<_InsertableAudioIconButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledIconButton(
            size: widget.size,
            fillColor: AColors.BgLight,
            elevation: 2,
            onPressed: widget.onPressed,
            borderColor: AColors.BgStroke,
            icon: Image.network(
              widget.iconUrl,
              height: widget.size * 0.5,
              width: widget.size * 0.5,
              color: widget.onPressed == null
                  ? AColors.white
                  : AColors.tealPrimary,
            ),
          ),
          SizedBox(height: 5),
          Text(
            widget.label,
            style: ATextStyles.sys12Regular(AColors.textDark),
          ),
        ],
      ),
    );
  }
}
