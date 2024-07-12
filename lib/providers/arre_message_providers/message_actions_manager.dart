import 'dart:io';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/graphql/graphql_exceptions.dart';
import 'package:arre_frontend_flutter/graphql/socket_service.dart';
import 'package:arre_frontend_flutter/models/src/message.dart';
import 'package:arre_frontend_flutter/models/src/message_draft.dart';
import 'package:arre_frontend_flutter/network/media_service.dart';
import 'package:arre_frontend_flutter/providers/arre_message_providers/arre_message_providers.dart';
import 'package:arre_frontend_flutter/providers/communities/community_chats_provider.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class MessageActionsManager {
  ///Sends message, deletes the message draft
  ///
  /// Can throw exception if message failed to send
  static Future<void> sendMessage(MessageDraft draft, Ref ref) async {
    switch (draft.messagingOn) {
      case MessageOn.DM:
        AMessage message;
        //Send message
        switch (draft) {
          case TextMessageDraftV2():
            message = await _sendTextDMTextMessage(draft);
          case VoiceMessageDraftV2():
            message = await _sendTextDMVoiceMessage(draft);
        }

        //Refresh DM Providers
        if (ref.exists(messagesProvider(draft.conversationId))) {
          final messagePvd = ref.read(messagesProvider(draft.conversationId));
          if (messagePvd.data.isEmpty) {
            await Future.value(ref.refresh(
                conversationDetailsProvider(draft.conversationId).future));
          }
          messagePvd.addMessage(message);
        }
      case MessageOn.COMMUNITY_CHATS:
        //Send message
        try {
          switch (draft) {
            case TextMessageDraftV2():
              await _sendTextCommunityTextMessage(draft);
            case VoiceMessageDraftV2():
              await _sendTextCommunityVoiceMessage(draft);
          }
        } catch (err, st) {
          Utils.reportError(err, st);
          if (err is ArreApiException && err.statusCode == 403) {
            ref.invalidate(chatDetailsProvider(draft.chatId));
          }
          rethrow;
        }
    }
  }

  static Future<AMessage> _sendTextDMTextMessage(
      TextMessageDraftV2 draft) async {
    return ApiService.instance.sendMessage(
      messageType: "text",
      conversationId: draft.conversationId,
      body: draft.body,
    );
  }

  static Future<AMessage> _sendTextDMVoiceMessage(
      VoiceMessageDraftV2 draft) async {
    final mediaId = await AMediaService.instance.uploadFile(
      file: File(draft.filePath),
      entity: MediaEntity.AudioMessage,
    );

    return ApiService.instance.sendMessage(
      messageType: "audio",
      entityId: null,
      mediaId: mediaId,
      conversationId: draft.conversationId,
      duration: draft.duration.inSeconds,
    );
  }

  static Future<void> _sendTextCommunityTextMessage(
      TextMessageDraftV2 draft) async {
    await ASocketService.sendCommunityChatMessage(
      messageType: "text",
      chatId: draft.conversationId,
      body: draft.body,
    );
  }

  static Future<void> _sendTextCommunityVoiceMessage(
      VoiceMessageDraftV2 draft) async {
    final mediaId = await AMediaService.instance.uploadFile(
      file: File(draft.filePath),
      entity: MediaEntity.AudioMessage,
    );
    await ASocketService.sendCommunityChatMessage(
      messageType: "audio",
      chatId: draft.conversationId,
      duration: draft.duration.inSeconds,
      mediaId: mediaId,
    );
  }
}
