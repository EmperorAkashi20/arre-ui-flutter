enum MessageOn { DM, COMMUNITY_CHATS }

enum MessageType { text, audio }

sealed class MessageDraft {
  final MessageOn messagingOn;
  final String conversationId;

  String get chatId => conversationId;

  MessageDraft({
    required this.conversationId,
    required this.messagingOn,
  });
}

class TextMessageDraftV2 extends MessageDraft {
  final String body;

  TextMessageDraftV2({
    required super.messagingOn,
    required super.conversationId,
    required this.body,
  });
}

class VoiceMessageDraftV2 extends MessageDraft {
  final String filePath;
  final Duration duration;

  VoiceMessageDraftV2({
    required super.messagingOn,
    required super.conversationId,
    required this.filePath,
    required this.duration,
  });
}
