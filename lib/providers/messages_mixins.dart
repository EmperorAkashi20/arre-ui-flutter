import 'package:arre_frontend_flutter/models/src/message.dart';
import 'package:flutter/foundation.dart';

mixin ProcessMessagesMixin on ChangeNotifier {
  bool canAddUnreadDivider = true;

  List<ArreMessageTile> get data;

  AMessage? get recentMessage {
    try {
      ContentMessage message = data
          .firstWhere((element) => element is ContentMessage) as ContentMessage;
      return message.message;
    } catch (err) {
      return null;
    }
  }

  AMessage? get oldestMessage {
    try {
      ContentMessage message = data
          .lastWhere((element) => element is ContentMessage) as ContentMessage;
      return message.message;
    } catch (err) {
      return null;
    }
  }

  Future<Iterable<ArreMessageTile>> processMessages({
    required List<AMessage> messages,
    required AMessage? prevMessage,
    bool reverse = false,
  }) async {
    List<ArreMessageTile> messageTiles = [];

    for (int i = 0; i < messages.length; i++) {
      final messageTile = await messages[i].toMessageTile(prevMessage);
      if (messageTile == null) continue;

      if (reverse) {
        messageTiles.add(messageTile);
      }

      if (prevMessage != null) {
        final prevMessageCreatedAt = prevMessage.createdAt;
        final curMessageCreatedAt = messages[i].createdAt;
        if (prevMessageCreatedAt.day != curMessageCreatedAt.day) {
          if (reverse) {
            messageTiles.add(DateDivider(curMessageCreatedAt));
          } else {
            messageTiles.add(DateDivider(prevMessageCreatedAt));
          }
        }
        if (canAddUnreadDivider &&
            prevMessage.seenAt == 0 &&
            messages[i].seenAt != null &&
            messages[i].seenAt! > 0) {
          canAddUnreadDivider = false;
          messageTiles.add(UnreadDivider());
        }
      }

      if (!reverse) {
        messageTiles.add(messageTile);
      }

      prevMessage = messages[i];
    }
    return messageTiles;
  }

  Future<void> addMessage(AMessage message) async {
    data.removeWhere((element) => element is UnreadDivider);
    data.insertAll(
        0,
        await processMessages(
          messages: [message],
          prevMessage: recentMessage,
          reverse: true,
        ));
    notifyListeners();
  }

  void markAsDeleted(String messageId) {
    try {
      ContentMessage message = data.firstWhere((element) =>
              element is ContentMessage &&
              (element as ContentMessage).message.messageId == messageId)
          as ContentMessage;
      message.message.isDeleted = true;
      notifyListeners();
    } catch (err) {
      //Ignore
    }
  }
}

mixin MessageSelectionMixin on ChangeNotifier {
  bool isForReporting = false;
  int _selectedMessagesCount = 0;

  // HashSet<ContentMessage> selectedMessages = HashSet.identity();
  int get selectedMessagesCount => _selectedMessagesCount;

  Iterable<ContentMessage> get selectedMessages =>
      data.whereType<ContentMessage>().where((element) => element.isSelected);

  List<ArreMessageTile> get data;

  bool get hasAnySelectedMessage => _selectedMessagesCount > 0;

  ///Can throw exceptions if operation fails
  Future<void> deleteMessages();

  void clearSelection() {
    selectedMessages.forEach((element) {
      element.isSelected = false;
    });
    _selectedMessagesCount = 0;
    isForReporting = false;
    notifyListeners();
  }

  void changeMessageSelection(
    ContentMessage message, {
    bool isForReporting = false,
  }) {
    this.isForReporting = isForReporting;
    if (message.isSelected) {
      message.isSelected = false;
      _selectedMessagesCount -= 1;
    } else {
      message.isSelected = true;
      _selectedMessagesCount += 1;
    }
    notifyListeners();
  }
}
