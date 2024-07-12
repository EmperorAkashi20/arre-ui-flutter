import 'package:arre_frontend_flutter/graphql/socket_client.dart';
import 'package:arre_frontend_flutter/models/src/message.dart';

abstract class ASocketService {
  static bool get isConnected => ArreSocketClient.instance.isConnected;

  static void userCameOnline({
    required String? appLandingSource,
    required String? appLandingLink,
  }) {
    ArreSocketClient.instance.emit(
      ASocketEvent.E_USER_CAME_ONLINE,
      {
        "appLandingSource": appLandingSource,
        "appLandingLink": appLandingLink,
      },
    );
  }

  static void joinCommunityChat(String chatId) {
    ArreSocketClient.instance.emit(
      ASocketEvent.E_JOIN_COMMUNITY_CHAT,
      {"chatId": chatId},
    );
  }

  static void leaveCommunityChat(String chatId) {
    ArreSocketClient.instance.emit(
      ASocketEvent.E_LEAVE_COMMUNITY_CHAT,
      {"chatId": chatId},
    );
  }

  /// [messageType] - text/audio/playlist/user/voicepod/voiceclub
  static Future<String> sendCommunityChatMessage({
    required String messageType,
    required String chatId,
    String? entityId,
    String? mediaId,
    String? body,
    int? duration,
    String? parentMessageId,
  }) async {
    final response = await ArreSocketClient.instance.emit(
      ASocketEvent.E_POST_MESSAGE,
      {
        "messageType": messageType,
        "chatId": chatId,
        "entityId": entityId,
        "mediaId": mediaId,
        "body": body,
        "duration": duration,
        "parentMessageId": parentMessageId,
      },
    );
    return response["data"];
  }

  static Future<void> deleteCommunityChatMessage(String messageId) async {
    await ArreSocketClient.instance.emit(
      ASocketEvent.E_DELETE_MESSAGE,
      {
        "messageId": messageId,
      },
    );
  }

  static Stream<dynamic> onUnauthorizedConnection() {
    return ArreSocketClient.instance.onData(
      ASocketEvent.L_UNAUTHORIZED_SOCKET_CONNECTION,
    );
  }

  static Stream<AMessage> onIncomingMessage(String chatId) {
    return ArreSocketClient.instance
        .onData(
          ASocketEvent.L_INCOMING_MESSAGE,
        )
        .map((data) => AMessage.fromSocketIncomingMessage(data))
        .where((event) => event.chatId == chatId);
  }

  static Stream<String> onMessageDeleted(String chatId) {
    return ArreSocketClient.instance
        .onData(
          ASocketEvent.L_MESSAGE_DELETED,
        )
        .where((event) => event["chatId"] == chatId)
        .map((data) => data["messageId"] as String);
  }
}
