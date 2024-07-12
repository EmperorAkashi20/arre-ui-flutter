import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final communityMembersProvider = ChangeNotifierProvider.autoDispose
    .family<CommunityMembersProvider, String>((ref, communityId) {
  return CommunityMembersProvider(communityId);
});

class CommunityMembersProvider
    with
        ChangeNotifier,
        OnScroll<ArreUserWithExtra<String?>>,
        LoadOnScrollNotification {
  final String communityId;
  List<ArreUserWithExtra<String?>>? _data;
  dynamic _error;
  bool _isLoading = true;

  CommunityMembersProvider(this.communityId) {
    init();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<ArreUser>? get data => _data;

  dynamic get error => _error;

  Future<void> init() async {
    try {
      _data = await ApiService.instance
          .getCommunityMembers(communityId: communityId);
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
  Future<List<ArreUserWithExtra<String?>>> loadNextItems() async {
    final nextMembers = await ApiService.instance.getCommunityMembers(
      communityId: communityId,
      lastUserJoinedAt: _data!.last.value,
    );
    _data!.addAll(nextMembers);
    return nextMembers;
  }

  void removeMember(String userId) {
    _data?.removeWhere((element) => element.userId == userId);
    notifyListeners();
  }
}
