part of search_screen;

//removed hashtag section - after v5.1.6
class _SearchHashtagTab extends ConsumerWidget {
  const _SearchHashtagTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchHashtagsPvd = ref.read(searchHashtagsProvider);
    Widget child;
    if (searchHashtagsPvd.hasData && searchHashtagsPvd.data!.isNotEmpty) {
      child = ListView.builder(
        padding: EdgeInsets.only(top: 20),
        itemCount: searchHashtagsPvd.data!.length,
        itemBuilder: (context, index) => ListTile(
          contentPadding: EdgeInsets.only(bottom: 5, left: 13),
          onTap: () {
            ArreNavigator.instance.push(
              AAppPage(
                child: ExploreHashtagPosts(
                  searchHashtagsPvd.data!.elementAt(index).toString(),
                ),
              ),
            );
          },
          leading: CircleAvatar(
            radius: 26,
            child: Text(
              "#",
              style: TextStyle(
                fontSize: 25,
                color: AColors.tealStroke,
              ),
            ),
          ),
          title: Text(
            "#" + searchHashtagsPvd.data!.elementAt(index),
            style: ATextStyles.sys14Medium(AColors.textDark),
          ),
        ),
      );
    } else if (searchHashtagsPvd.hasError) {
      child = ArreErrorWidget(
        error: searchHashtagsPvd.error,
      );
    } else if (searchHashtagsPvd.isLoading) {
      child = Center(
        child: ACommonLoader(),
      );
    } else {
      child = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ArreAssets.EMPTY_EXPLORE_VOICEPOD_IMG),
            SizedBox(
              height: 20,
            ),
            Text('No Hashtags Found'),
          ],
        ),
      );
    }
    return child;
  }
}
