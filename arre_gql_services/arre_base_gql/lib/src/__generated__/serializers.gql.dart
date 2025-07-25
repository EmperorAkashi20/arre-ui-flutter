// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:arre_base_gql/src/__generated__/queries.data.gql.dart'
    show
        GBlockUserData,
        GBlockUserData_response,
        GBlockUserData_response_data,
        GDeletePostData,
        GDeletePostData_response,
        GLikePostCommentData,
        GLikePostCommentData_response,
        GLikePostData,
        GLikePostData_response,
        GPostCommentsRepliesData,
        GPostCommentsRepliesData_response,
        GPostCommentsRepliesData_response_data,
        GPostCommentsRepliesData_response_data_createdBy,
        GPostCommentsRepliesData_response_data_interactions,
        GPostCommentsRepliesData_response_data_secondLevelReplies,
        GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy,
        GPostCommentsRepliesData_response_data_secondLevelReplies_interactions,
        GPostVoicepodCommentData,
        GPostVoicepodCommentData_sendPostReply,
        GPostVoicepodCommentData_sendPostReply_data,
        GTrendingHashtagsData,
        GTrendingHashtagsData_response,
        GUnlikePostCommentData,
        GUnlikePostCommentData_response,
        GUnlikePostData,
        GUnlikePostData_response;
import 'package:arre_base_gql/src/__generated__/queries.req.gql.dart'
    show
        GBlockUserReq,
        GDeletePostReq,
        GLikePostCommentReq,
        GLikePostReq,
        GPostCommentsRepliesReq,
        GPostVoicepodCommentReq,
        GTrendingHashtagsReq,
        GUnlikePostCommentReq,
        GUnlikePostReq;
import 'package:arre_base_gql/src/__generated__/queries.var.gql.dart'
    show
        GBlockUserVars,
        GDeletePostVars,
        GLikePostCommentVars,
        GLikePostVars,
        GPostCommentsRepliesVars,
        GPostVoicepodCommentVars,
        GTrendingHashtagsVars,
        GUnlikePostCommentVars,
        GUnlikePostVars;
import 'package:arre_base_gql/src/__generated__/schema.schema.gql.dart'
    show
        GAcceptBulkInviteUserInput,
        GAcceptRejectRequestInput,
        GAddBulkInviteUserInput,
        GAddBulkInviteUserToSpecificInviteInput,
        GAddContactsOfUserV2Input,
        GAddContactsOfUserV3Input,
        GAddGuideline,
        GAddInviteLinkBulkInput,
        GAddInviteLinkBulkInputObject,
        GAddInviteLinkInput,
        GAddInviteLinkInputObject,
        GAddInvitesToSpecificUsersInput,
        GAddPost,
        GAddService,
        GAddUser,
        GAddUserToWaitlistTwoInput,
        GAqlEdgeDirection,
        GAqlLimitInput,
        GAqlSortInput,
        GAqlSortOrder,
        GAqlTraverseOptionsInput,
        GAssignModerator,
        GCheckPhoneNumberInBulkUsersInput,
        GCreateDefaultPodrollInput,
        GCreatePodrollInput,
        GCreatePostV1,
        GCreatePostV2,
        GCreateUpdateTrendingHashtagsInput,
        GDate,
        GDateTime,
        GDeviceInfo,
        GGenderChosenByInviteeInput,
        GGetGuideline,
        GGetInvitesPerDayPerUserInput,
        GGetNotificationsInput,
        GGetSuggestedUserWithCategory,
        GGetUserFriendsInput,
        GGetUserPosts,
        GGetUsersBySearchIncludesWomenInput,
        GGetUsersBySearchInput,
        GGetUsersToInviteInput,
        GInviteAndNoNumberMismatchTwoInput,
        GInviteUserInput,
        GInviteUserInputObject,
        GInvitesArrayInput,
        GLaunchJampod,
        GLogoutInput,
        GMessageMediaInput,
        GNotificationsSeenInput,
        GPronouns,
        GRSVP,
        GRejectBulkInviteUserInput,
        GRemoveGuideline,
        GReportUserInput,
        GRequestForBulkInvitesLinkInput,
        GSearchData,
        GSearchWhileSyncingContactsInput,
        GSelectedParticipates,
        GSelectedSubTopic,
        GSendMessage,
        GSendNotificationToInviterInput,
        GSendPostInvite,
        GStatus,
        GTopicAndSubTopicIds,
        GUpdateAPodrollInput,
        GUpdateEndPointInput,
        GUpdatePostV1,
        GUpdateUser,
        GUpdateUserNotificationSettingsInput,
        GUpdateWeights,
        GUserAvatar,
        GUserContactInput,
        GVisibility,
        GacceptRejectInput,
        GaddEffect,
        GcreateTicketInput,
        GdeviceInfoData,
        GoperatingSystemData,
        GrepodInput,
        GsendPostInviteToMultipleUsers,
        GsendPostReplyInput,
        GsuggestedUsersByTopics,
        GticketReplyInput;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAcceptBulkInviteUserInput,
  GAcceptRejectRequestInput,
  GAddBulkInviteUserInput,
  GAddBulkInviteUserToSpecificInviteInput,
  GAddContactsOfUserV2Input,
  GAddContactsOfUserV3Input,
  GAddGuideline,
  GAddInviteLinkBulkInput,
  GAddInviteLinkBulkInputObject,
  GAddInviteLinkInput,
  GAddInviteLinkInputObject,
  GAddInvitesToSpecificUsersInput,
  GAddPost,
  GAddService,
  GAddUser,
  GAddUserToWaitlistTwoInput,
  GAqlEdgeDirection,
  GAqlLimitInput,
  GAqlSortInput,
  GAqlSortOrder,
  GAqlTraverseOptionsInput,
  GAssignModerator,
  GBlockUserData,
  GBlockUserData_response,
  GBlockUserData_response_data,
  GBlockUserReq,
  GBlockUserVars,
  GCheckPhoneNumberInBulkUsersInput,
  GCreateDefaultPodrollInput,
  GCreatePodrollInput,
  GCreatePostV1,
  GCreatePostV2,
  GCreateUpdateTrendingHashtagsInput,
  GDate,
  GDateTime,
  GDeletePostData,
  GDeletePostData_response,
  GDeletePostReq,
  GDeletePostVars,
  GDeviceInfo,
  GGenderChosenByInviteeInput,
  GGetGuideline,
  GGetInvitesPerDayPerUserInput,
  GGetNotificationsInput,
  GGetSuggestedUserWithCategory,
  GGetUserFriendsInput,
  GGetUserPosts,
  GGetUsersBySearchIncludesWomenInput,
  GGetUsersBySearchInput,
  GGetUsersToInviteInput,
  GInviteAndNoNumberMismatchTwoInput,
  GInviteUserInput,
  GInviteUserInputObject,
  GInvitesArrayInput,
  GLaunchJampod,
  GLikePostCommentData,
  GLikePostCommentData_response,
  GLikePostCommentReq,
  GLikePostCommentVars,
  GLikePostData,
  GLikePostData_response,
  GLikePostReq,
  GLikePostVars,
  GLogoutInput,
  GMessageMediaInput,
  GNotificationsSeenInput,
  GPostCommentsRepliesData,
  GPostCommentsRepliesData_response,
  GPostCommentsRepliesData_response_data,
  GPostCommentsRepliesData_response_data_createdBy,
  GPostCommentsRepliesData_response_data_interactions,
  GPostCommentsRepliesData_response_data_secondLevelReplies,
  GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy,
  GPostCommentsRepliesData_response_data_secondLevelReplies_interactions,
  GPostCommentsRepliesReq,
  GPostCommentsRepliesVars,
  GPostVoicepodCommentData,
  GPostVoicepodCommentData_sendPostReply,
  GPostVoicepodCommentData_sendPostReply_data,
  GPostVoicepodCommentReq,
  GPostVoicepodCommentVars,
  GPronouns,
  GRSVP,
  GRejectBulkInviteUserInput,
  GRemoveGuideline,
  GReportUserInput,
  GRequestForBulkInvitesLinkInput,
  GSearchData,
  GSearchWhileSyncingContactsInput,
  GSelectedParticipates,
  GSelectedSubTopic,
  GSendMessage,
  GSendNotificationToInviterInput,
  GSendPostInvite,
  GStatus,
  GTopicAndSubTopicIds,
  GTrendingHashtagsData,
  GTrendingHashtagsData_response,
  GTrendingHashtagsReq,
  GTrendingHashtagsVars,
  GUnlikePostCommentData,
  GUnlikePostCommentData_response,
  GUnlikePostCommentReq,
  GUnlikePostCommentVars,
  GUnlikePostData,
  GUnlikePostData_response,
  GUnlikePostReq,
  GUnlikePostVars,
  GUpdateAPodrollInput,
  GUpdateEndPointInput,
  GUpdatePostV1,
  GUpdateUser,
  GUpdateUserNotificationSettingsInput,
  GUpdateWeights,
  GUserAvatar,
  GUserContactInput,
  GVisibility,
  GacceptRejectInput,
  GaddEffect,
  GcreateTicketInput,
  GdeviceInfoData,
  GoperatingSystemData,
  GrepodInput,
  GsendPostInviteToMultipleUsers,
  GsendPostReplyInput,
  GsuggestedUsersByTopics,
  GticketReplyInput,
])
final Serializers serializers = _serializersBuilder.build();
