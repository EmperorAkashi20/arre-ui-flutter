library search_screen;

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/search_providers/search_hashtags_provider.dart';
import 'package:arre_frontend_flutter/providers/search_providers/search_posts_provider.dart';
import 'package:arre_frontend_flutter/providers/search_providers/search_provider.dart';
import 'package:arre_frontend_flutter/providers/search_providers/search_user_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/user_list_tile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/src/search_history.dart';
import '../../widgets/voicepod/voicepod_card.dart';
import '../explore/explore_hashtag_posts.dart';

part 'search_tabs.dart';

part 'search_hashtags_tab.dart';

part 'search_posts_tab.dart';

part 'search_user_tab.dart';

class SearchScreen extends ConsumerWidget with ArreScreen {
  const SearchScreen({super.key});

  @override
  Uri? get uri => Uri.parse("/search");

  @override
  String get screenName => GAScreen.SEARCH;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/search") {
      return AAppPage(
        child: SearchScreen(),
        fullscreenDialog: true,
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchPvd = ref.watch(searchProvider);
    final searchUserPvd = ref.watch(searchUsersProvider);
    final searchPostsPvd = ref.watch(searchPostsProvider);
    final textEditingCtrl = ref.read(searchProvider).searchStringController;
    Widget child;
    if (searchUserPvd.hasData || searchPostsPvd.hasData) {
      child = _SearchTabs();
      // if (searchPvd.searchFocusNode.hasFocus) {
      //     child = Column(
      //       children: [
      //         Padding(
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Text(
      //                 'Recents',
      //                 style: ATextStyles.sys16Medium(),
      //               ),
      //               TextButton(
      //                 onPressed: () {
      //                   searchPvd.deleteAllSearches();
      //                 },
      //                 child: Text('Clear All'),
      //                 style: ButtonStyle(
      //                   overlayColor: MaterialStateColor.resolveWith(
      //                       (states) => Colors.transparent),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Expanded(child: _RecentSearchTiles()),
      //       ],
      //     );
      //   } else {
      //   }
    } else if (searchUserPvd.isLoading || searchPostsPvd.isLoading) {
      child = Center(
        child: ACommonLoader(),
      );
    } else if (searchUserPvd.hasError || searchPostsPvd.hasError) {
      child = ArreErrorWidget(
        error: searchUserPvd.error ??
            searchPostsPvd.error ??
            "Something went wrong",
      );
    } else if (searchPvd.searchStringController.text.trim().isNotEmpty) {
      if (!searchUserPvd.hasData || !searchPostsPvd.hasData) {
        child = Center(
          child: Text("No results found"),
        );
      } else {
        child = SizedBox();
      }
    } else {
      if (searchPvd.hasData) {
        child = Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recents',
                    style: ATextStyles.sys16Medium(),
                  ),
                  TextButton(
                    onPressed: () {
                      searchPvd.deleteAllSearches();
                    },
                    child: Text('Clear All'),
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: _RecentSearchTiles()),
          ],
        );
      } else if (searchPvd.isLoading) {
        child = Center(
          child: ACommonLoader(),
        );
      } else {
        child = Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ArreAssets.NO_RECENT_SEARCHES_IMG),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Type in the username or voicepod title you wish to search for!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        );
      }
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: _SearchWidget(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  textEditingCtrl.clear();
                },
                child: Text("Cancel"),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(child: child),
    );
  }
}

class _RecentSearchTiles extends ConsumerWidget {
  const _RecentSearchTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchPvd = ref.read(searchProvider);
    final searchUserPvd = ref.watch(searchUsersProvider);
    final searchPostsPvd = ref.watch(searchPostsProvider);
    return ListView.builder(
      itemCount: searchPvd.recentSearches!.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: AColors.BgDark,
              child: Icon(ArreIconsV2.search_outline),
            ),
          ),
          title: Text(
            searchPvd.recentSearches!.elementAt(index).searchQuery.toString(),
            style: ATextStyles.sys14Regular(),
          ),
          trailing: GestureDetector(
            onTap: () {
              searchPvd.deleteSingleSearch(
                  searchPvd.recentSearches!.elementAt(index).id);
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: Icon(
                ArreIconsV2.cross_outline,
                size: 15,
              ),
            ),
          ),
          onTap: () {
            searchPvd.searchStringController.text = searchPvd.recentSearches!
                .elementAt(index)
                .searchQuery
                .toString();
            var text = searchPvd.searchStringController.text;
            searchPvd.searchStringController.selection =
                TextSelection.fromPosition(TextPosition(
                    offset: searchPvd.searchStringController.text.length));
            searchUserPvd.fetchUsers(text);
            searchPostsPvd.fetchPosts(text);
            searchPvd.searchFocusNode.unfocus();
          },
        ),
      ),
    );
  }
}

class _SearchWidget extends ConsumerWidget {
  const _SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchPvd = ref.read(searchProvider);
    final searchUserPvd = ref.watch(searchUsersProvider);
    final searchPostsPvd = ref.watch(searchPostsProvider);
    final textEditingCtrl = ref.read(searchProvider).searchStringController;
    final searchFocusNode = ref.read(searchProvider).searchFocusNode;
    return Container(
      height: 36,
      color: AColors.BgLight,
      child: Container(
        padding: EdgeInsets.only(right: 10),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0XFFD1F0EC),
          ),
        ),
        child: TextFormField(
          autocorrect: false,
          controller: textEditingCtrl,
          focusNode: searchFocusNode,
          autofocus: true,
          cursorColor: Colors.white,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              bottom: 5,
            ),
            prefixIcon: Icon(
              ArreIconsV2.search_outline,
              size: 20,
              color: Colors.white.withOpacity(0.8),
            ),
            border: InputBorder.none,
          ),
          onChanged: (String text) {
            // searchPvd.textValueChanged();
            // EasyDebounce.debounce(
            //     'get-search-results', Duration(milliseconds: 500), () {
            //   searchHashtasgPvd.fetchHashtags(text);
            //   searchUserPvd.fetchUsers(text);
            //   searchPostsPvd.fetchPosts(text);
            // });
          },
          onFieldSubmitted: (String text) {
            searchUserPvd.fetchUsers(text);
            searchPostsPvd.fetchPosts(text);
            if (textEditingCtrl.text.trim().isNotEmpty) {
              if (searchPvd.hasTextValueChanged == true) {
                searchPvd.deleteDuplicateValuesFromDb();
                final searchHistory = SearchHistoryItem()
                  ..searchQuery = searchPvd.searchStringController.text
                  ..updatedOn = DateTime.now();
                searchPvd.saveSearchHistory(searchHistory);
              }
            }
          },
        ),
      ),
    );
  }
}
