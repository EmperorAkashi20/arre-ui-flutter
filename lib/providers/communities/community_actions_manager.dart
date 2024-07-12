import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/community_chat.dart';
import 'package:arre_frontend_flutter/providers/communities/community_chats_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_feed_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_members_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/my_communities_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/recommended_communities_provider.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class CommunityActionManager {
  static Future<void> joinCommunity(String communityId, WidgetRef ref) async {
    // final container = ProviderScope.containerOf(ArreNavigator.instance.context);
    await ApiService.instance.joinCommunity(communityId);
    await ref.read(communityProvider(communityId)).refresh();
    ref.read(communityMembersProvider(communityId)).refresh();
    ref.read(recCommunitiesProvider).refresh();
    ref.invalidate(myCommunitiesProvider);
  }

  static Future<String> leaveCommunity(
      String communityId, WidgetRef ref) async {
    // final container = ProviderScope.containerOf(ArreNavigator.instance.context);
    final message = await ApiService.instance.leaveCommunity(communityId);
    await ref.read(communityProvider(communityId)).refresh();
    ref.read(communityMembersProvider(communityId)).refresh();
    ref.invalidate(myCommunitiesProvider);
    return message;
  }

  static Future<String> removeMember({
    required WidgetRef ref,
    required String userId,
    required String communityId,
  }) async {
    final message = await ApiService.instance.removeCommunityMember(
      communityId: communityId,
      userId: userId,
    );
    ref.read(communityMembersProvider(communityId)).removeMember(userId);
    ref.read(communityProvider(communityId)).refresh();
    return message;
  }

  static Future<String> pinChat({
    required WidgetRef ref,
    required CommunityChat chat,
  }) async {
    try {
      final message = await ApiService.instance.pinCommunityChat(chat.chatId);
      Future.value(ref.refresh(chatDetailsProvider(chat.chatId).future));
      if (ref.exists(communityFeedProvider(chat.communityId))) {
        ref.read(communityFeedProvider(chat.communityId)).refresh();
      }
      return message;
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }

  static Future<String> unpinChat({
    required WidgetRef ref,
    required CommunityChat chat,
  }) async {
    try {
      final message = await ApiService.instance.unpinCommunityChat(chat.chatId);
      Future.value(ref.refresh(chatDetailsProvider(chat.chatId).future));
      if (ref.exists(communityFeedProvider(chat.communityId))) {
        ref.read(communityFeedProvider(chat.communityId)).refresh();
      }
      return message;
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }

  static Future<String> deleteChat({
    required WidgetRef ref,
    required CommunityChatDetails chat,
  }) async {
    try {
      final message =
          await ApiService.instance.deleteCommunityChat(chat.chatId);
      ref.invalidate(chatDetailsProvider(chat.chatId));
      if (ref.exists(communityFeedProvider(chat.communityId))) {
        ref.read(communityFeedProvider(chat.communityId)).refresh();
      }
      if (ref.exists(communityChatsProvider(chat.communityId))) {
        ref.read(communityChatsProvider(chat.communityId)).refresh();
      }
      return message;
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }

  static Future<String> updateChatStatus({
    required WidgetRef ref,
    required CommunityChatDetails chat,
    required ChatStatus chatStatus,
  }) async {
    try {
      final message = await ApiService.instance.updateCommunityChat(
        chatId: chat.chatId,
        chatTitle: chat.chatTitle,
        iconMediaId: chat.iconMediaId,
        description: chat.description,
        userAccessLevelRequiredForMessage:
            chat.userAccessLevelRequiredForMessage,
        notificationStatus: chat.notificationStatus ? "unmuted" : "muted",
        chatActiveStatus: chatStatus.backendValue,
      );
      ref.invalidate(chatDetailsProvider(chat.chatId));
      if (ref.exists(communityFeedProvider(chat.communityId))) {
        ref.read(communityFeedProvider(chat.communityId)).refresh();
      }
      if (ref.exists(communityChatsProvider(chat.communityId))) {
        ref.read(communityChatsProvider(chat.communityId)).refresh();
      }
      return message;
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }

  static Future<String> updateNotificationPreference({
    required WidgetRef ref,
    required CommunityChatDetails chat,
    required bool notificationStatus,
  }) async {
    try {
      final message =
          await ApiService.instance.updateChatNotificationPreference(
        chatId: chat.chatId,
        notificationStatus: notificationStatus ? "unmuted" : "muted",
      );
      Future.value(ref.refresh(chatDetailsProvider(chat.chatId).future));
      if (ref.exists(communityChatsProvider(chat.communityId))) {
        ref.read(communityChatsProvider(chat.communityId)).updateChatDetails(
            chat..userNotificationStatus = notificationStatus);
      }
      return message;
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }
}
