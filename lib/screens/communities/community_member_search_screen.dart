part of communities;

class CommunityMemberSearchScreen extends ConsumerStatefulWidget
    with ArreScreen {
  final List<ArreUser> initialUsers;
  final String communityId;

  const CommunityMemberSearchScreen({
    super.key,
    this.initialUsers = const [],
    required this.communityId,
  });

  @override
  ConsumerState createState() => _CommunityMemberSearchScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.VOICECLUB_MEMBER_SEARCH_SCREEN;
}

class _CommunityMemberSearchScreenState
    extends ConsumerState<CommunityMemberSearchScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(communityMemberSearchProvider(widget.communityId)).initialData =
        widget.initialUsers;
  }

  @override
  void dispose() {
    ref.invalidate(communityMemberSearchProvider(widget.communityId));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchPvd =
        ref.watch(communityMemberSearchProvider(widget.communityId));

    Widget child;

    if (searchPvd.error != null) {
      child = Center(child: ArreErrorWidget(error: searchPvd.error));
    } else if (searchPvd.data.isNotEmpty) {
      child = ListView(
        padding: EdgeInsets.symmetric(vertical: 16),
        children: searchPvd.data
            .map(
              (user) => UserListTile(
                userId: user.userId,
                showMessageButton: true,
                padding: EdgeInsets.fromLTRB(16, 6, 6, 6),
                userDetails: user,
                actionButton: IconButton(
                  onPressed: () {
                    _showMemberActionsSheet(
                      ref: ref,
                      community:
                          ref.read(communityProvider(widget.communityId)).data!,
                      user: user,
                    );
                  },
                  splashRadius: 24,
                  icon: Icon(ArreIconsV2.kebeb_filled),
                ),
              ),
            )
            .toList(),
      );
    } else {
      child = Center(child: ArreErrorWidget.empty(message: 'No members found'));
    }

    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(right: 16),
          constraints: BoxConstraints(maxHeight: 32),
          child: TextField(
            controller: searchPvd.textEditingCtrl,
            autofocus: true,
            textInputAction: TextInputAction.search,
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.all(8),
              hintText: "Search Members",
              hintStyle: ATextStyles.sys14Regular(AColors.textDark),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        leading: ABackButton(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 1,
              child: searchPvd.isSearching ? LinearProgressIndicator() : null,
            ),
            Expanded(child: child)
          ],
        ),
      ),
    );
  }
}
