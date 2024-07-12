part of arre_message_providers;

final messagesUnreadStateProvider =
    StateNotifierProvider<MessageUnreadStateProvider, bool>(
        (ref) => MessageUnreadStateProvider());

///false - No Unread messages
///true - Has Unread messages
class MessageUnreadStateProvider extends StateNotifier<bool> {
  MessageUnreadStateProvider() : super(false) {
    init();
  }

  bool get hasUnreadMessages => state;

  Future<void> init() async {
    try {
      state = await ApiService.instance.getUnreadMessageStatus();
    } catch (err, st) {
      Utils.reportError(err, st);
    }
  }

  void markAsRead() {
    state = false;
  }
}
