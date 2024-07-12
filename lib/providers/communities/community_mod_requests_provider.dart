import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef RemovedItemBuilder<T> = Widget Function(
    T item, BuildContext context, Animation<double> animation);

final communityModRequestsProvider = ChangeNotifierProvider.autoDispose
    .family<CommunityModRequestsProvider, String>((ref, communityId) {
  return CommunityModRequestsProvider(communityId, "pending", ref);
});

final communityModResolvedLogsProvider = ChangeNotifierProvider.autoDispose
    .family<CommunityModRequestsProvider, String>((ref, communityId) {
  return CommunityModRequestsProvider(communityId, "resolved", ref);
});

class CommunityModRequestsProvider
    with
        ChangeNotifier,
        OnScroll<GCommunityModRequest>,
        LoadOnScrollNotificationV2 {
  final Ref ref;
  GlobalKey<AnimatedListState>? listKey;
  RemovedItemBuilder<GCommunityModRequest>? removeItemBuilder;
  Map<String, bool> _performingActions = {};

  final String status;
  final String communityId;
  List<GCommunityModRequest>? _data;
  dynamic _error;
  bool _isLoading = true;

  bool isPerformingAction(String requestId) =>
      _performingActions[requestId] == true;

  CommunityModRequestsProvider(this.communityId, this.status, this.ref) {
    init();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<GCommunityModRequest>? get data => _data;

  dynamic get error => _error;

  void initAnimatedList({
    required GlobalKey<AnimatedListState> listKey,
    required RemovedItemBuilder builder,
  }) {
    this.listKey = listKey;
    this.removeItemBuilder = builder;
  }

  Future<void> init() async {
    try {
      _data = await ApiService.instance.getCommunityModRequests(
        communityId: communityId,
        status: status,
      );
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  Future<void> updateModRequest({
    required GCommunityModRequest request,
    required GCommunityModAction action,
  }) async {
    try {
      _performingActions[request.moderationRequestId] = true;
      notifyListeners();
      // if (kDebugMode) {
      //   await Future.delayed(Duration(seconds: 1));
      // } else {
      await ApiService.instance.updateCommunityModRequest(
        communityId: communityId,
        requestId: request.moderationRequestId,
        actionValue: action.value,
      );
      // }
      final index = data!.indexWhere((element) =>
          element.moderationRequestId == request.moderationRequestId);
      if (index >= 0) {
        final removedItem = _data!.removeAt(index);
        listKey?.currentState?.removeItem(
          index,
          (context, animation) =>
              removeItemBuilder!(removedItem, context, animation),
        );
      }
      ref.invalidate(communityModResolvedLogsProvider(communityId));
    } catch (err, st) {
      _performingActions[request.moderationRequestId] = false;
      notifyListeners();
      Utils.reportError(err, st);
    }
  }

  @override
  Future<List<GCommunityModRequest>> loadNextItems() async {
    final next = await ApiService.instance.getCommunityModRequests(
      communityId: communityId,
      status: status,
      lastUpdatedAt: _data!.last.updatedAt.toString(),
    );
    _data!.addAll(next);
    listKey?.currentState?.insertAllItems(0, next.length);
    return next;
  }
}
