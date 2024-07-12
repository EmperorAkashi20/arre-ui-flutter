part of home_screen;

const _sectionBottomPadValue = 8.0;
const _sectionTopPadValue = 8.0;

class _HomeTab extends ConsumerStatefulWidget {
  const _HomeTab({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __HomeTabState();
}

class __HomeTabState extends ConsumerState<_HomeTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // final userMoodPvd = ref.watch(userMoodProvider);
    // final userMood = userMoodPvd.value;

    //We can remove this Stack since we don't use Moods now
    return Stack(
      fit: StackFit.expand,
      children: [
        Material(color: AColors.BgDark),
        Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            titleSpacing: NavigationToolbar.kMiddleSpacing,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  ArreAssets.ARRE_VOICE_DARK_LOGO_IMG,
                  height: MediaQuery.of(context).size.height * 0.045,
                ),
                // TextField(textInputAction: TextInputAction.done),
                SizedBox(),
              ],
            ),
            actions: [
              if (AppConfig.isDevToolsEnabled) ...[
                IconButton(
                  onPressed: () => _debug(ref),
                  icon: Icon(Icons.bug_report),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => DebuggingLogsScreen()));
                  },
                  icon: Icon(Icons.list_alt),
                ),
              ],
              IconButton(
                onPressed: () async {
                  arreAnalytics.logEvent(GAEvent.SEARCH_BAR_CLICKED);
                  ArreNavigator.instance.push(
                    AAppPage(
                      child: SearchScreen(),
                      fullscreenDialog: true,
                    ),
                  );
                },
                icon: Icon(ArreIconsV2.search_outline),
              ),
              IconButton(
                onPressed: () {
                  ArreNavigator.instance
                      .push(AAppPage(child: InviteScreenNew()));
                },
                icon: Icon(ArreIconsV2.user_plus_outline),
              ),
              SizedBox(width: 12),
            ],
          ),
          body: _HomepageBody(
            key: PageStorageKey<String>("home_feed_scroll_view1"),
          ),
        ),
      ],
    );
  }
}

class _HomepageBody extends ConsumerStatefulWidget {
  _HomepageBody({super.key});

  @override
  ConsumerState createState() => __HomepageBodyState();
}

class __HomepageBodyState extends ConsumerState<_HomepageBody> {
  bool get wasMyCommunitiesNotEmpty =>
      (arrePref.getInt(PrefKey.MY_COMMUNITIES_COUNT) ?? 0) > 0;

  bool get wasRecCommunitiesNotEmpty =>
      (arrePref.getInt(PrefKey.REC_COMMUNITIES_COUNT) ?? 4) > 0;

  Future<void> refreshHome() async {
    ref.read(homePageFeedProvider(null)).valueOrNull?.forEach((element) {
      element.playlists?.forEach((p0) {
        ref.invalidate(arrePlaylistPostsProvider(p0!.playlistUniqueLink));
      });
    });
    await Future.wait([
      ref.refresh(homePageFeedProvider(null).future),
      ref.refresh(recCommunitiesProvider).refresh(),
      ref.refresh(myCommunitiesProvider).refresh(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final homeFeedPvd = ref.watch(homePageFeedProvider(null));

    // return Center(
    //   child: CupertinoButton(
    //     child: Text("Check Onboarding Flows"),
    //     onPressed: () {
    //       ArreNavigator.instance
    //           .push(AGlobalPage(child: LanguageSelectionScreen()));
    //     },
    //   ),
    // );

    return RefreshIndicator(
      // notificationPredicate: (ScrollNotification notification) {
      //   return notification.depth == 1;
      // },
      onRefresh: refreshHome,
      child: CustomScrollView(
        slivers: [
          ///App update CTA
          SliverToBoxAdapter(
            child: Consumer(
              builder: (context, ref, child) {
                final appUpdateFuture = ref.watch(appUpdateFutureProvider);
                final update = appUpdateFuture.valueOrNull;
                Widget child = SizedBox(width: double.infinity);
                if (update?.status == AppUpdateStatus.updateAvailable &&
                    update?.isUpdateIgnored == false) {
                  child = Padding(
                    padding: const EdgeInsets.fromLTRB(
                        _paddingValue, _paddingValue, _paddingValue, 0),
                    child: _AppUpdateSection(
                      isDismissible: true,
                      updateDetails: update!,
                    ),
                  );
                }

                return AnimatedSize(
                  duration: Duration(milliseconds: 500),
                  child: child,
                );
              },
            ),
          ),

          ///Community Intro Banner
          SliverToBoxAdapter(
            child: Consumer(
              builder: (context, ref, child) {
                final canShowIntro = ref.watch(recCommunitiesProvider
                    .select((pvd) => pvd.hasData && pvd.data!.isNotEmpty));
                Widget child = SizedBox(width: double.infinity);
                if (canShowIntro) {
                  child = _CommunityIntroBanner(
                    padding: EdgeInsets.fromLTRB(
                      _paddingValue,
                      _paddingValue,
                      _paddingValue,
                      _paddingValue / 2,
                    ),
                  );
                }

                return AnimatedSize(
                  duration: Duration(milliseconds: 500),
                  child: child,
                );
              },
            ),
          ),

          ///Discover communities section
          Consumer(
            builder: (context, ref, child) {
              final canShowTitle = ref.watch(recCommunitiesProvider.select(
                  (pvd) =>
                      pvd.hasData && pvd.data!.isNotEmpty ||
                      (pvd.isLoading && wasRecCommunitiesNotEmpty)));

              final hasMoreItems = ref.watch(recCommunitiesProvider
                  .select((pvd) => pvd.hasData && pvd.data!.length > 3));

              if (canShowTitle) {
                return _SectionTitle(
                  title: FutureBuilder(
                    future: RemoteConfigManager.instance.getString(
                        RemoteConfigKey.VOICECLUB_SECTION_TITLE,
                        "Discover Voiceclubs"),
                    initialData: "Discover Voiceclubs",
                    builder: (context, snapshot) {
                      return Text(snapshot.data!);
                    },
                  ),
                  seeMoreButton: hasMoreItems || kDebugMode
                      ? _SeeMoreButton(
                          onPressed: () {
                            ArreNavigator.instance.push(
                                AAppPage(child: DiscoverCommunitiesScreen()));
                          },
                          label: "Find More",
                        )
                      : null,
                );
              }
              return const SliverToBoxAdapter();
            },
          ),
          SliverToBoxAdapter(
            child: Consumer(
              builder: (context, ref, child) {
                final recCommunitiesPvd = ref.watch(recCommunitiesProvider);
                Widget? child;
                if (recCommunitiesPvd.hasData &&
                    recCommunitiesPvd.data!.isNotEmpty) {
                  child = SizedBox(
                    height: 194,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding:
                          const EdgeInsets.symmetric(horizontal: _paddingValue),
                      itemCount: recCommunitiesPvd.data?.length ?? 0,
                      separatorBuilder: (context, index) => SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        return CommunityCard(
                          community: recCommunitiesPvd.data![index],
                          onDismiss: () => recCommunitiesPvd
                              .dismissCommunity(recCommunitiesPvd.data![index]),
                        );
                      },
                    ),
                  );
                } else if (recCommunitiesPvd.isLoading &&
                    wasRecCommunitiesNotEmpty) {
                  child = SizedBox(
                    height: 194,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding:
                          const EdgeInsets.symmetric(horizontal: _paddingValue),
                      itemCount: 4,
                      separatorBuilder: (context, index) => SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        return CommunityCard.loading();
                      },
                    ),
                  );
                }

                if (child != null) {
                  child = Padding(
                    padding: EdgeInsets.only(bottom: _sectionBottomPadValue),
                    child: child,
                  );
                }

                return child ?? const SizedBox();
              },
            ),
          ),

          ///My Communities
          Consumer(
            builder: (context, ref, child) {
              final canShowTitle = ref.watch(myCommunitiesProvider.select(
                  (pvd) =>
                      pvd.hasData && pvd.data!.isNotEmpty ||
                      (pvd.isLoading && wasMyCommunitiesNotEmpty)));

              final hasMoreItems = ref.watch(myCommunitiesProvider
                  .select((pvd) => pvd.hasData && pvd.data!.length > 5));

              if (canShowTitle)
                return _SectionTitle(
                  title: Text("My Voiceclubs"),
                  seeMoreButton: hasMoreItems
                      ? _SeeMoreButton(
                          onPressed: () {
                            ArreNavigator.instance
                                .push(AAppPage(child: MyCommunitiesScreen()));
                          },
                          label: "View All",
                        )
                      : null,
                );
              return const SliverToBoxAdapter();
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final myCommunitiesPvd = ref.watch(myCommunitiesProvider);
              Widget? child;

              if (myCommunitiesPvd.hasData &&
                  myCommunitiesPvd.data!.isNotEmpty) {
                child = SliverList.list(
                  children: myCommunitiesPvd.data!
                      .take(5)
                      .map<Widget>((e) => MyCommunityTile(
                            community: e,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                          ))
                      .toList()
                      .joinSeparator(SizedBox(height: 10)),
                );
              } else if (myCommunitiesPvd.isLoading &&
                  wasMyCommunitiesNotEmpty) {
                child = SliverList.list(
                  children: List.generate(
                          arrePref.getInt(PrefKey.MY_COMMUNITIES_COUNT) ?? 5,
                          (_) => MyCommunityTile.loading(
                              padding: EdgeInsets.symmetric(horizontal: 20)))
                      .joinSeparator(SizedBox(height: 10)),
                );
              }

              if (child != null) {
                child = SliverPadding(
                  padding: EdgeInsets.only(bottom: _sectionBottomPadValue),
                  sliver: child,
                );
              }

              return child ?? const SliverToBoxAdapter();
            },
          ),

          ///Arre Playlists
          if (homeFeedPvd.hasValue && homeFeedPvd.value!.isNotEmpty)
            for (var i = 0; i < homeFeedPvd.value!.length; i++) ...[
              _SectionTitle(title: Text(homeFeedPvd.value![i].title)),
              SliverPadding(
                padding: EdgeInsets.fromLTRB(
                  _paddingValue,
                  0,
                  _paddingValue,
                  _sectionBottomPadValue,
                ),
                sliver: SliverGrid(
                  delegate: SliverChildListDelegate(
                    homeFeedPvd.value![i].playlists!
                        .map(
                          (p0) => PlaylistCardV2(
                            homePagePlaylist: p0!,
                            onPressed: () {
                              ArreNavigator.instance.push(AAppPage(
                                child: ArrePlaylistDetailsScreen(
                                  sectionUniqueLink: p0.playlistUniqueLink,
                                  coverImageId: p0.coverMediaId,
                                  title: p0.title,
                                  subtitle: p0.subTitle,
                                ),
                              ));
                            },
                          ),
                        )
                        .toList(),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 162 / 188,
                  ),
                ),
              )
            ]
          else if (homeFeedPvd.isLoading)
            for (var i = 0; i < 2; i++) ...[
              _SectionTitle(
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: AShimmerLoading(height: 22, width: 246),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.fromLTRB(
                  _paddingValue,
                  0,
                  _paddingValue,
                  _sectionBottomPadValue,
                ),
                sliver: SliverGrid(
                  delegate: SliverChildListDelegate(
                    List.generate(4, (index) => PlaylistCardV2.loading()),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 162 / 188,
                  ),
                ),
              )
            ],

          ///Topics section
          // _SectionTitle(title: Text("Choose your go-to topics")),
          // Consumer(
          //   builder: (context, ref, child) {
          //     return SliverToBoxAdapter(child: MyTopicsList(isHomePage: true));
          //   },
          // ),

          SliverToBoxAdapter(
            child: ExploreBannerSection(
              padding: EdgeInsets.only(
                top: _sectionTopPadValue,
                bottom: _sectionBottomPadValue,
              ),
            ),
          ),

          ///My playlists
          _SectionTitle(
            title: Text("My Playlists"),
            seeMoreButton: _SeeMoreButton(
              onPressed: () {
                ArreNavigator.instance
                    .push(AAppPage(child: MyPlaylistScreen()));
              },
              label: "View All",
            ),
          ),
          Consumer(
            builder: (context, ref, child) {
              final currentUserId = ref.watch(currentUserProvider).userId;
              final userPlaylistPvd =
                  ref.watch(userPlaylistProvider(currentUserId!));
              final firstPlaylist = userPlaylistPvd.data?.firstOrNull;
              return SliverPadding(
                padding: EdgeInsets.only(bottom: _sectionBottomPadValue),
                sliver: SliverList.list(
                  children: <Widget>[
                    PlaylistTile.myLikedPlaylist(),
                    PlaylistTile.history(),
                    if (userPlaylistPvd.isLoading)
                      PlaylistTile.loading()
                    else if (firstPlaylist != null)
                      PlaylistTile(
                        thumbnail:
                            ArreNetworkImage.mediaId(firstPlaylist.coverImage!),
                        title: firstPlaylist.title,
                        isPrivate: firstPlaylist.isPrivate,
                        showPrivacyIcon: !firstPlaylist.isSystemGenerated,
                        onPressed: () {
                          ArreNavigator.instance.push(
                            AAppPage(
                              child: UserPlaylistDetailsScreen(
                                  playlistId: firstPlaylist.playlistId),
                            ),
                          );
                        },
                        podSourceId: firstPlaylist.playlistId,
                      )
                  ].joinSeparator(
                    SizedBox(height: 10),
                  ),
                ),
              );
            },
          ),

          ///Suggested Users
          Consumer(
            builder: (context, ref, child) {
              final canShowTitle = ref.watch(topRecommendedUsersProvider.select(
                  (pvd) =>
                      pvd.hasValue && pvd.value!.isNotEmpty || pvd.isLoading));

              final hasMoreItems = ref.watch(topRecommendedUsersProvider
                  .select((pvd) => pvd.hasValue && pvd.value!.length >= 5));

              if (canShowTitle)
                return _SectionTitle(
                  title: Text("Suggested Users"),
                  seeMoreButton: hasMoreItems
                      ? _SeeMoreButton(
                          onPressed: () {
                            ArreNavigator.instance
                                .push(AAppPage(child: SuggestedUsersScreen()));
                          },
                          label: "Find More",
                        )
                      : null,
                );
              return const SliverToBoxAdapter();
            },
          ),
          SliverToBoxAdapter(
            child: Consumer(builder: (context, ref, child) {
              final suggestedUsersPvd = ref.watch(topRecommendedUsersProvider);

              Widget? child;

              if (suggestedUsersPvd.hasValue &&
                  suggestedUsersPvd.value!.isNotEmpty) {
                child = SizedBox(
                  height: 194,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding:
                        const EdgeInsets.symmetric(horizontal: _paddingValue),
                    children: suggestedUsersPvd.value!
                        .map<Widget>((creatorData) => CreatorCard(creatorData))
                        .toList()
                        .joinSeparator(SizedBox(width: 12)),
                  ),
                );
              } else if (suggestedUsersPvd.isLoading) {
                child = SizedBox(
                  height: 194,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding:
                        const EdgeInsets.symmetric(horizontal: _paddingValue),
                    itemCount: 4,
                    separatorBuilder: (context, index) => SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      return CommunityCard.loading();
                    },
                  ),
                );
              }

              if (child != null) {
                child = Padding(
                  padding: EdgeInsets.only(bottom: _sectionBottomPadValue),
                  child: child,
                );
              }

              return child ?? const SizedBox();
            }),
          ),
          const SliverSafeArea(
            minimum: EdgeInsets.only(bottom: 8),
            sliver: SliverToBoxAdapter(),
          ),
        ],
      ),
    );
  }
}

class _AppUpdateSection extends ConsumerStatefulWidget {
  final bool isDismissible;
  final AppUpdateDetails updateDetails;

  const _AppUpdateSection({
    required this.isDismissible,
    required this.updateDetails,
  });

  @override
  ConsumerState<_AppUpdateSection> createState() => _AppUpdateSectionState();
}

class _AppUpdateSectionState extends ConsumerState<_AppUpdateSection> {
  bool isDismissed = false;

  Future<void> dismiss() async {
    setState(() {
      isDismissed = true;
    });
    await arrePref.setString(
      PrefKey.IGNORED_APP_UPDATE_VERSION,
      widget.updateDetails.updateVersion.toString(),
    );
    ref.invalidate(appUpdateFutureProvider);
  }

  @override
  Widget build(BuildContext context) {
    if (isDismissed) return SizedBox();
    return Container(
      height: 68,
      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AColors.BgLight,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            right: widget.isDismissible ? 120 : 100,
            child: Transform.scale(
              scale: 5,
              child: Icon(
                ArreIconsV2.amoeba,
                color: Color(0x804BC7B6),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Time to update your App!",
                      style: ATextStyles.sys14Bold(),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "You are missing out on \nnew changes to Arré Voice",
                      style: ATextStyles.sys12Regular(AColors.textMedium),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              StarsOnTop(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6, right: 2),
                  child: FilledFlatButton(
                    onPressed: DeviceAppManager.instance.updateApp,
                    backgroundColor: AColors.orangePrimary,
                    child: Text(
                      "Update",
                      style: ATextStyles.sys18Regular(),
                    ),
                  ),
                ),
              ),
              if (widget.isDismissible)
                IconButton(
                  onPressed: dismiss,
                  icon: Icon(
                    ArreIconsV2.cross_outline,
                    size: 16,
                    color: AColors.white.withOpacity(0.7),
                  ),
                )
              else
                SizedBox(width: 16)
            ],
          ),
        ],
      ),
    );
  }
}

const _paddingValue = 20.0;

class _SectionTitle extends StatelessWidget {
  final Widget title;
  final Widget? seeMoreButton;

  const _SectionTitle({
    required this.title,
    this.seeMoreButton,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: _sectionTopPadValue),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 46,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: _paddingValue),
              Expanded(
                child: DefaultTextStyle(
                  style: ATextStyles.sys20Bold(),
                  child: title,
                ),
              ),
              if (seeMoreButton != null) seeMoreButton!,
              SizedBox(width: _paddingValue),
            ],
          ),
        ),
      ),
    );
  }
}

class _SeeMoreButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const _SeeMoreButton({
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          padding:
              MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 12)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          side:
              MaterialStatePropertyAll(BorderSide(color: AColors.tealPrimary)),
          minimumSize: MaterialStatePropertyAll(Size(64, 24))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: ATextStyles.sys12Regular(AColors.textMedium, 1.8),
          ),
          SizedBox(width: 4),
          Icon(
            ArreIconsV2.frontarrow_outline,
            size: 10,
            color: AColors.textMedium,
          ),
        ],
      ),
    );
  }
}

class _CommunityIntroBanner extends StatefulWidget {
  final EdgeInsets padding;

  const _CommunityIntroBanner({required this.padding});

  @override
  State<_CommunityIntroBanner> createState() => _CommunityIntroBannerState();
}

class _CommunityIntroBannerState extends State<_CommunityIntroBanner> {
  bool get canShowBanner =>
      arrePref.getBool(PrefKey.CAN_SHOW_COMMUNITY_INTRO_BANNER) != false;

  Future<void> hideBanner() async {
    arreAnalytics.logEvent(GAEvent.VC_INTRO_BANNER_DISMISS);
    await arrePref.setBool(PrefKey.CAN_SHOW_COMMUNITY_INTRO_BANNER, false);
    setState(() {});
  }

  void openCommunitiesScreen() {
    arreAnalytics.logEvent(GAEvent.VC_INTRO_BANNER_CLICK);
    ArreNavigator.instance.push(AAppPage(child: DiscoverCommunitiesScreen()));
    hideBanner();
  }

  @override
  Widget build(BuildContext context) {
    if (!canShowBanner) return SizedBox();
    return Container(
      margin: widget.padding,
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: GestureDetector(
        onTap: openCommunitiesScreen,
        child: Stack(
          children: [
            Positioned.fill(
              child:
                  Image.asset(ArreAssets.BG_DECORATION_IMG, fit: BoxFit.fill),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
                  child: Text(
                    "Introducing Voiceclubs on Arré Voice",
                    textAlign: TextAlign.center,
                    style: ATextStyles.sys16Bold(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Join the popping Voiceclubs on Voice and enjoy creating new friendships and voicepods together",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 12),
                StarsOnTop(
                  child: SizedBox(
                    width: 120,
                    child: FilledFlatButton(
                      onPressed: openCommunitiesScreen,
                      child: Text("See Now", style: ATextStyles.user14Bold()),
                    ),
                  ),
                ),
                SizedBox(height: 6),
              ],
            ),
            Positioned(
              top: -4,
              right: -4,
              child: ACloseButton(
                splashRadius: 1,
                onPressed: hideBanner,
                iconSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _debug(WidgetRef ref) async {
  try {
    // showLanguageSelectionSheet();
    // final d1 = DateTime.now();
    // await ApiService.instance.getStoryCaptionInfo(languages: ["english"]);
    // final d2 = DateTime.now();
    // print("Time to fetch story captions ${d1.difference(d2)}");
    //
    // final d3 = DateTime.now();
    // await ApiService.instance.getOnboardingFeed(["english"]);
    // final d4 = DateTime.now();
    // print("Time to fetch onboarding feed ${d3.difference(d4)}");
    // print("${arrePref.getString(PrefKey.ONBOARDING_FLOW)}");
    ArreNavigator.instance.push(AGlobalPage(child: CuratingFeedAnimationScreen()));
    // ALogger.d("Socket connected? ${ArreSocketClient.instance.isConnected}");
    // ArreSocketClient.instance.connect();
    // ArreNavigator.instance.push(
    //   AAppPage(
    //     child: ChatFormScreen(
    //         communityId: "5MnENvuYhDqvjMIhxHdp",
    //         communityTitle: "K-Pop Community"),
    //   ),
    // );
    // ArreNavigator.instance.push(AAppPage(child: CommunityChatScreen(chatId)));
  } catch (err) {
    print("#DEBUGGING_ERROR $err");
  }
}
