import 'dart:convert';

import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_creator_analytics_gql/arre_creator_analytics_gql.dart';
import 'package:arre_direct_messages_gql/arre_direct_messages_gql.dart';
import 'package:arre_frontend_flutter/graphql/graphql_client.dart';
import 'package:arre_frontend_flutter/graphql/http_client.dart';
import 'package:arre_frontend_flutter/models/comment_reply.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/community_chat.dart';
import 'package:arre_frontend_flutter/models/src/community_pin.dart';
import 'package:arre_frontend_flutter/models/src/cs_audio_insertable.dart';
import 'package:arre_frontend_flutter/models/src/cs_bg_music_effect.dart';
import 'package:arre_frontend_flutter/models/src/cs_mood.dart';
import 'package:arre_frontend_flutter/models/src/cs_voice_effect.dart';
import 'package:arre_frontend_flutter/models/src/message.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_notification_gql/arre_notification_gql.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:arre_referral_gql/arre_referral_gql.dart';
import 'package:arre_search_service_gql/arre_search_service_gql.dart';
import 'package:arre_user_feed_gql/arre_user_feed_gql.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:arre_user_graph_gql/arre_user_graph_gql.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:tuple/tuple.dart';

class ApiService {
  static ApiService instance = ApiService();

  Future<List<AudioInsertable>> getAudioInsertables() async {
    final result = await ArreGraphQLClient.instance.request(
      GAudioInsertablesReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      needsOnboarding: false,
    );
    return result.data!.response!.data
        .map((p0) => p0.toAudioInsertable())
        .toList();
  }

  Future<List<BgMusicEffect>> getBgMusicList(String? moodId) async {
    final result = await ArreGraphQLClient.instance.request(
      GBgMusicReq((b) => b.vars.moodId = moodId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      needsOnboarding: false,
    );
    return result.data!.response.data
        .map((p0) => p0.toBgMusicEffect())
        .toList();
  }

  ///Returns the moods data. Cache data is preferred, and cache is updated every time this function is called
  Future<List<Mood>> getMoodsList() async {
    final saveToDb = (GMoodsData_response response) async {
      arrePref
          .setString(PrefKey.MOODS_DATA_V1, jsonEncode(response.toJson()))
          .catchError((err, st) {
        Utils.reportError(err, st);
        return false;
      });
    };
    final apiResult = () async {
      final result = await ArreGraphQLClient.instance.request(
        GMoodsReq(),
        dataPointer: (_) => _.data?.toJson(),
        baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      );
      saveToDb(result.data!.response);
      return result.data!.response.data.map((p0) => p0.toMood()).toList();
    }();
    try {
      final offlineData = arrePref.getString(PrefKey.MOODS_DATA_V1);
      if (offlineData != null) {
        return GMoodsData_response.fromJson(jsonDecode(offlineData))!
            .data
            .map((p0) => p0.toMood())
            .toList();
      }
      return apiResult;
    } catch (err) {
      return apiResult;
    }
  }

  Future<List<VoiceEffect>> getVoiceEffects() async {
    final result = await ArreGraphQLClient.instance.request(
      GVoiceEffectsReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      needsOnboarding: false,
    );
    return result.data!.response!.data.map((p0) => p0.toVoiceEffect()).toList();
  }

  ///creates a voicepod post
  Future<(String, String?)> createVoicepod({
    required String? bgMusic,
    required String? pitch,
    required String? communityId,
    required String title,
    required int duration,
    required String visibility,
    required List<String> insertables,
    required String language,
    required List<String> audioMediaFiles,
    required List<String>? hashtags,
    required List<String>? imageMediaFiles,
    required List<String>? videoMediaFiles,
    required List<String> rawAudioMediaFiles,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GCreateVoicepodReq(
        (b) => b.vars
          ..bgMusic = bgMusic
          ..title = title
          ..duration = duration
          ..visibility = visibility
          ..insertables = ListBuilder(insertables)
          ..language = language
          ..audioMediaFiles = ListBuilder(audioMediaFiles)
          ..rawAudioMediaFiles = ListBuilder(rawAudioMediaFiles)
          ..hashtags = ListBuilder(hashtags ?? [])
          ..imageMediaFiles = ListBuilder(imageMediaFiles ?? [])
          ..pitch = pitch
          ..communityId = communityId
          ..videoMediaFiles = ListBuilder(videoMediaFiles ?? []),
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      needsOnboarding: true,
    );
    return (result.data!.response.data!.postId, result.data?.response.message);
  }

  Future<GDeleteVoicepodData_response> deletePost(String postId) async {
    final result = await ArreGraphQLClient.instance.request(
      GDeleteVoicepodReq((b) => b..vars.postId = postId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      needsOnboarding: true,
    );
    return result.data!.response;
  }

  // Future<List<GAvatarsData_response>> getAvatars() async {
  //   final result =
  //       await ArreGraphQLClient.instance.request<GAvatarsData, GAvatarsVars>(
  //     GAvatarsReq(),
  //     dataPointer: (_) => _.data?.toJson(),
  //     baseUrl: AppConfig.REFERRAL_BASE_URL,
  //   );
  //   return result.data!.response!.toList().cast<GAvatarsData_response>();
  // }

  Future<GInviteLinkInfo> getInviteLinkInfo(String inviteLink) async {
    final result = await ArreGraphQLClient.instance.request(
      GInviteInfoByLinkV2Req((b) => b..vars.inviteLink = inviteLink),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.REFERRAL_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<GUserInviteV2Data_response_data> getUserInviteData(
      String userId) async {
    final result = await ArreGraphQLClient.instance
        .request<GUserInviteV2Data, GUserInviteV2Vars>(
      GUserInviteV2Req(
        (b) => b..vars.userId = userId,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.REFERRAL_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<GRequestMoreInvitesData_response> requestForMoreInvites() async {
    final result = await ArreGraphQLClient.instance
        .request<GRequestMoreInvitesData, GRequestMoreInvitesVars>(
      GRequestMoreInvitesReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.REFERRAL_BASE_URL,
      needsOnboarding: true,
    );
    return result.data!.response!;
  }

  Future<List<GInvitedUsersData_response_data>> getInvitedUsersList(
    String userId, {
    String? after,
  }) async {
    final result = await ArreGraphQLClient.instance
        .request<GInvitedUsersData, GInvitedUsersVars>(
      GInvitedUsersReq(
        (b) => b
          ..vars.userId = userId
          ..vars.after = after,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.REFERRAL_BASE_URL,
    );
    return result.data!.response!.data!
        .toList()
        .cast<GInvitedUsersData_response_data>();
  }

  Future<List<GHomepageSection>> getHomePageSections(String? moodId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetHomePageSectionsReq((b) => b..vars.moodId = moodId ?? "all"),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!.cast<GHomepageSection>().toList();
  }

  Future<GHomePagePlaylist> getArrePlaylistDetails(
      String playlistUniqueLink) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetHomePagePlaylistReq(
          (b) => b..vars.playlistUniqueLink = playlistUniqueLink),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<List<Post>> getArrePlaylistVoicepods({
    required String sectionUniqueLink,
    String? lastPageEngagementScore,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetFeedByPlaylistUniqueLinkReq(
        (b) => b.vars
          ..sectionUniqueLink = sectionUniqueLink
          ..lastPageEngagementScore = lastPageEngagementScore,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!
        .whereType<GPostDetails>()
        .map<Post>(Post.fromGPostDetails)
        .toList();
  }

  Future<List<GStoryCaptionInfo>> getStoryCaptionInfo({
    required List<String> languages,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetOnboardingScreenCaptionsReq(
          (b) => b.vars..languages = ListBuilder(languages)),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data.whereType<GStoryCaptionInfo>().toList();
  }

  Future<List<Post>> getOnboardingFeed(List<String> languages) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetOnboardingFeedReq((b) => b.vars..languages = ListBuilder(languages)),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response.data!
        .whereType<GPostDetails>()
        .map<Post>(Post.fromGPostDetails)
        .toList();
  }

  Future<Post> getCreatorFlowSampleVoicepod(List<String> languages) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetCreatorFlowSampleVoicepodReq(
          (b) => b.vars..languages = ListBuilder(languages)),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return Post.fromGPostDetails(result.data!.response.data!);
  }

  ///[entityType] can be play/impression/like/dislike/recordStreamtime
  Future<void> trackOnboardingPodEngagement({
    required String postId,
    required String entityType,
    required int rank,
    int? durationInSeconds,
  }) async {
    await ArreGraphQLClient.instance.request(
      GTrackOnboardingPodEngagementReq((b) => b.vars
        ..entityType = entityType
        ..postId = postId
        ..duration = durationInSeconds
        ..rank = rank),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
  }

  Future<GUserVoicepodsData_response_data> getUserVoicepods(
    String userId, {
    GlastEvaluatedKeyForVoicepodsBuilder? lastEvaluatedKey,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
        GUserVoicepodsReq((b) => b.vars
          ..userId = userId
          ..lastEvaluatedKey = lastEvaluatedKey),
        baseUrl: AppConfig.POST_MANAGE_BASE_URL,
        dataPointer: (_) => _.data?.toJson());

    return result.data!.response!.data!;
  }

  Future<Post> getPostDetails(String postId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetVoicepodDetailsReq((b) => b..vars.postId = postId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return Post.fromGPostDetails(result.data!.response!.data!);
  }

  ///Returns (hasCommented, hasLiked)
  Future<Tuple2<bool, bool>> getUserPostRelations(String postId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetUserVPRelationReq((b) => b..vars.postId = postId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
    return Tuple2(
      result.data!.comment.data!.hasCommented,
      result.data!.like.data!.hasLiked,
    );
  }

  Future<List<GNotificationData_response_data>> getNotifications(
      {required String after, required String schemaName}) async {
    final result = await ArreGraphQLClient.instance.request(
      GNotificationReq((b) => b
        ..vars.after = after
        ..vars.schemaName = schemaName),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.NOTIFICATION_BASE_URL,
    );
    return result.data!.response!.data!
        .toList()
        .cast<GNotificationData_response_data>();
  }

  Future<GMarkAllNotificationAsSeenData_response>
      markAllNotificationAsSeen() async {
    final result = await ArreGraphQLClient.instance.request<
        GMarkAllNotificationAsSeenData, GMarkAllNotificationAsSeenVars>(
      GMarkAllNotificationAsSeenReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.NOTIFICATION_BASE_URL,
    );
    return result.data!.response;
  }

  Future<void> trackPushNotificationImpression(String notificationId) async {
    await ArreGraphQLClient.instance.request(
      GTrackNotificationImpressionReq(
          (b) => b..vars.notificationId = notificationId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.NOTIFICATION_BASE_URL,
    );
  }

  Future<bool> getUnreadNotificationStatus() async {
    final result = await ArreGraphQLClient.instance
        .request<GIsNotificationUnreadData, GIsNotificationUnreadVars>(
      GIsNotificationUnreadReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.NOTIFICATION_BASE_URL,
    );
    return result.data!.response!.data!.isUnreadNotificationPresent;
  }

  Future<GSaveUserDeviceInformationData_response> saveUserDeviceInformation({
    required String userId,
    required GinputDeviceInfoBuilder inputDeviceInfo,
    required GlastAppLandingSourceType appLandingSource,
    required String? appLandingLink,
    required String? appVersion,
    required String? buildNumber,
    required String? downloadSource,
    required bool notificationTurnedOn,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GSaveUserDeviceInformationReq(
        (b) => b.vars
          ..userId = userId
          ..downloadSource = downloadSource
          ..inputDeviceInfo = inputDeviceInfo
          ..appVersion = appVersion
          ..buildNumber = buildNumber
          ..lastAppLandingLink = appLandingLink
          ..lastAppLandingSource = appLandingSource
          ..notificationTurnedOn = notificationTurnedOn,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.NOTIFICATION_BASE_URL,
    );
    return result.data!.response!;
  }

  Future<bool> toggleVoicepodLike(String postId, bool isLiked) async {
    await ArreGraphQLClient.instance.request(
      GToggleVoicepodLikeReq((b) => b.vars
        ..postId = postId
        ..isLiked = isLiked),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      needsOnboarding: true,
    );
    return isLiked;
  }

  Future<String?> getPostModerationStatus() async {
    final result = await ArreGraphQLClient.instance.request(
      GGetModerationStatusReq((b) => b.vars..userId = arrePref.userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!.moderationStatus;
  }

  Future<List<GLanguage>> getLanguages() async {
    final result = await ArreGraphQLClient.instance.request(
      GGetLanguagesReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
    return result.data!.response!.data.toList();
  }

  Future<List<GPlaylist>> getPlaylistByUserId(
    String userId, {
    String after = "",
    required PlaylistPrivacy privacy,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GPlaylistByUserIdReq(
        (b) => b.vars
          ..userId = userId
          ..after = after
          ..privacy = privacy.toBackendValue,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
    );

    return result.data!.response!.data!.cast<GPlaylist>().toList();
  }

  Future<GPlaylist> createPlaylist({
    required String title,
    required PlaylistPrivacy privacy,
    required String? coverImage,
  }) async {
    assert(privacy == PlaylistPrivacy.public ||
        privacy == PlaylistPrivacy.private);
    final result = await ArreGraphQLClient.instance.request(
      GCreatePlaylistReq(
        (b) => b.vars
          ..privacy = privacy.toBackendValue.name
          ..coverImage = coverImage
          ..title = title,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
      needsOnboarding: true,
    );
    return result.data!.response!.data!;
  }

  Future<GPlaylist> getPlaylistDetails(String playlistId) async {
    final result = await ArreGraphQLClient.instance.request(
      GPlaylistDetailsReq((b) => b.vars..playlistId = playlistId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
    );
    return result.data!.response!.data!;
  }

  Future<GPlaylist> editPlaylist({
    required String playlistId,
    required String title,
    required String? coverImage,
    required PlaylistPrivacy privacy,
  }) async {
    assert(privacy == PlaylistPrivacy.public ||
        privacy == PlaylistPrivacy.private);
    final result = await ArreGraphQLClient.instance.request(
      GEditPlaylistReq(
        (b) => b.vars
          ..title = title
          ..coverImage = coverImage
          ..playlistId = playlistId
          ..privacy = privacy.toBackendValue.name,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
      needsOnboarding: true,
    );
    return result.data!.response!.data!;
  }

  Future<GDeletePlaylistData_response> deletePlaylist(String playlistId) async {
    final result = await ArreGraphQLClient.instance.request(
      GDeletePlaylistReq((b) => b.vars..playlistId = playlistId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
      needsOnboarding: true,
    );
    return result.data!.response!;
  }

  Future<GAddPostToPlaylistData_response> addPostToPlaylist({
    required String voicepodId,
    required String playlistId,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GAddPostToPlaylistReq(
        (b) => b.vars
          ..playlistId = playlistId
          ..voicePodId = voicepodId,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
      needsOnboarding: true,
    );
    return result.data!.response!;
  }

  Future<GRemovePostFromPlaylistData_response> removePost4mPlaylist({
    required String voicepodId,
    required String playlistId,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GRemovePostFromPlaylistReq(
        (b) => b.vars
          ..playlistId = playlistId
          ..voicePodId = voicepodId,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
      needsOnboarding: true,
    );
    return result.data!.response!;
  }

  Future<GSavePostToDefaultPlaylistData_response> savePostToDefaultPlaylist(
      String voicepodId) async {
    final result = await ArreGraphQLClient.instance.request(
      GSavePostToDefaultPlaylistReq((b) => b.vars..voicePodId = voicepodId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
      needsOnboarding: true,
    );
    return result.data!.response!;
  }

  Future<Tuple2<List<Comment>, GLastEvaluatedKeyVPComments?>>
      getVoicepodComments({
    required String postId,
    GLastEvaluatedKeyVPComments? lastEvaluatedKey,
    String? pinnedCommentId,
  }) async {
    GlastEvaluatedKeyForVoicepodCommentsBuilder? lastEvaluatedKeyBuilder;
    if (lastEvaluatedKey != null) {
      lastEvaluatedKeyBuilder = GlastEvaluatedKeyForVoicepodCommentsBuilder()
        ..postId = lastEvaluatedKey.postId
        ..createdAt = lastEvaluatedKey.createdAt
        ..status = lastEvaluatedKey.status
        ..commentId = lastEvaluatedKey.commentId;
    }
    final result = await ArreGraphQLClient.instance.request(
      GGetVoicepodCommentsReq(
        (b) => b.vars
          ..postId = postId
          ..pinnedCommentId = pinnedCommentId
          ..lastEvaluatedKey = lastEvaluatedKeyBuilder,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
    return Tuple2(
      result.data!.response!.data!.comments
          .map(Comment.fromGVPComment)
          .toList(),
      result.data!.response!.data!.lastEvaluatedKey,
    );
  }

  Future<Tuple2<List<Reply>, GLastEvaluatedKeyVPCommentReply?>>
      getVoicepodCommentReplies({
    required Comment comment,
    GLastEvaluatedKeyVPCommentReply? lastEvaluatedKey,
    String? pinnedReplyId,
  }) async {
    var lastEvaluatedKeyBuilder;
    if (lastEvaluatedKey != null) {
      lastEvaluatedKeyBuilder = GlastEvaluatedKeyForReplyCommentsBuilder()
        ..replyId = lastEvaluatedKey.replyId
        ..createdAt = lastEvaluatedKey.createdAt
        ..status = lastEvaluatedKey.status
        ..commentId = lastEvaluatedKey.commentId;
    }
    final result = await ArreGraphQLClient.instance.request(
      GGetVoicepodCommentRepliesReq(
        (b) => b.vars
          ..commentId = comment.commentId
          ..pinnedReplyId = pinnedReplyId
          ..lastEvaluatedKey = lastEvaluatedKeyBuilder,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
    return Tuple2(
      result.data!.response!.data!.replies
          .map((reply) => Reply.fromGVPCommentReply(reply, comment))
          .toList(),
      result.data!.response!.data!.lastEvaluatedKey,
    );
  }

  Future<Comment> sendPostComment(String postId, String body) async {
    final result = await ArreGraphQLClient.instance.request(
      GPostCommentReq((b) => b.vars
        ..postId = postId
        ..body = body),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
      needsOnboarding: true,
    );
    return Comment.fromGVPComment(result.data!.response!.data!);
  }

  Future<Reply> sendPostCommentReply({
    required String postId,
    required Comment comment,
    required String body,
    required String commentCreatedAt,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GPostCommentReplyReq(
        (b) => b.vars
          ..postId = postId
          ..reply = body
          ..commentId = comment.commentId
          ..commentCreatedAt = commentCreatedAt,
      ),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
      needsOnboarding: true,
    );
    return Reply.fromGVPCommentReply(
      result.data!.response!.data!,
      comment,
    );
  }

  Future<GDeleteVPCommentOrReplyData_response> deleteCommentOrReply({
    required String entityType,
    required String entityId,
    required DateTime createdAt,
    required String postId,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GDeleteVPCommentOrReplyReq((b) => b.vars
        ..postId = postId
        ..createdAt = createdAt.millisecondsSinceEpoch.toString()
        ..entityId = entityId
        ..entityType = entityType),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
      needsOnboarding: true,
    );
    return result.data!.response;
  }

  ///[entityType] can be `comment` or `reply`
  Future<bool> hasUserLikedCommentOrReply({
    required String entityType,
    required String entityId,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetHasUserLikedCommentOrReplyReq((b) => b.vars
        ..entityId = entityId
        ..entityType = entityType),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
    );
    return result.data!.response!.data!.isLiked;
  }

  ///[entityType] can be `comment` or `reply`
  Future<bool> toggleCommentOrReplyLike({
    required String entityType,
    required String entityId,
    required String entityCreatedAt,
    required bool isLiked,
  }) async {
    await ArreGraphQLClient.instance.request(
      GToggleCommentOrReplyLikeReq((b) => b.vars
        ..isLiked = isLiked
        ..entityType = entityType
        ..entityId = entityId
        ..entityCreatedAt = entityCreatedAt),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
      needsOnboarding: true,
    );
    return isLiked;
  }

  Future<GSendOtpResponse> sendOtp({
    required String countryCode,
    required String userIdentifier,
    required String secureToken,
    required GPreferredOTPProviderEnum preferredOTPProvider,
    String? marketingParams,
    String? inviteLinkUsed,
    String? inviteQueryParams,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GsendOTPv2Req((b) => b.vars
        ..countryCode = countryCode
        ..userIdentifier = userIdentifier
        ..secureToken = secureToken
        ..preferredOTPProvider = preferredOTPProvider
        ..marketingParams = marketingParams
        ..inviteLinkUsed = inviteLinkUsed
        ..inviteQueryParams = inviteQueryParams
        ..gender = "unknown"),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<GVerifyOtpResponse> verifyOtp({
    required String countryCode,
    required String userIdentifier,
    required String secureToken,
    required GPreferredOTPProviderEnum preferredOTPProvider,
    required String operatingSystem,
    required int otp,
    required String device,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GverifyOTPv2Req(
        (b) => b.vars
          ..countryCode = countryCode
          ..userIdentifier = userIdentifier
          ..secureToken = secureToken
          ..preferredOTPProvider = preferredOTPProvider
          ..operatingSystem = operatingSystem
          ..otp = otp
          ..device = device,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<GGuestCredentials> loginAsGuest({
    required String secureToken,
    required String operatingSystem,
    required String device,
    required String? landingSource,
    required String? landingLink,
    required String? onboardingFlow,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GGuestLoginReq(
        (b) => b.vars
          ..secureToken = secureToken
          ..operatingSystem = operatingSystem
          ..device = device
          ..landingSource = landingSource
          ..landingLink = landingLink
          ..onboardingFlow = onboardingFlow,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<List<String>> getUserLanguages(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetUserLanguageListReq((b) => b..vars.userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!.languages
            ?.whereType<String>()
            .toList() ??
        <String>[];
  }

  Future<GUpdatePreferencesData_response> updatePreferencesForUser(
    String languageCsv,
  ) async {
    final result = await ArreGraphQLClient.instance
        .request<GUpdatePreferencesData, GUpdatePreferencesVars>(
      GUpdatePreferencesReq(
        (b) => b.vars
          ..languageCsv = languageCsv
          ..topicsCsv = "",
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!;
  }

  // Future<List<GListTopCreatorsData_response_data>> listTopCreators() async {
  //   final result = await ArreGraphQLClient.instance
  //       .request<GListTopCreatorsData, GListTopCreatorsVars>(
  //     GListTopCreatorsReq(),
  //     dataPointer: (_) => _.data?.toJson(),
  //     baseUrl: AppConfig.EXPLORE_PAGE_BASE_URL,
  //   );
  //   return result.data!.response!.data!
  //       .toList()
  //       .cast<GListTopCreatorsData_response_data>();
  // }

  Future<List<GListTopPostsByHashTagIdData_response_data>>
      listTopPostsByHashTagId(String hashTagUniqueIdentifier) async {
    final result = await ArreGraphQLClient.instance
        .request<GListTopPostsByHashTagIdData, GListTopPostsByHashTagIdVars>(
      GListTopPostsByHashTagIdReq(
          (b) => b.vars..hashTagUniqueIdentifier = hashTagUniqueIdentifier),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!
        .toList()
        .cast<GListTopPostsByHashTagIdData_response_data>();
  }

  Future<List<GListTopHashtagsData_response_data>> listTopHashtags() async {
    final result = await ArreGraphQLClient.instance
        .request<GListTopHashtagsData, GListTopHashtagsVars>(
      GListTopHashtagsReq((b) => b.vars..rankGreaterThan = 0),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!
        .toList()
        .cast<GListTopHashtagsData_response_data>();
  }

  ///As soon as the pod has been in front of the user -
  ///Its basically impression of the pod to the user.
  ///If the pod is in the screen, it can be counted as an impression.
  Future<String?> markPodAsViewed(String voicepodId) async {
    final result = await ArreGraphQLClient.instance.request(
      GMarkAsViewedReq((b) => b.vars..postId = voicepodId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
    return result.data!.response!.data;
  }

  ///when the pod has been played for atleast 5 seconds by a user.
  ///If possible, make a hit after every 5 second. If not possible,
  /// The API can be hit when the pod playing has been paused/completed playing
  Future<void> markPodAsPlayed(String voicepodId, String playedOn) async {
    await ArreGraphQLClient.instance.request(
      GMarkAsPlayedReq(
        (b) => b.vars
          ..postId = voicepodId
          ..playedOn = playedOn,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
  }

  ///[duration] in seconds
  Future<String> recordPodStreamTime({
    required String voicepodId,
    required String playedOn,
    required int duration,
    required String? playListUniqueUrl,
    required String? screenName,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GRecordPodStreamTimeReq(
        (b) => b.vars
          ..postId = voicepodId
          ..playedOn = playedOn
          ..duration = duration
          ..playListUniqueUrl = playListUniqueUrl
          ..screenName = screenName,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<void> updateUsername({
    required String username,
  }) async {
    await ArreGraphQLClient.instance.request(
      GUpdateUsernameReq((b) => b.vars..username = username),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
  }

  Future<GUpdateOnboardingInfoData_response_data> updateOnboardingInfo({
    required String userId,
    required String username,
    required String languagesCsv,
    required String gender,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GUpdateOnboardingInfoReq((b) => b.vars
        ..userId = userId
        ..userName = username
        ..gender = gender
        ..languageCsv = languagesCsv),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<bool> checkUsernameAvailability(String username) async {
    final result = await ArreGraphQLClient.instance.request(
      GCheckUsernameReq((b) => b.vars..username = username),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<GUserShortDetailsSigned> getUserShortDetailsSigned(
      String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GBasicUserInfoByIdReq((b) => b.vars..userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  ///Returns minimal details
  Future<ArreUser> getUserShortDetails(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetUserShortDetailsByIdV2Req((b) => b.vars..userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    final userData = result.data!.response!.data!;
    return ArreUser(
      userId: userData.userId,
      username: userData.username,
      profilePictureMediaId: userData.profilePictureMediaId,
    );
  }

  ///Returns complete details
  Future<GUserDetails> getUserDetails(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetUserDetailsByIdV2Req((b) => b.vars..userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<GUserFollowCounts> getUserFollowCounts(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetUserFollowCountsReq((b) => b.vars..userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<GUpdateUserProfileV2Data_response> updateUserProfile({
    String? bio,
    String? instagramHandle,
    String? twitterHandle,
    String? linkedIdHandle,
    String? profilePictureMediaId,
    String? voiceBioMediaId,
    String? firstName,
    String? lastName,
    String? website,
    required bool socialMediaVisibility,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GUpdateUserProfileV2Req(
        (b) {
          b.vars
            ..bio = bio
            ..website = website
            ..instagramHandle = instagramHandle
            ..twitterHandle = twitterHandle
            ..linkedInHandle = linkedIdHandle
            ..firstName = firstName
            ..lastName = lastName
            ..audioBioMediaId = voiceBioMediaId
            ..socialHandlesVisibility =
                socialMediaVisibility ? "public" : "private"
            ..profilePictureMediaId = profilePictureMediaId;
          b.fetchPolicy = FetchPolicy.NetworkOnly;
          b.requestId = "${DateTime.now().millisecondsSinceEpoch}";
          return b;
        },
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
      needsOnboarding: true,
    );
    return result.data!.response!;
  }

  Future<void> disableSocialLadder() async {
    await ArreGraphQLClient.instance.request(
      GDisableSocialLadderReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
  }

  Future<(List<ArreUser>, String?)> getUsersListToDM(
      [String? lastCreatedAt]) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetListOfUsersToDMPaginatedReq(
          (b) => b.vars..lastItemCreatedAt = lastCreatedAt),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return (
      result.data!.response!.data
          .map((e) => ArreUser(
                userId: e.userId,
                username: e.username,
                profilePictureMediaId: e.profilePictureMediaId,
              ))
          .toList(),
      result.data!.response!.data.lastOrNull?.createdAt
    );
  }

  Future<List<ArreUser>> searchFollowers(String keyword) async {
    final result = await ArreGraphQLClient.instance.request(
      GSearchFollowersReq((b) => b.vars..keyword = keyword),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data
        .map((e) => ArreUser(
            userId: e.userId,
            username: e.username,
            profilePictureMediaId: e.profilePictureMediaId))
        .toList();
  }

  Future<List<GUserFollowRelation>> getUserFollowers({
    required String userId,
    required String after,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetListOfFollowersPaginatedReq((b) => b.vars
        ..userId = userId
        ..after = after),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data.toList();
  }

  Future<List<GUserFollowRelation>> getUserFollowings({
    required String userId,
    required String after,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetListOfFollowingPaginatedReq((b) => b.vars
        ..userId = userId
        ..after = after),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data.toList();
  }

  Future<bool> getIsFollowingUser(String userId) async {
    final result = await ArreGraphQLClient.instance
        .request<GGetIsFollowingUserData, GGetIsFollowingUserVars>(
      GGetIsFollowingUserReq((b) => b.vars..userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data!.isFollowingUser;
  }

  Future<GFollowUserData_response> followUser(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GFollowUserReq((b) => b..vars.userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
      needsOnboarding: true,
    );
    return result.data!.response!;
  }

  Future<GUnFollowUserData_response> unFollowUser(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GUnFollowUserReq((b) => b..vars.userId = userId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
      needsOnboarding: true,
    );
    return result.data!.response!;
  }

  Future<String> blockUser(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GBlockUserReq((b) => b..vars.userId = userId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
      needsOnboarding: true,
    );
    return result.data!.response!.message ?? "Blocked this User";
  }

  Future<String> unblockUser(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GUnblockUserReq((b) => b..vars.userId = userId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
      needsOnboarding: true,
    );
    return result.data!.response!.data!;
  }

  Future<bool> getIsBlockedUser(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetIsBlockedUserReq((b) => b.vars..userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data!.isBlockedUser;
  }

  Future<List<ArreUserWithExtra<String>>> getBlockedUsers(
      [String? lastItemCreatedAt]) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetBlockedUsersReq((b) => b..vars.lastItemCreatedAt = lastItemCreatedAt),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
      needsOnboarding: true,
    );
    return result.data!.response!.data!
        .map((user) => ArreUserWithExtra(
              userId: user!.userId,
              username: user.username,
              profilePictureMediaId: user.profilePictureMediaId,
              value: user.createdAt,
            ))
        .toList();
  }

  Future<List<GGetReportsCategoriesData_response_data>>
      getReportsCategories() async {
    final result = await ArreGraphQLClient.instance
        .request<GGetReportsCategoriesData, GGetReportsCategoriesVars>(
      GGetReportsCategoriesReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data
        .toList()
        .cast<GGetReportsCategoriesData_response_data>();
  }

  Future<String> reportVoicepod({
    required String postId,
    required List<String> types,
  }) async {
    final result = await ArreGraphQLClient.instance
        .request<GReportVoicepodData, GReportVoicepodVars>(
      GReportVoicepodReq((b) => b
        ..vars.postId = postId
        ..vars.type = ListBuilder(types)),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
    return result.data!.response!.message;
  }

  Future<String> reportCommentOrReply({
    required String entityType,
    required String entityId,
    required List<String> types,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GReportCommentOrReplyReq(
        (b) => b.vars
          ..entityType = entityType
          ..entityId = entityId
          ..type = ListBuilder(types),
      ),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
    return result.data!.response!.message;
  }

  Future<String?> reportUser({
    required String userId,
    required List<String> types,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GReportUserReq(
        (b) => b.vars
          ..userId = userId
          ..type = ListBuilder(types)
          ..reason = types.join(", ")
          ..audioId = ""
          ..evidanceId = ListBuilder([]),
      ),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.message;
  }

  Future<List<String>> searchUsers(String query) async {
    final result = await ArreGraphQLClient.instance
        .request<GSearchUsersData, GSearchUsersVars>(
      GSearchUsersReq((b) => b..vars.q = query),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.SEARCH_SERVICE_BASE_URL,
    );
    return result.data!.response!.data.toList().cast<String>();
  }

  Future<List<String>> searchHashtags(String query) async {
    final result = await ArreGraphQLClient.instance
        .request<GSearchHashTagsData, GSearchHashTagsVars>(
      GSearchHashTagsReq((b) => b.vars..q = query),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.SEARCH_SERVICE_BASE_URL,
    );
    return result.data!.response!.data.toList().cast<String>();
  }

  Future<List<String>> searchPosts(String query) async {
    final result = await ArreGraphQLClient.instance
        .request<GSearchPostsData, GSearchPostsVars>(
      GSearchPostsReq((b) => b..vars.q = query),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.SEARCH_SERVICE_BASE_URL,
    );
    return result.data!.response!.data.toList().cast<String>();
  }

  Future<List<GPostIdAndCreatedAt>> getPlayHistory({String? after}) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetPlayHistoryReq((b) => b..vars.after = after),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
    );
    return result.data!.response!.data!
        .whereType<GPostIdAndCreatedAt>()
        .toList();
  }

  Future<List<GPostTypeDetails>> getMyLikedPlaylist({String? after}) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetMyLikedPlaylistReq((b) => b..vars.lastItemCreatedAt = after),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.PLAYLIST_SERVICE,
    );
    return result.data!.response!.data!.whereType<GPostTypeDetails>().toList();
  }

  Future<GDeactivateAccountData_response> deactivateAccount(
      String userId) async {
    final result = await ArreGraphQLClient.instance
        .request<GDeactivateAccountData, GDeactivateAccountVars>(
      GDeactivateAccountReq((b) => b.vars..userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!;
  }

  Future<GDeleteAccountData_response> deleteAccount(String userId) async {
    final result = await ArreGraphQLClient.instance
        .request<GDeleteAccountData, GDeleteAccountVars>(
      GDeleteAccountReq((b) => b.vars..userId = userId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!;
  }

  Future<void> trackShare({
    required String entityId,
    required String entityType,
    required String sharedOn,
    required String sharedType,
    required String sharedActionStatus,
  }) async {
    await ArreGraphQLClient.instance.request(
      GTrackSharingReq((b) => b.vars
        ..entityType = entityType
        ..entityId = entityId
        ..sharedActionStatus = sharedActionStatus
        ..sharedType = sharedType
        ..sharedOn = sharedOn),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
  }

  Future<GLogoutData_response_data> logOut(String userId) async {
    final result =
        await ArreGraphQLClient.instance.request<GLogoutData, GLogoutVars>(
      GLogoutReq(
        (b) => b..vars.userId = userId,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_MANAGE_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<List<GDynamicCard>> getDynamicCards() async {
    final result = await ArreGraphQLClient.instance.request(
      GListExplorePageDynamicCardsReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!.toList().cast<GDynamicCard>();
  }

  //creator anlytics api's
  Future<List<GVoicepodLevelAnalyticsPaginatedData_response_data>>
      getVoicepodLevelAnalytics(
    int numberOfDays, {
    String? after,
  }) async {
    final result = await ArreGraphQLClient.instance.request<
        GVoicepodLevelAnalyticsPaginatedData,
        GVoicepodLevelAnalyticsPaginatedVars>(
      GVoicepodLevelAnalyticsPaginatedReq(
        (b) => b
          ..vars.numberOfDays = numberOfDays
          ..vars.after = after,
      ),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.CREATOR_ANALYTICS_URL,
      needsOnboarding: true,
    );
    return result.data!.response.data!
        .toList()
        .cast<GVoicepodLevelAnalyticsPaginatedData_response_data>();
  }

  Future<GUserLevelAnalyticsData_response_data> getUserLevelAnalytics(
      int numberOfDays) async {
    final result = await ArreGraphQLClient.instance
        .request<GUserLevelAnalyticsData, GUserLevelAnalyticsVars>(
      GUserLevelAnalyticsReq((b) => b..vars.numberOfDays = numberOfDays),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.CREATOR_ANALYTICS_URL,
      needsOnboarding: true,
    );
    return result.data!.response.data!;
  }

  Future<GGetLikedUsersData_response_data> getLikedUsers(
    String postId, {
    GlastEvaluatedKeyForLikedUsersPaginatedBuilder? lastEvaluatedKey,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
        GGetLikedUsersReq(
          (b) => b.vars
            ..postId = postId
            ..lastEvaluatedKey = lastEvaluatedKey,
        ),
        baseUrl: AppConfig.POST_MANAGE_BASE_URL,
        dataPointer: (_) => _.data?.toJson());
    return result.data!.response!.data!;
  }

  ///Returns the deep link
  Future<String> getDeepLink(Uri arreLink) async {
    if (arreLink.pathSegments.isEmpty) {
      throw ArreException("Error parsing Arre link");
    }
    final response = await AHttpClient.instance.get(
      path: '/decode',
      baseUrl: AppConfig.ARRE_LINK_BASE_URL,
      queryParameters: {"url": arreLink.pathSegments.first},
    );
    return response["data"]["deepLink"] as String;
  }

  Future<String> getMediaSignedUrl(String mediaId) async {
    final response = await AHttpClient.instance.get(
      path: "/media/$mediaId",
      baseUrl: AppConfig.MEDIA_BASE_URL,
    );
    // throw ArreIgnoreException("Testing");
    return response["data"]["signedUrl"];
  }

  Future<GConversation> getConversationDetails(String conversationId) async {
    final result = await ArreGraphQLClient.instance.request(
        GGetConversationDetailsReq(
          (b) => b.vars..conversationId = conversationId,
        ),
        baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
        dataPointer: (_) => _.data?.toJson());
    return result.data!.response.data!;
  }

  ///[status] can be `published` or `requested`
  Future<List<GConversation>> getConversations({
    String status = "published",
    String? lastConversationUpdatedAt,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
        GGetConversationsReq(
          (b) => b.vars
            ..lastConversationUpdatedAt = lastConversationUpdatedAt
            ..status = status,
        ),
        baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
        dataPointer: (_) => _.data?.toJson());
    return result.data!.response.data!.cast<GConversation>().toList();
  }

  Future<List<AMessage>> getMessages({
    required String conversationId,
    String? lastMessageCreatedAt,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
        GGetMessagesReq(
          (b) => b.vars
            ..lastMessageCreatedAt = lastMessageCreatedAt
            ..conversationId = conversationId,
        ),
        baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
        dataPointer: (_) => _.data?.toJson());
    return result.data!.response.data
            ?.cast<GMessage>()
            .map(AMessage.fromDM)
            .toList() ??
        [];
  }

  Future<bool> getUnreadMessageStatus() async {
    final result = await ArreGraphQLClient.instance.request(
      GGetUnreadMessagesStatusReq(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
    );
    return result.data!.response.data;
  }

  Future<void> markAllMessagesAsSeen(String conversationId) async {
    await ArreGraphQLClient.instance.request(
      GMarkAllMessagesAsSeenReq((b) => b.vars.conversationId = conversationId),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
    );
  }

  Future<void> markAudioAsPlayed(String messageId) async {
    await ArreGraphQLClient.instance.request(
      GMarkAudioMessageAsPlayedReq((b) => b.vars.messageId = messageId),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
    );
  }

  ///[messageType] can be any of audio/voicepod/playlist/user
  Future<AMessage> sendMessage({
    required String messageType,
    String? entityId,
    String? mediaId,
    required String conversationId,
    int? duration,
    String? body,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GSendMessageReq(
        (b) => b.vars
          ..mediaId = mediaId
          ..duration = duration
          ..entityId = entityId
          ..messageType = messageType
          ..body = body
          ..conversationId = conversationId,
      ),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
      needsOnboarding: true,
      dataPointer: (_) => _.data?.toJson(),
    );
    return AMessage.fromDM(result.data!.response.data!);
  }

  Future<String> deleteMessage(String messageId) async {
    final result = await ArreGraphQLClient.instance.request(
      GDeleteMessageReq((b) => b.vars..messageId = messageId),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
    );
    return result.data!.response.data;
  }

  Future<void> markAllNotificationsAsSeen() async {
    await ArreGraphQLClient.instance.request(
      GMarkAllNotificationAsSeenReq(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
    );
  }

  Future<void> markAudioMessageAsPlayed(String messageId) async {
    await ArreGraphQLClient.instance.request(
      GMarkAudioMessageAsPlayedReq((b) => b.vars.messageId = messageId),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
    );
  }

  ///[requestStatus] can be
  ///
  /// 1. Accepted : `published`
  /// 2. Deleted/Rejected : `unpublished`
  /// 3. Block : `blocked`
  Future<void> updateMessageRequestStatus({
    required String conversationId,
    required String requestStatus,
  }) async {
    await ArreGraphQLClient.instance.request(
      GUpdateMessageRequestStatusReq(
        (b) => b.vars
          ..conversationId = conversationId
          ..requestStatus = requestStatus,
      ),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
      dataPointer: (_) => _.data?.toJson(),
    );
  }

  Future<List<Post>> getMoreLikeThisList(String postId) async {
    final result = await ArreGraphQLClient.instance.request(
      GFindSimilarVoicepodsReq((b) => b..vars.postId = postId),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!
        .whereType<GPostDetails>()
        .map(Post.fromGPostDetails)
        .toList();
  }

  Future<List<Post>> getMoreFromUserList(String userId,
      {String? lastPostCreatedAt}) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetVoicepodListByUserIdV2Req((b) => b.vars
        ..userId = userId
        ..lastPostCreatedAt = lastPostCreatedAt),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!
        .whereType<GPostDetails>()
        .map(Post.fromGPostDetails)
        .toList();
  }

  Future<List<GGetAllKeywordsData_response_data>> getAllTopics() async {
    final result = await ArreGraphQLClient.instance
        .request<GGetAllKeywordsData, GGetAllKeywordsVars>(
      GGetAllKeywordsReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data.toList();
  }

  Future<String> markInterestedTopic(String topicId) async {
    final result = await ArreGraphQLClient.instance.request(
      GMarkKeywordAsInterestedReq((b) => b..vars.keywordId = topicId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<String> removeInterestedTopic(String topicId) async {
    final result = await ArreGraphQLClient.instance.request(
      GRemoveKeywordFromInterestedReq((b) => b..vars.keywordId = topicId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<List<GGetUserInterestedKeywordsData_response_data>>
      getUserInterestedTopics() async {
    final result = await ArreGraphQLClient.instance.request(
      GGetUserInterestedKeywordsReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data.toList();
  }

  Future<List<GGetRecommendedUsersData_response_data>>
      getRecommendedUsers() async {
    final result = await ArreGraphQLClient.instance
        .request<GGetRecommendedUsersData, GGetRecommendedUsersVars>(
      GGetRecommendedUsersReq(),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data
        .toList()
        .cast<GGetRecommendedUsersData_response_data>();
  }

  Future<String> removeRecommendedUser(String userId) async {
    final result = await ArreGraphQLClient.instance.request(
      GRemoveUserFromRecommendedListReq((b) => b..vars.userId = userId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_GRAPH_BASE_URL,
    );
    return result.data!.response!.data!;
  }

  Future<List<GACommunityShortInfo>> getRecommendedCommunities() async {
    final result = await ArreGraphQLClient.instance.request(
      GRecommendedCommunitiesReq(),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data!.cast<GACommunityShortInfo>().toList();
  }

  ///Reject recommended community
  Future<void> rejectRecCommunity(String communityId) async {
    await ArreGraphQLClient.instance.request(
      GRejectRecommendedCommunityReq((b) => b.vars.communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
  }

  Future<List<GMyCommunityShortInfo>> getMyCommunities(
      [String? lastActivityAt]) async {
    final result = await ArreGraphQLClient.instance.request(
      GMyCommunitiesReq((b) => b.vars.lastActivityAt = lastActivityAt),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data!.cast<GMyCommunityShortInfo>().toList();
  }

  Future<GArreCommunity> getCommunityDetails(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GCommunityDetailsReq((b) => b.vars.communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data!;
  }

  @deprecated
  Future<List<Post>> getCommunityPinnedPosts(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GCommunityPinnedPostsReq((b) => b.vars.communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!
        .whereType<GPostDetails>()
        .map(Post.fromGPostDetails)
        .toList();
  }

  Future<List<Post>> getCommunityPosts({
    required String communityId,
    String? lastItemCreatedAt,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GCommunityVoicepodsReq((b) => b.vars
        ..communityId = communityId
        ..lastItemCreatedAt = lastItemCreatedAt),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.USER_FEED_BASE_URL,
    );
    return result.data!.response!.data!
        .whereType<GPostDetails>()
        .map(Post.fromGPostDetails)
        .toList();
  }

  Future<String> getCommunityName(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GCommunityNameReq((b) => b.vars.communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data!.title;
  }

  Future<List<ArreUser>> getCommunityAdmins(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GCommunityAdminsReq(),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data!
        .map(
          (p0) => ArreUser(
              userId: p0.userId,
              username: p0.username,
              profilePictureMediaId: p0.profilePictureMediaId),
        )
        .toList();
  }

  Future<List<ArreUserWithExtra<String?>>> getCommunityMembers({
    required String communityId,
    String? lastUserJoinedAt,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GCommunityMembersReq(
        (b) => b.vars
          ..communityId = communityId
          ..lastUserJoinedAt = lastUserJoinedAt,
      ),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data
            ?.map(
              (p0) => ArreUserWithExtra<String?>(
                  userId: p0.userId,
                  value: p0.joinedAt,
                  username: p0.username,
                  profilePictureMediaId: p0.profilePictureMediaId),
            )
            .toList() ??
        [];
  }

  Future<List<String>> getCommunityLanguages(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GCommunityLanguagesReq((b) => b.vars.communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data!.languages.toList();
  }

  Future<List<ArreUser>> searchCommunityMembers({
    required String communityId,
    required String keyword,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GSearchCommunityMembersReq(
        (b) => b.vars
          ..communityId = communityId
          ..keyword = keyword,
      ),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data
            ?.map(
              (p0) => ArreUser(
                  userId: p0.userId,
                  username: p0.username,
                  profilePictureMediaId: p0.profilePictureMediaId),
            )
            .toList() ??
        [];
  }

  Future<GCommunityRole> getCommunityRole(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetCommunityRoleReq((b) => b.vars.communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data!;
  }

  ///Returns the message
  Future<String> joinCommunity(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GJoinCommunityReq((b) => b.vars.communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      needsOnboarding: true,
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.message;
  }

  Future<String> leaveCommunity(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GLeaveCommunityReq((b) => b.vars.communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.message;
  }

  Future<String> removeCommunityMember({
    required String communityId,
    required String userId,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GRemoveCommunityMemberReq((b) => b.vars
        ..communityId = communityId
        ..userId = userId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.message;
  }

  ///[status] can be `pending` or `resolved`
  Future<List<GCommunityModRequest>> getCommunityModRequests({
    required String communityId,
    required String status,
    String? lastUpdatedAt,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GCommunityModRequestsReq((b) => b.vars
        ..communityId = communityId
        ..lastItemUpdatedAt = lastUpdatedAt
        ..requestStatus = status),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data!.cast<GCommunityModRequest>().toList();
  }

  Future<void> updateCommunityModRequest({
    required String communityId,
    required String requestId,
    required String actionValue,
  }) async {
    await ArreGraphQLClient.instance.request(
      GUpdateCommunityModRequestReq((b) => b.vars
        ..communityId = communityId
        ..moderationRequestId = requestId
        ..moderationStatus = actionValue),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
  }

  Future<void> pinCommunityPod({
    required String communityId,
    required String podId,
  }) async {
    await ArreGraphQLClient.instance.request(
      GPinCommunityPodReq((b) => b.vars
        ..communityId = communityId
        ..postId = podId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
  }

  Future<void> unpinCommunityPod({
    required String communityId,
    required String podId,
  }) async {
    await ArreGraphQLClient.instance.request(
      GUnpinCommunityPodReq((b) => b.vars
        ..communityId = communityId
        ..postId = podId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
  }

  Future<String> triggerCommunityVoicepodNotification({
    required String communityId,
    required String podId,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GTriggerCommunityVoicepodNotificationReq((b) => b.vars
        ..communityId = communityId
        ..postId = podId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );

    return result.data!.response.message;
  }

  Future<String> reportCommunityEntity({
    required String communityId,
    required String entityId,
    required String entityType,
    required List<String> reasons,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GReportCommunityEntityReq(
        (b) => b.vars
          ..communityId = communityId
          ..entityId = entityId
          ..entityType = entityType
          ..reasons = ListBuilder(reasons),
      ),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.message;
  }

  Future<List<CommunityChat>> getCommunityChats({
    required String communityId,
    String? after,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetCommunityChatsReq(
        (b) => b.vars
          ..communityId = communityId
          ..after = after,
      ),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
    );
    return result.data!.response.data
            ?.map((p0) => CommunityChat.fromData(p0))
            .toList() ??
        [];
  }

  Future<CommunityChatDetails> getCommunityChatDetails(String chatId) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetCommunityChatDetailsReq((b) => b.vars..chatId = chatId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
    );
    return CommunityChatDetails.fromData(result.data!.response.data!);
  }

  Future<List<AMessage>> getCommunityChatMessages({
    required String chatId,
    String? lastMessageCreatedAt,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GCommunityChatMessagesReq(
        (b) => b.vars
          ..chatId = chatId
          ..lastMessageCreatedAt = lastMessageCreatedAt,
      ),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
    );
    return result.data!.response.data
            ?.map((p0) => AMessage.fromCommunityChat(p0))
            .toList() ??
        [];
  }

  Future<CommunityChatDetails> createCommunityChat({
    required String communityId,
    required String chatTitle,
    required String? iconMediaId,
    required String? description,
    required List<String> userAccessLevelRequiredForMessage,
    required String notificationStatus,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GCreateCommunityChatReq((b) => b.vars
        ..communityId = communityId
        ..chatTitle = chatTitle
        ..iconMediaId = iconMediaId
        ..description = description
        ..userAccessLevelRequiredForMessage =
            ListBuilder(userAccessLevelRequiredForMessage)
        ..notificationStatus = notificationStatus),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
    );

    return CommunityChatDetails.fromData(result.data!.response.data!);
  }

  Future<String> updateCommunityChat({
    required String chatId,
    required String chatTitle,
    required String? iconMediaId,
    required String? description,
    required List<String>? userAccessLevelRequiredForMessage,
    required String notificationStatus,
    String chatActiveStatus = "live",
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GUpdateCommunityChatReq((b) => b.vars
        ..chatId = chatId
        ..chatTitle = chatTitle
        ..iconMediaId = iconMediaId
        ..description = description
        ..chatActiveStatus = chatActiveStatus
        ..userAccessLevelRequiredForMessage =
            ListBuilder(userAccessLevelRequiredForMessage ?? [])
        ..notificationStatus = notificationStatus),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
    );

    return result.data!.response.data;
  }

  Future<String> deleteCommunityChat(String chatId) async {
    final result = await ArreGraphQLClient.instance.request(
      GDeleteCommunityChatReq((b) => b.vars..chatId = chatId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
    );

    return result.data!.response.data;
  }

  Future<String> pinCommunityChat(String chatId) async {
    final result = await ArreGraphQLClient.instance.request(
      GPinCommunityChatReq((b) => b.vars..chatId = chatId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data;
  }

  Future<String> unpinCommunityChat(String chatId) async {
    final result = await ArreGraphQLClient.instance.request(
      GUnpinCommunityChatReq((b) => b.vars..chatId = chatId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data;
  }

  Future<List<String>> getPinnedEntityIds(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GPinnedCommunityEntityIdsReq((b) => b.vars..communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data?.pinnedEntities.toList() ?? [];
  }

  Future<List<CommunityPinItem>> getPinnedEntities(String communityId) async {
    final result = await ArreGraphQLClient.instance.request(
      GPinnedCommunityEntitiesReq((b) => b.vars..communityId = communityId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.COMMUNITY_MANAGE_URL,
    );
    return result.data!.response.data
            ?.map((p0) {
              if (p0
                  is GPinnedCommunityEntitiesData_response_data__asCommunityChat) {
                return CommunityChat.fromPinnedChat(p0);
              } else if (p0
                  is GPinnedCommunityEntitiesData_response_data__asVoicepod) {
                return Post.fromPinnedPost(p0);
              } else {
                return null;
              }
            })
            .whereType<CommunityPinItem>()
            .toList() ??
        [];
  }

  Future<void> markAllChatMessagesAsSeen(String chatId) async {
    await ArreGraphQLClient.instance.request(
      GMarkAllChatMessagesAsSeenReq((b) => b.vars..chatId = chatId),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
    );
  }

  ///[notificationStatus] - muted/unmuted
  Future<String> updateChatNotificationPreference({
    required String chatId,
    required String notificationStatus,
  }) async {
    final result = await ArreGraphQLClient.instance.request(
      GUpdateChatNotificationPreferenceReq((b) => b.vars
        ..chatId = chatId
        ..notificationStatus = notificationStatus),
      dataPointer: (_) => _.data!.toJson(),
      baseUrl: AppConfig.DIRECT_MESSAGES_BASE_URL,
    );

    return result.data!.response.message;
  }

  Future<List<GGetCreatorStudioPromptsData_response_data>>
      getCreatorStudioPrompts(List<String> languages) async {
    final result = await ArreGraphQLClient.instance.request(
      GGetCreatorStudioPromptsReq(
          (b) => b..vars.languages = ListBuilder(languages)),
      dataPointer: (_) => _.data?.toJson(),
      baseUrl: AppConfig.POST_MANAGE_BASE_URL,
    );
    return result.data!.response.data!
        .toList()
        .cast<GGetCreatorStudioPromptsData_response_data>();
  }
}
