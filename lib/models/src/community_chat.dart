import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_direct_messages_gql/arre_direct_messages_gql.dart';
import 'package:arre_frontend_flutter/models/src/community_pin.dart';

enum ChatStatus {
  ACTIVE("live"),
  NORMAL("active"),
  ENDED("ended");

  const ChatStatus(this.backendValue);

  final String backendValue;

  //This is little confusing, backend and frontend look at these terms differently
  static ChatStatus fromValue(String chatActiveStatus) {
    switch (chatActiveStatus) {
      case "live":
        return ChatStatus.ACTIVE;
      case "ended":
        return ChatStatus.ENDED;
      case "active":
      default:
        return ChatStatus.NORMAL;
    }
  }
}

class CommunityChat with CommunityPinItem {
  final String chatId;
  final String communityId;
  final String chatTitle;
  final String? iconMediaId;
  final ChatStatus chatStatus;
  final DateTime createdAt;
  final String? description;
  bool userNotificationStatus;

  CommunityChat({
    required this.chatId,
    required this.communityId,
    required this.chatTitle,
    required this.iconMediaId,
    required this.chatStatus,
    required this.description,
    required this.userNotificationStatus,
    required int createdAt,
  }) : this.createdAt = DateTime.fromMillisecondsSinceEpoch(createdAt);

  factory CommunityChat.fromData(
      GGetCommunityChatsData_response_data communityChat) {
    return CommunityChat(
      chatId: communityChat.chatId,
      communityId: communityChat.communityId,
      chatTitle: communityChat.chatTitle,
      iconMediaId: communityChat.iconMediaId,
      chatStatus: ChatStatus.fromValue(communityChat.chatActiveStatus),
      createdAt: communityChat.createdAt,
      description: communityChat.description,
      userNotificationStatus: communityChat.userNotificationStatus != "muted",
    );
  }

  factory CommunityChat.fromPinnedChat(
      GPinnedCommunityEntitiesData_response_data__asCommunityChat
          communityChat) {
    return CommunityChat(
      chatId: communityChat.chatId,
      communityId: communityChat.chatCommunityId,
      chatTitle: communityChat.chatTitle,
      iconMediaId: communityChat.iconMediaId,
      chatStatus: ChatStatus.fromValue(communityChat.chatActiveStatus),
      description: communityChat.description,
      userNotificationStatus: true,
      createdAt: communityChat.createdAt,
    );
  }

  @override
  String get pinnedCommunityId => communityId;
}

class CommunityChatDetails extends CommunityChat {
  final String chatType;
  final List<String> userAccessLevelRequiredForMessage;
  final bool notificationStatus;
  final String createdBy;
  final String? endedBy;
  final DateTime? endedOn;

  final bool canMemberSendMessages;

  CommunityChatDetails({
    required super.chatId,
    required super.communityId,
    required super.chatTitle,
    required super.iconMediaId,
    required super.chatStatus,
    required super.description,
    required super.userNotificationStatus,
    required super.createdAt,
    required this.chatType,
    required this.userAccessLevelRequiredForMessage,
    required this.notificationStatus,
    required this.createdBy,
    required this.endedBy,
    required int? endedOn,
  })  : canMemberSendMessages =
            userAccessLevelRequiredForMessage.contains("member"),
        endedOn = endedOn != null
            ? DateTime.fromMicrosecondsSinceEpoch(endedOn)
            : null;

  factory CommunityChatDetails.fromData(GCommunityChatDetails chatDetails) {
    return CommunityChatDetails(
      chatId: chatDetails.chatId,
      communityId: chatDetails.communityId,
      chatTitle: chatDetails.chatTitle,
      iconMediaId: chatDetails.iconMediaId,
      description: chatDetails.description,
      chatType: chatDetails.chatType,
      chatStatus: ChatStatus.fromValue(chatDetails.chatActiveStatus),
      endedBy: chatDetails.endedBy,
      endedOn: chatDetails.endedAt,
      createdAt: chatDetails.createdAt,
      userAccessLevelRequiredForMessage:
          chatDetails.userAccessLevelRequiredForMessage?.toList() ?? [],
      notificationStatus: chatDetails.notificationStatus != "muted",
      createdBy: chatDetails.createdBy,
      userNotificationStatus: chatDetails.userNotificationStatus != "muted",
    );
  }
}
