import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/community_chat.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';

final communityChatsProvider = ChangeNotifierProvider.autoDispose
    .family<CommunityChatsProvider, String>(
        (ref, communityId) => CommunityChatsProvider(communityId));

final chatDetailsProvider = FutureProvider.autoDispose
    .family<CommunityChatDetails, String>((ref, chatId) {
  return ApiService.instance.getCommunityChatDetails(chatId);
});

class CommunityChatsProvider
    with ChangeNotifier, OnScroll<CommunityChat>, LoadOnScrollNotification {
  final String communityId;
  List<CommunityChat>? _data;
  dynamic error;
  bool _isLoading = true;

  CommunityChatsProvider(this.communityId) {
    init();
  }

  bool get isLoading => _isLoading;

  bool get hasData => data != null;

  List<CommunityChat>? get data => _data;

  void setLoading(bool value) {
    if (value != _isLoading) {
      _isLoading = value;
      Future(notifyListeners);
    }
  }

  Future<void> init({bool notifyLoading = true}) async {
    try {
      error = null;
      if (notifyLoading) setLoading(true);
      _data =
          await ApiService.instance.getCommunityChats(communityId: communityId);
      resetLoadOnScroll();
    } catch (err, st) {
      error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  @override
  Future<List<CommunityChat>> loadNextItems() async {
    final items = await ApiService.instance.getCommunityChats(
      communityId: communityId,
      after: _data!.last.createdAt.millisecondsSinceEpoch.toString(),
    );
    _data!.addAll(items);
    return items;
  }

  void updateChatDetails(CommunityChatDetails value) {
    final index =
        _data?.indexWhere((element) => element.chatId == value.chatId) ?? -1;
    if (index >= 0) {
      _data![index] = value;
      notifyListeners();
    }
  }
}
