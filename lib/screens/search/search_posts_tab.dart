part of search_screen;

class _SearchPostsTab extends ConsumerWidget {
  const _SearchPostsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchPostsPvd = ref.read(searchPostsProvider);
    Widget child;
    if (searchPostsPvd.hasData && searchPostsPvd.data!.isNotEmpty) {
      child = ListView.builder(
        padding: EdgeInsets.only(top: 10),
        itemBuilder: (context, index) => VoicepodPostCard(
          searchPostsPvd.data!.elementAt(index).toString(),
          onPlayPressed: (_) {
            searchPostsPvd.playingKeyword = searchPostsPvd.searchKeyword;
            PodPlayerV3.instance.init(
              startIndex: index,
              context: context,
              podSourceFuture: () => SynchronousFuture(searchPostsPvd),
            );
          },
        ),
        itemCount: searchPostsPvd.data!.length,
      );
    } else if (searchPostsPvd.hasError) {
      child = ArreErrorWidget(
        error: searchPostsPvd.error,
      );
    } else if (searchPostsPvd.isLoading) {
      child = Center(
        child: ACommonLoader(),
      );
    } else {
      child = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ArreAssets.SEARCH_VOICEPOD_EMPTY_IMG),
            SizedBox(
              height: 20,
            ),
            Text('No Voicepods Found'),
          ],
        ),
      );
    }
    return Scaffold(
      body: child,
    );
  }
}
