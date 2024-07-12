import 'dart:async';
import 'dart:collection';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/graphql/socket_service.dart';
import 'package:arre_frontend_flutter/models/src/message.dart';
import 'package:arre_frontend_flutter/providers/messages_mixins.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatMessagesProvider = ChangeNotifierProvider.autoDispose
    .family<ChatMessagesProvider, String>((ref, chatId) {
  return ChatMessagesProvider(chatId);
});

class ChatMessagesProvider
    with
        ChangeNotifier,
        OnScroll<AMessage>,
        LoadOnScrollNotificationV2,
        ProcessMessagesMixin,
        MessageSelectionMixin {
  StreamSubscription<AMessage>? _incomingMessageSub;
  StreamSubscription<String>? _deleteMessageSub;
  final String chatId;
  dynamic error;
  bool _isLoading = true;
  List<ArreMessageTile> _data = [];

  bool _hasLoadedAllMessages = false;

  ChatMessagesProvider(this.chatId) {
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
      ASocketService.joinCommunityChat(chatId);
      final data =
          await ApiService.instance.getCommunityChatMessages(chatId: chatId);

      //Socket service
      _incomingMessageSub?.cancel();
      _incomingMessageSub =
          ASocketService.onIncomingMessage(chatId).listen((message) {
        addMessage(message);
      });
      _deleteMessageSub?.cancel();
      _deleteMessageSub =
          ASocketService.onMessageDeleted(chatId).listen((messageId) {
        markAsDeleted(messageId);
      });

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

  Future<void> refresh() => init();

  @override
  Future<List<AMessage>> loadNextItems() async {
    final items = await ApiService.instance.getCommunityChatMessages(
      chatId: chatId,
      lastMessageCreatedAt:
          oldestMessage!.createdAt.millisecondsSinceEpoch.toString(),
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
      final selectedMessages = this.selectedMessages.toList();
      await Future.wait(selectedMessages.map((message) =>
          ASocketService.deleteCommunityChatMessage(
              message.message.messageId)));
      selectedMessages.forEach((element) {
        element.message.isDeleted = true;
      });
      clearSelection();
      notifyListeners();
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }

  @override
  void dispose() {
    _incomingMessageSub?.cancel();
    super.dispose();
  }
}
