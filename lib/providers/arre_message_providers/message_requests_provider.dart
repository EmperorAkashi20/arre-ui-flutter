part of arre_message_providers;

final acceptConversationFuture = FutureProvider.autoDispose
    .family<void, String>((ref, conversationId) async {
  await ApiService.instance.updateMessageRequestStatus(
    conversationId: conversationId,
    requestStatus: "published",
  );
  ref.invalidate(messageRequestsProvider);
  ref.invalidate(conversationsProvider);
  final refresh =
      ref.refresh(conversationDetailsProvider(conversationId).future);
  await refresh;
});

final deleteConversationFuture = FutureProvider.autoDispose
    .family<void, String>((ref, conversationId) async {
  await ApiService.instance.updateMessageRequestStatus(
    conversationId: conversationId,
    requestStatus: "unpublished",
  );
  ref.invalidate(messageRequestsProvider);
  ref.invalidate(conversationsProvider);
  final refresh =
      ref.refresh(conversationDetailsProvider(conversationId).future);
  await refresh;
});

final blockConversationFuture = FutureProvider.autoDispose
    .family<void, String>((ref, conversationId) async {
  await ApiService.instance.updateMessageRequestStatus(
    conversationId: conversationId,
    requestStatus: "blocked",
  );
  ref.invalidate(messageRequestsProvider);
  ref.invalidate(conversationsProvider);
  final refresh =
      ref.refresh(conversationDetailsProvider(conversationId).future);
  await refresh;
});

final messageRequestsProvider =
    ChangeNotifierProvider((ref) => MessageRequestsProvider());

class MessageRequestsProvider
    with ChangeNotifier, OnScroll<GConversation>, LoadOnScrollNotificationV2 {
  List<GConversation>? _data;
  dynamic error;
  bool _isLoading = true;

  MessageRequestsProvider() {
    init();
  }

  bool get isLoading => _isLoading;

  List<GConversation>? get data => _data;

  void setLoading(bool value) {
    if (value != _isLoading) {
      _isLoading = value;
      notifyListeners();
    }
  }

  Future<void> init() async {
    try {
      error = null;
      setLoading(true);
      resetLoadOnScroll();
      _data = await ApiService.instance.getConversations(status: "requested");
    } catch (err, st) {
      error = err;
      Utils.reportError(err, st);
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<List<GConversation>> loadNextItems() async {
    final items = await ApiService.instance.getConversations(
        status: "requested",
        lastConversationUpdatedAt: _data!.last.updatedAt.toString());
    _data!.addAll(items);
    return items;
  }
}
