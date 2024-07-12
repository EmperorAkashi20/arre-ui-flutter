import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myCommunitiesProvider = ChangeNotifierProvider((ref) {
  return MyCommunitiesProvider();
});

class MyCommunitiesProvider
    with
        ChangeNotifier,
        OnScroll<GMyCommunityShortInfo>,
        LoadOnScrollNotificationV2 {
  List<GMyCommunityShortInfo>? _data;
  dynamic _error;
  bool _isLoading = true;

  MyCommunitiesProvider() {
    init();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<GMyCommunityShortInfo>? get data => _data;

  dynamic get error => _error;

  Future<void> init() async {
    try {
      _data = await ApiService.instance.getMyCommunities();
      await arrePref.setInt(PrefKey.MY_COMMUNITIES_COUNT, _data!.length);
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  @override
  Future<List<GMyCommunityShortInfo>> loadNextItems() async {
    final nextCommunities =
        await ApiService.instance.getMyCommunities(_data!.last.lastActivityAt);
    _data!.addAll(nextCommunities);
    await arrePref.setInt(PrefKey.MY_COMMUNITIES_COUNT, _data!.length);
    return nextCommunities;
  }
}
