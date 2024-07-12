// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GAcceptBulkInviteUserInput.serializer)
      ..add(GAcceptRejectRequestInput.serializer)
      ..add(GAddBulkInviteUserInput.serializer)
      ..add(GAddBulkInviteUserToSpecificInviteInput.serializer)
      ..add(GAddContactsOfUserV2Input.serializer)
      ..add(GAddContactsOfUserV3Input.serializer)
      ..add(GAddGuideline.serializer)
      ..add(GAddInviteLinkBulkInput.serializer)
      ..add(GAddInviteLinkBulkInputObject.serializer)
      ..add(GAddInviteLinkInput.serializer)
      ..add(GAddInviteLinkInputObject.serializer)
      ..add(GAddInvitesToSpecificUsersInput.serializer)
      ..add(GAddPost.serializer)
      ..add(GAddService.serializer)
      ..add(GAddUser.serializer)
      ..add(GAddUserToWaitlistTwoInput.serializer)
      ..add(GAqlEdgeDirection.serializer)
      ..add(GAqlLimitInput.serializer)
      ..add(GAqlSortInput.serializer)
      ..add(GAqlSortOrder.serializer)
      ..add(GAqlTraverseOptionsInput.serializer)
      ..add(GAssignModerator.serializer)
      ..add(GBlockUserData.serializer)
      ..add(GBlockUserData_response.serializer)
      ..add(GBlockUserData_response_data.serializer)
      ..add(GBlockUserReq.serializer)
      ..add(GBlockUserVars.serializer)
      ..add(GCheckPhoneNumberInBulkUsersInput.serializer)
      ..add(GCreateDefaultPodrollInput.serializer)
      ..add(GCreatePodrollInput.serializer)
      ..add(GCreatePostV1.serializer)
      ..add(GCreatePostV2.serializer)
      ..add(GCreateUpdateTrendingHashtagsInput.serializer)
      ..add(GDate.serializer)
      ..add(GDateTime.serializer)
      ..add(GDeletePostData.serializer)
      ..add(GDeletePostData_response.serializer)
      ..add(GDeletePostReq.serializer)
      ..add(GDeletePostVars.serializer)
      ..add(GDeviceInfo.serializer)
      ..add(GGenderChosenByInviteeInput.serializer)
      ..add(GGetGuideline.serializer)
      ..add(GGetInvitesPerDayPerUserInput.serializer)
      ..add(GGetNotificationsInput.serializer)
      ..add(GGetSuggestedUserWithCategory.serializer)
      ..add(GGetUserFriendsInput.serializer)
      ..add(GGetUserPosts.serializer)
      ..add(GGetUsersBySearchIncludesWomenInput.serializer)
      ..add(GGetUsersBySearchInput.serializer)
      ..add(GGetUsersToInviteInput.serializer)
      ..add(GInviteAndNoNumberMismatchTwoInput.serializer)
      ..add(GInviteUserInput.serializer)
      ..add(GInviteUserInputObject.serializer)
      ..add(GInvitesArrayInput.serializer)
      ..add(GLaunchJampod.serializer)
      ..add(GLikePostCommentData.serializer)
      ..add(GLikePostCommentData_response.serializer)
      ..add(GLikePostCommentReq.serializer)
      ..add(GLikePostCommentVars.serializer)
      ..add(GLikePostData.serializer)
      ..add(GLikePostData_response.serializer)
      ..add(GLikePostReq.serializer)
      ..add(GLikePostVars.serializer)
      ..add(GLogoutInput.serializer)
      ..add(GMessageMediaInput.serializer)
      ..add(GNotificationsSeenInput.serializer)
      ..add(GPostCommentsRepliesData.serializer)
      ..add(GPostCommentsRepliesData_response.serializer)
      ..add(GPostCommentsRepliesData_response_data.serializer)
      ..add(GPostCommentsRepliesData_response_data_createdBy.serializer)
      ..add(GPostCommentsRepliesData_response_data_interactions.serializer)
      ..add(
          GPostCommentsRepliesData_response_data_secondLevelReplies.serializer)
      ..add(GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
          .serializer)
      ..add(
          GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
              .serializer)
      ..add(GPostCommentsRepliesReq.serializer)
      ..add(GPostCommentsRepliesVars.serializer)
      ..add(GPostVoicepodCommentData.serializer)
      ..add(GPostVoicepodCommentData_sendPostReply.serializer)
      ..add(GPostVoicepodCommentData_sendPostReply_data.serializer)
      ..add(GPostVoicepodCommentReq.serializer)
      ..add(GPostVoicepodCommentVars.serializer)
      ..add(GPronouns.serializer)
      ..add(GRSVP.serializer)
      ..add(GRejectBulkInviteUserInput.serializer)
      ..add(GRemoveGuideline.serializer)
      ..add(GReportUserInput.serializer)
      ..add(GRequestForBulkInvitesLinkInput.serializer)
      ..add(GSearchData.serializer)
      ..add(GSearchWhileSyncingContactsInput.serializer)
      ..add(GSelectedParticipates.serializer)
      ..add(GSelectedSubTopic.serializer)
      ..add(GSendMessage.serializer)
      ..add(GSendNotificationToInviterInput.serializer)
      ..add(GSendPostInvite.serializer)
      ..add(GStatus.serializer)
      ..add(GTopicAndSubTopicIds.serializer)
      ..add(GTrendingHashtagsData.serializer)
      ..add(GTrendingHashtagsData_response.serializer)
      ..add(GTrendingHashtagsReq.serializer)
      ..add(GTrendingHashtagsVars.serializer)
      ..add(GUnlikePostCommentData.serializer)
      ..add(GUnlikePostCommentData_response.serializer)
      ..add(GUnlikePostCommentReq.serializer)
      ..add(GUnlikePostCommentVars.serializer)
      ..add(GUnlikePostData.serializer)
      ..add(GUnlikePostData_response.serializer)
      ..add(GUnlikePostReq.serializer)
      ..add(GUnlikePostVars.serializer)
      ..add(GUpdateAPodrollInput.serializer)
      ..add(GUpdateEndPointInput.serializer)
      ..add(GUpdatePostV1.serializer)
      ..add(GUpdateUser.serializer)
      ..add(GUpdateUserNotificationSettingsInput.serializer)
      ..add(GUpdateWeights.serializer)
      ..add(GUserAvatar.serializer)
      ..add(GUserContactInput.serializer)
      ..add(GVisibility.serializer)
      ..add(GacceptRejectInput.serializer)
      ..add(GaddEffect.serializer)
      ..add(GcreateTicketInput.serializer)
      ..add(GdeviceInfoData.serializer)
      ..add(GoperatingSystemData.serializer)
      ..add(GrepodInput.serializer)
      ..add(GsendPostInviteToMultipleUsers.serializer)
      ..add(GsendPostReplyInput.serializer)
      ..add(GsuggestedUsersByTopics.serializer)
      ..add(GticketReplyInput.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostCommentsRepliesData_response_data)]),
          () => new ListBuilder<GPostCommentsRepliesData_response_data>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GPostCommentsRepliesData_response_data_secondLevelReplies)
          ]),
          () => new ListBuilder<
              GPostCommentsRepliesData_response_data_secondLevelReplies>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GInvitesArrayInput)]),
          () => new ListBuilder<GInvitesArrayInput?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GMessageMediaInput)]),
          () => new ListBuilder<GMessageMediaInput?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GSelectedSubTopic)]),
          () => new ListBuilder<GSelectedSubTopic?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GSelectedParticipates)]),
          () => new ListBuilder<GSelectedParticipates?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GUserContactInput)]),
          () => new ListBuilder<GUserContactInput?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GUserContactInput)]),
          () => new ListBuilder<GUserContactInput?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GUserContactInput)]),
          () => new ListBuilder<GUserContactInput?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GTopicAndSubTopicIds)]),
          () => new ListBuilder<GTopicAndSubTopicIds?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GPronouns)]),
          () => new ListBuilder<GPronouns?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GTopicAndSubTopicIds)]),
          () => new ListBuilder<GTopicAndSubTopicIds?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GPronouns)]),
          () => new ListBuilder<GPronouns?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
