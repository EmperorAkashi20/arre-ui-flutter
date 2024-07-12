import 'package:arre_direct_messages_gql/arre_direct_messages_gql.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';

import 'message_draft.dart';

class AMessage {
  final MessageOn messageOn;

  AMessage({
    required this.messageOn,
    required this.messageId,
    required this.conversationId,
    required this.senderId,
    required this.messageStatus,
    required this.messageType,
    required this.mediaId,
    required this.entityId,
    required this.duration,
    required this.seenAt,
    required this.playedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.body,
  });

  final String messageId;

  ///Conversation id or chat id
  final String conversationId;
  final String senderId;
  String messageStatus;
  final String messageType;
  final String? mediaId;
  final String? entityId;
  final int? duration;
  final int? seenAt;
  final int? playedAt;
  final DateTime createdAt;
  final int updatedAt;
  final String? body;

  String get chatId => conversationId;

  bool get isDeleted => messageStatus == "unpublished";

  set isDeleted(bool value) {
    messageStatus = "unpublished";
  }

  factory AMessage.fromDM(GMessage message) {
    return AMessage(
      messageOn: MessageOn.DM,
      messageId: message.messageId,
      conversationId: message.conversationId,
      senderId: message.senderId,
      messageStatus: message.messageStatus,
      messageType: message.messageType,
      mediaId: message.mediaId.validValue,
      entityId: message.entityId.validValue,
      duration: message.duration,
      seenAt: message.seenAt,
      playedAt: message.playedAt,
      createdAt: DateTime.fromMillisecondsSinceEpoch(message.createdAt),
      updatedAt: message.updatedAt,
      body: message.body.validValue,
    );
  }

  factory AMessage.fromCommunityChat(GChatMessage message) {
    return AMessage(
      messageOn: MessageOn.COMMUNITY_CHATS,
      messageId: message.messageId,
      conversationId: message.chatId,
      senderId: message.senderId,
      messageStatus: message.messageStatus,
      messageType: message.messageType,
      mediaId: message.mediaId,
      entityId: message.entityId,
      duration: message.duration,
      seenAt: null,
      playedAt: null,
      createdAt: DateTime.fromMillisecondsSinceEpoch(message.createdAt),
      updatedAt: message.updatedAt,
      body: message.body,
    );
  }

  factory AMessage.fromSocketIncomingMessage(Map data) {
    return AMessage(
      messageOn: MessageOn.COMMUNITY_CHATS,
      messageId: data["messageId"],
      conversationId: data["chatId"],
      senderId: data["senderId"],
      messageStatus: data["messageStatus"],
      messageType: data["messageType"],
      mediaId: data["mediaId"],
      entityId: data["entityId"],
      duration: data["duration"],
      body: data["body"],
      createdAt: DateTime.fromMillisecondsSinceEpoch(data["createdAt"]),
      updatedAt: data["updatedAt"],
      seenAt: null,
      playedAt: null,
    );
  }

  Future<ArreMessageTile?> toMessageTile(AMessage? prevMessage) async {
    final isSentByMe = senderId == arrePref.userId;
    final showSenderName =
        !isSentByMe && messageOn == MessageOn.COMMUNITY_CHATS;
    final isFollowUpMessage = prevMessage?.senderId == this.senderId;
    switch (messageType) {
      case "audio":
        return VoiceMessage(
          isSentByMe: isSentByMe,
          message: this,
          showSenderName: showSenderName,
          isFollowUpMessage: isFollowUpMessage,
        );
      case "text":
        return TextMessage(
          isSentByMe: isSentByMe,
          message: this,
          showSenderName: showSenderName,
          isFollowUpMessage: isFollowUpMessage,
        );
      case "playlist":
        try {
          final playlist =
              await ApiService.instance.getPlaylistDetails(entityId!);
          return PlaylistShareMessage(
            isSentByMe: isSentByMe,
            playlist: playlist,
            message: this,
            showSenderName: showSenderName,
            isFollowUpMessage: isFollowUpMessage,
          );
        } catch (err) {
          return null;
        }
      case "voicepod":
        try {
          final postDetails =
              await ApiService.instance.getPostDetails(entityId!);
          return VoicepodShareMessage(
            isSentByMe: isSentByMe,
            postDetails: postDetails,
            message: this,
            showSenderName: showSenderName,
            isFollowUpMessage: isFollowUpMessage,
          );
        } catch (err) {
          return null;
        }
      default:
        return null;
    }
  }
}

sealed class ArreMessageTile {
  ///Can be null, true, false
  bool? get isSentByMe;

  ArreMessageTile();
}

mixin ContentMessage {
  AMessage get message;

  bool get isSentByMe;

  abstract bool showSenderName, isFollowUpMessage;
  bool isSelected = false;
}

class VoiceMessage extends ArreMessageTile with ContentMessage {
  final bool isSentByMe;
  final AMessage message;

  VoiceMessage({
    required this.isSentByMe,
    required this.message,
    required this.showSenderName,
    required this.isFollowUpMessage,
  });

  @override
  bool showSenderName;

  @override
  bool isFollowUpMessage;
}

class TextMessage extends ArreMessageTile with ContentMessage {
  final bool isSentByMe;
  final AMessage message;

  TextMessage({
    required this.isSentByMe,
    required this.message,
    required this.showSenderName,
    required this.isFollowUpMessage,
  });

  @override
  bool showSenderName;

  @override
  bool isFollowUpMessage;
}

class PlaylistShareMessage extends ArreMessageTile with ContentMessage {
  final bool isSentByMe;
  final GPlaylist playlist;
  final AMessage message;

  PlaylistShareMessage({
    required this.isSentByMe,
    required this.playlist,
    required this.message,
    required this.showSenderName,
    required this.isFollowUpMessage,
  });

  @override
  bool showSenderName;

  @override
  bool isFollowUpMessage;
}

class VoicepodShareMessage extends ArreMessageTile with ContentMessage {
  final bool isSentByMe;
  final Post postDetails;
  final AMessage message;

  VoicepodShareMessage({
    required this.isSentByMe,
    required this.postDetails,
    required this.message,
    required this.showSenderName,
    required this.isFollowUpMessage,
  });

  @override
  bool showSenderName;

  @override
  bool isFollowUpMessage;
}

class DateDivider extends ArreMessageTile {
  final bool? isSentByMe = null;
  final DateTime date;

  DateDivider(this.date);
}

class UnreadDivider extends ArreMessageTile {
  final bool? isSentByMe = null;
}
