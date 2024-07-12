import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';

final recCommunitiesProvider =
    ChangeNotifierProvider((ref) => RecommendedCommunitiesProvider());

typedef AnimatedRemovedCommunityBuilder = Widget Function(BuildContext context,
    Animation<double> animation, GACommunityShortInfo community);

class RecommendedCommunitiesProvider with ChangeNotifier {
  List<GACommunityShortInfo>? _data;
  GlobalKey<AnimatedGridState>? gridStateKey;

  AnimatedRemovedCommunityBuilder? removedItemBuilder;
  bool _isLoading = true;
  dynamic _error;

  RecommendedCommunitiesProvider() {
    init();
  }

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _data != null;

  List<GACommunityShortInfo>? get data => _data;

  void initAnimatedGrid({
    required AnimatedRemovedCommunityBuilder removedItemBuilder,
  }) {
    this.gridStateKey = GlobalKey<AnimatedGridState>(
        debugLabel: "discover_voiceclubs_gridview");
    this.removedItemBuilder = removedItemBuilder;
  }

  Future<void> init() async {
    try {
      if (_isLoading != true) {
        _isLoading = true;
        Future(notifyListeners);
      }
      _data = await ApiService.instance.getRecommendedCommunities();
      this.gridStateKey = GlobalKey<AnimatedGridState>(
          debugLabel: "discover_voiceclubs_gridview");
      await arrePref.setInt(PrefKey.REC_COMMUNITIES_COUNT, _data!.length);
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  Future<void> dismissCommunity(GACommunityShortInfo community) async {
    final index = data!
        .indexWhere((element) => element.communityId == community.communityId);
    data!.removeAt(index);
    gridStateKey?.currentState?.removeItem(
      index,
      (context, animation) =>
          removedItemBuilder!(context, animation, community),
      duration: Duration(milliseconds: 500),
    );
    notifyListeners();
    ApiService.instance.rejectRecCommunity(community.communityId);
  }
}
