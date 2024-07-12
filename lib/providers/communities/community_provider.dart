import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../graphql/api_service.dart';
import '../../utils/utils.dart';

final communityProvider = ChangeNotifierProvider.autoDispose
    .family<CommunityProvider, String>((ref, communityId) {
  return CommunityProvider(communityId);
});

final communityNameProvider = FutureProvider.family.autoDispose<String, String>(
  (ref, communityId) async {
    final name = await ApiService.instance.getCommunityName(communityId);
    ref.keepAlive();
    return name;
  },
);

final pinnedEntityIdsProvider = FutureProvider.family<List<String>, String>(
  (ref, communityId) {
    return ApiService.instance.getPinnedEntityIds(communityId);
  },
);

final communityRoleProvider = FutureProvider.family<GCommunityRole, String>(
  (ref, communityId) {
    return ApiService.instance.getCommunityRole(communityId);
  },
);

class CommunityProvider with ChangeNotifier {
  final String communityId;
  GArreCommunity? _data;
  bool _isLoading = true;
  dynamic _error;

  CommunityProvider(this.communityId) {
    init();
  }

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _data != null;

  GArreCommunity? get data => _data;

  bool get canPostVoicepod => data?.isMember == true || data?.isAdmin == true;

  Future<void> init() async {
    try {
      _isLoading = true;
      _data = await ApiService.instance.getCommunityDetails(communityId);
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();
}
