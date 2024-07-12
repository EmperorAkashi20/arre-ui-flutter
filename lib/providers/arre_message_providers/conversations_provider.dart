part of arre_message_providers;

final conversationsProvider =
    ChangeNotifierProvider((ref) => ConversationsProvider());

final conversationDetailsProvider =
    FutureProvider.family<GConversation, String>((ref, conversationId) {
  return ApiService.instance.getConversationDetails(conversationId);
});

class ConversationsProvider
    with ChangeNotifier, OnScroll<GConversation>, LoadOnScrollNotificationV2 {
  List<GConversation>? _data;
  dynamic error;
  bool _isLoading = true;

  ConversationsProvider() {
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

  Future<void> init({bool notifyLoading = true}) async {
    try {
      error = null;
      if (notifyLoading) setLoading(true);
      resetLoadOnScroll();
      _data = await ApiService.instance.getConversations();
    } catch (err, st) {
      error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  @override
  Future<List<GConversation>> loadNextItems() async {
    final items = await ApiService.instance.getConversations(
        lastConversationUpdatedAt: _data!.last.updatedAt.toString());
    _data!.addAll(items);
    return items;
  }
}
