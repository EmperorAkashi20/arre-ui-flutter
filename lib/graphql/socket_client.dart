import 'dart:async';
import 'dart:convert';

import 'package:arre_frontend_flutter/graphql/graphql_exceptions.dart';
import 'package:arre_frontend_flutter/providers/network_logs_provider.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart';

class ArreSocketClient {
  static final ArreSocketClient instance = ArreSocketClient._();
  Socket _socket = io(AppConfig.REAL_TIME_SESSION_BASE_URL, <String, dynamic>{
    'transports': ['websocket'],
    'autoConnect': false,
  });
  StreamController<(String, dynamic)> _eventsStreamController =
      StreamController<(String, dynamic)>.broadcast();

  bool get isConnected => !_socket.disconnected;

  ArreSocketClient._();

  Stream<dynamic> onData(String eventName) {
    _ensureConnected();
    return _eventsStreamController.stream
        .where((event) => event.$1 == eventName)
        .map((event) => event.$2);
  }

  void connect() {
    _socket.io.options?.addAll(<String, dynamic>{
      'extraHeaders': {'authorization': arrePref.authToken},
    });
    _socket.connect();
    _listenToEvents();
  }

  void _ensureConnected() {
    if (!_socket.connected) {
      connect();
    }
  }

  Stream<void> onConnect() {
    return onData("connect");
  }

  Future<dynamic> emit(String event, [data]) {
    ALogger.i("Emit event $event : $data");
    _ensureConnected();
    if (AppConfig.isDevToolsEnabled) {
      NetworkLogsProvider.instance
          .logSocketEvent(event: event, data: jsonEncode(data));
    }
    Completer completer = Completer();
    _socket.emitWithAck(event, data, ack: (args) {
      if (args is Map && args.containsKey("error") && args["error"] == true) {
        completer
            .completeError(ArreApiException.fromHttpResponse(args) ?? args);
      } else {
        completer.complete(args);
      }
    });
    return completer.future.timeout(Duration(seconds: 10));
  }

  void _listenToEvents() {
    _socket.offAny();
    _socket.onAny((event, data) {
      ALogger.i("Received event $event : $data");
      _eventsStreamController.add((event, data));
    });
  }

  // void onEvent(String event, void Function(dynamic data) callback) {
  //   _socket.on(event, (data) => callback(data));
  // }

  void disconnect() {
    _socket.disconnect();
  }
}

///Arre app socket events, list the socket here before using any events
///
/// Variable name which starts with L are meant for listening
///
/// Variable name which starts with E are meant for emitting
abstract class ASocketEvent {
  ///Logout the user
  static const L_UNAUTHORIZED_SOCKET_CONNECTION =
      "unAuthorizedSocketConnection";

  ///Emit when authorized user opens the app
  ///
  /// Params:
  /// - appLandingSource
  /// - appLandingLink
  static const E_USER_CAME_ONLINE = "userCameOnline";

  ///Emit when user opens any community chat screen
  ///
  /// Params:
  /// - chatId
  static const E_JOIN_COMMUNITY_CHAT = "joinCommunityChat";

  ///Emit when user exits any community chat screen
  ///
  /// Params:
  /// - chatId
  static const E_LEAVE_COMMUNITY_CHAT = "leaveCommunityChat";

  ///When user sends a message in community chat
  ///
  /// Params:
  /// - messageType: "text" (string), (text/audio/playlist/user/voicepod/voiceclub)
  /// - chatId: <chatId> (string),
  /// - entityId: <entityId of the sharable content> (string),
  /// - mediaId: "" (string),
  /// - body: "text msg" (string),
  /// - duration: 0 (number),
  /// - parentMessageId: "" (string)
  static const E_POST_MESSAGE = "postMessage";

  ///User deletes a message from community chats
  ///
  /// Params:
  ///
  ///  - messageId: <messageId>
  static const E_DELETE_MESSAGE = "deleteMessage";

  ///Socket event to listen for deleted messages
  ///
  /// Params:
  ///
  ///   - messageId: messageId,
  ///   - chatId: chatId,
  ///   - deletedBy: deletedBy userId (either admin/or sender),
  ///   - senderId: senderUserId
  static const L_MESSAGE_DELETED = "messageDeleted";

  ///event which will be used to receive the incoming messages in the chat in real-time.
  ///
  /// Params:
  /// - chatId: String
  static const L_INCOMING_MESSAGE = "incomingMessage";
}
