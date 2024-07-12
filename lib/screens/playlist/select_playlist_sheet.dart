part of playlist;

String get _userId => arrePref.userId!;

Future<GPlaylist?> showPlaylistSelectorSheet(WidgetRef ref) async {
  await ref.read(ensureOnboardedWithAppStateChange.future);
  final result = await showModalBottomSheet(
    context: ref.context,
    useRootNavigator: true,
    isScrollControlled: true,
    builder: (_) {
      return DraggableScrollableSheet(
        expand: false,
        minChildSize: 0.3,
        initialChildSize: 0.4,
        maxChildSize: 0.9,
        builder: (context, scrollController) {
          return _PlaylistSelectorSheet(scrollController: scrollController);
        },
      );
    },
  );

  if (result is GPlaylist) {
    return result;
  } else if (result == true) {
    return ArreNavigator.instance.push<GPlaylist?>(
      AAppPage(
        fullscreenDialog: true,
        child: CreatePlaylistDialog(),
      ),
    );
  }
  return null;
}

class _PlaylistSelectorSheet extends ConsumerStatefulWidget {
  final ScrollController scrollController;

  const _PlaylistSelectorSheet({
    required this.scrollController,
  });

  @override
  ConsumerState createState() => __PlaylistSelectorSheetState();
}

class __PlaylistSelectorSheetState
    extends ConsumerState<_PlaylistSelectorSheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final playlistPvd = ref.watch(userPlaylistProvider(_userId));
    Widget child;
    if (playlistPvd.hasData) {
      final playlists = playlistPvd.data!;
      child = NotificationListener(
        onNotification: playlistPvd.onScrollNotification,
        child: GridView.builder(
          shrinkWrap: true,
          primary: false,
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 121,
            mainAxisExtent: 144,
            childAspectRatio: 105 / 144,
            crossAxisSpacing: 16,
            mainAxisSpacing: 10,
          ),
          itemCount: playlistPvd.data!.length + 1,
          itemBuilder: (context, i) {
            if (i == 0) {
              return PlaylistItem.add(() => Navigator.of(context).pop(true));
            } else {
              final playlist = playlists[i - 1];
              return PlaylistItem(
                label: playlist.title,
                child: ArreNetworkImage.mediaId(playlist.coverImage!),
                onTap: () => Navigator.of(context).pop(playlist),
              );
            }
          },
        ),
      );
    } else if (playlistPvd.isLoading) {
      child = SizedBox.fromSize(
        size: Size.fromHeight(120),
        child: Center(
          child: ACommonLoader(),
        ),
      );
    } else {
      child = SizedBox.fromSize(
        size: Size.fromHeight(120),
        child: Center(
          child: ArreErrorWidget(error: playlistPvd.error),
        ),
      );
    }
    return SingleChildScrollView(
      controller: widget.scrollController,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DragIndicator(padding: EdgeInsets.only(top: 12, bottom: 18)),
          Text(
            "Select Playlist",
            style: ATextStyles.sys20Bold(Colors.white),
          ),
          child,
        ],
      ),
    );
  }
}

class PlaylistItem extends StatelessWidget {
  final String label;
  final Widget child;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? borderColor;

  const PlaylistItem({
    Key? key,
    required this.label,
    required this.child,
    required this.onTap,
    this.backgroundColor,
    this.borderColor,
  }) : super(key: key);

  static add(VoidCallback onTap) => PlaylistItem(
        label: "Create New",
        child: Icon(
          ArreIconsV2.plus_outline,
          color: AColors.tealPrimary,
        ),
        backgroundColor: AColors.BgLight,
        borderColor: AColors.tealPrimary,
        onTap: onTap,
      );

  static history(VoidCallback onTap) => PlaylistItem(
        label: "Play History",
        child: Image.asset(ArreAssets.HISTORY_PLAYLIST),
        onTap: onTap,
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Tooltip(
        message: label,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  border: Border.all(color: borderColor ?? Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: child,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: ATextStyles.sys14Regular(Color(0xFFDBF2EF)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
