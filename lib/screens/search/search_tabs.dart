part of search_screen;

class _SearchTabs extends ConsumerStatefulWidget {
  _SearchTabs({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchTabsState();
}

class _SearchTabsState extends ConsumerState<_SearchTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: AColors.BgDark,
          elevation: 0,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Acumin Pro",
              fontSize: 14,
              color: Color(0xFFF6FCFB),
            ),
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Acumin Pro",
              fontSize: 14,
              color: Color(0xFFF6FCFB),
            ),
            labelColor: AColors.tealPrimary,
            unselectedLabelColor: AColors.tealPrimary.withOpacity(0.6),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            controller: _tabController,
            tabs: [
              Tab(
                text: "Accounts",
              ),
              Tab(
                text: "Posts",
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _SearchUserTab(),
          _SearchPostsTab(),
        ],
      ),
    );
  }
}
