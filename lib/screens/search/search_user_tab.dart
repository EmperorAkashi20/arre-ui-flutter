part of search_screen;

class _SearchUserTab extends ConsumerWidget {
  const _SearchUserTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchUsersPvd = ref.read(searchUsersProvider);
    Widget child;
    if (searchUsersPvd.hasData && searchUsersPvd.data!.isNotEmpty) {
      child = ListView.builder(
        padding: EdgeInsets.only(top: 20),
        itemCount: searchUsersPvd.data!.length,
        itemBuilder: (context, index) => UserListTile(
          userId: searchUsersPvd.data!.elementAt(index).toString(),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          showFollowButton: false,
        ),
      );
    } else if (searchUsersPvd.hasError) {
      child = ArreErrorWidget(
        error: searchUsersPvd.error,
      );
    } else if (searchUsersPvd.isLoading) {
      child = Center(
        child: ACommonLoader(),
      );
    } else if (searchUsersPvd.isLoading) {
      child = Center(
        child: ACommonLoader(),
      );
    } else {
      child = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ArreAssets.SEARCH_USERS_EMPTY_IMG),
            SizedBox(
              height: 20,
            ),
            Text('No Users Found'),
          ],
        ),
      );
    }
    return child;
  }
}
