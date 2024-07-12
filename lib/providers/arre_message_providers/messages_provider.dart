part of arre_message_providers;

final messagesProvider = ChangeNotifierProvider.autoDispose
    .family<MessagesProvider, String>((ref, conversationId) {
  return MessagesProvider(conversationId);
});

class MessagesProvider
    with
        ChangeNotifier,
        OnScroll<AMessage>,
        LoadOnScrollNotification,
        ProcessMessagesMixin,
        MessageSelectionMixin {
  final String conversationId;
  dynamic error;
  bool _isLoading = true;
  List<ArreMessageTile> _data = [];

  bool _hasLoadedAllMessages = false;

  MessagesProvider(this.conversationId) {
    init();
  }

  bool get isLoading => _isLoading;

  List<ArreMessageTile> get data => _data;

  bool get hasLoadedAllMessages => _hasLoadedAllMessages;

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
      final data =
          await ApiService.instance.getMessages(conversationId: conversationId);
      canAddUnreadDivider = data.firstOrNull?.senderId != arrePref.userId;
      _hasLoadedAllMessages = data.isEmpty;
      _data = (await processMessages(
        messages: data,
        prevMessage: null,
      ))
          .toList();
    } catch (err, st) {
      error = err;
      Utils.reportError(err, st);
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<List<AMessage>> loadNextItems() async {
    final items = await ApiService.instance.getMessages(
      conversationId: conversationId,
      lastMessageCreatedAt: oldestMessage!.createdAt.millisecondsSinceEpoch.toString(),
    );
    _hasLoadedAllMessages = items.isEmpty;
    _data.addAll(await processMessages(
      messages: items,
      prevMessage: oldestMessage,
    ));
    return items;
  }

  Future<void> deleteMessages() async {
    try {
      await Future.wait(selectedMessages.map((message) =>
          ApiService.instance.deleteMessage(message.message.messageId)));
      await init();
      clearSelection();
      notifyListeners();
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }
}
