// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GAqlEdgeDirection _$gAqlEdgeDirectionOUTBOUND =
    const GAqlEdgeDirection._('OUTBOUND');
const GAqlEdgeDirection _$gAqlEdgeDirectionINBOUND =
    const GAqlEdgeDirection._('INBOUND');
const GAqlEdgeDirection _$gAqlEdgeDirectionANY =
    const GAqlEdgeDirection._('ANY');

GAqlEdgeDirection _$gAqlEdgeDirectionValueOf(String name) {
  switch (name) {
    case 'OUTBOUND':
      return _$gAqlEdgeDirectionOUTBOUND;
    case 'INBOUND':
      return _$gAqlEdgeDirectionINBOUND;
    case 'ANY':
      return _$gAqlEdgeDirectionANY;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GAqlEdgeDirection> _$gAqlEdgeDirectionValues =
    new BuiltSet<GAqlEdgeDirection>(const <GAqlEdgeDirection>[
  _$gAqlEdgeDirectionOUTBOUND,
  _$gAqlEdgeDirectionINBOUND,
  _$gAqlEdgeDirectionANY,
]);

const GAqlSortOrder _$gAqlSortOrderDESC = const GAqlSortOrder._('DESC');
const GAqlSortOrder _$gAqlSortOrderASC = const GAqlSortOrder._('ASC');

GAqlSortOrder _$gAqlSortOrderValueOf(String name) {
  switch (name) {
    case 'DESC':
      return _$gAqlSortOrderDESC;
    case 'ASC':
      return _$gAqlSortOrderASC;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GAqlSortOrder> _$gAqlSortOrderValues =
    new BuiltSet<GAqlSortOrder>(const <GAqlSortOrder>[
  _$gAqlSortOrderDESC,
  _$gAqlSortOrderASC,
]);

const GStatus _$gStatusactive = const GStatus._('active');
const GStatus _$gStatusinactive = const GStatus._('inactive');

GStatus _$gStatusValueOf(String name) {
  switch (name) {
    case 'active':
      return _$gStatusactive;
    case 'inactive':
      return _$gStatusinactive;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GStatus> _$gStatusValues = new BuiltSet<GStatus>(const <GStatus>[
  _$gStatusactive,
  _$gStatusinactive,
]);

const GVisibility _$gVisibilitypublic = const GVisibility._('public');
const GVisibility _$gVisibilityprivate = const GVisibility._('private');
const GVisibility _$gVisibilityinviteOnly = const GVisibility._('inviteOnly');
const GVisibility _$gVisibilitywomenOnly = const GVisibility._('womenOnly');

GVisibility _$gVisibilityValueOf(String name) {
  switch (name) {
    case 'public':
      return _$gVisibilitypublic;
    case 'private':
      return _$gVisibilityprivate;
    case 'inviteOnly':
      return _$gVisibilityinviteOnly;
    case 'womenOnly':
      return _$gVisibilitywomenOnly;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GVisibility> _$gVisibilityValues =
    new BuiltSet<GVisibility>(const <GVisibility>[
  _$gVisibilitypublic,
  _$gVisibilityprivate,
  _$gVisibilityinviteOnly,
  _$gVisibilitywomenOnly,
]);

Serializer<GAqlEdgeDirection> _$gAqlEdgeDirectionSerializer =
    new _$GAqlEdgeDirectionSerializer();
Serializer<GAqlSortOrder> _$gAqlSortOrderSerializer =
    new _$GAqlSortOrderSerializer();
Serializer<GAqlSortInput> _$gAqlSortInputSerializer =
    new _$GAqlSortInputSerializer();
Serializer<GAqlLimitInput> _$gAqlLimitInputSerializer =
    new _$GAqlLimitInputSerializer();
Serializer<GAqlTraverseOptionsInput> _$gAqlTraverseOptionsInputSerializer =
    new _$GAqlTraverseOptionsInputSerializer();
Serializer<GStatus> _$gStatusSerializer = new _$GStatusSerializer();
Serializer<GTopicAndSubTopicIds> _$gTopicAndSubTopicIdsSerializer =
    new _$GTopicAndSubTopicIdsSerializer();
Serializer<GPronouns> _$gPronounsSerializer = new _$GPronounsSerializer();
Serializer<GAddUser> _$gAddUserSerializer = new _$GAddUserSerializer();
Serializer<GUserAvatar> _$gUserAvatarSerializer = new _$GUserAvatarSerializer();
Serializer<GUpdateUser> _$gUpdateUserSerializer = new _$GUpdateUserSerializer();
Serializer<GGetUserFriendsInput> _$gGetUserFriendsInputSerializer =
    new _$GGetUserFriendsInputSerializer();
Serializer<GGetUsersToInviteInput> _$gGetUsersToInviteInputSerializer =
    new _$GGetUsersToInviteInputSerializer();
Serializer<GGetUsersBySearchIncludesWomenInput>
    _$gGetUsersBySearchIncludesWomenInputSerializer =
    new _$GGetUsersBySearchIncludesWomenInputSerializer();
Serializer<GGetUsersBySearchInput> _$gGetUsersBySearchInputSerializer =
    new _$GGetUsersBySearchInputSerializer();
Serializer<GGetSuggestedUserWithCategory>
    _$gGetSuggestedUserWithCategorySerializer =
    new _$GGetSuggestedUserWithCategorySerializer();
Serializer<GReportUserInput> _$gReportUserInputSerializer =
    new _$GReportUserInputSerializer();
Serializer<GUpdateEndPointInput> _$gUpdateEndPointInputSerializer =
    new _$GUpdateEndPointInputSerializer();
Serializer<GLogoutInput> _$gLogoutInputSerializer =
    new _$GLogoutInputSerializer();
Serializer<GDeviceInfo> _$gDeviceInfoSerializer = new _$GDeviceInfoSerializer();
Serializer<GcreateTicketInput> _$gcreateTicketInputSerializer =
    new _$GcreateTicketInputSerializer();
Serializer<GticketReplyInput> _$gticketReplyInputSerializer =
    new _$GticketReplyInputSerializer();
Serializer<GsuggestedUsersByTopics> _$gsuggestedUsersByTopicsSerializer =
    new _$GsuggestedUsersByTopicsSerializer();
Serializer<GoperatingSystemData> _$goperatingSystemDataSerializer =
    new _$GoperatingSystemDataSerializer();
Serializer<GdeviceInfoData> _$gdeviceInfoDataSerializer =
    new _$GdeviceInfoDataSerializer();
Serializer<GVisibility> _$gVisibilitySerializer = new _$GVisibilitySerializer();
Serializer<GSelectedSubTopic> _$gSelectedSubTopicSerializer =
    new _$GSelectedSubTopicSerializer();
Serializer<GSelectedParticipates> _$gSelectedParticipatesSerializer =
    new _$GSelectedParticipatesSerializer();
Serializer<GAddPost> _$gAddPostSerializer = new _$GAddPostSerializer();
Serializer<GSearchData> _$gSearchDataSerializer = new _$GSearchDataSerializer();
Serializer<GAddGuideline> _$gAddGuidelineSerializer =
    new _$GAddGuidelineSerializer();
Serializer<GRemoveGuideline> _$gRemoveGuidelineSerializer =
    new _$GRemoveGuidelineSerializer();
Serializer<GSendPostInvite> _$gSendPostInviteSerializer =
    new _$GSendPostInviteSerializer();
Serializer<GsendPostInviteToMultipleUsers>
    _$gsendPostInviteToMultipleUsersSerializer =
    new _$GsendPostInviteToMultipleUsersSerializer();
Serializer<GCreatePostV1> _$gCreatePostV1Serializer =
    new _$GCreatePostV1Serializer();
Serializer<GCreatePostV2> _$gCreatePostV2Serializer =
    new _$GCreatePostV2Serializer();
Serializer<GUpdatePostV1> _$gUpdatePostV1Serializer =
    new _$GUpdatePostV1Serializer();
Serializer<GGetGuideline> _$gGetGuidelineSerializer =
    new _$GGetGuidelineSerializer();
Serializer<GGetUserPosts> _$gGetUserPostsSerializer =
    new _$GGetUserPostsSerializer();
Serializer<GLaunchJampod> _$gLaunchJampodSerializer =
    new _$GLaunchJampodSerializer();
Serializer<GRSVP> _$gRSVPSerializer = new _$GRSVPSerializer();
Serializer<GrepodInput> _$grepodInputSerializer = new _$GrepodInputSerializer();
Serializer<GUpdateWeights> _$gUpdateWeightsSerializer =
    new _$GUpdateWeightsSerializer();
Serializer<GAssignModerator> _$gAssignModeratorSerializer =
    new _$GAssignModeratorSerializer();
Serializer<GsendPostReplyInput> _$gsendPostReplyInputSerializer =
    new _$GsendPostReplyInputSerializer();
Serializer<GacceptRejectInput> _$gacceptRejectInputSerializer =
    new _$GacceptRejectInputSerializer();
Serializer<GCreateUpdateTrendingHashtagsInput>
    _$gCreateUpdateTrendingHashtagsInputSerializer =
    new _$GCreateUpdateTrendingHashtagsInputSerializer();
Serializer<GSendMessage> _$gSendMessageSerializer =
    new _$GSendMessageSerializer();
Serializer<GMessageMediaInput> _$gMessageMediaInputSerializer =
    new _$GMessageMediaInputSerializer();
Serializer<GAddService> _$gAddServiceSerializer = new _$GAddServiceSerializer();
Serializer<GGetNotificationsInput> _$gGetNotificationsInputSerializer =
    new _$GGetNotificationsInputSerializer();
Serializer<GNotificationsSeenInput> _$gNotificationsSeenInputSerializer =
    new _$GNotificationsSeenInputSerializer();
Serializer<GUpdateUserNotificationSettingsInput>
    _$gUpdateUserNotificationSettingsInputSerializer =
    new _$GUpdateUserNotificationSettingsInputSerializer();
Serializer<GaddEffect> _$gaddEffectSerializer = new _$GaddEffectSerializer();
Serializer<GGetInvitesPerDayPerUserInput>
    _$gGetInvitesPerDayPerUserInputSerializer =
    new _$GGetInvitesPerDayPerUserInputSerializer();
Serializer<GCheckPhoneNumberInBulkUsersInput>
    _$gCheckPhoneNumberInBulkUsersInputSerializer =
    new _$GCheckPhoneNumberInBulkUsersInputSerializer();
Serializer<GInviteUserInputObject> _$gInviteUserInputObjectSerializer =
    new _$GInviteUserInputObjectSerializer();
Serializer<GInviteUserInput> _$gInviteUserInputSerializer =
    new _$GInviteUserInputSerializer();
Serializer<GGenderChosenByInviteeInput>
    _$gGenderChosenByInviteeInputSerializer =
    new _$GGenderChosenByInviteeInputSerializer();
Serializer<GAcceptRejectRequestInput> _$gAcceptRejectRequestInputSerializer =
    new _$GAcceptRejectRequestInputSerializer();
Serializer<GAddInviteLinkInputObject> _$gAddInviteLinkInputObjectSerializer =
    new _$GAddInviteLinkInputObjectSerializer();
Serializer<GAddInviteLinkInput> _$gAddInviteLinkInputSerializer =
    new _$GAddInviteLinkInputSerializer();
Serializer<GSendNotificationToInviterInput>
    _$gSendNotificationToInviterInputSerializer =
    new _$GSendNotificationToInviterInputSerializer();
Serializer<GInvitesArrayInput> _$gInvitesArrayInputSerializer =
    new _$GInvitesArrayInputSerializer();
Serializer<GAddInvitesToSpecificUsersInput>
    _$gAddInvitesToSpecificUsersInputSerializer =
    new _$GAddInvitesToSpecificUsersInputSerializer();
Serializer<GAddUserToWaitlistTwoInput> _$gAddUserToWaitlistTwoInputSerializer =
    new _$GAddUserToWaitlistTwoInputSerializer();
Serializer<GInviteAndNoNumberMismatchTwoInput>
    _$gInviteAndNoNumberMismatchTwoInputSerializer =
    new _$GInviteAndNoNumberMismatchTwoInputSerializer();
Serializer<GRequestForBulkInvitesLinkInput>
    _$gRequestForBulkInvitesLinkInputSerializer =
    new _$GRequestForBulkInvitesLinkInputSerializer();
Serializer<GAddInviteLinkBulkInputObject>
    _$gAddInviteLinkBulkInputObjectSerializer =
    new _$GAddInviteLinkBulkInputObjectSerializer();
Serializer<GAddInviteLinkBulkInput> _$gAddInviteLinkBulkInputSerializer =
    new _$GAddInviteLinkBulkInputSerializer();
Serializer<GAddBulkInviteUserInput> _$gAddBulkInviteUserInputSerializer =
    new _$GAddBulkInviteUserInputSerializer();
Serializer<GAcceptBulkInviteUserInput> _$gAcceptBulkInviteUserInputSerializer =
    new _$GAcceptBulkInviteUserInputSerializer();
Serializer<GRejectBulkInviteUserInput> _$gRejectBulkInviteUserInputSerializer =
    new _$GRejectBulkInviteUserInputSerializer();
Serializer<GAddBulkInviteUserToSpecificInviteInput>
    _$gAddBulkInviteUserToSpecificInviteInputSerializer =
    new _$GAddBulkInviteUserToSpecificInviteInputSerializer();
Serializer<GUserContactInput> _$gUserContactInputSerializer =
    new _$GUserContactInputSerializer();
Serializer<GAddContactsOfUserV2Input> _$gAddContactsOfUserV2InputSerializer =
    new _$GAddContactsOfUserV2InputSerializer();
Serializer<GAddContactsOfUserV3Input> _$gAddContactsOfUserV3InputSerializer =
    new _$GAddContactsOfUserV3InputSerializer();
Serializer<GSearchWhileSyncingContactsInput>
    _$gSearchWhileSyncingContactsInputSerializer =
    new _$GSearchWhileSyncingContactsInputSerializer();
Serializer<GCreateDefaultPodrollInput> _$gCreateDefaultPodrollInputSerializer =
    new _$GCreateDefaultPodrollInputSerializer();
Serializer<GCreatePodrollInput> _$gCreatePodrollInputSerializer =
    new _$GCreatePodrollInputSerializer();
Serializer<GUpdateAPodrollInput> _$gUpdateAPodrollInputSerializer =
    new _$GUpdateAPodrollInputSerializer();

class _$GAqlEdgeDirectionSerializer
    implements PrimitiveSerializer<GAqlEdgeDirection> {
  @override
  final Iterable<Type> types = const <Type>[GAqlEdgeDirection];
  @override
  final String wireName = 'GAqlEdgeDirection';

  @override
  Object serialize(Serializers serializers, GAqlEdgeDirection object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GAqlEdgeDirection deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GAqlEdgeDirection.valueOf(serialized as String);
}

class _$GAqlSortOrderSerializer implements PrimitiveSerializer<GAqlSortOrder> {
  @override
  final Iterable<Type> types = const <Type>[GAqlSortOrder];
  @override
  final String wireName = 'GAqlSortOrder';

  @override
  Object serialize(Serializers serializers, GAqlSortOrder object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GAqlSortOrder deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GAqlSortOrder.valueOf(serialized as String);
}

class _$GAqlSortInputSerializer implements StructuredSerializer<GAqlSortInput> {
  @override
  final Iterable<Type> types = const [GAqlSortInput, _$GAqlSortInput];
  @override
  final String wireName = 'GAqlSortInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAqlSortInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'property',
      serializers.serialize(object.property,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAqlSortOrder)));
    }
    value = object.sortOn;
    if (value != null) {
      result
        ..add('sortOn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAqlSortInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAqlSortInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'property':
          result.property = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(GAqlSortOrder)) as GAqlSortOrder?;
          break;
        case 'sortOn':
          result.sortOn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAqlLimitInputSerializer
    implements StructuredSerializer<GAqlLimitInput> {
  @override
  final Iterable<Type> types = const [GAqlLimitInput, _$GAqlLimitInput];
  @override
  final String wireName = 'GAqlLimitInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAqlLimitInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.skip;
    if (value != null) {
      result
        ..add('skip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAqlLimitInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAqlLimitInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAqlTraverseOptionsInputSerializer
    implements StructuredSerializer<GAqlTraverseOptionsInput> {
  @override
  final Iterable<Type> types = const [
    GAqlTraverseOptionsInput,
    _$GAqlTraverseOptionsInput
  ];
  @override
  final String wireName = 'GAqlTraverseOptionsInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAqlTraverseOptionsInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bfs;
    if (value != null) {
      result
        ..add('bfs')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.uniqueVertices;
    if (value != null) {
      result
        ..add('uniqueVertices')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uniqueEdges;
    if (value != null) {
      result
        ..add('uniqueEdges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAqlTraverseOptionsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAqlTraverseOptionsInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bfs':
          result.bfs = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'uniqueVertices':
          result.uniqueVertices = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uniqueEdges':
          result.uniqueEdges = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStatusSerializer implements PrimitiveSerializer<GStatus> {
  @override
  final Iterable<Type> types = const <Type>[GStatus];
  @override
  final String wireName = 'GStatus';

  @override
  Object serialize(Serializers serializers, GStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GStatus.valueOf(serialized as String);
}

class _$GTopicAndSubTopicIdsSerializer
    implements StructuredSerializer<GTopicAndSubTopicIds> {
  @override
  final Iterable<Type> types = const [
    GTopicAndSubTopicIds,
    _$GTopicAndSubTopicIds
  ];
  @override
  final String wireName = 'GTopicAndSubTopicIds';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTopicAndSubTopicIds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.topicId;
    if (value != null) {
      result
        ..add('topicId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subTopicIds;
    if (value != null) {
      result
        ..add('subTopicIds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GTopicAndSubTopicIds deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTopicAndSubTopicIdsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'topicId':
          result.topicId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subTopicIds':
          result.subTopicIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPronounsSerializer implements StructuredSerializer<GPronouns> {
  @override
  final Iterable<Type> types = const [GPronouns, _$GPronouns];
  @override
  final String wireName = 'GPronouns';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPronouns object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isMain;
    if (value != null) {
      result
        ..add('isMain')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GPronouns deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPronounsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isMain':
          result.isMain = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddUserSerializer implements StructuredSerializer<GAddUser> {
  @override
  final Iterable<Type> types = const [GAddUser, _$GAddUser];
  @override
  final String wireName = 'GAddUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firstname',
      serializers.serialize(object.firstname,
          specifiedType: const FullType(String)),
      'lastname',
      serializers.serialize(object.lastname,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'timeUserCheckedPrivacyPolicy',
      serializers.serialize(object.timeUserCheckedPrivacyPolicy,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.languages;
    if (value != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.theme;
    if (value != null) {
      result
        ..add('theme')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAvatar;
    if (value != null) {
      result
        ..add('isAvatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isVerified;
    if (value != null) {
      result
        ..add('isVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reasons;
    if (value != null) {
      result
        ..add('reasons')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.subId;
    if (value != null) {
      result
        ..add('subId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.topics;
    if (value != null) {
      result
        ..add('topics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GTopicAndSubTopicIds)])));
    }
    value = object.showGender;
    if (value != null) {
      result
        ..add('showGender')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.verificationStatus;
    if (value != null) {
      result
        ..add('verificationStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pronouns;
    if (value != null) {
      result
        ..add('pronouns')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(GPronouns)])));
    }
    return result;
  }

  @override
  GAddUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'theme':
          result.theme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAvatar':
          result.isAvatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isVerified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'reasons':
          result.reasons.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'subId':
          result.subId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'topics':
          result.topics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GTopicAndSubTopicIds)
              ]))! as BuiltList<Object?>);
          break;
        case 'showGender':
          result.showGender = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'verificationStatus':
          result.verificationStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pronouns':
          result.pronouns.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(GPronouns)]))!
              as BuiltList<Object?>);
          break;
        case 'timeUserCheckedPrivacyPolicy':
          result.timeUserCheckedPrivacyPolicy = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserAvatarSerializer implements StructuredSerializer<GUserAvatar> {
  @override
  final Iterable<Type> types = const [GUserAvatar, _$GUserAvatar];
  @override
  final String wireName = 'GUserAvatar';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserAvatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firstname',
      serializers.serialize(object.firstname,
          specifiedType: const FullType(String)),
      'lastname',
      serializers.serialize(object.lastname,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserAvatar deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserAvatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserSerializer implements StructuredSerializer<GUpdateUser> {
  @override
  final Iterable<Type> types = const [GUpdateUser, _$GUpdateUser];
  @override
  final String wireName = 'GUpdateUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.firstname;
    if (value != null) {
      result
        ..add('firstname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastname;
    if (value != null) {
      result
        ..add('lastname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.theme;
    if (value != null) {
      result
        ..add('theme')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAvatar;
    if (value != null) {
      result
        ..add('isAvatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.frames;
    if (value != null) {
      result
        ..add('frames')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFrameLive;
    if (value != null) {
      result
        ..add('isFrameLive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.twitterHandle;
    if (value != null) {
      result
        ..add('twitterHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagramHandle;
    if (value != null) {
      result
        ..add('instagramHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'theme':
          result.theme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAvatar':
          result.isAvatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'frames':
          result.frames = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFrameLive':
          result.isFrameLive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'twitterHandle':
          result.twitterHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagramHandle':
          result.instagramHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserFriendsInputSerializer
    implements StructuredSerializer<GGetUserFriendsInput> {
  @override
  final Iterable<Type> types = const [
    GGetUserFriendsInput,
    _$GGetUserFriendsInput
  ];
  @override
  final String wireName = 'GGetUserFriendsInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserFriendsInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.womenOnly;
    if (value != null) {
      result
        ..add('womenOnly')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.searchString;
    if (value != null) {
      result
        ..add('searchString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUserFriendsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserFriendsInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'womenOnly':
          result.womenOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'searchString':
          result.searchString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUsersToInviteInputSerializer
    implements StructuredSerializer<GGetUsersToInviteInput> {
  @override
  final Iterable<Type> types = const [
    GGetUsersToInviteInput,
    _$GGetUsersToInviteInput
  ];
  @override
  final String wireName = 'GGetUsersToInviteInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUsersToInviteInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.womenOnly;
    if (value != null) {
      result
        ..add('womenOnly')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.jampodId;
    if (value != null) {
      result
        ..add('jampodId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.searchString;
    if (value != null) {
      result
        ..add('searchString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUsersToInviteInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUsersToInviteInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'womenOnly':
          result.womenOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'jampodId':
          result.jampodId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'searchString':
          result.searchString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUsersBySearchIncludesWomenInputSerializer
    implements StructuredSerializer<GGetUsersBySearchIncludesWomenInput> {
  @override
  final Iterable<Type> types = const [
    GGetUsersBySearchIncludesWomenInput,
    _$GGetUsersBySearchIncludesWomenInput
  ];
  @override
  final String wireName = 'GGetUsersBySearchIncludesWomenInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUsersBySearchIncludesWomenInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.searchString;
    if (value != null) {
      result
        ..add('searchString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.womenOnly;
    if (value != null) {
      result
        ..add('womenOnly')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetUsersBySearchIncludesWomenInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUsersBySearchIncludesWomenInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchString':
          result.searchString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'womenOnly':
          result.womenOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUsersBySearchInputSerializer
    implements StructuredSerializer<GGetUsersBySearchInput> {
  @override
  final Iterable<Type> types = const [
    GGetUsersBySearchInput,
    _$GGetUsersBySearchInput
  ];
  @override
  final String wireName = 'GGetUsersBySearchInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUsersBySearchInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.searchString;
    if (value != null) {
      result
        ..add('searchString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGetUsersBySearchInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUsersBySearchInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchString':
          result.searchString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSuggestedUserWithCategorySerializer
    implements StructuredSerializer<GGetSuggestedUserWithCategory> {
  @override
  final Iterable<Type> types = const [
    GGetSuggestedUserWithCategory,
    _$GGetSuggestedUserWithCategory
  ];
  @override
  final String wireName = 'GGetSuggestedUserWithCategory';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetSuggestedUserWithCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.topicName;
    if (value != null) {
      result
        ..add('topicName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDefault;
    if (value != null) {
      result
        ..add('isDefault')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.defaultUser;
    if (value != null) {
      result
        ..add('defaultUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GGetSuggestedUserWithCategory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSuggestedUserWithCategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'topicName':
          result.topicName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isDefault':
          result.isDefault = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'defaultUser':
          result.defaultUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GReportUserInputSerializer
    implements StructuredSerializer<GReportUserInput> {
  @override
  final Iterable<Type> types = const [GReportUserInput, _$GReportUserInput];
  @override
  final String wireName = 'GReportUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReportUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'otherUserId',
      serializers.serialize(object.otherUserId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issueTypeIds;
    if (value != null) {
      result
        ..add('issueTypeIds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.evidence;
    if (value != null) {
      result
        ..add('evidence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.audio;
    if (value != null) {
      result
        ..add('audio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReportUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReportUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'otherUserId':
          result.otherUserId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'issueTypeIds':
          result.issueTypeIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'evidence':
          result.evidence.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'audio':
          result.audio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateEndPointInputSerializer
    implements StructuredSerializer<GUpdateEndPointInput> {
  @override
  final Iterable<Type> types = const [
    GUpdateEndPointInput,
    _$GUpdateEndPointInput
  ];
  @override
  final String wireName = 'GUpdateEndPointInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateEndPointInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'deviceToken',
      serializers.serialize(object.deviceToken,
          specifiedType: const FullType(String)),
      'service',
      serializers.serialize(object.service,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUpdateEndPointInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateEndPointInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deviceToken':
          result.deviceToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'service':
          result.service = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLogoutInputSerializer implements StructuredSerializer<GLogoutInput> {
  @override
  final Iterable<Type> types = const [GLogoutInput, _$GLogoutInput];
  @override
  final String wireName = 'GLogoutInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLogoutInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'deviceToken',
      serializers.serialize(object.deviceToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLogoutInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLogoutInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deviceToken':
          result.deviceToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeviceInfoSerializer implements StructuredSerializer<GDeviceInfo> {
  @override
  final Iterable<Type> types = const [GDeviceInfo, _$GDeviceInfo];
  @override
  final String wireName = 'GDeviceInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeviceInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'deviceId',
      serializers.serialize(object.deviceId,
          specifiedType: const FullType(String)),
      'androidVersion',
      serializers.serialize(object.androidVersion,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeviceInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeviceInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deviceId':
          result.deviceId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'androidVersion':
          result.androidVersion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateTicketInputSerializer
    implements StructuredSerializer<GcreateTicketInput> {
  @override
  final Iterable<Type> types = const [GcreateTicketInput, _$GcreateTicketInput];
  @override
  final String wireName = 'GcreateTicketInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateTicketInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.key;
    if (value != null) {
      result
        ..add('key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GcreateTicketInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateTicketInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'key':
          result.key.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GticketReplyInputSerializer
    implements StructuredSerializer<GticketReplyInput> {
  @override
  final Iterable<Type> types = const [GticketReplyInput, _$GticketReplyInput];
  @override
  final String wireName = 'GticketReplyInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GticketReplyInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.key;
    if (value != null) {
      result
        ..add('key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.ticketId;
    if (value != null) {
      result
        ..add('ticketId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GticketReplyInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GticketReplyInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'key':
          result.key.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'ticketId':
          result.ticketId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GsuggestedUsersByTopicsSerializer
    implements StructuredSerializer<GsuggestedUsersByTopics> {
  @override
  final Iterable<Type> types = const [
    GsuggestedUsersByTopics,
    _$GsuggestedUsersByTopics
  ];
  @override
  final String wireName = 'GsuggestedUsersByTopics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsuggestedUsersByTopics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.topic;
    if (value != null) {
      result
        ..add('topic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GsuggestedUsersByTopics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsuggestedUsersByTopicsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'topic':
          result.topic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GoperatingSystemDataSerializer
    implements StructuredSerializer<GoperatingSystemData> {
  @override
  final Iterable<Type> types = const [
    GoperatingSystemData,
    _$GoperatingSystemData
  ];
  @override
  final String wireName = 'GoperatingSystemData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GoperatingSystemData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.operatingSystem;
    if (value != null) {
      result
        ..add('operatingSystem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.operatingSystemVersion;
    if (value != null) {
      result
        ..add('operatingSystemVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GoperatingSystemData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoperatingSystemDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'operatingSystem':
          result.operatingSystem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'operatingSystemVersion':
          result.operatingSystemVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GdeviceInfoDataSerializer
    implements StructuredSerializer<GdeviceInfoData> {
  @override
  final Iterable<Type> types = const [GdeviceInfoData, _$GdeviceInfoData];
  @override
  final String wireName = 'GdeviceInfoData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdeviceInfoData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.modelName;
    if (value != null) {
      result
        ..add('modelName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.manufacturer;
    if (value != null) {
      result
        ..add('manufacturer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceName;
    if (value != null) {
      result
        ..add('deviceName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceUniqueId;
    if (value != null) {
      result
        ..add('deviceUniqueId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imeiNumber;
    if (value != null) {
      result
        ..add('imeiNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GdeviceInfoData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeviceInfoDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'modelName':
          result.modelName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'manufacturer':
          result.manufacturer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceName':
          result.deviceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceUniqueId':
          result.deviceUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imeiNumber':
          result.imeiNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GVisibilitySerializer implements PrimitiveSerializer<GVisibility> {
  @override
  final Iterable<Type> types = const <Type>[GVisibility];
  @override
  final String wireName = 'GVisibility';

  @override
  Object serialize(Serializers serializers, GVisibility object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GVisibility deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GVisibility.valueOf(serialized as String);
}

class _$GSelectedSubTopicSerializer
    implements StructuredSerializer<GSelectedSubTopic> {
  @override
  final Iterable<Type> types = const [GSelectedSubTopic, _$GSelectedSubTopic];
  @override
  final String wireName = 'GSelectedSubTopic';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSelectedSubTopic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.topicId;
    if (value != null) {
      result
        ..add('topicId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSelectedSubTopic deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSelectedSubTopicBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'topicId':
          result.topicId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSelectedParticipatesSerializer
    implements StructuredSerializer<GSelectedParticipates> {
  @override
  final Iterable<Type> types = const [
    GSelectedParticipates,
    _$GSelectedParticipates
  ];
  @override
  final String wireName = 'GSelectedParticipates';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSelectedParticipates object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSelectedParticipates deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSelectedParticipatesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddPostSerializer implements StructuredSerializer<GAddPost> {
  @override
  final Iterable<Type> types = const [GAddPost, _$GAddPost];
  @override
  final String wireName = 'GAddPost';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postType;
    if (value != null) {
      result
        ..add('postType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioByteId;
    if (value != null) {
      result
        ..add('audioByteId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audioBytePreviewStartTime;
    if (value != null) {
      result
        ..add('audioBytePreviewStartTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioBytePreviewEndTime;
    if (value != null) {
      result
        ..add('audioBytePreviewEndTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioDuration;
    if (value != null) {
      result
        ..add('audioDuration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.visibility;
    if (value != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.postUsertype;
    if (value != null) {
      result
        ..add('postUsertype')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.selectedTopics;
    if (value != null) {
      result
        ..add('selectedTopics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GSelectedSubTopic)])));
    }
    value = object.participants;
    if (value != null) {
      result
        ..add('participants')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GSelectedParticipates)])));
    }
    return result;
  }

  @override
  GAddPost deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postType':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioByteId':
          result.audioByteId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audioBytePreviewStartTime':
          result.audioBytePreviewStartTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioBytePreviewEndTime':
          result.audioBytePreviewEndTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioDuration':
          result.audioDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startTime':
          result.startTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'endTime':
          result.endTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'postUsertype':
          result.postUsertype = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'selectedTopics':
          result.selectedTopics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GSelectedSubTopic)
              ]))! as BuiltList<Object?>);
          break;
        case 'participants':
          result.participants.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GSelectedParticipates)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchDataSerializer implements StructuredSerializer<GSearchData> {
  @override
  final Iterable<Type> types = const [GSearchData, _$GSearchData];
  @override
  final String wireName = 'GSearchData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSearchData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.searchString;
    if (value != null) {
      result
        ..add('searchString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.postType;
    if (value != null) {
      result
        ..add('postType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSearched;
    if (value != null) {
      result
        ..add('isSearched')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GSearchData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchString':
          result.searchString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'postType':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isSearched':
          result.isSearched = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddGuidelineSerializer implements StructuredSerializer<GAddGuideline> {
  @override
  final Iterable<Type> types = const [GAddGuideline, _$GAddGuideline];
  @override
  final String wireName = 'GAddGuideline';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddGuideline object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAddGuideline deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddGuidelineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveGuidelineSerializer
    implements StructuredSerializer<GRemoveGuideline> {
  @override
  final Iterable<Type> types = const [GRemoveGuideline, _$GRemoveGuideline];
  @override
  final String wireName = 'GRemoveGuideline';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRemoveGuideline object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guidelineId;
    if (value != null) {
      result
        ..add('guidelineId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRemoveGuideline deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveGuidelineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'guidelineId':
          result.guidelineId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSendPostInviteSerializer
    implements StructuredSerializer<GSendPostInvite> {
  @override
  final Iterable<Type> types = const [GSendPostInvite, _$GSendPostInvite];
  @override
  final String wireName = 'GSendPostInvite';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSendPostInvite object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inviteeUserId;
    if (value != null) {
      result
        ..add('inviteeUserId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.invitationFrom;
    if (value != null) {
      result
        ..add('invitationFrom')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.postType;
    if (value != null) {
      result
        ..add('postType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GSendPostInvite deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendPostInviteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inviteeUserId':
          result.inviteeUserId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'invitationFrom':
          result.invitationFrom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'postType':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GsendPostInviteToMultipleUsersSerializer
    implements StructuredSerializer<GsendPostInviteToMultipleUsers> {
  @override
  final Iterable<Type> types = const [
    GsendPostInviteToMultipleUsers,
    _$GsendPostInviteToMultipleUsers
  ];
  @override
  final String wireName = 'GsendPostInviteToMultipleUsers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsendPostInviteToMultipleUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inviteeUserId;
    if (value != null) {
      result
        ..add('inviteeUserId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.invitationFrom;
    if (value != null) {
      result
        ..add('invitationFrom')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.postType;
    if (value != null) {
      result
        ..add('postType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GsendPostInviteToMultipleUsers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsendPostInviteToMultipleUsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inviteeUserId':
          result.inviteeUserId.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'invitationFrom':
          result.invitationFrom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'postType':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostV1Serializer implements StructuredSerializer<GCreatePostV1> {
  @override
  final Iterable<Type> types = const [GCreatePostV1, _$GCreatePostV1];
  @override
  final String wireName = 'GCreatePostV1';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePostV1 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'postType',
      serializers.serialize(object.postType,
          specifiedType: const FullType(int)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
      'audioByteId',
      serializers.serialize(object.audioByteId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postUsertype;
    if (value != null) {
      result
        ..add('postUsertype')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioBytePreviewStartTime;
    if (value != null) {
      result
        ..add('audioBytePreviewStartTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioBytePreviewEndTime;
    if (value != null) {
      result
        ..add('audioBytePreviewEndTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioDuration;
    if (value != null) {
      result
        ..add('audioDuration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.selectedTopics;
    if (value != null) {
      result
        ..add('selectedTopics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediaType;
    if (value != null) {
      result
        ..add('mediaType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.repod;
    if (value != null) {
      result
        ..add('repod')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDraft;
    if (value != null) {
      result
        ..add('isDraft')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.insertables;
    if (value != null) {
      result
        ..add('insertables')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
    }
    value = object.parentPostId;
    if (value != null) {
      result
        ..add('parentPostId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parallelizationUrl;
    if (value != null) {
      result
        ..add('parallelizationUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.draftPostId;
    if (value != null) {
      result
        ..add('draftPostId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bgMusicId;
    if (value != null) {
      result
        ..add('bgMusicId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pitchId;
    if (value != null) {
      result
        ..add('pitchId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hashTags;
    if (value != null) {
      result
        ..add('hashTags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GCreatePostV1 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostV1Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postType':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'postUsertype':
          result.postUsertype = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioByteId':
          result.audioByteId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'audioBytePreviewStartTime':
          result.audioBytePreviewStartTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioBytePreviewEndTime':
          result.audioBytePreviewEndTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioDuration':
          result.audioDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startTime':
          result.startTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'endTime':
          result.endTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'selectedTopics':
          result.selectedTopics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'media':
          result.media = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mediaType':
          result.mediaType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'repod':
          result.repod = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isDraft':
          result.isDraft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'insertables':
          result.insertables.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
        case 'parentPostId':
          result.parentPostId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parallelizationUrl':
          result.parallelizationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'draftPostId':
          result.draftPostId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bgMusicId':
          result.bgMusicId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pitchId':
          result.pitchId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hashTags':
          result.hashTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostV2Serializer implements StructuredSerializer<GCreatePostV2> {
  @override
  final Iterable<Type> types = const [GCreatePostV2, _$GCreatePostV2];
  @override
  final String wireName = 'GCreatePostV2';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePostV2 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'postType',
      serializers.serialize(object.postType,
          specifiedType: const FullType(int)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
      'audioByteId',
      serializers.serialize(object.audioByteId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postUsertype;
    if (value != null) {
      result
        ..add('postUsertype')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioBytePreviewStartTime;
    if (value != null) {
      result
        ..add('audioBytePreviewStartTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioBytePreviewEndTime;
    if (value != null) {
      result
        ..add('audioBytePreviewEndTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioDuration;
    if (value != null) {
      result
        ..add('audioDuration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.selectedTopics;
    if (value != null) {
      result
        ..add('selectedTopics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediaType;
    if (value != null) {
      result
        ..add('mediaType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.repod;
    if (value != null) {
      result
        ..add('repod')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDraft;
    if (value != null) {
      result
        ..add('isDraft')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.insertables;
    if (value != null) {
      result
        ..add('insertables')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.parentPostId;
    if (value != null) {
      result
        ..add('parentPostId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parallelizationUrl;
    if (value != null) {
      result
        ..add('parallelizationUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.draftPostId;
    if (value != null) {
      result
        ..add('draftPostId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bgMusicId;
    if (value != null) {
      result
        ..add('bgMusicId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pitchId;
    if (value != null) {
      result
        ..add('pitchId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hashTags;
    if (value != null) {
      result
        ..add('hashTags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GCreatePostV2 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostV2Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postType':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'postUsertype':
          result.postUsertype = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioByteId':
          result.audioByteId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'audioBytePreviewStartTime':
          result.audioBytePreviewStartTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioBytePreviewEndTime':
          result.audioBytePreviewEndTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioDuration':
          result.audioDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startTime':
          result.startTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'endTime':
          result.endTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'selectedTopics':
          result.selectedTopics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'media':
          result.media = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mediaType':
          result.mediaType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'repod':
          result.repod = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isDraft':
          result.isDraft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'insertables':
          result.insertables.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'parentPostId':
          result.parentPostId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parallelizationUrl':
          result.parallelizationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'draftPostId':
          result.draftPostId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bgMusicId':
          result.bgMusicId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pitchId':
          result.pitchId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hashTags':
          result.hashTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePostV1Serializer implements StructuredSerializer<GUpdatePostV1> {
  @override
  final Iterable<Type> types = const [GUpdatePostV1, _$GUpdatePostV1];
  @override
  final String wireName = 'GUpdatePostV1';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdatePostV1 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postType;
    if (value != null) {
      result
        ..add('postType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visibility;
    if (value != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.postUsertype;
    if (value != null) {
      result
        ..add('postUsertype')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioByteId;
    if (value != null) {
      result
        ..add('audioByteId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audioBytePreviewStartTime;
    if (value != null) {
      result
        ..add('audioBytePreviewStartTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioBytePreviewEndTime;
    if (value != null) {
      result
        ..add('audioBytePreviewEndTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.audioDuration;
    if (value != null) {
      result
        ..add('audioDuration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.selectedTopics;
    if (value != null) {
      result
        ..add('selectedTopics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediaType;
    if (value != null) {
      result
        ..add('mediaType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.repod;
    if (value != null) {
      result
        ..add('repod')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDraft;
    if (value != null) {
      result
        ..add('isDraft')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.insertables;
    if (value != null) {
      result
        ..add('insertables')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
    }
    value = object.parentPostId;
    if (value != null) {
      result
        ..add('parentPostId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parallelizationUrl;
    if (value != null) {
      result
        ..add('parallelizationUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bgMusicId;
    if (value != null) {
      result
        ..add('bgMusicId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pitchId;
    if (value != null) {
      result
        ..add('pitchId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hashTags;
    if (value != null) {
      result
        ..add('hashTags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GUpdatePostV1 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostV1Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postType':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'postUsertype':
          result.postUsertype = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioByteId':
          result.audioByteId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audioBytePreviewStartTime':
          result.audioBytePreviewStartTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioBytePreviewEndTime':
          result.audioBytePreviewEndTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'audioDuration':
          result.audioDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startTime':
          result.startTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'endTime':
          result.endTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'selectedTopics':
          result.selectedTopics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'media':
          result.media = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mediaType':
          result.mediaType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'repod':
          result.repod = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isDraft':
          result.isDraft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'insertables':
          result.insertables.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
        case 'parentPostId':
          result.parentPostId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parallelizationUrl':
          result.parallelizationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bgMusicId':
          result.bgMusicId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pitchId':
          result.pitchId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hashTags':
          result.hashTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetGuidelineSerializer implements StructuredSerializer<GGetGuideline> {
  @override
  final Iterable<Type> types = const [GGetGuideline, _$GGetGuideline];
  @override
  final String wireName = 'GGetGuideline';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetGuideline object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetGuideline deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetGuidelineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserPostsSerializer implements StructuredSerializer<GGetUserPosts> {
  @override
  final Iterable<Type> types = const [GGetUserPosts, _$GGetUserPosts];
  @override
  final String wireName = 'GGetUserPosts';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetUserPosts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.filterType;
    if (value != null) {
      result
        ..add('filterType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGetUserPosts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserPostsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filterType':
          result.filterType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchJampodSerializer implements StructuredSerializer<GLaunchJampod> {
  @override
  final Iterable<Type> types = const [GLaunchJampod, _$GLaunchJampod];
  @override
  final String wireName = 'GLaunchJampod';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLaunchJampod object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'voicepodId',
      serializers.serialize(object.voicepodId,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.postUsertype;
    if (value != null) {
      result
        ..add('postUsertype')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.inviteUserIds;
    if (value != null) {
      result
        ..add('inviteUserIds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.selectAll;
    if (value != null) {
      result
        ..add('selectAll')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GLaunchJampod deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchJampodBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'voicepodId':
          result.voicepodId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'postUsertype':
          result.postUsertype = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startTime':
          result.startTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'endTime':
          result.endTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'inviteUserIds':
          result.inviteUserIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'selectAll':
          result.selectAll = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRSVPSerializer implements StructuredSerializer<GRSVP> {
  @override
  final Iterable<Type> types = const [GRSVP, _$GRSVP];
  @override
  final String wireName = 'GRSVP';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRSVP object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.visibility;
    if (value != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GRSVP deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRSVPBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GrepodInputSerializer implements StructuredSerializer<GrepodInput> {
  @override
  final Iterable<Type> types = const [GrepodInput, _$GrepodInput];
  @override
  final String wireName = 'GrepodInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrepodInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.voice_pod_id;
    if (value != null) {
      result
        ..add('voice_pod_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isRepod;
    if (value != null) {
      result
        ..add('isRepod')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GrepodInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrepodInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'voice_pod_id':
          result.voice_pod_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isRepod':
          result.isRepod = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateWeightsSerializer
    implements StructuredSerializer<GUpdateWeights> {
  @override
  final Iterable<Type> types = const [GUpdateWeights, _$GUpdateWeights];
  @override
  final String wireName = 'GUpdateWeights';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateWeights object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'weight',
      serializers.serialize(object.weight, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GUpdateWeights deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateWeightsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignModeratorSerializer
    implements StructuredSerializer<GAssignModerator> {
  @override
  final Iterable<Type> types = const [GAssignModerator, _$GAssignModerator];
  @override
  final String wireName = 'GAssignModerator';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAssignModerator object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'assignModeratorId',
      serializers.serialize(object.assignModeratorId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAssignModerator deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignModeratorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'assignModeratorId':
          result.assignModeratorId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GsendPostReplyInputSerializer
    implements StructuredSerializer<GsendPostReplyInput> {
  @override
  final Iterable<Type> types = const [
    GsendPostReplyInput,
    _$GsendPostReplyInput
  ];
  @override
  final String wireName = 'GsendPostReplyInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsendPostReplyInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audioByteId;
    if (value != null) {
      result
        ..add('audioByteId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.replyLevel;
    if (value != null) {
      result
        ..add('replyLevel')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.parentReplyId;
    if (value != null) {
      result
        ..add('parentReplyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GsendPostReplyInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsendPostReplyInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audioByteId':
          result.audioByteId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyLevel':
          result.replyLevel = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'parentReplyId':
          result.parentReplyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GacceptRejectInputSerializer
    implements StructuredSerializer<GacceptRejectInput> {
  @override
  final Iterable<Type> types = const [GacceptRejectInput, _$GacceptRejectInput];
  @override
  final String wireName = 'GacceptRejectInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GacceptRejectInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GacceptRejectInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GacceptRejectInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUpdateTrendingHashtagsInputSerializer
    implements StructuredSerializer<GCreateUpdateTrendingHashtagsInput> {
  @override
  final Iterable<Type> types = const [
    GCreateUpdateTrendingHashtagsInput,
    _$GCreateUpdateTrendingHashtagsInput
  ];
  @override
  final String wireName = 'GCreateUpdateTrendingHashtagsInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateUpdateTrendingHashtagsInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
      'listOfHashtags',
      serializers.serialize(object.listOfHashtags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GCreateUpdateTrendingHashtagsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUpdateTrendingHashtagsInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'listOfHashtags':
          result.listOfHashtags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendMessageSerializer implements StructuredSerializer<GSendMessage> {
  @override
  final Iterable<Type> types = const [GSendMessage, _$GSendMessage];
  @override
  final String wireName = 'GSendMessage';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSendMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'toUserId',
      serializers.serialize(object.toUserId,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.conversationId;
    if (value != null) {
      result
        ..add('conversationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GMessageMediaInput)])));
    }
    value = object.messageType;
    if (value != null) {
      result
        ..add('messageType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GSendMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'conversationId':
          result.conversationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'toUserId':
          result.toUserId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMessageMediaInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'messageType':
          result.messageType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMessageMediaInputSerializer
    implements StructuredSerializer<GMessageMediaInput> {
  @override
  final Iterable<Type> types = const [GMessageMediaInput, _$GMessageMediaInput];
  @override
  final String wireName = 'GMessageMediaInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessageMediaInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GMessageMediaInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessageMediaInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'media':
          result.media = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddServiceSerializer implements StructuredSerializer<GAddService> {
  @override
  final Iterable<Type> types = const [GAddService, _$GAddService];
  @override
  final String wireName = 'GAddService';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddService object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'serviceType',
      serializers.serialize(object.serviceType,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.servicePicId;
    if (value != null) {
      result
        ..add('servicePicId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minMembers;
    if (value != null) {
      result
        ..add('minMembers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxMembers;
    if (value != null) {
      result
        ..add('maxMembers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minPrice;
    if (value != null) {
      result
        ..add('minPrice')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxPrice;
    if (value != null) {
      result
        ..add('maxPrice')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.draft;
    if (value != null) {
      result
        ..add('draft')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GAddService deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddServiceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'servicePicId':
          result.servicePicId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'serviceType':
          result.serviceType = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'minMembers':
          result.minMembers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maxMembers':
          result.maxMembers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minPrice':
          result.minPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maxPrice':
          result.maxPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'draft':
          result.draft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetNotificationsInputSerializer
    implements StructuredSerializer<GGetNotificationsInput> {
  @override
  final Iterable<Type> types = const [
    GGetNotificationsInput,
    _$GGetNotificationsInput
  ];
  @override
  final String wireName = 'GGetNotificationsInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetNotificationsInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'notificationCategory',
      serializers.serialize(object.notificationCategory,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGetNotificationsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetNotificationsInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'notificationCategory':
          result.notificationCategory = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsSeenInputSerializer
    implements StructuredSerializer<GNotificationsSeenInput> {
  @override
  final Iterable<Type> types = const [
    GNotificationsSeenInput,
    _$GNotificationsSeenInput
  ];
  @override
  final String wireName = 'GNotificationsSeenInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationsSeenInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'notificationIds',
      serializers.serialize(object.notificationIds,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(String)])),
    ];

    return result;
  }

  @override
  GNotificationsSeenInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationsSeenInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'notificationIds':
          result.notificationIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserNotificationSettingsInputSerializer
    implements StructuredSerializer<GUpdateUserNotificationSettingsInput> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserNotificationSettingsInput,
    _$GUpdateUserNotificationSettingsInput
  ];
  @override
  final String wireName = 'GUpdateUserNotificationSettingsInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserNotificationSettingsInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.allNotifications;
    if (value != null) {
      result
        ..add('allNotifications')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.lockScreenNotifications;
    if (value != null) {
      result
        ..add('lockScreenNotifications')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.floatingNotification;
    if (value != null) {
      result
        ..add('floatingNotification')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showNewFollower;
    if (value != null) {
      result
        ..add('showNewFollower')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showVoicePodComments;
    if (value != null) {
      result
        ..add('showVoicePodComments')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showFollowingActivity;
    if (value != null) {
      result
        ..add('showFollowingActivity')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showJampodSessions;
    if (value != null) {
      result
        ..add('showJampodSessions')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUpdateUserNotificationSettingsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserNotificationSettingsInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'allNotifications':
          result.allNotifications = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'lockScreenNotifications':
          result.lockScreenNotifications = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'floatingNotification':
          result.floatingNotification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showNewFollower':
          result.showNewFollower = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showVoicePodComments':
          result.showVoicePodComments = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showFollowingActivity':
          result.showFollowingActivity = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showJampodSessions':
          result.showJampodSessions = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GaddEffectSerializer implements StructuredSerializer<GaddEffect> {
  @override
  final Iterable<Type> types = const [GaddEffect, _$GaddEffect];
  @override
  final String wireName = 'GaddEffect';

  @override
  Iterable<Object?> serialize(Serializers serializers, GaddEffect object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audio;
    if (value != null) {
      result
        ..add('audio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GaddEffect deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GaddEffectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audio':
          result.audio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetInvitesPerDayPerUserInputSerializer
    implements StructuredSerializer<GGetInvitesPerDayPerUserInput> {
  @override
  final Iterable<Type> types = const [
    GGetInvitesPerDayPerUserInput,
    _$GGetInvitesPerDayPerUserInput
  ];
  @override
  final String wireName = 'GGetInvitesPerDayPerUserInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetInvitesPerDayPerUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.searchByUsername;
    if (value != null) {
      result
        ..add('searchByUsername')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.searchByStartDate;
    if (value != null) {
      result
        ..add('searchByStartDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.searchByEndDate;
    if (value != null) {
      result
        ..add('searchByEndDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSuccessfulInvite;
    if (value != null) {
      result
        ..add('isSuccessfulInvite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetInvitesPerDayPerUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetInvitesPerDayPerUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchByUsername':
          result.searchByUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'searchByStartDate':
          result.searchByStartDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'searchByEndDate':
          result.searchByEndDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isSuccessfulInvite':
          result.isSuccessfulInvite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCheckPhoneNumberInBulkUsersInputSerializer
    implements StructuredSerializer<GCheckPhoneNumberInBulkUsersInput> {
  @override
  final Iterable<Type> types = const [
    GCheckPhoneNumberInBulkUsersInput,
    _$GCheckPhoneNumberInBulkUsersInput
  ];
  @override
  final String wireName = 'GCheckPhoneNumberInBulkUsersInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckPhoneNumberInBulkUsersInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.usersInviteBulkDocumentId;
    if (value != null) {
      result
        ..add('usersInviteBulkDocumentId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCheckPhoneNumberInBulkUsersInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckPhoneNumberInBulkUsersInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'usersInviteBulkDocumentId':
          result.usersInviteBulkDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GInviteUserInputObjectSerializer
    implements StructuredSerializer<GInviteUserInputObject> {
  @override
  final Iterable<Type> types = const [
    GInviteUserInputObject,
    _$GInviteUserInputObject
  ];
  @override
  final String wireName = 'GInviteUserInputObject';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInviteUserInputObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GInviteUserInputObject deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInviteUserInputObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GInviteUserInputSerializer
    implements StructuredSerializer<GInviteUserInput> {
  @override
  final Iterable<Type> types = const [GInviteUserInput, _$GInviteUserInput];
  @override
  final String wireName = 'GInviteUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GInviteUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(GInviteUserInputObject)),
    ];

    return result;
  }

  @override
  GInviteUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInviteUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GInviteUserInputObject))!
              as GInviteUserInputObject);
          break;
      }
    }

    return result.build();
  }
}

class _$GGenderChosenByInviteeInputSerializer
    implements StructuredSerializer<GGenderChosenByInviteeInput> {
  @override
  final Iterable<Type> types = const [
    GGenderChosenByInviteeInput,
    _$GGenderChosenByInviteeInput
  ];
  @override
  final String wireName = 'GGenderChosenByInviteeInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGenderChosenByInviteeInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'usersInviteDocumentId',
      serializers.serialize(object.usersInviteDocumentId,
          specifiedType: const FullType(String)),
      'genderChosen',
      serializers.serialize(object.genderChosen,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGenderChosenByInviteeInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGenderChosenByInviteeInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'usersInviteDocumentId':
          result.usersInviteDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'genderChosen':
          result.genderChosen = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAcceptRejectRequestInputSerializer
    implements StructuredSerializer<GAcceptRejectRequestInput> {
  @override
  final Iterable<Type> types = const [
    GAcceptRejectRequestInput,
    _$GAcceptRejectRequestInput
  ];
  @override
  final String wireName = 'GAcceptRejectRequestInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAcceptRejectRequestInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.usersInviteDocumentId;
    if (value != null) {
      result
        ..add('usersInviteDocumentId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.acceptedOrRejectedStatus;
    if (value != null) {
      result
        ..add('acceptedOrRejectedStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAcceptRejectRequestInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAcceptRejectRequestInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'usersInviteDocumentId':
          result.usersInviteDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'acceptedOrRejectedStatus':
          result.acceptedOrRejectedStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddInviteLinkInputObjectSerializer
    implements StructuredSerializer<GAddInviteLinkInputObject> {
  @override
  final Iterable<Type> types = const [
    GAddInviteLinkInputObject,
    _$GAddInviteLinkInputObject
  ];
  @override
  final String wireName = 'GAddInviteLinkInputObject';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddInviteLinkInputObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'usersInviteDocumentId',
      serializers.serialize(object.usersInviteDocumentId,
          specifiedType: const FullType(String)),
      'inviteLink',
      serializers.serialize(object.inviteLink,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inviter;
    if (value != null) {
      result
        ..add('inviter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAddInviteLinkInputObject deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddInviteLinkInputObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'usersInviteDocumentId':
          result.usersInviteDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'inviteLink':
          result.inviteLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inviter':
          result.inviter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddInviteLinkInputSerializer
    implements StructuredSerializer<GAddInviteLinkInput> {
  @override
  final Iterable<Type> types = const [
    GAddInviteLinkInput,
    _$GAddInviteLinkInput
  ];
  @override
  final String wireName = 'GAddInviteLinkInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddInviteLinkInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(GAddInviteLinkInputObject)),
    ];

    return result;
  }

  @override
  GAddInviteLinkInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddInviteLinkInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAddInviteLinkInputObject))!
              as GAddInviteLinkInputObject);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendNotificationToInviterInputSerializer
    implements StructuredSerializer<GSendNotificationToInviterInput> {
  @override
  final Iterable<Type> types = const [
    GSendNotificationToInviterInput,
    _$GSendNotificationToInviterInput
  ];
  @override
  final String wireName = 'GSendNotificationToInviterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendNotificationToInviterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'toUserUsername',
      serializers.serialize(object.toUserUsername,
          specifiedType: const FullType(String)),
      'usersInviteDocumentId',
      serializers.serialize(object.usersInviteDocumentId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSendNotificationToInviterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendNotificationToInviterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'toUserUsername':
          result.toUserUsername = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'usersInviteDocumentId':
          result.usersInviteDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GInvitesArrayInputSerializer
    implements StructuredSerializer<GInvitesArrayInput> {
  @override
  final Iterable<Type> types = const [GInvitesArrayInput, _$GInvitesArrayInput];
  @override
  final String wireName = 'GInvitesArrayInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInvitesArrayInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'numberOfInvitesToAdd',
      serializers.serialize(object.numberOfInvitesToAdd,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GInvitesArrayInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInvitesArrayInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numberOfInvitesToAdd':
          result.numberOfInvitesToAdd = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddInvitesToSpecificUsersInputSerializer
    implements StructuredSerializer<GAddInvitesToSpecificUsersInput> {
  @override
  final Iterable<Type> types = const [
    GAddInvitesToSpecificUsersInput,
    _$GAddInvitesToSpecificUsersInput
  ];
  @override
  final String wireName = 'GAddInvitesToSpecificUsersInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddInvitesToSpecificUsersInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'invitesArray',
      serializers.serialize(object.invitesArray,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(GInvitesArrayInput)])),
    ];

    return result;
  }

  @override
  GAddInvitesToSpecificUsersInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddInvitesToSpecificUsersInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'invitesArray':
          result.invitesArray.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GInvitesArrayInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddUserToWaitlistTwoInputSerializer
    implements StructuredSerializer<GAddUserToWaitlistTwoInput> {
  @override
  final Iterable<Type> types = const [
    GAddUserToWaitlistTwoInput,
    _$GAddUserToWaitlistTwoInput
  ];
  @override
  final String wireName = 'GAddUserToWaitlistTwoInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddUserToWaitlistTwoInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAddUserToWaitlistTwoInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddUserToWaitlistTwoInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GInviteAndNoNumberMismatchTwoInputSerializer
    implements StructuredSerializer<GInviteAndNoNumberMismatchTwoInput> {
  @override
  final Iterable<Type> types = const [
    GInviteAndNoNumberMismatchTwoInput,
    _$GInviteAndNoNumberMismatchTwoInput
  ];
  @override
  final String wireName = 'GInviteAndNoNumberMismatchTwoInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInviteAndNoNumberMismatchTwoInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GInviteAndNoNumberMismatchTwoInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInviteAndNoNumberMismatchTwoInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestForBulkInvitesLinkInputSerializer
    implements StructuredSerializer<GRequestForBulkInvitesLinkInput> {
  @override
  final Iterable<Type> types = const [
    GRequestForBulkInvitesLinkInput,
    _$GRequestForBulkInvitesLinkInput
  ];
  @override
  final String wireName = 'GRequestForBulkInvitesLinkInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRequestForBulkInvitesLinkInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'numberOfInvitesRequested',
      serializers.serialize(object.numberOfInvitesRequested,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GRequestForBulkInvitesLinkInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRequestForBulkInvitesLinkInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'numberOfInvitesRequested':
          result.numberOfInvitesRequested = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddInviteLinkBulkInputObjectSerializer
    implements StructuredSerializer<GAddInviteLinkBulkInputObject> {
  @override
  final Iterable<Type> types = const [
    GAddInviteLinkBulkInputObject,
    _$GAddInviteLinkBulkInputObject
  ];
  @override
  final String wireName = 'GAddInviteLinkBulkInputObject';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddInviteLinkBulkInputObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'usersInviteBulkDocumentId',
      serializers.serialize(object.usersInviteBulkDocumentId,
          specifiedType: const FullType(String)),
      'inviteLinkBulk',
      serializers.serialize(object.inviteLinkBulk,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userCount;
    if (value != null) {
      result
        ..add('userCount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inviter;
    if (value != null) {
      result
        ..add('inviter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inviterId;
    if (value != null) {
      result
        ..add('inviterId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isBulkInviteLink;
    if (value != null) {
      result
        ..add('isBulkInviteLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAddInviteLinkBulkInputObject deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddInviteLinkBulkInputObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'usersInviteBulkDocumentId':
          result.usersInviteBulkDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'inviteLinkBulk':
          result.inviteLinkBulk = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userCount':
          result.userCount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inviter':
          result.inviter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inviterId':
          result.inviterId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isBulkInviteLink':
          result.isBulkInviteLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddInviteLinkBulkInputSerializer
    implements StructuredSerializer<GAddInviteLinkBulkInput> {
  @override
  final Iterable<Type> types = const [
    GAddInviteLinkBulkInput,
    _$GAddInviteLinkBulkInput
  ];
  @override
  final String wireName = 'GAddInviteLinkBulkInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddInviteLinkBulkInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(GAddInviteLinkBulkInputObject)),
    ];

    return result;
  }

  @override
  GAddInviteLinkBulkInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddInviteLinkBulkInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAddInviteLinkBulkInputObject))!
              as GAddInviteLinkBulkInputObject);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddBulkInviteUserInputSerializer
    implements StructuredSerializer<GAddBulkInviteUserInput> {
  @override
  final Iterable<Type> types = const [
    GAddBulkInviteUserInput,
    _$GAddBulkInviteUserInput
  ];
  @override
  final String wireName = 'GAddBulkInviteUserInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddBulkInviteUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firstname',
      serializers.serialize(object.firstname,
          specifiedType: const FullType(String)),
      'lastname',
      serializers.serialize(object.lastname,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'usersInviteBulkDocumentId',
      serializers.serialize(object.usersInviteBulkDocumentId,
          specifiedType: const FullType(String)),
      'inviterId',
      serializers.serialize(object.inviterId,
          specifiedType: const FullType(String)),
      'timeUserCheckedPrivacyPolicy',
      serializers.serialize(object.timeUserCheckedPrivacyPolicy,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.languages;
    if (value != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.theme;
    if (value != null) {
      result
        ..add('theme')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAvatar;
    if (value != null) {
      result
        ..add('isAvatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isVerified;
    if (value != null) {
      result
        ..add('isVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reasons;
    if (value != null) {
      result
        ..add('reasons')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.subId;
    if (value != null) {
      result
        ..add('subId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.topics;
    if (value != null) {
      result
        ..add('topics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GTopicAndSubTopicIds)])));
    }
    value = object.showGender;
    if (value != null) {
      result
        ..add('showGender')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.verificationStatus;
    if (value != null) {
      result
        ..add('verificationStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pronouns;
    if (value != null) {
      result
        ..add('pronouns')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(GPronouns)])));
    }
    return result;
  }

  @override
  GAddBulkInviteUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddBulkInviteUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'theme':
          result.theme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAvatar':
          result.isAvatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isVerified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'reasons':
          result.reasons.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'subId':
          result.subId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'topics':
          result.topics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GTopicAndSubTopicIds)
              ]))! as BuiltList<Object?>);
          break;
        case 'showGender':
          result.showGender = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'verificationStatus':
          result.verificationStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pronouns':
          result.pronouns.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(GPronouns)]))!
              as BuiltList<Object?>);
          break;
        case 'usersInviteBulkDocumentId':
          result.usersInviteBulkDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'inviterId':
          result.inviterId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'timeUserCheckedPrivacyPolicy':
          result.timeUserCheckedPrivacyPolicy = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAcceptBulkInviteUserInputSerializer
    implements StructuredSerializer<GAcceptBulkInviteUserInput> {
  @override
  final Iterable<Type> types = const [
    GAcceptBulkInviteUserInput,
    _$GAcceptBulkInviteUserInput
  ];
  @override
  final String wireName = 'GAcceptBulkInviteUserInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAcceptBulkInviteUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'bulkUsersDocumentId',
      serializers.serialize(object.bulkUsersDocumentId,
          specifiedType: const FullType(String)),
      'usersInviteBulkDocumentId',
      serializers.serialize(object.usersInviteBulkDocumentId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAcceptBulkInviteUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAcceptBulkInviteUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bulkUsersDocumentId':
          result.bulkUsersDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'usersInviteBulkDocumentId':
          result.usersInviteBulkDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRejectBulkInviteUserInputSerializer
    implements StructuredSerializer<GRejectBulkInviteUserInput> {
  @override
  final Iterable<Type> types = const [
    GRejectBulkInviteUserInput,
    _$GRejectBulkInviteUserInput
  ];
  @override
  final String wireName = 'GRejectBulkInviteUserInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRejectBulkInviteUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'bulkUsersDocumentId',
      serializers.serialize(object.bulkUsersDocumentId,
          specifiedType: const FullType(String)),
      'usersInviteBulkDocumentId',
      serializers.serialize(object.usersInviteBulkDocumentId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRejectBulkInviteUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRejectBulkInviteUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bulkUsersDocumentId':
          result.bulkUsersDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'usersInviteBulkDocumentId':
          result.usersInviteBulkDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddBulkInviteUserToSpecificInviteInputSerializer
    implements StructuredSerializer<GAddBulkInviteUserToSpecificInviteInput> {
  @override
  final Iterable<Type> types = const [
    GAddBulkInviteUserToSpecificInviteInput,
    _$GAddBulkInviteUserToSpecificInviteInput
  ];
  @override
  final String wireName = 'GAddBulkInviteUserToSpecificInviteInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddBulkInviteUserToSpecificInviteInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'usersInviteDocumentId',
      serializers.serialize(object.usersInviteDocumentId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAddBulkInviteUserToSpecificInviteInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddBulkInviteUserToSpecificInviteInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'usersInviteDocumentId':
          result.usersInviteDocumentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserContactInputSerializer
    implements StructuredSerializer<GUserContactInput> {
  @override
  final Iterable<Type> types = const [GUserContactInput, _$GUserContactInput];
  @override
  final String wireName = 'GUserContactInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserContactInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserContactInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserContactInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddContactsOfUserV2InputSerializer
    implements StructuredSerializer<GAddContactsOfUserV2Input> {
  @override
  final Iterable<Type> types = const [
    GAddContactsOfUserV2Input,
    _$GAddContactsOfUserV2Input
  ];
  @override
  final String wireName = 'GAddContactsOfUserV2Input';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddContactsOfUserV2Input object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'currentSublistNumber',
      serializers.serialize(object.currentSublistNumber,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GUserContactInput)])));
    }
    return result;
  }

  @override
  GAddContactsOfUserV2Input deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddContactsOfUserV2InputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserContactInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'currentSublistNumber':
          result.currentSublistNumber = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddContactsOfUserV3InputSerializer
    implements StructuredSerializer<GAddContactsOfUserV3Input> {
  @override
  final Iterable<Type> types = const [
    GAddContactsOfUserV3Input,
    _$GAddContactsOfUserV3Input
  ];
  @override
  final String wireName = 'GAddContactsOfUserV3Input';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddContactsOfUserV3Input object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GUserContactInput)])));
    }
    return result;
  }

  @override
  GAddContactsOfUserV3Input deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddContactsOfUserV3InputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserContactInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchWhileSyncingContactsInputSerializer
    implements StructuredSerializer<GSearchWhileSyncingContactsInput> {
  @override
  final Iterable<Type> types = const [
    GSearchWhileSyncingContactsInput,
    _$GSearchWhileSyncingContactsInput
  ];
  @override
  final String wireName = 'GSearchWhileSyncingContactsInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchWhileSyncingContactsInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.searchString;
    if (value != null) {
      result
        ..add('searchString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GUserContactInput)])));
    }
    return result;
  }

  @override
  GSearchWhileSyncingContactsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchWhileSyncingContactsInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchString':
          result.searchString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserContactInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateDefaultPodrollInputSerializer
    implements StructuredSerializer<GCreateDefaultPodrollInput> {
  @override
  final Iterable<Type> types = const [
    GCreateDefaultPodrollInput,
    _$GCreateDefaultPodrollInput
  ];
  @override
  final String wireName = 'GCreateDefaultPodrollInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateDefaultPodrollInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'coverImageUrl',
      serializers.serialize(object.coverImageUrl,
          specifiedType: const FullType(String)),
      'coverImageUrlXs',
      serializers.serialize(object.coverImageUrlXs,
          specifiedType: const FullType(String)),
      'coverImageUrlS',
      serializers.serialize(object.coverImageUrlS,
          specifiedType: const FullType(String)),
      'coverImageUrlM',
      serializers.serialize(object.coverImageUrlM,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.coverImageUrlDark;
    if (value != null) {
      result
        ..add('coverImageUrlDark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImageUrlXsDark;
    if (value != null) {
      result
        ..add('coverImageUrlXsDark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImageUrlSDark;
    if (value != null) {
      result
        ..add('coverImageUrlSDark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImageUrlMDark;
    if (value != null) {
      result
        ..add('coverImageUrlMDark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateDefaultPodrollInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateDefaultPodrollInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'coverImageUrl':
          result.coverImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrlXs':
          result.coverImageUrlXs = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrlS':
          result.coverImageUrlS = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrlM':
          result.coverImageUrlM = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrlDark':
          result.coverImageUrlDark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImageUrlXsDark':
          result.coverImageUrlXsDark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImageUrlSDark':
          result.coverImageUrlSDark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImageUrlMDark':
          result.coverImageUrlMDark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePodrollInputSerializer
    implements StructuredSerializer<GCreatePodrollInput> {
  @override
  final Iterable<Type> types = const [
    GCreatePodrollInput,
    _$GCreatePodrollInput
  ];
  @override
  final String wireName = 'GCreatePodrollInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePodrollInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'isPrivate',
      serializers.serialize(object.isPrivate,
          specifiedType: const FullType(bool)),
      'coverImageUrl',
      serializers.serialize(object.coverImageUrl,
          specifiedType: const FullType(String)),
      'coverImageUrlXs',
      serializers.serialize(object.coverImageUrlXs,
          specifiedType: const FullType(String)),
      'coverImageUrlS',
      serializers.serialize(object.coverImageUrlS,
          specifiedType: const FullType(String)),
      'coverImageUrlM',
      serializers.serialize(object.coverImageUrlM,
          specifiedType: const FullType(String)),
      'isImageUploaded',
      serializers.serialize(object.isImageUploaded,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.coverImageUrlDark;
    if (value != null) {
      result
        ..add('coverImageUrlDark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImageUrlXsDark;
    if (value != null) {
      result
        ..add('coverImageUrlXsDark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImageUrlSDark;
    if (value != null) {
      result
        ..add('coverImageUrlSDark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImageUrlMDark;
    if (value != null) {
      result
        ..add('coverImageUrlMDark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreatePodrollInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePodrollInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isPrivate':
          result.isPrivate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'coverImageUrl':
          result.coverImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrlXs':
          result.coverImageUrlXs = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrlS':
          result.coverImageUrlS = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrlM':
          result.coverImageUrlM = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrlDark':
          result.coverImageUrlDark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImageUrlXsDark':
          result.coverImageUrlXsDark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImageUrlSDark':
          result.coverImageUrlSDark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImageUrlMDark':
          result.coverImageUrlMDark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isImageUploaded':
          result.isImageUploaded = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateAPodrollInputSerializer
    implements StructuredSerializer<GUpdateAPodrollInput> {
  @override
  final Iterable<Type> types = const [
    GUpdateAPodrollInput,
    _$GUpdateAPodrollInput
  ];
  @override
  final String wireName = 'GUpdateAPodrollInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateAPodrollInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'podrollId',
      serializers.serialize(object.podrollId,
          specifiedType: const FullType(String)),
      'isPrivate',
      serializers.serialize(object.isPrivate,
          specifiedType: const FullType(bool)),
      'isImageUploaded',
      serializers.serialize(object.isImageUploaded,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImageUrl;
    if (value != null) {
      result
        ..add('coverImageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImageUrlDark;
    if (value != null) {
      result
        ..add('coverImageUrlDark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateAPodrollInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateAPodrollInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'podrollId':
          result.podrollId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isPrivate':
          result.isPrivate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'coverImageUrl':
          result.coverImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImageUrlDark':
          result.coverImageUrlDark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isImageUploaded':
          result.isImageUploaded = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GAqlSortInput extends GAqlSortInput {
  @override
  final String property;
  @override
  final GAqlSortOrder? order;
  @override
  final String? sortOn;

  factory _$GAqlSortInput([void Function(GAqlSortInputBuilder)? updates]) =>
      (new GAqlSortInputBuilder()..update(updates))._build();

  _$GAqlSortInput._({required this.property, this.order, this.sortOn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        property, r'GAqlSortInput', 'property');
  }

  @override
  GAqlSortInput rebuild(void Function(GAqlSortInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAqlSortInputBuilder toBuilder() => new GAqlSortInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAqlSortInput &&
        property == other.property &&
        order == other.order &&
        sortOn == other.sortOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, property.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, sortOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAqlSortInput')
          ..add('property', property)
          ..add('order', order)
          ..add('sortOn', sortOn))
        .toString();
  }
}

class GAqlSortInputBuilder
    implements Builder<GAqlSortInput, GAqlSortInputBuilder> {
  _$GAqlSortInput? _$v;

  String? _property;
  String? get property => _$this._property;
  set property(String? property) => _$this._property = property;

  GAqlSortOrder? _order;
  GAqlSortOrder? get order => _$this._order;
  set order(GAqlSortOrder? order) => _$this._order = order;

  String? _sortOn;
  String? get sortOn => _$this._sortOn;
  set sortOn(String? sortOn) => _$this._sortOn = sortOn;

  GAqlSortInputBuilder();

  GAqlSortInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _property = $v.property;
      _order = $v.order;
      _sortOn = $v.sortOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAqlSortInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAqlSortInput;
  }

  @override
  void update(void Function(GAqlSortInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAqlSortInput build() => _build();

  _$GAqlSortInput _build() {
    final _$result = _$v ??
        new _$GAqlSortInput._(
            property: BuiltValueNullFieldError.checkNotNull(
                property, r'GAqlSortInput', 'property'),
            order: order,
            sortOn: sortOn);
    replace(_$result);
    return _$result;
  }
}

class _$GAqlLimitInput extends GAqlLimitInput {
  @override
  final String count;
  @override
  final String? skip;

  factory _$GAqlLimitInput([void Function(GAqlLimitInputBuilder)? updates]) =>
      (new GAqlLimitInputBuilder()..update(updates))._build();

  _$GAqlLimitInput._({required this.count, this.skip}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, r'GAqlLimitInput', 'count');
  }

  @override
  GAqlLimitInput rebuild(void Function(GAqlLimitInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAqlLimitInputBuilder toBuilder() =>
      new GAqlLimitInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAqlLimitInput &&
        count == other.count &&
        skip == other.skip;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAqlLimitInput')
          ..add('count', count)
          ..add('skip', skip))
        .toString();
  }
}

class GAqlLimitInputBuilder
    implements Builder<GAqlLimitInput, GAqlLimitInputBuilder> {
  _$GAqlLimitInput? _$v;

  String? _count;
  String? get count => _$this._count;
  set count(String? count) => _$this._count = count;

  String? _skip;
  String? get skip => _$this._skip;
  set skip(String? skip) => _$this._skip = skip;

  GAqlLimitInputBuilder();

  GAqlLimitInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _skip = $v.skip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAqlLimitInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAqlLimitInput;
  }

  @override
  void update(void Function(GAqlLimitInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAqlLimitInput build() => _build();

  _$GAqlLimitInput _build() {
    final _$result = _$v ??
        new _$GAqlLimitInput._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GAqlLimitInput', 'count'),
            skip: skip);
    replace(_$result);
    return _$result;
  }
}

class _$GAqlTraverseOptionsInput extends GAqlTraverseOptionsInput {
  @override
  final bool? bfs;
  @override
  final String? uniqueVertices;
  @override
  final String? uniqueEdges;

  factory _$GAqlTraverseOptionsInput(
          [void Function(GAqlTraverseOptionsInputBuilder)? updates]) =>
      (new GAqlTraverseOptionsInputBuilder()..update(updates))._build();

  _$GAqlTraverseOptionsInput._(
      {this.bfs, this.uniqueVertices, this.uniqueEdges})
      : super._();

  @override
  GAqlTraverseOptionsInput rebuild(
          void Function(GAqlTraverseOptionsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAqlTraverseOptionsInputBuilder toBuilder() =>
      new GAqlTraverseOptionsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAqlTraverseOptionsInput &&
        bfs == other.bfs &&
        uniqueVertices == other.uniqueVertices &&
        uniqueEdges == other.uniqueEdges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bfs.hashCode);
    _$hash = $jc(_$hash, uniqueVertices.hashCode);
    _$hash = $jc(_$hash, uniqueEdges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAqlTraverseOptionsInput')
          ..add('bfs', bfs)
          ..add('uniqueVertices', uniqueVertices)
          ..add('uniqueEdges', uniqueEdges))
        .toString();
  }
}

class GAqlTraverseOptionsInputBuilder
    implements
        Builder<GAqlTraverseOptionsInput, GAqlTraverseOptionsInputBuilder> {
  _$GAqlTraverseOptionsInput? _$v;

  bool? _bfs;
  bool? get bfs => _$this._bfs;
  set bfs(bool? bfs) => _$this._bfs = bfs;

  String? _uniqueVertices;
  String? get uniqueVertices => _$this._uniqueVertices;
  set uniqueVertices(String? uniqueVertices) =>
      _$this._uniqueVertices = uniqueVertices;

  String? _uniqueEdges;
  String? get uniqueEdges => _$this._uniqueEdges;
  set uniqueEdges(String? uniqueEdges) => _$this._uniqueEdges = uniqueEdges;

  GAqlTraverseOptionsInputBuilder();

  GAqlTraverseOptionsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bfs = $v.bfs;
      _uniqueVertices = $v.uniqueVertices;
      _uniqueEdges = $v.uniqueEdges;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAqlTraverseOptionsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAqlTraverseOptionsInput;
  }

  @override
  void update(void Function(GAqlTraverseOptionsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAqlTraverseOptionsInput build() => _build();

  _$GAqlTraverseOptionsInput _build() {
    final _$result = _$v ??
        new _$GAqlTraverseOptionsInput._(
            bfs: bfs, uniqueVertices: uniqueVertices, uniqueEdges: uniqueEdges);
    replace(_$result);
    return _$result;
  }
}

class _$GTopicAndSubTopicIds extends GTopicAndSubTopicIds {
  @override
  final String? topicId;
  @override
  final BuiltList<String?>? subTopicIds;

  factory _$GTopicAndSubTopicIds(
          [void Function(GTopicAndSubTopicIdsBuilder)? updates]) =>
      (new GTopicAndSubTopicIdsBuilder()..update(updates))._build();

  _$GTopicAndSubTopicIds._({this.topicId, this.subTopicIds}) : super._();

  @override
  GTopicAndSubTopicIds rebuild(
          void Function(GTopicAndSubTopicIdsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTopicAndSubTopicIdsBuilder toBuilder() =>
      new GTopicAndSubTopicIdsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTopicAndSubTopicIds &&
        topicId == other.topicId &&
        subTopicIds == other.subTopicIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topicId.hashCode);
    _$hash = $jc(_$hash, subTopicIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GTopicAndSubTopicIds')
          ..add('topicId', topicId)
          ..add('subTopicIds', subTopicIds))
        .toString();
  }
}

class GTopicAndSubTopicIdsBuilder
    implements Builder<GTopicAndSubTopicIds, GTopicAndSubTopicIdsBuilder> {
  _$GTopicAndSubTopicIds? _$v;

  String? _topicId;
  String? get topicId => _$this._topicId;
  set topicId(String? topicId) => _$this._topicId = topicId;

  ListBuilder<String?>? _subTopicIds;
  ListBuilder<String?> get subTopicIds =>
      _$this._subTopicIds ??= new ListBuilder<String?>();
  set subTopicIds(ListBuilder<String?>? subTopicIds) =>
      _$this._subTopicIds = subTopicIds;

  GTopicAndSubTopicIdsBuilder();

  GTopicAndSubTopicIdsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topicId = $v.topicId;
      _subTopicIds = $v.subTopicIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTopicAndSubTopicIds other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTopicAndSubTopicIds;
  }

  @override
  void update(void Function(GTopicAndSubTopicIdsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTopicAndSubTopicIds build() => _build();

  _$GTopicAndSubTopicIds _build() {
    _$GTopicAndSubTopicIds _$result;
    try {
      _$result = _$v ??
          new _$GTopicAndSubTopicIds._(
              topicId: topicId, subTopicIds: _subTopicIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subTopicIds';
        _subTopicIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTopicAndSubTopicIds', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPronouns extends GPronouns {
  @override
  final String? name;
  @override
  final int? id;
  @override
  final bool? isMain;

  factory _$GPronouns([void Function(GPronounsBuilder)? updates]) =>
      (new GPronounsBuilder()..update(updates))._build();

  _$GPronouns._({this.name, this.id, this.isMain}) : super._();

  @override
  GPronouns rebuild(void Function(GPronounsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPronounsBuilder toBuilder() => new GPronounsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPronouns &&
        name == other.name &&
        id == other.id &&
        isMain == other.isMain;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isMain.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPronouns')
          ..add('name', name)
          ..add('id', id)
          ..add('isMain', isMain))
        .toString();
  }
}

class GPronounsBuilder implements Builder<GPronouns, GPronounsBuilder> {
  _$GPronouns? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isMain;
  bool? get isMain => _$this._isMain;
  set isMain(bool? isMain) => _$this._isMain = isMain;

  GPronounsBuilder();

  GPronounsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _isMain = $v.isMain;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPronouns other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPronouns;
  }

  @override
  void update(void Function(GPronounsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPronouns build() => _build();

  _$GPronouns _build() {
    final _$result =
        _$v ?? new _$GPronouns._(name: name, id: id, isMain: isMain);
    replace(_$result);
    return _$result;
  }
}

class _$GAddUser extends GAddUser {
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String username;
  @override
  final BuiltList<String?>? languages;
  @override
  final String? phoneNumber;
  @override
  final String? avatar;
  @override
  final String? theme;
  @override
  final String? isAvatar;
  @override
  final String? gender;
  @override
  final bool? isVerified;
  @override
  final BuiltList<String?>? reasons;
  @override
  final String? subId;
  @override
  final BuiltList<GTopicAndSubTopicIds?>? topics;
  @override
  final bool? showGender;
  @override
  final int? verificationStatus;
  @override
  final BuiltList<GPronouns?>? pronouns;
  @override
  final String timeUserCheckedPrivacyPolicy;

  factory _$GAddUser([void Function(GAddUserBuilder)? updates]) =>
      (new GAddUserBuilder()..update(updates))._build();

  _$GAddUser._(
      {required this.firstname,
      required this.lastname,
      required this.username,
      this.languages,
      this.phoneNumber,
      this.avatar,
      this.theme,
      this.isAvatar,
      this.gender,
      this.isVerified,
      this.reasons,
      this.subId,
      this.topics,
      this.showGender,
      this.verificationStatus,
      this.pronouns,
      required this.timeUserCheckedPrivacyPolicy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(firstname, r'GAddUser', 'firstname');
    BuiltValueNullFieldError.checkNotNull(lastname, r'GAddUser', 'lastname');
    BuiltValueNullFieldError.checkNotNull(username, r'GAddUser', 'username');
    BuiltValueNullFieldError.checkNotNull(timeUserCheckedPrivacyPolicy,
        r'GAddUser', 'timeUserCheckedPrivacyPolicy');
  }

  @override
  GAddUser rebuild(void Function(GAddUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddUserBuilder toBuilder() => new GAddUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddUser &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        username == other.username &&
        languages == other.languages &&
        phoneNumber == other.phoneNumber &&
        avatar == other.avatar &&
        theme == other.theme &&
        isAvatar == other.isAvatar &&
        gender == other.gender &&
        isVerified == other.isVerified &&
        reasons == other.reasons &&
        subId == other.subId &&
        topics == other.topics &&
        showGender == other.showGender &&
        verificationStatus == other.verificationStatus &&
        pronouns == other.pronouns &&
        timeUserCheckedPrivacyPolicy == other.timeUserCheckedPrivacyPolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, isAvatar.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, isVerified.hashCode);
    _$hash = $jc(_$hash, reasons.hashCode);
    _$hash = $jc(_$hash, subId.hashCode);
    _$hash = $jc(_$hash, topics.hashCode);
    _$hash = $jc(_$hash, showGender.hashCode);
    _$hash = $jc(_$hash, verificationStatus.hashCode);
    _$hash = $jc(_$hash, pronouns.hashCode);
    _$hash = $jc(_$hash, timeUserCheckedPrivacyPolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddUser')
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('username', username)
          ..add('languages', languages)
          ..add('phoneNumber', phoneNumber)
          ..add('avatar', avatar)
          ..add('theme', theme)
          ..add('isAvatar', isAvatar)
          ..add('gender', gender)
          ..add('isVerified', isVerified)
          ..add('reasons', reasons)
          ..add('subId', subId)
          ..add('topics', topics)
          ..add('showGender', showGender)
          ..add('verificationStatus', verificationStatus)
          ..add('pronouns', pronouns)
          ..add('timeUserCheckedPrivacyPolicy', timeUserCheckedPrivacyPolicy))
        .toString();
  }
}

class GAddUserBuilder implements Builder<GAddUser, GAddUserBuilder> {
  _$GAddUser? _$v;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  ListBuilder<String?>? _languages;
  ListBuilder<String?> get languages =>
      _$this._languages ??= new ListBuilder<String?>();
  set languages(ListBuilder<String?>? languages) =>
      _$this._languages = languages;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _theme;
  String? get theme => _$this._theme;
  set theme(String? theme) => _$this._theme = theme;

  String? _isAvatar;
  String? get isAvatar => _$this._isAvatar;
  set isAvatar(String? isAvatar) => _$this._isAvatar = isAvatar;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  ListBuilder<String?>? _reasons;
  ListBuilder<String?> get reasons =>
      _$this._reasons ??= new ListBuilder<String?>();
  set reasons(ListBuilder<String?>? reasons) => _$this._reasons = reasons;

  String? _subId;
  String? get subId => _$this._subId;
  set subId(String? subId) => _$this._subId = subId;

  ListBuilder<GTopicAndSubTopicIds?>? _topics;
  ListBuilder<GTopicAndSubTopicIds?> get topics =>
      _$this._topics ??= new ListBuilder<GTopicAndSubTopicIds?>();
  set topics(ListBuilder<GTopicAndSubTopicIds?>? topics) =>
      _$this._topics = topics;

  bool? _showGender;
  bool? get showGender => _$this._showGender;
  set showGender(bool? showGender) => _$this._showGender = showGender;

  int? _verificationStatus;
  int? get verificationStatus => _$this._verificationStatus;
  set verificationStatus(int? verificationStatus) =>
      _$this._verificationStatus = verificationStatus;

  ListBuilder<GPronouns?>? _pronouns;
  ListBuilder<GPronouns?> get pronouns =>
      _$this._pronouns ??= new ListBuilder<GPronouns?>();
  set pronouns(ListBuilder<GPronouns?>? pronouns) =>
      _$this._pronouns = pronouns;

  String? _timeUserCheckedPrivacyPolicy;
  String? get timeUserCheckedPrivacyPolicy =>
      _$this._timeUserCheckedPrivacyPolicy;
  set timeUserCheckedPrivacyPolicy(String? timeUserCheckedPrivacyPolicy) =>
      _$this._timeUserCheckedPrivacyPolicy = timeUserCheckedPrivacyPolicy;

  GAddUserBuilder();

  GAddUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _username = $v.username;
      _languages = $v.languages?.toBuilder();
      _phoneNumber = $v.phoneNumber;
      _avatar = $v.avatar;
      _theme = $v.theme;
      _isAvatar = $v.isAvatar;
      _gender = $v.gender;
      _isVerified = $v.isVerified;
      _reasons = $v.reasons?.toBuilder();
      _subId = $v.subId;
      _topics = $v.topics?.toBuilder();
      _showGender = $v.showGender;
      _verificationStatus = $v.verificationStatus;
      _pronouns = $v.pronouns?.toBuilder();
      _timeUserCheckedPrivacyPolicy = $v.timeUserCheckedPrivacyPolicy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddUser;
  }

  @override
  void update(void Function(GAddUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddUser build() => _build();

  _$GAddUser _build() {
    _$GAddUser _$result;
    try {
      _$result = _$v ??
          new _$GAddUser._(
              firstname: BuiltValueNullFieldError.checkNotNull(
                  firstname, r'GAddUser', 'firstname'),
              lastname: BuiltValueNullFieldError.checkNotNull(
                  lastname, r'GAddUser', 'lastname'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'GAddUser', 'username'),
              languages: _languages?.build(),
              phoneNumber: phoneNumber,
              avatar: avatar,
              theme: theme,
              isAvatar: isAvatar,
              gender: gender,
              isVerified: isVerified,
              reasons: _reasons?.build(),
              subId: subId,
              topics: _topics?.build(),
              showGender: showGender,
              verificationStatus: verificationStatus,
              pronouns: _pronouns?.build(),
              timeUserCheckedPrivacyPolicy:
                  BuiltValueNullFieldError.checkNotNull(
                      timeUserCheckedPrivacyPolicy,
                      r'GAddUser',
                      'timeUserCheckedPrivacyPolicy'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'reasons';
        _reasons?.build();

        _$failedField = 'topics';
        _topics?.build();

        _$failedField = 'pronouns';
        _pronouns?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserAvatar extends GUserAvatar {
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String username;

  factory _$GUserAvatar([void Function(GUserAvatarBuilder)? updates]) =>
      (new GUserAvatarBuilder()..update(updates))._build();

  _$GUserAvatar._(
      {required this.firstname, required this.lastname, required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstname, r'GUserAvatar', 'firstname');
    BuiltValueNullFieldError.checkNotNull(lastname, r'GUserAvatar', 'lastname');
    BuiltValueNullFieldError.checkNotNull(username, r'GUserAvatar', 'username');
  }

  @override
  GUserAvatar rebuild(void Function(GUserAvatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserAvatarBuilder toBuilder() => new GUserAvatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserAvatar &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserAvatar')
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('username', username))
        .toString();
  }
}

class GUserAvatarBuilder implements Builder<GUserAvatar, GUserAvatarBuilder> {
  _$GUserAvatar? _$v;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GUserAvatarBuilder();

  GUserAvatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserAvatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserAvatar;
  }

  @override
  void update(void Function(GUserAvatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserAvatar build() => _build();

  _$GUserAvatar _build() {
    final _$result = _$v ??
        new _$GUserAvatar._(
            firstname: BuiltValueNullFieldError.checkNotNull(
                firstname, r'GUserAvatar', 'firstname'),
            lastname: BuiltValueNullFieldError.checkNotNull(
                lastname, r'GUserAvatar', 'lastname'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GUserAvatar', 'username'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUser extends GUpdateUser {
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? username;
  @override
  final String? bio;
  @override
  final String? avatar;
  @override
  final String? theme;
  @override
  final String? isAvatar;
  @override
  final String? frames;
  @override
  final bool? isFrameLive;
  @override
  final String? twitterHandle;
  @override
  final String? instagramHandle;

  factory _$GUpdateUser([void Function(GUpdateUserBuilder)? updates]) =>
      (new GUpdateUserBuilder()..update(updates))._build();

  _$GUpdateUser._(
      {this.firstname,
      this.lastname,
      this.username,
      this.bio,
      this.avatar,
      this.theme,
      this.isAvatar,
      this.frames,
      this.isFrameLive,
      this.twitterHandle,
      this.instagramHandle})
      : super._();

  @override
  GUpdateUser rebuild(void Function(GUpdateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserBuilder toBuilder() => new GUpdateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUser &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        username == other.username &&
        bio == other.bio &&
        avatar == other.avatar &&
        theme == other.theme &&
        isAvatar == other.isAvatar &&
        frames == other.frames &&
        isFrameLive == other.isFrameLive &&
        twitterHandle == other.twitterHandle &&
        instagramHandle == other.instagramHandle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, isAvatar.hashCode);
    _$hash = $jc(_$hash, frames.hashCode);
    _$hash = $jc(_$hash, isFrameLive.hashCode);
    _$hash = $jc(_$hash, twitterHandle.hashCode);
    _$hash = $jc(_$hash, instagramHandle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUser')
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('username', username)
          ..add('bio', bio)
          ..add('avatar', avatar)
          ..add('theme', theme)
          ..add('isAvatar', isAvatar)
          ..add('frames', frames)
          ..add('isFrameLive', isFrameLive)
          ..add('twitterHandle', twitterHandle)
          ..add('instagramHandle', instagramHandle))
        .toString();
  }
}

class GUpdateUserBuilder implements Builder<GUpdateUser, GUpdateUserBuilder> {
  _$GUpdateUser? _$v;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _theme;
  String? get theme => _$this._theme;
  set theme(String? theme) => _$this._theme = theme;

  String? _isAvatar;
  String? get isAvatar => _$this._isAvatar;
  set isAvatar(String? isAvatar) => _$this._isAvatar = isAvatar;

  String? _frames;
  String? get frames => _$this._frames;
  set frames(String? frames) => _$this._frames = frames;

  bool? _isFrameLive;
  bool? get isFrameLive => _$this._isFrameLive;
  set isFrameLive(bool? isFrameLive) => _$this._isFrameLive = isFrameLive;

  String? _twitterHandle;
  String? get twitterHandle => _$this._twitterHandle;
  set twitterHandle(String? twitterHandle) =>
      _$this._twitterHandle = twitterHandle;

  String? _instagramHandle;
  String? get instagramHandle => _$this._instagramHandle;
  set instagramHandle(String? instagramHandle) =>
      _$this._instagramHandle = instagramHandle;

  GUpdateUserBuilder();

  GUpdateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _username = $v.username;
      _bio = $v.bio;
      _avatar = $v.avatar;
      _theme = $v.theme;
      _isAvatar = $v.isAvatar;
      _frames = $v.frames;
      _isFrameLive = $v.isFrameLive;
      _twitterHandle = $v.twitterHandle;
      _instagramHandle = $v.instagramHandle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUser;
  }

  @override
  void update(void Function(GUpdateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUser build() => _build();

  _$GUpdateUser _build() {
    final _$result = _$v ??
        new _$GUpdateUser._(
            firstname: firstname,
            lastname: lastname,
            username: username,
            bio: bio,
            avatar: avatar,
            theme: theme,
            isAvatar: isAvatar,
            frames: frames,
            isFrameLive: isFrameLive,
            twitterHandle: twitterHandle,
            instagramHandle: instagramHandle);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserFriendsInput extends GGetUserFriendsInput {
  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final bool? womenOnly;
  @override
  final String? searchString;

  factory _$GGetUserFriendsInput(
          [void Function(GGetUserFriendsInputBuilder)? updates]) =>
      (new GGetUserFriendsInputBuilder()..update(updates))._build();

  _$GGetUserFriendsInput._(
      {this.offset, this.limit, this.womenOnly, this.searchString})
      : super._();

  @override
  GGetUserFriendsInput rebuild(
          void Function(GGetUserFriendsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserFriendsInputBuilder toBuilder() =>
      new GGetUserFriendsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserFriendsInput &&
        offset == other.offset &&
        limit == other.limit &&
        womenOnly == other.womenOnly &&
        searchString == other.searchString;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, womenOnly.hashCode);
    _$hash = $jc(_$hash, searchString.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUserFriendsInput')
          ..add('offset', offset)
          ..add('limit', limit)
          ..add('womenOnly', womenOnly)
          ..add('searchString', searchString))
        .toString();
  }
}

class GGetUserFriendsInputBuilder
    implements Builder<GGetUserFriendsInput, GGetUserFriendsInputBuilder> {
  _$GGetUserFriendsInput? _$v;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  bool? _womenOnly;
  bool? get womenOnly => _$this._womenOnly;
  set womenOnly(bool? womenOnly) => _$this._womenOnly = womenOnly;

  String? _searchString;
  String? get searchString => _$this._searchString;
  set searchString(String? searchString) => _$this._searchString = searchString;

  GGetUserFriendsInputBuilder();

  GGetUserFriendsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _limit = $v.limit;
      _womenOnly = $v.womenOnly;
      _searchString = $v.searchString;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserFriendsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserFriendsInput;
  }

  @override
  void update(void Function(GGetUserFriendsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserFriendsInput build() => _build();

  _$GGetUserFriendsInput _build() {
    final _$result = _$v ??
        new _$GGetUserFriendsInput._(
            offset: offset,
            limit: limit,
            womenOnly: womenOnly,
            searchString: searchString);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUsersToInviteInput extends GGetUsersToInviteInput {
  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final bool? womenOnly;
  @override
  final String? jampodId;
  @override
  final String? searchString;

  factory _$GGetUsersToInviteInput(
          [void Function(GGetUsersToInviteInputBuilder)? updates]) =>
      (new GGetUsersToInviteInputBuilder()..update(updates))._build();

  _$GGetUsersToInviteInput._(
      {this.offset,
      this.limit,
      this.womenOnly,
      this.jampodId,
      this.searchString})
      : super._();

  @override
  GGetUsersToInviteInput rebuild(
          void Function(GGetUsersToInviteInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUsersToInviteInputBuilder toBuilder() =>
      new GGetUsersToInviteInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUsersToInviteInput &&
        offset == other.offset &&
        limit == other.limit &&
        womenOnly == other.womenOnly &&
        jampodId == other.jampodId &&
        searchString == other.searchString;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, womenOnly.hashCode);
    _$hash = $jc(_$hash, jampodId.hashCode);
    _$hash = $jc(_$hash, searchString.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUsersToInviteInput')
          ..add('offset', offset)
          ..add('limit', limit)
          ..add('womenOnly', womenOnly)
          ..add('jampodId', jampodId)
          ..add('searchString', searchString))
        .toString();
  }
}

class GGetUsersToInviteInputBuilder
    implements Builder<GGetUsersToInviteInput, GGetUsersToInviteInputBuilder> {
  _$GGetUsersToInviteInput? _$v;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  bool? _womenOnly;
  bool? get womenOnly => _$this._womenOnly;
  set womenOnly(bool? womenOnly) => _$this._womenOnly = womenOnly;

  String? _jampodId;
  String? get jampodId => _$this._jampodId;
  set jampodId(String? jampodId) => _$this._jampodId = jampodId;

  String? _searchString;
  String? get searchString => _$this._searchString;
  set searchString(String? searchString) => _$this._searchString = searchString;

  GGetUsersToInviteInputBuilder();

  GGetUsersToInviteInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _limit = $v.limit;
      _womenOnly = $v.womenOnly;
      _jampodId = $v.jampodId;
      _searchString = $v.searchString;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUsersToInviteInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUsersToInviteInput;
  }

  @override
  void update(void Function(GGetUsersToInviteInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUsersToInviteInput build() => _build();

  _$GGetUsersToInviteInput _build() {
    final _$result = _$v ??
        new _$GGetUsersToInviteInput._(
            offset: offset,
            limit: limit,
            womenOnly: womenOnly,
            jampodId: jampodId,
            searchString: searchString);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUsersBySearchIncludesWomenInput
    extends GGetUsersBySearchIncludesWomenInput {
  @override
  final String? searchString;
  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final bool? womenOnly;

  factory _$GGetUsersBySearchIncludesWomenInput(
          [void Function(GGetUsersBySearchIncludesWomenInputBuilder)?
              updates]) =>
      (new GGetUsersBySearchIncludesWomenInputBuilder()..update(updates))
          ._build();

  _$GGetUsersBySearchIncludesWomenInput._(
      {this.searchString, this.offset, this.limit, this.womenOnly})
      : super._();

  @override
  GGetUsersBySearchIncludesWomenInput rebuild(
          void Function(GGetUsersBySearchIncludesWomenInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUsersBySearchIncludesWomenInputBuilder toBuilder() =>
      new GGetUsersBySearchIncludesWomenInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUsersBySearchIncludesWomenInput &&
        searchString == other.searchString &&
        offset == other.offset &&
        limit == other.limit &&
        womenOnly == other.womenOnly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, searchString.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, womenOnly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUsersBySearchIncludesWomenInput')
          ..add('searchString', searchString)
          ..add('offset', offset)
          ..add('limit', limit)
          ..add('womenOnly', womenOnly))
        .toString();
  }
}

class GGetUsersBySearchIncludesWomenInputBuilder
    implements
        Builder<GGetUsersBySearchIncludesWomenInput,
            GGetUsersBySearchIncludesWomenInputBuilder> {
  _$GGetUsersBySearchIncludesWomenInput? _$v;

  String? _searchString;
  String? get searchString => _$this._searchString;
  set searchString(String? searchString) => _$this._searchString = searchString;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  bool? _womenOnly;
  bool? get womenOnly => _$this._womenOnly;
  set womenOnly(bool? womenOnly) => _$this._womenOnly = womenOnly;

  GGetUsersBySearchIncludesWomenInputBuilder();

  GGetUsersBySearchIncludesWomenInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchString = $v.searchString;
      _offset = $v.offset;
      _limit = $v.limit;
      _womenOnly = $v.womenOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUsersBySearchIncludesWomenInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUsersBySearchIncludesWomenInput;
  }

  @override
  void update(
      void Function(GGetUsersBySearchIncludesWomenInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUsersBySearchIncludesWomenInput build() => _build();

  _$GGetUsersBySearchIncludesWomenInput _build() {
    final _$result = _$v ??
        new _$GGetUsersBySearchIncludesWomenInput._(
            searchString: searchString,
            offset: offset,
            limit: limit,
            womenOnly: womenOnly);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUsersBySearchInput extends GGetUsersBySearchInput {
  @override
  final String? searchString;
  @override
  final int? offset;
  @override
  final int? limit;

  factory _$GGetUsersBySearchInput(
          [void Function(GGetUsersBySearchInputBuilder)? updates]) =>
      (new GGetUsersBySearchInputBuilder()..update(updates))._build();

  _$GGetUsersBySearchInput._({this.searchString, this.offset, this.limit})
      : super._();

  @override
  GGetUsersBySearchInput rebuild(
          void Function(GGetUsersBySearchInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUsersBySearchInputBuilder toBuilder() =>
      new GGetUsersBySearchInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUsersBySearchInput &&
        searchString == other.searchString &&
        offset == other.offset &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, searchString.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUsersBySearchInput')
          ..add('searchString', searchString)
          ..add('offset', offset)
          ..add('limit', limit))
        .toString();
  }
}

class GGetUsersBySearchInputBuilder
    implements Builder<GGetUsersBySearchInput, GGetUsersBySearchInputBuilder> {
  _$GGetUsersBySearchInput? _$v;

  String? _searchString;
  String? get searchString => _$this._searchString;
  set searchString(String? searchString) => _$this._searchString = searchString;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GGetUsersBySearchInputBuilder();

  GGetUsersBySearchInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchString = $v.searchString;
      _offset = $v.offset;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUsersBySearchInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUsersBySearchInput;
  }

  @override
  void update(void Function(GGetUsersBySearchInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUsersBySearchInput build() => _build();

  _$GGetUsersBySearchInput _build() {
    final _$result = _$v ??
        new _$GGetUsersBySearchInput._(
            searchString: searchString, offset: offset, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GGetSuggestedUserWithCategory extends GGetSuggestedUserWithCategory {
  @override
  final String? topicName;
  @override
  final bool? isDefault;
  @override
  final BuiltList<String?>? defaultUser;

  factory _$GGetSuggestedUserWithCategory(
          [void Function(GGetSuggestedUserWithCategoryBuilder)? updates]) =>
      (new GGetSuggestedUserWithCategoryBuilder()..update(updates))._build();

  _$GGetSuggestedUserWithCategory._(
      {this.topicName, this.isDefault, this.defaultUser})
      : super._();

  @override
  GGetSuggestedUserWithCategory rebuild(
          void Function(GGetSuggestedUserWithCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSuggestedUserWithCategoryBuilder toBuilder() =>
      new GGetSuggestedUserWithCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSuggestedUserWithCategory &&
        topicName == other.topicName &&
        isDefault == other.isDefault &&
        defaultUser == other.defaultUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topicName.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, defaultUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetSuggestedUserWithCategory')
          ..add('topicName', topicName)
          ..add('isDefault', isDefault)
          ..add('defaultUser', defaultUser))
        .toString();
  }
}

class GGetSuggestedUserWithCategoryBuilder
    implements
        Builder<GGetSuggestedUserWithCategory,
            GGetSuggestedUserWithCategoryBuilder> {
  _$GGetSuggestedUserWithCategory? _$v;

  String? _topicName;
  String? get topicName => _$this._topicName;
  set topicName(String? topicName) => _$this._topicName = topicName;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  ListBuilder<String?>? _defaultUser;
  ListBuilder<String?> get defaultUser =>
      _$this._defaultUser ??= new ListBuilder<String?>();
  set defaultUser(ListBuilder<String?>? defaultUser) =>
      _$this._defaultUser = defaultUser;

  GGetSuggestedUserWithCategoryBuilder();

  GGetSuggestedUserWithCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topicName = $v.topicName;
      _isDefault = $v.isDefault;
      _defaultUser = $v.defaultUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSuggestedUserWithCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSuggestedUserWithCategory;
  }

  @override
  void update(void Function(GGetSuggestedUserWithCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetSuggestedUserWithCategory build() => _build();

  _$GGetSuggestedUserWithCategory _build() {
    _$GGetSuggestedUserWithCategory _$result;
    try {
      _$result = _$v ??
          new _$GGetSuggestedUserWithCategory._(
              topicName: topicName,
              isDefault: isDefault,
              defaultUser: _defaultUser?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaultUser';
        _defaultUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetSuggestedUserWithCategory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReportUserInput extends GReportUserInput {
  @override
  final String otherUserId;
  @override
  final String? message;
  @override
  final BuiltList<String?>? issueTypeIds;
  @override
  final BuiltList<String?>? evidence;
  @override
  final String? audio;

  factory _$GReportUserInput(
          [void Function(GReportUserInputBuilder)? updates]) =>
      (new GReportUserInputBuilder()..update(updates))._build();

  _$GReportUserInput._(
      {required this.otherUserId,
      this.message,
      this.issueTypeIds,
      this.evidence,
      this.audio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        otherUserId, r'GReportUserInput', 'otherUserId');
  }

  @override
  GReportUserInput rebuild(void Function(GReportUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReportUserInputBuilder toBuilder() =>
      new GReportUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReportUserInput &&
        otherUserId == other.otherUserId &&
        message == other.message &&
        issueTypeIds == other.issueTypeIds &&
        evidence == other.evidence &&
        audio == other.audio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, otherUserId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, issueTypeIds.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, audio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReportUserInput')
          ..add('otherUserId', otherUserId)
          ..add('message', message)
          ..add('issueTypeIds', issueTypeIds)
          ..add('evidence', evidence)
          ..add('audio', audio))
        .toString();
  }
}

class GReportUserInputBuilder
    implements Builder<GReportUserInput, GReportUserInputBuilder> {
  _$GReportUserInput? _$v;

  String? _otherUserId;
  String? get otherUserId => _$this._otherUserId;
  set otherUserId(String? otherUserId) => _$this._otherUserId = otherUserId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<String?>? _issueTypeIds;
  ListBuilder<String?> get issueTypeIds =>
      _$this._issueTypeIds ??= new ListBuilder<String?>();
  set issueTypeIds(ListBuilder<String?>? issueTypeIds) =>
      _$this._issueTypeIds = issueTypeIds;

  ListBuilder<String?>? _evidence;
  ListBuilder<String?> get evidence =>
      _$this._evidence ??= new ListBuilder<String?>();
  set evidence(ListBuilder<String?>? evidence) => _$this._evidence = evidence;

  String? _audio;
  String? get audio => _$this._audio;
  set audio(String? audio) => _$this._audio = audio;

  GReportUserInputBuilder();

  GReportUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _otherUserId = $v.otherUserId;
      _message = $v.message;
      _issueTypeIds = $v.issueTypeIds?.toBuilder();
      _evidence = $v.evidence?.toBuilder();
      _audio = $v.audio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReportUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReportUserInput;
  }

  @override
  void update(void Function(GReportUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReportUserInput build() => _build();

  _$GReportUserInput _build() {
    _$GReportUserInput _$result;
    try {
      _$result = _$v ??
          new _$GReportUserInput._(
              otherUserId: BuiltValueNullFieldError.checkNotNull(
                  otherUserId, r'GReportUserInput', 'otherUserId'),
              message: message,
              issueTypeIds: _issueTypeIds?.build(),
              evidence: _evidence?.build(),
              audio: audio);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'issueTypeIds';
        _issueTypeIds?.build();
        _$failedField = 'evidence';
        _evidence?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReportUserInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateEndPointInput extends GUpdateEndPointInput {
  @override
  final String deviceToken;
  @override
  final String service;

  factory _$GUpdateEndPointInput(
          [void Function(GUpdateEndPointInputBuilder)? updates]) =>
      (new GUpdateEndPointInputBuilder()..update(updates))._build();

  _$GUpdateEndPointInput._({required this.deviceToken, required this.service})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceToken, r'GUpdateEndPointInput', 'deviceToken');
    BuiltValueNullFieldError.checkNotNull(
        service, r'GUpdateEndPointInput', 'service');
  }

  @override
  GUpdateEndPointInput rebuild(
          void Function(GUpdateEndPointInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateEndPointInputBuilder toBuilder() =>
      new GUpdateEndPointInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateEndPointInput &&
        deviceToken == other.deviceToken &&
        service == other.service;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceToken.hashCode);
    _$hash = $jc(_$hash, service.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateEndPointInput')
          ..add('deviceToken', deviceToken)
          ..add('service', service))
        .toString();
  }
}

class GUpdateEndPointInputBuilder
    implements Builder<GUpdateEndPointInput, GUpdateEndPointInputBuilder> {
  _$GUpdateEndPointInput? _$v;

  String? _deviceToken;
  String? get deviceToken => _$this._deviceToken;
  set deviceToken(String? deviceToken) => _$this._deviceToken = deviceToken;

  String? _service;
  String? get service => _$this._service;
  set service(String? service) => _$this._service = service;

  GUpdateEndPointInputBuilder();

  GUpdateEndPointInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceToken = $v.deviceToken;
      _service = $v.service;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateEndPointInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateEndPointInput;
  }

  @override
  void update(void Function(GUpdateEndPointInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateEndPointInput build() => _build();

  _$GUpdateEndPointInput _build() {
    final _$result = _$v ??
        new _$GUpdateEndPointInput._(
            deviceToken: BuiltValueNullFieldError.checkNotNull(
                deviceToken, r'GUpdateEndPointInput', 'deviceToken'),
            service: BuiltValueNullFieldError.checkNotNull(
                service, r'GUpdateEndPointInput', 'service'));
    replace(_$result);
    return _$result;
  }
}

class _$GLogoutInput extends GLogoutInput {
  @override
  final String deviceToken;

  factory _$GLogoutInput([void Function(GLogoutInputBuilder)? updates]) =>
      (new GLogoutInputBuilder()..update(updates))._build();

  _$GLogoutInput._({required this.deviceToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceToken, r'GLogoutInput', 'deviceToken');
  }

  @override
  GLogoutInput rebuild(void Function(GLogoutInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLogoutInputBuilder toBuilder() => new GLogoutInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLogoutInput && deviceToken == other.deviceToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLogoutInput')
          ..add('deviceToken', deviceToken))
        .toString();
  }
}

class GLogoutInputBuilder
    implements Builder<GLogoutInput, GLogoutInputBuilder> {
  _$GLogoutInput? _$v;

  String? _deviceToken;
  String? get deviceToken => _$this._deviceToken;
  set deviceToken(String? deviceToken) => _$this._deviceToken = deviceToken;

  GLogoutInputBuilder();

  GLogoutInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceToken = $v.deviceToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLogoutInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLogoutInput;
  }

  @override
  void update(void Function(GLogoutInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLogoutInput build() => _build();

  _$GLogoutInput _build() {
    final _$result = _$v ??
        new _$GLogoutInput._(
            deviceToken: BuiltValueNullFieldError.checkNotNull(
                deviceToken, r'GLogoutInput', 'deviceToken'));
    replace(_$result);
    return _$result;
  }
}

class _$GDeviceInfo extends GDeviceInfo {
  @override
  final String deviceId;
  @override
  final String androidVersion;

  factory _$GDeviceInfo([void Function(GDeviceInfoBuilder)? updates]) =>
      (new GDeviceInfoBuilder()..update(updates))._build();

  _$GDeviceInfo._({required this.deviceId, required this.androidVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deviceId, r'GDeviceInfo', 'deviceId');
    BuiltValueNullFieldError.checkNotNull(
        androidVersion, r'GDeviceInfo', 'androidVersion');
  }

  @override
  GDeviceInfo rebuild(void Function(GDeviceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeviceInfoBuilder toBuilder() => new GDeviceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeviceInfo &&
        deviceId == other.deviceId &&
        androidVersion == other.androidVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, androidVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeviceInfo')
          ..add('deviceId', deviceId)
          ..add('androidVersion', androidVersion))
        .toString();
  }
}

class GDeviceInfoBuilder implements Builder<GDeviceInfo, GDeviceInfoBuilder> {
  _$GDeviceInfo? _$v;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  String? _androidVersion;
  String? get androidVersion => _$this._androidVersion;
  set androidVersion(String? androidVersion) =>
      _$this._androidVersion = androidVersion;

  GDeviceInfoBuilder();

  GDeviceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceId = $v.deviceId;
      _androidVersion = $v.androidVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeviceInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeviceInfo;
  }

  @override
  void update(void Function(GDeviceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeviceInfo build() => _build();

  _$GDeviceInfo _build() {
    final _$result = _$v ??
        new _$GDeviceInfo._(
            deviceId: BuiltValueNullFieldError.checkNotNull(
                deviceId, r'GDeviceInfo', 'deviceId'),
            androidVersion: BuiltValueNullFieldError.checkNotNull(
                androidVersion, r'GDeviceInfo', 'androidVersion'));
    replace(_$result);
    return _$result;
  }
}

class _$GcreateTicketInput extends GcreateTicketInput {
  @override
  final String? description;
  @override
  final BuiltList<String?>? key;
  @override
  final String? category;

  factory _$GcreateTicketInput(
          [void Function(GcreateTicketInputBuilder)? updates]) =>
      (new GcreateTicketInputBuilder()..update(updates))._build();

  _$GcreateTicketInput._({this.description, this.key, this.category})
      : super._();

  @override
  GcreateTicketInput rebuild(
          void Function(GcreateTicketInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateTicketInputBuilder toBuilder() =>
      new GcreateTicketInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateTicketInput &&
        description == other.description &&
        key == other.key &&
        category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateTicketInput')
          ..add('description', description)
          ..add('key', key)
          ..add('category', category))
        .toString();
  }
}

class GcreateTicketInputBuilder
    implements Builder<GcreateTicketInput, GcreateTicketInputBuilder> {
  _$GcreateTicketInput? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String?>? _key;
  ListBuilder<String?> get key => _$this._key ??= new ListBuilder<String?>();
  set key(ListBuilder<String?>? key) => _$this._key = key;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  GcreateTicketInputBuilder();

  GcreateTicketInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _key = $v.key?.toBuilder();
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateTicketInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateTicketInput;
  }

  @override
  void update(void Function(GcreateTicketInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateTicketInput build() => _build();

  _$GcreateTicketInput _build() {
    _$GcreateTicketInput _$result;
    try {
      _$result = _$v ??
          new _$GcreateTicketInput._(
              description: description, key: _key?.build(), category: category);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        _key?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreateTicketInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GticketReplyInput extends GticketReplyInput {
  @override
  final String? description;
  @override
  final BuiltList<String?>? key;
  @override
  final String? ticketId;

  factory _$GticketReplyInput(
          [void Function(GticketReplyInputBuilder)? updates]) =>
      (new GticketReplyInputBuilder()..update(updates))._build();

  _$GticketReplyInput._({this.description, this.key, this.ticketId})
      : super._();

  @override
  GticketReplyInput rebuild(void Function(GticketReplyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GticketReplyInputBuilder toBuilder() =>
      new GticketReplyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GticketReplyInput &&
        description == other.description &&
        key == other.key &&
        ticketId == other.ticketId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, ticketId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GticketReplyInput')
          ..add('description', description)
          ..add('key', key)
          ..add('ticketId', ticketId))
        .toString();
  }
}

class GticketReplyInputBuilder
    implements Builder<GticketReplyInput, GticketReplyInputBuilder> {
  _$GticketReplyInput? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String?>? _key;
  ListBuilder<String?> get key => _$this._key ??= new ListBuilder<String?>();
  set key(ListBuilder<String?>? key) => _$this._key = key;

  String? _ticketId;
  String? get ticketId => _$this._ticketId;
  set ticketId(String? ticketId) => _$this._ticketId = ticketId;

  GticketReplyInputBuilder();

  GticketReplyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _key = $v.key?.toBuilder();
      _ticketId = $v.ticketId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GticketReplyInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GticketReplyInput;
  }

  @override
  void update(void Function(GticketReplyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GticketReplyInput build() => _build();

  _$GticketReplyInput _build() {
    _$GticketReplyInput _$result;
    try {
      _$result = _$v ??
          new _$GticketReplyInput._(
              description: description, key: _key?.build(), ticketId: ticketId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        _key?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GticketReplyInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsuggestedUsersByTopics extends GsuggestedUsersByTopics {
  @override
  final String? topic;
  @override
  final int? order;
  @override
  final BuiltList<String?>? users;

  factory _$GsuggestedUsersByTopics(
          [void Function(GsuggestedUsersByTopicsBuilder)? updates]) =>
      (new GsuggestedUsersByTopicsBuilder()..update(updates))._build();

  _$GsuggestedUsersByTopics._({this.topic, this.order, this.users}) : super._();

  @override
  GsuggestedUsersByTopics rebuild(
          void Function(GsuggestedUsersByTopicsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsuggestedUsersByTopicsBuilder toBuilder() =>
      new GsuggestedUsersByTopicsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsuggestedUsersByTopics &&
        topic == other.topic &&
        order == other.order &&
        users == other.users;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsuggestedUsersByTopics')
          ..add('topic', topic)
          ..add('order', order)
          ..add('users', users))
        .toString();
  }
}

class GsuggestedUsersByTopicsBuilder
    implements
        Builder<GsuggestedUsersByTopics, GsuggestedUsersByTopicsBuilder> {
  _$GsuggestedUsersByTopics? _$v;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  ListBuilder<String?>? _users;
  ListBuilder<String?> get users =>
      _$this._users ??= new ListBuilder<String?>();
  set users(ListBuilder<String?>? users) => _$this._users = users;

  GsuggestedUsersByTopicsBuilder();

  GsuggestedUsersByTopicsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topic = $v.topic;
      _order = $v.order;
      _users = $v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsuggestedUsersByTopics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsuggestedUsersByTopics;
  }

  @override
  void update(void Function(GsuggestedUsersByTopicsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsuggestedUsersByTopics build() => _build();

  _$GsuggestedUsersByTopics _build() {
    _$GsuggestedUsersByTopics _$result;
    try {
      _$result = _$v ??
          new _$GsuggestedUsersByTopics._(
              topic: topic, order: order, users: _users?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsuggestedUsersByTopics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GoperatingSystemData extends GoperatingSystemData {
  @override
  final String? operatingSystem;
  @override
  final String? operatingSystemVersion;

  factory _$GoperatingSystemData(
          [void Function(GoperatingSystemDataBuilder)? updates]) =>
      (new GoperatingSystemDataBuilder()..update(updates))._build();

  _$GoperatingSystemData._({this.operatingSystem, this.operatingSystemVersion})
      : super._();

  @override
  GoperatingSystemData rebuild(
          void Function(GoperatingSystemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoperatingSystemDataBuilder toBuilder() =>
      new GoperatingSystemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoperatingSystemData &&
        operatingSystem == other.operatingSystem &&
        operatingSystemVersion == other.operatingSystemVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatingSystem.hashCode);
    _$hash = $jc(_$hash, operatingSystemVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoperatingSystemData')
          ..add('operatingSystem', operatingSystem)
          ..add('operatingSystemVersion', operatingSystemVersion))
        .toString();
  }
}

class GoperatingSystemDataBuilder
    implements Builder<GoperatingSystemData, GoperatingSystemDataBuilder> {
  _$GoperatingSystemData? _$v;

  String? _operatingSystem;
  String? get operatingSystem => _$this._operatingSystem;
  set operatingSystem(String? operatingSystem) =>
      _$this._operatingSystem = operatingSystem;

  String? _operatingSystemVersion;
  String? get operatingSystemVersion => _$this._operatingSystemVersion;
  set operatingSystemVersion(String? operatingSystemVersion) =>
      _$this._operatingSystemVersion = operatingSystemVersion;

  GoperatingSystemDataBuilder();

  GoperatingSystemDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatingSystem = $v.operatingSystem;
      _operatingSystemVersion = $v.operatingSystemVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoperatingSystemData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoperatingSystemData;
  }

  @override
  void update(void Function(GoperatingSystemDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoperatingSystemData build() => _build();

  _$GoperatingSystemData _build() {
    final _$result = _$v ??
        new _$GoperatingSystemData._(
            operatingSystem: operatingSystem,
            operatingSystemVersion: operatingSystemVersion);
    replace(_$result);
    return _$result;
  }
}

class _$GdeviceInfoData extends GdeviceInfoData {
  @override
  final String? modelName;
  @override
  final String? manufacturer;
  @override
  final String? deviceName;
  @override
  final String? deviceUniqueId;
  @override
  final String? imeiNumber;

  factory _$GdeviceInfoData([void Function(GdeviceInfoDataBuilder)? updates]) =>
      (new GdeviceInfoDataBuilder()..update(updates))._build();

  _$GdeviceInfoData._(
      {this.modelName,
      this.manufacturer,
      this.deviceName,
      this.deviceUniqueId,
      this.imeiNumber})
      : super._();

  @override
  GdeviceInfoData rebuild(void Function(GdeviceInfoDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeviceInfoDataBuilder toBuilder() =>
      new GdeviceInfoDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeviceInfoData &&
        modelName == other.modelName &&
        manufacturer == other.manufacturer &&
        deviceName == other.deviceName &&
        deviceUniqueId == other.deviceUniqueId &&
        imeiNumber == other.imeiNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, modelName.hashCode);
    _$hash = $jc(_$hash, manufacturer.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, deviceUniqueId.hashCode);
    _$hash = $jc(_$hash, imeiNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdeviceInfoData')
          ..add('modelName', modelName)
          ..add('manufacturer', manufacturer)
          ..add('deviceName', deviceName)
          ..add('deviceUniqueId', deviceUniqueId)
          ..add('imeiNumber', imeiNumber))
        .toString();
  }
}

class GdeviceInfoDataBuilder
    implements Builder<GdeviceInfoData, GdeviceInfoDataBuilder> {
  _$GdeviceInfoData? _$v;

  String? _modelName;
  String? get modelName => _$this._modelName;
  set modelName(String? modelName) => _$this._modelName = modelName;

  String? _manufacturer;
  String? get manufacturer => _$this._manufacturer;
  set manufacturer(String? manufacturer) => _$this._manufacturer = manufacturer;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _deviceUniqueId;
  String? get deviceUniqueId => _$this._deviceUniqueId;
  set deviceUniqueId(String? deviceUniqueId) =>
      _$this._deviceUniqueId = deviceUniqueId;

  String? _imeiNumber;
  String? get imeiNumber => _$this._imeiNumber;
  set imeiNumber(String? imeiNumber) => _$this._imeiNumber = imeiNumber;

  GdeviceInfoDataBuilder();

  GdeviceInfoDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _modelName = $v.modelName;
      _manufacturer = $v.manufacturer;
      _deviceName = $v.deviceName;
      _deviceUniqueId = $v.deviceUniqueId;
      _imeiNumber = $v.imeiNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeviceInfoData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeviceInfoData;
  }

  @override
  void update(void Function(GdeviceInfoDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeviceInfoData build() => _build();

  _$GdeviceInfoData _build() {
    final _$result = _$v ??
        new _$GdeviceInfoData._(
            modelName: modelName,
            manufacturer: manufacturer,
            deviceName: deviceName,
            deviceUniqueId: deviceUniqueId,
            imeiNumber: imeiNumber);
    replace(_$result);
    return _$result;
  }
}

class _$GSelectedSubTopic extends GSelectedSubTopic {
  @override
  final String? topicId;

  factory _$GSelectedSubTopic(
          [void Function(GSelectedSubTopicBuilder)? updates]) =>
      (new GSelectedSubTopicBuilder()..update(updates))._build();

  _$GSelectedSubTopic._({this.topicId}) : super._();

  @override
  GSelectedSubTopic rebuild(void Function(GSelectedSubTopicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSelectedSubTopicBuilder toBuilder() =>
      new GSelectedSubTopicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSelectedSubTopic && topicId == other.topicId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topicId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSelectedSubTopic')
          ..add('topicId', topicId))
        .toString();
  }
}

class GSelectedSubTopicBuilder
    implements Builder<GSelectedSubTopic, GSelectedSubTopicBuilder> {
  _$GSelectedSubTopic? _$v;

  String? _topicId;
  String? get topicId => _$this._topicId;
  set topicId(String? topicId) => _$this._topicId = topicId;

  GSelectedSubTopicBuilder();

  GSelectedSubTopicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topicId = $v.topicId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSelectedSubTopic other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSelectedSubTopic;
  }

  @override
  void update(void Function(GSelectedSubTopicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSelectedSubTopic build() => _build();

  _$GSelectedSubTopic _build() {
    final _$result = _$v ?? new _$GSelectedSubTopic._(topicId: topicId);
    replace(_$result);
    return _$result;
  }
}

class _$GSelectedParticipates extends GSelectedParticipates {
  @override
  final String? id;

  factory _$GSelectedParticipates(
          [void Function(GSelectedParticipatesBuilder)? updates]) =>
      (new GSelectedParticipatesBuilder()..update(updates))._build();

  _$GSelectedParticipates._({this.id}) : super._();

  @override
  GSelectedParticipates rebuild(
          void Function(GSelectedParticipatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSelectedParticipatesBuilder toBuilder() =>
      new GSelectedParticipatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSelectedParticipates && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSelectedParticipates')
          ..add('id', id))
        .toString();
  }
}

class GSelectedParticipatesBuilder
    implements Builder<GSelectedParticipates, GSelectedParticipatesBuilder> {
  _$GSelectedParticipates? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GSelectedParticipatesBuilder();

  GSelectedParticipatesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSelectedParticipates other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSelectedParticipates;
  }

  @override
  void update(void Function(GSelectedParticipatesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSelectedParticipates build() => _build();

  _$GSelectedParticipates _build() {
    final _$result = _$v ?? new _$GSelectedParticipates._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GAddPost extends GAddPost {
  @override
  final int? userId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? postType;
  @override
  final String? audioByteId;
  @override
  final int? audioBytePreviewStartTime;
  @override
  final int? audioBytePreviewEndTime;
  @override
  final int? audioDuration;
  @override
  final GDateTime? startTime;
  @override
  final GDateTime? endTime;
  @override
  final int? visibility;
  @override
  final int? postUsertype;
  @override
  final BuiltList<GSelectedSubTopic?>? selectedTopics;
  @override
  final BuiltList<GSelectedParticipates?>? participants;

  factory _$GAddPost([void Function(GAddPostBuilder)? updates]) =>
      (new GAddPostBuilder()..update(updates))._build();

  _$GAddPost._(
      {this.userId,
      this.title,
      this.description,
      this.postType,
      this.audioByteId,
      this.audioBytePreviewStartTime,
      this.audioBytePreviewEndTime,
      this.audioDuration,
      this.startTime,
      this.endTime,
      this.visibility,
      this.postUsertype,
      this.selectedTopics,
      this.participants})
      : super._();

  @override
  GAddPost rebuild(void Function(GAddPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddPostBuilder toBuilder() => new GAddPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddPost &&
        userId == other.userId &&
        title == other.title &&
        description == other.description &&
        postType == other.postType &&
        audioByteId == other.audioByteId &&
        audioBytePreviewStartTime == other.audioBytePreviewStartTime &&
        audioBytePreviewEndTime == other.audioBytePreviewEndTime &&
        audioDuration == other.audioDuration &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        visibility == other.visibility &&
        postUsertype == other.postUsertype &&
        selectedTopics == other.selectedTopics &&
        participants == other.participants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, postType.hashCode);
    _$hash = $jc(_$hash, audioByteId.hashCode);
    _$hash = $jc(_$hash, audioBytePreviewStartTime.hashCode);
    _$hash = $jc(_$hash, audioBytePreviewEndTime.hashCode);
    _$hash = $jc(_$hash, audioDuration.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, postUsertype.hashCode);
    _$hash = $jc(_$hash, selectedTopics.hashCode);
    _$hash = $jc(_$hash, participants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddPost')
          ..add('userId', userId)
          ..add('title', title)
          ..add('description', description)
          ..add('postType', postType)
          ..add('audioByteId', audioByteId)
          ..add('audioBytePreviewStartTime', audioBytePreviewStartTime)
          ..add('audioBytePreviewEndTime', audioBytePreviewEndTime)
          ..add('audioDuration', audioDuration)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('visibility', visibility)
          ..add('postUsertype', postUsertype)
          ..add('selectedTopics', selectedTopics)
          ..add('participants', participants))
        .toString();
  }
}

class GAddPostBuilder implements Builder<GAddPost, GAddPostBuilder> {
  _$GAddPost? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _postType;
  int? get postType => _$this._postType;
  set postType(int? postType) => _$this._postType = postType;

  String? _audioByteId;
  String? get audioByteId => _$this._audioByteId;
  set audioByteId(String? audioByteId) => _$this._audioByteId = audioByteId;

  int? _audioBytePreviewStartTime;
  int? get audioBytePreviewStartTime => _$this._audioBytePreviewStartTime;
  set audioBytePreviewStartTime(int? audioBytePreviewStartTime) =>
      _$this._audioBytePreviewStartTime = audioBytePreviewStartTime;

  int? _audioBytePreviewEndTime;
  int? get audioBytePreviewEndTime => _$this._audioBytePreviewEndTime;
  set audioBytePreviewEndTime(int? audioBytePreviewEndTime) =>
      _$this._audioBytePreviewEndTime = audioBytePreviewEndTime;

  int? _audioDuration;
  int? get audioDuration => _$this._audioDuration;
  set audioDuration(int? audioDuration) =>
      _$this._audioDuration = audioDuration;

  GDateTimeBuilder? _startTime;
  GDateTimeBuilder get startTime =>
      _$this._startTime ??= new GDateTimeBuilder();
  set startTime(GDateTimeBuilder? startTime) => _$this._startTime = startTime;

  GDateTimeBuilder? _endTime;
  GDateTimeBuilder get endTime => _$this._endTime ??= new GDateTimeBuilder();
  set endTime(GDateTimeBuilder? endTime) => _$this._endTime = endTime;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  int? _postUsertype;
  int? get postUsertype => _$this._postUsertype;
  set postUsertype(int? postUsertype) => _$this._postUsertype = postUsertype;

  ListBuilder<GSelectedSubTopic?>? _selectedTopics;
  ListBuilder<GSelectedSubTopic?> get selectedTopics =>
      _$this._selectedTopics ??= new ListBuilder<GSelectedSubTopic?>();
  set selectedTopics(ListBuilder<GSelectedSubTopic?>? selectedTopics) =>
      _$this._selectedTopics = selectedTopics;

  ListBuilder<GSelectedParticipates?>? _participants;
  ListBuilder<GSelectedParticipates?> get participants =>
      _$this._participants ??= new ListBuilder<GSelectedParticipates?>();
  set participants(ListBuilder<GSelectedParticipates?>? participants) =>
      _$this._participants = participants;

  GAddPostBuilder();

  GAddPostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _title = $v.title;
      _description = $v.description;
      _postType = $v.postType;
      _audioByteId = $v.audioByteId;
      _audioBytePreviewStartTime = $v.audioBytePreviewStartTime;
      _audioBytePreviewEndTime = $v.audioBytePreviewEndTime;
      _audioDuration = $v.audioDuration;
      _startTime = $v.startTime?.toBuilder();
      _endTime = $v.endTime?.toBuilder();
      _visibility = $v.visibility;
      _postUsertype = $v.postUsertype;
      _selectedTopics = $v.selectedTopics?.toBuilder();
      _participants = $v.participants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddPost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddPost;
  }

  @override
  void update(void Function(GAddPostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddPost build() => _build();

  _$GAddPost _build() {
    _$GAddPost _$result;
    try {
      _$result = _$v ??
          new _$GAddPost._(
              userId: userId,
              title: title,
              description: description,
              postType: postType,
              audioByteId: audioByteId,
              audioBytePreviewStartTime: audioBytePreviewStartTime,
              audioBytePreviewEndTime: audioBytePreviewEndTime,
              audioDuration: audioDuration,
              startTime: _startTime?.build(),
              endTime: _endTime?.build(),
              visibility: visibility,
              postUsertype: postUsertype,
              selectedTopics: _selectedTopics?.build(),
              participants: _participants?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startTime';
        _startTime?.build();
        _$failedField = 'endTime';
        _endTime?.build();

        _$failedField = 'selectedTopics';
        _selectedTopics?.build();
        _$failedField = 'participants';
        _participants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchData extends GSearchData {
  @override
  final String? searchString;
  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final String? postType;
  @override
  final bool? isSearched;

  factory _$GSearchData([void Function(GSearchDataBuilder)? updates]) =>
      (new GSearchDataBuilder()..update(updates))._build();

  _$GSearchData._(
      {this.searchString,
      this.offset,
      this.limit,
      this.postType,
      this.isSearched})
      : super._();

  @override
  GSearchData rebuild(void Function(GSearchDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchDataBuilder toBuilder() => new GSearchDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchData &&
        searchString == other.searchString &&
        offset == other.offset &&
        limit == other.limit &&
        postType == other.postType &&
        isSearched == other.isSearched;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, searchString.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, postType.hashCode);
    _$hash = $jc(_$hash, isSearched.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchData')
          ..add('searchString', searchString)
          ..add('offset', offset)
          ..add('limit', limit)
          ..add('postType', postType)
          ..add('isSearched', isSearched))
        .toString();
  }
}

class GSearchDataBuilder implements Builder<GSearchData, GSearchDataBuilder> {
  _$GSearchData? _$v;

  String? _searchString;
  String? get searchString => _$this._searchString;
  set searchString(String? searchString) => _$this._searchString = searchString;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _postType;
  String? get postType => _$this._postType;
  set postType(String? postType) => _$this._postType = postType;

  bool? _isSearched;
  bool? get isSearched => _$this._isSearched;
  set isSearched(bool? isSearched) => _$this._isSearched = isSearched;

  GSearchDataBuilder();

  GSearchDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchString = $v.searchString;
      _offset = $v.offset;
      _limit = $v.limit;
      _postType = $v.postType;
      _isSearched = $v.isSearched;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchData;
  }

  @override
  void update(void Function(GSearchDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchData build() => _build();

  _$GSearchData _build() {
    final _$result = _$v ??
        new _$GSearchData._(
            searchString: searchString,
            offset: offset,
            limit: limit,
            postType: postType,
            isSearched: isSearched);
    replace(_$result);
    return _$result;
  }
}

class _$GAddGuideline extends GAddGuideline {
  @override
  final String? postId;
  @override
  final String? name;

  factory _$GAddGuideline([void Function(GAddGuidelineBuilder)? updates]) =>
      (new GAddGuidelineBuilder()..update(updates))._build();

  _$GAddGuideline._({this.postId, this.name}) : super._();

  @override
  GAddGuideline rebuild(void Function(GAddGuidelineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddGuidelineBuilder toBuilder() => new GAddGuidelineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddGuideline &&
        postId == other.postId &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddGuideline')
          ..add('postId', postId)
          ..add('name', name))
        .toString();
  }
}

class GAddGuidelineBuilder
    implements Builder<GAddGuideline, GAddGuidelineBuilder> {
  _$GAddGuideline? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GAddGuidelineBuilder();

  GAddGuidelineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddGuideline other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddGuideline;
  }

  @override
  void update(void Function(GAddGuidelineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddGuideline build() => _build();

  _$GAddGuideline _build() {
    final _$result = _$v ?? new _$GAddGuideline._(postId: postId, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveGuideline extends GRemoveGuideline {
  @override
  final String? postId;
  @override
  final String? guidelineId;

  factory _$GRemoveGuideline(
          [void Function(GRemoveGuidelineBuilder)? updates]) =>
      (new GRemoveGuidelineBuilder()..update(updates))._build();

  _$GRemoveGuideline._({this.postId, this.guidelineId}) : super._();

  @override
  GRemoveGuideline rebuild(void Function(GRemoveGuidelineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveGuidelineBuilder toBuilder() =>
      new GRemoveGuidelineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveGuideline &&
        postId == other.postId &&
        guidelineId == other.guidelineId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, guidelineId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveGuideline')
          ..add('postId', postId)
          ..add('guidelineId', guidelineId))
        .toString();
  }
}

class GRemoveGuidelineBuilder
    implements Builder<GRemoveGuideline, GRemoveGuidelineBuilder> {
  _$GRemoveGuideline? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _guidelineId;
  String? get guidelineId => _$this._guidelineId;
  set guidelineId(String? guidelineId) => _$this._guidelineId = guidelineId;

  GRemoveGuidelineBuilder();

  GRemoveGuidelineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _guidelineId = $v.guidelineId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveGuideline other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveGuideline;
  }

  @override
  void update(void Function(GRemoveGuidelineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveGuideline build() => _build();

  _$GRemoveGuideline _build() {
    final _$result = _$v ??
        new _$GRemoveGuideline._(postId: postId, guidelineId: guidelineId);
    replace(_$result);
    return _$result;
  }
}

class _$GSendPostInvite extends GSendPostInvite {
  @override
  final String? postId;
  @override
  final String? inviteeUserId;
  @override
  final String? message;
  @override
  final int? invitationFrom;
  @override
  final int? postType;

  factory _$GSendPostInvite([void Function(GSendPostInviteBuilder)? updates]) =>
      (new GSendPostInviteBuilder()..update(updates))._build();

  _$GSendPostInvite._(
      {this.postId,
      this.inviteeUserId,
      this.message,
      this.invitationFrom,
      this.postType})
      : super._();

  @override
  GSendPostInvite rebuild(void Function(GSendPostInviteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendPostInviteBuilder toBuilder() =>
      new GSendPostInviteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendPostInvite &&
        postId == other.postId &&
        inviteeUserId == other.inviteeUserId &&
        message == other.message &&
        invitationFrom == other.invitationFrom &&
        postType == other.postType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, inviteeUserId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, invitationFrom.hashCode);
    _$hash = $jc(_$hash, postType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendPostInvite')
          ..add('postId', postId)
          ..add('inviteeUserId', inviteeUserId)
          ..add('message', message)
          ..add('invitationFrom', invitationFrom)
          ..add('postType', postType))
        .toString();
  }
}

class GSendPostInviteBuilder
    implements Builder<GSendPostInvite, GSendPostInviteBuilder> {
  _$GSendPostInvite? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _inviteeUserId;
  String? get inviteeUserId => _$this._inviteeUserId;
  set inviteeUserId(String? inviteeUserId) =>
      _$this._inviteeUserId = inviteeUserId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _invitationFrom;
  int? get invitationFrom => _$this._invitationFrom;
  set invitationFrom(int? invitationFrom) =>
      _$this._invitationFrom = invitationFrom;

  int? _postType;
  int? get postType => _$this._postType;
  set postType(int? postType) => _$this._postType = postType;

  GSendPostInviteBuilder();

  GSendPostInviteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _inviteeUserId = $v.inviteeUserId;
      _message = $v.message;
      _invitationFrom = $v.invitationFrom;
      _postType = $v.postType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendPostInvite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendPostInvite;
  }

  @override
  void update(void Function(GSendPostInviteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendPostInvite build() => _build();

  _$GSendPostInvite _build() {
    final _$result = _$v ??
        new _$GSendPostInvite._(
            postId: postId,
            inviteeUserId: inviteeUserId,
            message: message,
            invitationFrom: invitationFrom,
            postType: postType);
    replace(_$result);
    return _$result;
  }
}

class _$GsendPostInviteToMultipleUsers extends GsendPostInviteToMultipleUsers {
  @override
  final String? postId;
  @override
  final BuiltList<String?>? inviteeUserId;
  @override
  final String? message;
  @override
  final int? invitationFrom;
  @override
  final int? postType;

  factory _$GsendPostInviteToMultipleUsers(
          [void Function(GsendPostInviteToMultipleUsersBuilder)? updates]) =>
      (new GsendPostInviteToMultipleUsersBuilder()..update(updates))._build();

  _$GsendPostInviteToMultipleUsers._(
      {this.postId,
      this.inviteeUserId,
      this.message,
      this.invitationFrom,
      this.postType})
      : super._();

  @override
  GsendPostInviteToMultipleUsers rebuild(
          void Function(GsendPostInviteToMultipleUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsendPostInviteToMultipleUsersBuilder toBuilder() =>
      new GsendPostInviteToMultipleUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsendPostInviteToMultipleUsers &&
        postId == other.postId &&
        inviteeUserId == other.inviteeUserId &&
        message == other.message &&
        invitationFrom == other.invitationFrom &&
        postType == other.postType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, inviteeUserId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, invitationFrom.hashCode);
    _$hash = $jc(_$hash, postType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsendPostInviteToMultipleUsers')
          ..add('postId', postId)
          ..add('inviteeUserId', inviteeUserId)
          ..add('message', message)
          ..add('invitationFrom', invitationFrom)
          ..add('postType', postType))
        .toString();
  }
}

class GsendPostInviteToMultipleUsersBuilder
    implements
        Builder<GsendPostInviteToMultipleUsers,
            GsendPostInviteToMultipleUsersBuilder> {
  _$GsendPostInviteToMultipleUsers? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  ListBuilder<String?>? _inviteeUserId;
  ListBuilder<String?> get inviteeUserId =>
      _$this._inviteeUserId ??= new ListBuilder<String?>();
  set inviteeUserId(ListBuilder<String?>? inviteeUserId) =>
      _$this._inviteeUserId = inviteeUserId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _invitationFrom;
  int? get invitationFrom => _$this._invitationFrom;
  set invitationFrom(int? invitationFrom) =>
      _$this._invitationFrom = invitationFrom;

  int? _postType;
  int? get postType => _$this._postType;
  set postType(int? postType) => _$this._postType = postType;

  GsendPostInviteToMultipleUsersBuilder();

  GsendPostInviteToMultipleUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _inviteeUserId = $v.inviteeUserId?.toBuilder();
      _message = $v.message;
      _invitationFrom = $v.invitationFrom;
      _postType = $v.postType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsendPostInviteToMultipleUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsendPostInviteToMultipleUsers;
  }

  @override
  void update(void Function(GsendPostInviteToMultipleUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsendPostInviteToMultipleUsers build() => _build();

  _$GsendPostInviteToMultipleUsers _build() {
    _$GsendPostInviteToMultipleUsers _$result;
    try {
      _$result = _$v ??
          new _$GsendPostInviteToMultipleUsers._(
              postId: postId,
              inviteeUserId: _inviteeUserId?.build(),
              message: message,
              invitationFrom: invitationFrom,
              postType: postType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inviteeUserId';
        _inviteeUserId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsendPostInviteToMultipleUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostV1 extends GCreatePostV1 {
  @override
  final String title;
  @override
  final String? description;
  @override
  final int postType;
  @override
  final int visibility;
  @override
  final int? postUsertype;
  @override
  final String audioByteId;
  @override
  final int? audioBytePreviewStartTime;
  @override
  final int? audioBytePreviewEndTime;
  @override
  final int? audioDuration;
  @override
  final GDateTime? startTime;
  @override
  final GDateTime? endTime;
  @override
  final BuiltList<String?>? selectedTopics;
  @override
  final String? media;
  @override
  final int? mediaType;
  @override
  final bool? repod;
  @override
  final bool? isDraft;
  @override
  final String? thumbnail;
  @override
  final String? language;
  @override
  final BuiltList<int?>? insertables;
  @override
  final String? parentPostId;
  @override
  final String? parallelizationUrl;
  @override
  final String? draftPostId;
  @override
  final String? bgMusicId;
  @override
  final String? pitchId;
  @override
  final BuiltList<String?>? hashTags;

  factory _$GCreatePostV1([void Function(GCreatePostV1Builder)? updates]) =>
      (new GCreatePostV1Builder()..update(updates))._build();

  _$GCreatePostV1._(
      {required this.title,
      this.description,
      required this.postType,
      required this.visibility,
      this.postUsertype,
      required this.audioByteId,
      this.audioBytePreviewStartTime,
      this.audioBytePreviewEndTime,
      this.audioDuration,
      this.startTime,
      this.endTime,
      this.selectedTopics,
      this.media,
      this.mediaType,
      this.repod,
      this.isDraft,
      this.thumbnail,
      this.language,
      this.insertables,
      this.parentPostId,
      this.parallelizationUrl,
      this.draftPostId,
      this.bgMusicId,
      this.pitchId,
      this.hashTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'GCreatePostV1', 'title');
    BuiltValueNullFieldError.checkNotNull(
        postType, r'GCreatePostV1', 'postType');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GCreatePostV1', 'visibility');
    BuiltValueNullFieldError.checkNotNull(
        audioByteId, r'GCreatePostV1', 'audioByteId');
  }

  @override
  GCreatePostV1 rebuild(void Function(GCreatePostV1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostV1Builder toBuilder() => new GCreatePostV1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostV1 &&
        title == other.title &&
        description == other.description &&
        postType == other.postType &&
        visibility == other.visibility &&
        postUsertype == other.postUsertype &&
        audioByteId == other.audioByteId &&
        audioBytePreviewStartTime == other.audioBytePreviewStartTime &&
        audioBytePreviewEndTime == other.audioBytePreviewEndTime &&
        audioDuration == other.audioDuration &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        selectedTopics == other.selectedTopics &&
        media == other.media &&
        mediaType == other.mediaType &&
        repod == other.repod &&
        isDraft == other.isDraft &&
        thumbnail == other.thumbnail &&
        language == other.language &&
        insertables == other.insertables &&
        parentPostId == other.parentPostId &&
        parallelizationUrl == other.parallelizationUrl &&
        draftPostId == other.draftPostId &&
        bgMusicId == other.bgMusicId &&
        pitchId == other.pitchId &&
        hashTags == other.hashTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, postType.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, postUsertype.hashCode);
    _$hash = $jc(_$hash, audioByteId.hashCode);
    _$hash = $jc(_$hash, audioBytePreviewStartTime.hashCode);
    _$hash = $jc(_$hash, audioBytePreviewEndTime.hashCode);
    _$hash = $jc(_$hash, audioDuration.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, selectedTopics.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, repod.hashCode);
    _$hash = $jc(_$hash, isDraft.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, insertables.hashCode);
    _$hash = $jc(_$hash, parentPostId.hashCode);
    _$hash = $jc(_$hash, parallelizationUrl.hashCode);
    _$hash = $jc(_$hash, draftPostId.hashCode);
    _$hash = $jc(_$hash, bgMusicId.hashCode);
    _$hash = $jc(_$hash, pitchId.hashCode);
    _$hash = $jc(_$hash, hashTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePostV1')
          ..add('title', title)
          ..add('description', description)
          ..add('postType', postType)
          ..add('visibility', visibility)
          ..add('postUsertype', postUsertype)
          ..add('audioByteId', audioByteId)
          ..add('audioBytePreviewStartTime', audioBytePreviewStartTime)
          ..add('audioBytePreviewEndTime', audioBytePreviewEndTime)
          ..add('audioDuration', audioDuration)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('selectedTopics', selectedTopics)
          ..add('media', media)
          ..add('mediaType', mediaType)
          ..add('repod', repod)
          ..add('isDraft', isDraft)
          ..add('thumbnail', thumbnail)
          ..add('language', language)
          ..add('insertables', insertables)
          ..add('parentPostId', parentPostId)
          ..add('parallelizationUrl', parallelizationUrl)
          ..add('draftPostId', draftPostId)
          ..add('bgMusicId', bgMusicId)
          ..add('pitchId', pitchId)
          ..add('hashTags', hashTags))
        .toString();
  }
}

class GCreatePostV1Builder
    implements Builder<GCreatePostV1, GCreatePostV1Builder> {
  _$GCreatePostV1? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _postType;
  int? get postType => _$this._postType;
  set postType(int? postType) => _$this._postType = postType;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  int? _postUsertype;
  int? get postUsertype => _$this._postUsertype;
  set postUsertype(int? postUsertype) => _$this._postUsertype = postUsertype;

  String? _audioByteId;
  String? get audioByteId => _$this._audioByteId;
  set audioByteId(String? audioByteId) => _$this._audioByteId = audioByteId;

  int? _audioBytePreviewStartTime;
  int? get audioBytePreviewStartTime => _$this._audioBytePreviewStartTime;
  set audioBytePreviewStartTime(int? audioBytePreviewStartTime) =>
      _$this._audioBytePreviewStartTime = audioBytePreviewStartTime;

  int? _audioBytePreviewEndTime;
  int? get audioBytePreviewEndTime => _$this._audioBytePreviewEndTime;
  set audioBytePreviewEndTime(int? audioBytePreviewEndTime) =>
      _$this._audioBytePreviewEndTime = audioBytePreviewEndTime;

  int? _audioDuration;
  int? get audioDuration => _$this._audioDuration;
  set audioDuration(int? audioDuration) =>
      _$this._audioDuration = audioDuration;

  GDateTimeBuilder? _startTime;
  GDateTimeBuilder get startTime =>
      _$this._startTime ??= new GDateTimeBuilder();
  set startTime(GDateTimeBuilder? startTime) => _$this._startTime = startTime;

  GDateTimeBuilder? _endTime;
  GDateTimeBuilder get endTime => _$this._endTime ??= new GDateTimeBuilder();
  set endTime(GDateTimeBuilder? endTime) => _$this._endTime = endTime;

  ListBuilder<String?>? _selectedTopics;
  ListBuilder<String?> get selectedTopics =>
      _$this._selectedTopics ??= new ListBuilder<String?>();
  set selectedTopics(ListBuilder<String?>? selectedTopics) =>
      _$this._selectedTopics = selectedTopics;

  String? _media;
  String? get media => _$this._media;
  set media(String? media) => _$this._media = media;

  int? _mediaType;
  int? get mediaType => _$this._mediaType;
  set mediaType(int? mediaType) => _$this._mediaType = mediaType;

  bool? _repod;
  bool? get repod => _$this._repod;
  set repod(bool? repod) => _$this._repod = repod;

  bool? _isDraft;
  bool? get isDraft => _$this._isDraft;
  set isDraft(bool? isDraft) => _$this._isDraft = isDraft;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<int?>? _insertables;
  ListBuilder<int?> get insertables =>
      _$this._insertables ??= new ListBuilder<int?>();
  set insertables(ListBuilder<int?>? insertables) =>
      _$this._insertables = insertables;

  String? _parentPostId;
  String? get parentPostId => _$this._parentPostId;
  set parentPostId(String? parentPostId) => _$this._parentPostId = parentPostId;

  String? _parallelizationUrl;
  String? get parallelizationUrl => _$this._parallelizationUrl;
  set parallelizationUrl(String? parallelizationUrl) =>
      _$this._parallelizationUrl = parallelizationUrl;

  String? _draftPostId;
  String? get draftPostId => _$this._draftPostId;
  set draftPostId(String? draftPostId) => _$this._draftPostId = draftPostId;

  String? _bgMusicId;
  String? get bgMusicId => _$this._bgMusicId;
  set bgMusicId(String? bgMusicId) => _$this._bgMusicId = bgMusicId;

  String? _pitchId;
  String? get pitchId => _$this._pitchId;
  set pitchId(String? pitchId) => _$this._pitchId = pitchId;

  ListBuilder<String?>? _hashTags;
  ListBuilder<String?> get hashTags =>
      _$this._hashTags ??= new ListBuilder<String?>();
  set hashTags(ListBuilder<String?>? hashTags) => _$this._hashTags = hashTags;

  GCreatePostV1Builder();

  GCreatePostV1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _postType = $v.postType;
      _visibility = $v.visibility;
      _postUsertype = $v.postUsertype;
      _audioByteId = $v.audioByteId;
      _audioBytePreviewStartTime = $v.audioBytePreviewStartTime;
      _audioBytePreviewEndTime = $v.audioBytePreviewEndTime;
      _audioDuration = $v.audioDuration;
      _startTime = $v.startTime?.toBuilder();
      _endTime = $v.endTime?.toBuilder();
      _selectedTopics = $v.selectedTopics?.toBuilder();
      _media = $v.media;
      _mediaType = $v.mediaType;
      _repod = $v.repod;
      _isDraft = $v.isDraft;
      _thumbnail = $v.thumbnail;
      _language = $v.language;
      _insertables = $v.insertables?.toBuilder();
      _parentPostId = $v.parentPostId;
      _parallelizationUrl = $v.parallelizationUrl;
      _draftPostId = $v.draftPostId;
      _bgMusicId = $v.bgMusicId;
      _pitchId = $v.pitchId;
      _hashTags = $v.hashTags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostV1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostV1;
  }

  @override
  void update(void Function(GCreatePostV1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostV1 build() => _build();

  _$GCreatePostV1 _build() {
    _$GCreatePostV1 _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostV1._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GCreatePostV1', 'title'),
              description: description,
              postType: BuiltValueNullFieldError.checkNotNull(
                  postType, r'GCreatePostV1', 'postType'),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'GCreatePostV1', 'visibility'),
              postUsertype: postUsertype,
              audioByteId: BuiltValueNullFieldError.checkNotNull(
                  audioByteId, r'GCreatePostV1', 'audioByteId'),
              audioBytePreviewStartTime: audioBytePreviewStartTime,
              audioBytePreviewEndTime: audioBytePreviewEndTime,
              audioDuration: audioDuration,
              startTime: _startTime?.build(),
              endTime: _endTime?.build(),
              selectedTopics: _selectedTopics?.build(),
              media: media,
              mediaType: mediaType,
              repod: repod,
              isDraft: isDraft,
              thumbnail: thumbnail,
              language: language,
              insertables: _insertables?.build(),
              parentPostId: parentPostId,
              parallelizationUrl: parallelizationUrl,
              draftPostId: draftPostId,
              bgMusicId: bgMusicId,
              pitchId: pitchId,
              hashTags: _hashTags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startTime';
        _startTime?.build();
        _$failedField = 'endTime';
        _endTime?.build();
        _$failedField = 'selectedTopics';
        _selectedTopics?.build();

        _$failedField = 'insertables';
        _insertables?.build();

        _$failedField = 'hashTags';
        _hashTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePostV1', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostV2 extends GCreatePostV2 {
  @override
  final String title;
  @override
  final String? description;
  @override
  final int postType;
  @override
  final int visibility;
  @override
  final int? postUsertype;
  @override
  final String audioByteId;
  @override
  final int? audioBytePreviewStartTime;
  @override
  final int? audioBytePreviewEndTime;
  @override
  final int? audioDuration;
  @override
  final GDateTime? startTime;
  @override
  final GDateTime? endTime;
  @override
  final BuiltList<String?>? selectedTopics;
  @override
  final String? media;
  @override
  final int? mediaType;
  @override
  final bool? repod;
  @override
  final bool? isDraft;
  @override
  final String? thumbnail;
  @override
  final String? language;
  @override
  final BuiltList<String?>? insertables;
  @override
  final String? parentPostId;
  @override
  final String? parallelizationUrl;
  @override
  final String? draftPostId;
  @override
  final String? bgMusicId;
  @override
  final String? pitchId;
  @override
  final BuiltList<String?>? hashTags;

  factory _$GCreatePostV2([void Function(GCreatePostV2Builder)? updates]) =>
      (new GCreatePostV2Builder()..update(updates))._build();

  _$GCreatePostV2._(
      {required this.title,
      this.description,
      required this.postType,
      required this.visibility,
      this.postUsertype,
      required this.audioByteId,
      this.audioBytePreviewStartTime,
      this.audioBytePreviewEndTime,
      this.audioDuration,
      this.startTime,
      this.endTime,
      this.selectedTopics,
      this.media,
      this.mediaType,
      this.repod,
      this.isDraft,
      this.thumbnail,
      this.language,
      this.insertables,
      this.parentPostId,
      this.parallelizationUrl,
      this.draftPostId,
      this.bgMusicId,
      this.pitchId,
      this.hashTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'GCreatePostV2', 'title');
    BuiltValueNullFieldError.checkNotNull(
        postType, r'GCreatePostV2', 'postType');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GCreatePostV2', 'visibility');
    BuiltValueNullFieldError.checkNotNull(
        audioByteId, r'GCreatePostV2', 'audioByteId');
  }

  @override
  GCreatePostV2 rebuild(void Function(GCreatePostV2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostV2Builder toBuilder() => new GCreatePostV2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostV2 &&
        title == other.title &&
        description == other.description &&
        postType == other.postType &&
        visibility == other.visibility &&
        postUsertype == other.postUsertype &&
        audioByteId == other.audioByteId &&
        audioBytePreviewStartTime == other.audioBytePreviewStartTime &&
        audioBytePreviewEndTime == other.audioBytePreviewEndTime &&
        audioDuration == other.audioDuration &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        selectedTopics == other.selectedTopics &&
        media == other.media &&
        mediaType == other.mediaType &&
        repod == other.repod &&
        isDraft == other.isDraft &&
        thumbnail == other.thumbnail &&
        language == other.language &&
        insertables == other.insertables &&
        parentPostId == other.parentPostId &&
        parallelizationUrl == other.parallelizationUrl &&
        draftPostId == other.draftPostId &&
        bgMusicId == other.bgMusicId &&
        pitchId == other.pitchId &&
        hashTags == other.hashTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, postType.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, postUsertype.hashCode);
    _$hash = $jc(_$hash, audioByteId.hashCode);
    _$hash = $jc(_$hash, audioBytePreviewStartTime.hashCode);
    _$hash = $jc(_$hash, audioBytePreviewEndTime.hashCode);
    _$hash = $jc(_$hash, audioDuration.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, selectedTopics.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, repod.hashCode);
    _$hash = $jc(_$hash, isDraft.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, insertables.hashCode);
    _$hash = $jc(_$hash, parentPostId.hashCode);
    _$hash = $jc(_$hash, parallelizationUrl.hashCode);
    _$hash = $jc(_$hash, draftPostId.hashCode);
    _$hash = $jc(_$hash, bgMusicId.hashCode);
    _$hash = $jc(_$hash, pitchId.hashCode);
    _$hash = $jc(_$hash, hashTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePostV2')
          ..add('title', title)
          ..add('description', description)
          ..add('postType', postType)
          ..add('visibility', visibility)
          ..add('postUsertype', postUsertype)
          ..add('audioByteId', audioByteId)
          ..add('audioBytePreviewStartTime', audioBytePreviewStartTime)
          ..add('audioBytePreviewEndTime', audioBytePreviewEndTime)
          ..add('audioDuration', audioDuration)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('selectedTopics', selectedTopics)
          ..add('media', media)
          ..add('mediaType', mediaType)
          ..add('repod', repod)
          ..add('isDraft', isDraft)
          ..add('thumbnail', thumbnail)
          ..add('language', language)
          ..add('insertables', insertables)
          ..add('parentPostId', parentPostId)
          ..add('parallelizationUrl', parallelizationUrl)
          ..add('draftPostId', draftPostId)
          ..add('bgMusicId', bgMusicId)
          ..add('pitchId', pitchId)
          ..add('hashTags', hashTags))
        .toString();
  }
}

class GCreatePostV2Builder
    implements Builder<GCreatePostV2, GCreatePostV2Builder> {
  _$GCreatePostV2? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _postType;
  int? get postType => _$this._postType;
  set postType(int? postType) => _$this._postType = postType;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  int? _postUsertype;
  int? get postUsertype => _$this._postUsertype;
  set postUsertype(int? postUsertype) => _$this._postUsertype = postUsertype;

  String? _audioByteId;
  String? get audioByteId => _$this._audioByteId;
  set audioByteId(String? audioByteId) => _$this._audioByteId = audioByteId;

  int? _audioBytePreviewStartTime;
  int? get audioBytePreviewStartTime => _$this._audioBytePreviewStartTime;
  set audioBytePreviewStartTime(int? audioBytePreviewStartTime) =>
      _$this._audioBytePreviewStartTime = audioBytePreviewStartTime;

  int? _audioBytePreviewEndTime;
  int? get audioBytePreviewEndTime => _$this._audioBytePreviewEndTime;
  set audioBytePreviewEndTime(int? audioBytePreviewEndTime) =>
      _$this._audioBytePreviewEndTime = audioBytePreviewEndTime;

  int? _audioDuration;
  int? get audioDuration => _$this._audioDuration;
  set audioDuration(int? audioDuration) =>
      _$this._audioDuration = audioDuration;

  GDateTimeBuilder? _startTime;
  GDateTimeBuilder get startTime =>
      _$this._startTime ??= new GDateTimeBuilder();
  set startTime(GDateTimeBuilder? startTime) => _$this._startTime = startTime;

  GDateTimeBuilder? _endTime;
  GDateTimeBuilder get endTime => _$this._endTime ??= new GDateTimeBuilder();
  set endTime(GDateTimeBuilder? endTime) => _$this._endTime = endTime;

  ListBuilder<String?>? _selectedTopics;
  ListBuilder<String?> get selectedTopics =>
      _$this._selectedTopics ??= new ListBuilder<String?>();
  set selectedTopics(ListBuilder<String?>? selectedTopics) =>
      _$this._selectedTopics = selectedTopics;

  String? _media;
  String? get media => _$this._media;
  set media(String? media) => _$this._media = media;

  int? _mediaType;
  int? get mediaType => _$this._mediaType;
  set mediaType(int? mediaType) => _$this._mediaType = mediaType;

  bool? _repod;
  bool? get repod => _$this._repod;
  set repod(bool? repod) => _$this._repod = repod;

  bool? _isDraft;
  bool? get isDraft => _$this._isDraft;
  set isDraft(bool? isDraft) => _$this._isDraft = isDraft;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<String?>? _insertables;
  ListBuilder<String?> get insertables =>
      _$this._insertables ??= new ListBuilder<String?>();
  set insertables(ListBuilder<String?>? insertables) =>
      _$this._insertables = insertables;

  String? _parentPostId;
  String? get parentPostId => _$this._parentPostId;
  set parentPostId(String? parentPostId) => _$this._parentPostId = parentPostId;

  String? _parallelizationUrl;
  String? get parallelizationUrl => _$this._parallelizationUrl;
  set parallelizationUrl(String? parallelizationUrl) =>
      _$this._parallelizationUrl = parallelizationUrl;

  String? _draftPostId;
  String? get draftPostId => _$this._draftPostId;
  set draftPostId(String? draftPostId) => _$this._draftPostId = draftPostId;

  String? _bgMusicId;
  String? get bgMusicId => _$this._bgMusicId;
  set bgMusicId(String? bgMusicId) => _$this._bgMusicId = bgMusicId;

  String? _pitchId;
  String? get pitchId => _$this._pitchId;
  set pitchId(String? pitchId) => _$this._pitchId = pitchId;

  ListBuilder<String?>? _hashTags;
  ListBuilder<String?> get hashTags =>
      _$this._hashTags ??= new ListBuilder<String?>();
  set hashTags(ListBuilder<String?>? hashTags) => _$this._hashTags = hashTags;

  GCreatePostV2Builder();

  GCreatePostV2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _postType = $v.postType;
      _visibility = $v.visibility;
      _postUsertype = $v.postUsertype;
      _audioByteId = $v.audioByteId;
      _audioBytePreviewStartTime = $v.audioBytePreviewStartTime;
      _audioBytePreviewEndTime = $v.audioBytePreviewEndTime;
      _audioDuration = $v.audioDuration;
      _startTime = $v.startTime?.toBuilder();
      _endTime = $v.endTime?.toBuilder();
      _selectedTopics = $v.selectedTopics?.toBuilder();
      _media = $v.media;
      _mediaType = $v.mediaType;
      _repod = $v.repod;
      _isDraft = $v.isDraft;
      _thumbnail = $v.thumbnail;
      _language = $v.language;
      _insertables = $v.insertables?.toBuilder();
      _parentPostId = $v.parentPostId;
      _parallelizationUrl = $v.parallelizationUrl;
      _draftPostId = $v.draftPostId;
      _bgMusicId = $v.bgMusicId;
      _pitchId = $v.pitchId;
      _hashTags = $v.hashTags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostV2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostV2;
  }

  @override
  void update(void Function(GCreatePostV2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostV2 build() => _build();

  _$GCreatePostV2 _build() {
    _$GCreatePostV2 _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostV2._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GCreatePostV2', 'title'),
              description: description,
              postType: BuiltValueNullFieldError.checkNotNull(
                  postType, r'GCreatePostV2', 'postType'),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'GCreatePostV2', 'visibility'),
              postUsertype: postUsertype,
              audioByteId: BuiltValueNullFieldError.checkNotNull(
                  audioByteId, r'GCreatePostV2', 'audioByteId'),
              audioBytePreviewStartTime: audioBytePreviewStartTime,
              audioBytePreviewEndTime: audioBytePreviewEndTime,
              audioDuration: audioDuration,
              startTime: _startTime?.build(),
              endTime: _endTime?.build(),
              selectedTopics: _selectedTopics?.build(),
              media: media,
              mediaType: mediaType,
              repod: repod,
              isDraft: isDraft,
              thumbnail: thumbnail,
              language: language,
              insertables: _insertables?.build(),
              parentPostId: parentPostId,
              parallelizationUrl: parallelizationUrl,
              draftPostId: draftPostId,
              bgMusicId: bgMusicId,
              pitchId: pitchId,
              hashTags: _hashTags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startTime';
        _startTime?.build();
        _$failedField = 'endTime';
        _endTime?.build();
        _$failedField = 'selectedTopics';
        _selectedTopics?.build();

        _$failedField = 'insertables';
        _insertables?.build();

        _$failedField = 'hashTags';
        _hashTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePostV2', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePostV1 extends GUpdatePostV1 {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? postType;
  @override
  final int? visibility;
  @override
  final int? postUsertype;
  @override
  final String? audioByteId;
  @override
  final int? audioBytePreviewStartTime;
  @override
  final int? audioBytePreviewEndTime;
  @override
  final int? audioDuration;
  @override
  final GDateTime? startTime;
  @override
  final GDateTime? endTime;
  @override
  final BuiltList<String?>? selectedTopics;
  @override
  final String? media;
  @override
  final int? mediaType;
  @override
  final bool? repod;
  @override
  final bool? isDraft;
  @override
  final String? thumbnail;
  @override
  final String? language;
  @override
  final BuiltList<int?>? insertables;
  @override
  final String? parentPostId;
  @override
  final String? parallelizationUrl;
  @override
  final String? bgMusicId;
  @override
  final String? pitchId;
  @override
  final BuiltList<String?>? hashTags;

  factory _$GUpdatePostV1([void Function(GUpdatePostV1Builder)? updates]) =>
      (new GUpdatePostV1Builder()..update(updates))._build();

  _$GUpdatePostV1._(
      {this.title,
      this.description,
      this.postType,
      this.visibility,
      this.postUsertype,
      this.audioByteId,
      this.audioBytePreviewStartTime,
      this.audioBytePreviewEndTime,
      this.audioDuration,
      this.startTime,
      this.endTime,
      this.selectedTopics,
      this.media,
      this.mediaType,
      this.repod,
      this.isDraft,
      this.thumbnail,
      this.language,
      this.insertables,
      this.parentPostId,
      this.parallelizationUrl,
      this.bgMusicId,
      this.pitchId,
      this.hashTags})
      : super._();

  @override
  GUpdatePostV1 rebuild(void Function(GUpdatePostV1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostV1Builder toBuilder() => new GUpdatePostV1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostV1 &&
        title == other.title &&
        description == other.description &&
        postType == other.postType &&
        visibility == other.visibility &&
        postUsertype == other.postUsertype &&
        audioByteId == other.audioByteId &&
        audioBytePreviewStartTime == other.audioBytePreviewStartTime &&
        audioBytePreviewEndTime == other.audioBytePreviewEndTime &&
        audioDuration == other.audioDuration &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        selectedTopics == other.selectedTopics &&
        media == other.media &&
        mediaType == other.mediaType &&
        repod == other.repod &&
        isDraft == other.isDraft &&
        thumbnail == other.thumbnail &&
        language == other.language &&
        insertables == other.insertables &&
        parentPostId == other.parentPostId &&
        parallelizationUrl == other.parallelizationUrl &&
        bgMusicId == other.bgMusicId &&
        pitchId == other.pitchId &&
        hashTags == other.hashTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, postType.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, postUsertype.hashCode);
    _$hash = $jc(_$hash, audioByteId.hashCode);
    _$hash = $jc(_$hash, audioBytePreviewStartTime.hashCode);
    _$hash = $jc(_$hash, audioBytePreviewEndTime.hashCode);
    _$hash = $jc(_$hash, audioDuration.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, selectedTopics.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, repod.hashCode);
    _$hash = $jc(_$hash, isDraft.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, insertables.hashCode);
    _$hash = $jc(_$hash, parentPostId.hashCode);
    _$hash = $jc(_$hash, parallelizationUrl.hashCode);
    _$hash = $jc(_$hash, bgMusicId.hashCode);
    _$hash = $jc(_$hash, pitchId.hashCode);
    _$hash = $jc(_$hash, hashTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdatePostV1')
          ..add('title', title)
          ..add('description', description)
          ..add('postType', postType)
          ..add('visibility', visibility)
          ..add('postUsertype', postUsertype)
          ..add('audioByteId', audioByteId)
          ..add('audioBytePreviewStartTime', audioBytePreviewStartTime)
          ..add('audioBytePreviewEndTime', audioBytePreviewEndTime)
          ..add('audioDuration', audioDuration)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('selectedTopics', selectedTopics)
          ..add('media', media)
          ..add('mediaType', mediaType)
          ..add('repod', repod)
          ..add('isDraft', isDraft)
          ..add('thumbnail', thumbnail)
          ..add('language', language)
          ..add('insertables', insertables)
          ..add('parentPostId', parentPostId)
          ..add('parallelizationUrl', parallelizationUrl)
          ..add('bgMusicId', bgMusicId)
          ..add('pitchId', pitchId)
          ..add('hashTags', hashTags))
        .toString();
  }
}

class GUpdatePostV1Builder
    implements Builder<GUpdatePostV1, GUpdatePostV1Builder> {
  _$GUpdatePostV1? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _postType;
  int? get postType => _$this._postType;
  set postType(int? postType) => _$this._postType = postType;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  int? _postUsertype;
  int? get postUsertype => _$this._postUsertype;
  set postUsertype(int? postUsertype) => _$this._postUsertype = postUsertype;

  String? _audioByteId;
  String? get audioByteId => _$this._audioByteId;
  set audioByteId(String? audioByteId) => _$this._audioByteId = audioByteId;

  int? _audioBytePreviewStartTime;
  int? get audioBytePreviewStartTime => _$this._audioBytePreviewStartTime;
  set audioBytePreviewStartTime(int? audioBytePreviewStartTime) =>
      _$this._audioBytePreviewStartTime = audioBytePreviewStartTime;

  int? _audioBytePreviewEndTime;
  int? get audioBytePreviewEndTime => _$this._audioBytePreviewEndTime;
  set audioBytePreviewEndTime(int? audioBytePreviewEndTime) =>
      _$this._audioBytePreviewEndTime = audioBytePreviewEndTime;

  int? _audioDuration;
  int? get audioDuration => _$this._audioDuration;
  set audioDuration(int? audioDuration) =>
      _$this._audioDuration = audioDuration;

  GDateTimeBuilder? _startTime;
  GDateTimeBuilder get startTime =>
      _$this._startTime ??= new GDateTimeBuilder();
  set startTime(GDateTimeBuilder? startTime) => _$this._startTime = startTime;

  GDateTimeBuilder? _endTime;
  GDateTimeBuilder get endTime => _$this._endTime ??= new GDateTimeBuilder();
  set endTime(GDateTimeBuilder? endTime) => _$this._endTime = endTime;

  ListBuilder<String?>? _selectedTopics;
  ListBuilder<String?> get selectedTopics =>
      _$this._selectedTopics ??= new ListBuilder<String?>();
  set selectedTopics(ListBuilder<String?>? selectedTopics) =>
      _$this._selectedTopics = selectedTopics;

  String? _media;
  String? get media => _$this._media;
  set media(String? media) => _$this._media = media;

  int? _mediaType;
  int? get mediaType => _$this._mediaType;
  set mediaType(int? mediaType) => _$this._mediaType = mediaType;

  bool? _repod;
  bool? get repod => _$this._repod;
  set repod(bool? repod) => _$this._repod = repod;

  bool? _isDraft;
  bool? get isDraft => _$this._isDraft;
  set isDraft(bool? isDraft) => _$this._isDraft = isDraft;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<int?>? _insertables;
  ListBuilder<int?> get insertables =>
      _$this._insertables ??= new ListBuilder<int?>();
  set insertables(ListBuilder<int?>? insertables) =>
      _$this._insertables = insertables;

  String? _parentPostId;
  String? get parentPostId => _$this._parentPostId;
  set parentPostId(String? parentPostId) => _$this._parentPostId = parentPostId;

  String? _parallelizationUrl;
  String? get parallelizationUrl => _$this._parallelizationUrl;
  set parallelizationUrl(String? parallelizationUrl) =>
      _$this._parallelizationUrl = parallelizationUrl;

  String? _bgMusicId;
  String? get bgMusicId => _$this._bgMusicId;
  set bgMusicId(String? bgMusicId) => _$this._bgMusicId = bgMusicId;

  String? _pitchId;
  String? get pitchId => _$this._pitchId;
  set pitchId(String? pitchId) => _$this._pitchId = pitchId;

  ListBuilder<String?>? _hashTags;
  ListBuilder<String?> get hashTags =>
      _$this._hashTags ??= new ListBuilder<String?>();
  set hashTags(ListBuilder<String?>? hashTags) => _$this._hashTags = hashTags;

  GUpdatePostV1Builder();

  GUpdatePostV1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _postType = $v.postType;
      _visibility = $v.visibility;
      _postUsertype = $v.postUsertype;
      _audioByteId = $v.audioByteId;
      _audioBytePreviewStartTime = $v.audioBytePreviewStartTime;
      _audioBytePreviewEndTime = $v.audioBytePreviewEndTime;
      _audioDuration = $v.audioDuration;
      _startTime = $v.startTime?.toBuilder();
      _endTime = $v.endTime?.toBuilder();
      _selectedTopics = $v.selectedTopics?.toBuilder();
      _media = $v.media;
      _mediaType = $v.mediaType;
      _repod = $v.repod;
      _isDraft = $v.isDraft;
      _thumbnail = $v.thumbnail;
      _language = $v.language;
      _insertables = $v.insertables?.toBuilder();
      _parentPostId = $v.parentPostId;
      _parallelizationUrl = $v.parallelizationUrl;
      _bgMusicId = $v.bgMusicId;
      _pitchId = $v.pitchId;
      _hashTags = $v.hashTags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePostV1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostV1;
  }

  @override
  void update(void Function(GUpdatePostV1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostV1 build() => _build();

  _$GUpdatePostV1 _build() {
    _$GUpdatePostV1 _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePostV1._(
              title: title,
              description: description,
              postType: postType,
              visibility: visibility,
              postUsertype: postUsertype,
              audioByteId: audioByteId,
              audioBytePreviewStartTime: audioBytePreviewStartTime,
              audioBytePreviewEndTime: audioBytePreviewEndTime,
              audioDuration: audioDuration,
              startTime: _startTime?.build(),
              endTime: _endTime?.build(),
              selectedTopics: _selectedTopics?.build(),
              media: media,
              mediaType: mediaType,
              repod: repod,
              isDraft: isDraft,
              thumbnail: thumbnail,
              language: language,
              insertables: _insertables?.build(),
              parentPostId: parentPostId,
              parallelizationUrl: parallelizationUrl,
              bgMusicId: bgMusicId,
              pitchId: pitchId,
              hashTags: _hashTags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startTime';
        _startTime?.build();
        _$failedField = 'endTime';
        _endTime?.build();
        _$failedField = 'selectedTopics';
        _selectedTopics?.build();

        _$failedField = 'insertables';
        _insertables?.build();

        _$failedField = 'hashTags';
        _hashTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdatePostV1', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetGuideline extends GGetGuideline {
  @override
  final String postId;

  factory _$GGetGuideline([void Function(GGetGuidelineBuilder)? updates]) =>
      (new GGetGuidelineBuilder()..update(updates))._build();

  _$GGetGuideline._({required this.postId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(postId, r'GGetGuideline', 'postId');
  }

  @override
  GGetGuideline rebuild(void Function(GGetGuidelineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetGuidelineBuilder toBuilder() => new GGetGuidelineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetGuideline && postId == other.postId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetGuideline')
          ..add('postId', postId))
        .toString();
  }
}

class GGetGuidelineBuilder
    implements Builder<GGetGuideline, GGetGuidelineBuilder> {
  _$GGetGuideline? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  GGetGuidelineBuilder();

  GGetGuidelineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetGuideline other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetGuideline;
  }

  @override
  void update(void Function(GGetGuidelineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetGuideline build() => _build();

  _$GGetGuideline _build() {
    final _$result = _$v ??
        new _$GGetGuideline._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GGetGuideline', 'postId'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserPosts extends GGetUserPosts {
  @override
  final int? filterType;
  @override
  final int? offset;
  @override
  final int? limit;

  factory _$GGetUserPosts([void Function(GGetUserPostsBuilder)? updates]) =>
      (new GGetUserPostsBuilder()..update(updates))._build();

  _$GGetUserPosts._({this.filterType, this.offset, this.limit}) : super._();

  @override
  GGetUserPosts rebuild(void Function(GGetUserPostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserPostsBuilder toBuilder() => new GGetUserPostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserPosts &&
        filterType == other.filterType &&
        offset == other.offset &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filterType.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUserPosts')
          ..add('filterType', filterType)
          ..add('offset', offset)
          ..add('limit', limit))
        .toString();
  }
}

class GGetUserPostsBuilder
    implements Builder<GGetUserPosts, GGetUserPostsBuilder> {
  _$GGetUserPosts? _$v;

  int? _filterType;
  int? get filterType => _$this._filterType;
  set filterType(int? filterType) => _$this._filterType = filterType;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GGetUserPostsBuilder();

  GGetUserPostsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterType = $v.filterType;
      _offset = $v.offset;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserPosts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserPosts;
  }

  @override
  void update(void Function(GGetUserPostsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserPosts build() => _build();

  _$GGetUserPosts _build() {
    final _$result = _$v ??
        new _$GGetUserPosts._(
            filterType: filterType, offset: offset, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GLaunchJampod extends GLaunchJampod {
  @override
  final String voicepodId;
  @override
  final int visibility;
  @override
  final int? postUsertype;
  @override
  final GDateTime? startTime;
  @override
  final GDateTime? endTime;
  @override
  final BuiltList<String?>? inviteUserIds;
  @override
  final String? status;
  @override
  final bool? selectAll;

  factory _$GLaunchJampod([void Function(GLaunchJampodBuilder)? updates]) =>
      (new GLaunchJampodBuilder()..update(updates))._build();

  _$GLaunchJampod._(
      {required this.voicepodId,
      required this.visibility,
      this.postUsertype,
      this.startTime,
      this.endTime,
      this.inviteUserIds,
      this.status,
      this.selectAll})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        voicepodId, r'GLaunchJampod', 'voicepodId');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GLaunchJampod', 'visibility');
  }

  @override
  GLaunchJampod rebuild(void Function(GLaunchJampodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchJampodBuilder toBuilder() => new GLaunchJampodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchJampod &&
        voicepodId == other.voicepodId &&
        visibility == other.visibility &&
        postUsertype == other.postUsertype &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        inviteUserIds == other.inviteUserIds &&
        status == other.status &&
        selectAll == other.selectAll;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, voicepodId.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, postUsertype.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, inviteUserIds.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, selectAll.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLaunchJampod')
          ..add('voicepodId', voicepodId)
          ..add('visibility', visibility)
          ..add('postUsertype', postUsertype)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('inviteUserIds', inviteUserIds)
          ..add('status', status)
          ..add('selectAll', selectAll))
        .toString();
  }
}

class GLaunchJampodBuilder
    implements Builder<GLaunchJampod, GLaunchJampodBuilder> {
  _$GLaunchJampod? _$v;

  String? _voicepodId;
  String? get voicepodId => _$this._voicepodId;
  set voicepodId(String? voicepodId) => _$this._voicepodId = voicepodId;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  int? _postUsertype;
  int? get postUsertype => _$this._postUsertype;
  set postUsertype(int? postUsertype) => _$this._postUsertype = postUsertype;

  GDateTimeBuilder? _startTime;
  GDateTimeBuilder get startTime =>
      _$this._startTime ??= new GDateTimeBuilder();
  set startTime(GDateTimeBuilder? startTime) => _$this._startTime = startTime;

  GDateTimeBuilder? _endTime;
  GDateTimeBuilder get endTime => _$this._endTime ??= new GDateTimeBuilder();
  set endTime(GDateTimeBuilder? endTime) => _$this._endTime = endTime;

  ListBuilder<String?>? _inviteUserIds;
  ListBuilder<String?> get inviteUserIds =>
      _$this._inviteUserIds ??= new ListBuilder<String?>();
  set inviteUserIds(ListBuilder<String?>? inviteUserIds) =>
      _$this._inviteUserIds = inviteUserIds;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _selectAll;
  bool? get selectAll => _$this._selectAll;
  set selectAll(bool? selectAll) => _$this._selectAll = selectAll;

  GLaunchJampodBuilder();

  GLaunchJampodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voicepodId = $v.voicepodId;
      _visibility = $v.visibility;
      _postUsertype = $v.postUsertype;
      _startTime = $v.startTime?.toBuilder();
      _endTime = $v.endTime?.toBuilder();
      _inviteUserIds = $v.inviteUserIds?.toBuilder();
      _status = $v.status;
      _selectAll = $v.selectAll;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLaunchJampod other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchJampod;
  }

  @override
  void update(void Function(GLaunchJampodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchJampod build() => _build();

  _$GLaunchJampod _build() {
    _$GLaunchJampod _$result;
    try {
      _$result = _$v ??
          new _$GLaunchJampod._(
              voicepodId: BuiltValueNullFieldError.checkNotNull(
                  voicepodId, r'GLaunchJampod', 'voicepodId'),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'GLaunchJampod', 'visibility'),
              postUsertype: postUsertype,
              startTime: _startTime?.build(),
              endTime: _endTime?.build(),
              inviteUserIds: _inviteUserIds?.build(),
              status: status,
              selectAll: selectAll);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startTime';
        _startTime?.build();
        _$failedField = 'endTime';
        _endTime?.build();
        _$failedField = 'inviteUserIds';
        _inviteUserIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLaunchJampod', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRSVP extends GRSVP {
  @override
  final String? postId;
  @override
  final String? startTime;
  @override
  final int? visibility;

  factory _$GRSVP([void Function(GRSVPBuilder)? updates]) =>
      (new GRSVPBuilder()..update(updates))._build();

  _$GRSVP._({this.postId, this.startTime, this.visibility}) : super._();

  @override
  GRSVP rebuild(void Function(GRSVPBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRSVPBuilder toBuilder() => new GRSVPBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRSVP &&
        postId == other.postId &&
        startTime == other.startTime &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRSVP')
          ..add('postId', postId)
          ..add('startTime', startTime)
          ..add('visibility', visibility))
        .toString();
  }
}

class GRSVPBuilder implements Builder<GRSVP, GRSVPBuilder> {
  _$GRSVP? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  GRSVPBuilder();

  GRSVPBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _startTime = $v.startTime;
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRSVP other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRSVP;
  }

  @override
  void update(void Function(GRSVPBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRSVP build() => _build();

  _$GRSVP _build() {
    final _$result = _$v ??
        new _$GRSVP._(
            postId: postId, startTime: startTime, visibility: visibility);
    replace(_$result);
    return _$result;
  }
}

class _$GrepodInput extends GrepodInput {
  @override
  final String? postId;
  @override
  final String? voice_pod_id;
  @override
  final bool? isRepod;

  factory _$GrepodInput([void Function(GrepodInputBuilder)? updates]) =>
      (new GrepodInputBuilder()..update(updates))._build();

  _$GrepodInput._({this.postId, this.voice_pod_id, this.isRepod}) : super._();

  @override
  GrepodInput rebuild(void Function(GrepodInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrepodInputBuilder toBuilder() => new GrepodInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrepodInput &&
        postId == other.postId &&
        voice_pod_id == other.voice_pod_id &&
        isRepod == other.isRepod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, voice_pod_id.hashCode);
    _$hash = $jc(_$hash, isRepod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GrepodInput')
          ..add('postId', postId)
          ..add('voice_pod_id', voice_pod_id)
          ..add('isRepod', isRepod))
        .toString();
  }
}

class GrepodInputBuilder implements Builder<GrepodInput, GrepodInputBuilder> {
  _$GrepodInput? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _voice_pod_id;
  String? get voice_pod_id => _$this._voice_pod_id;
  set voice_pod_id(String? voice_pod_id) => _$this._voice_pod_id = voice_pod_id;

  bool? _isRepod;
  bool? get isRepod => _$this._isRepod;
  set isRepod(bool? isRepod) => _$this._isRepod = isRepod;

  GrepodInputBuilder();

  GrepodInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _voice_pod_id = $v.voice_pod_id;
      _isRepod = $v.isRepod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrepodInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrepodInput;
  }

  @override
  void update(void Function(GrepodInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrepodInput build() => _build();

  _$GrepodInput _build() {
    final _$result = _$v ??
        new _$GrepodInput._(
            postId: postId, voice_pod_id: voice_pod_id, isRepod: isRepod);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateWeights extends GUpdateWeights {
  @override
  final String type;
  @override
  final int weight;

  factory _$GUpdateWeights([void Function(GUpdateWeightsBuilder)? updates]) =>
      (new GUpdateWeightsBuilder()..update(updates))._build();

  _$GUpdateWeights._({required this.type, required this.weight}) : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'GUpdateWeights', 'type');
    BuiltValueNullFieldError.checkNotNull(weight, r'GUpdateWeights', 'weight');
  }

  @override
  GUpdateWeights rebuild(void Function(GUpdateWeightsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateWeightsBuilder toBuilder() =>
      new GUpdateWeightsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateWeights &&
        type == other.type &&
        weight == other.weight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateWeights')
          ..add('type', type)
          ..add('weight', weight))
        .toString();
  }
}

class GUpdateWeightsBuilder
    implements Builder<GUpdateWeights, GUpdateWeightsBuilder> {
  _$GUpdateWeights? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _weight;
  int? get weight => _$this._weight;
  set weight(int? weight) => _$this._weight = weight;

  GUpdateWeightsBuilder();

  GUpdateWeightsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _weight = $v.weight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateWeights other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateWeights;
  }

  @override
  void update(void Function(GUpdateWeightsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateWeights build() => _build();

  _$GUpdateWeights _build() {
    final _$result = _$v ??
        new _$GUpdateWeights._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GUpdateWeights', 'type'),
            weight: BuiltValueNullFieldError.checkNotNull(
                weight, r'GUpdateWeights', 'weight'));
    replace(_$result);
    return _$result;
  }
}

class _$GAssignModerator extends GAssignModerator {
  @override
  final String postId;
  @override
  final String assignModeratorId;

  factory _$GAssignModerator(
          [void Function(GAssignModeratorBuilder)? updates]) =>
      (new GAssignModeratorBuilder()..update(updates))._build();

  _$GAssignModerator._({required this.postId, required this.assignModeratorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GAssignModerator', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        assignModeratorId, r'GAssignModerator', 'assignModeratorId');
  }

  @override
  GAssignModerator rebuild(void Function(GAssignModeratorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignModeratorBuilder toBuilder() =>
      new GAssignModeratorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignModerator &&
        postId == other.postId &&
        assignModeratorId == other.assignModeratorId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, assignModeratorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAssignModerator')
          ..add('postId', postId)
          ..add('assignModeratorId', assignModeratorId))
        .toString();
  }
}

class GAssignModeratorBuilder
    implements Builder<GAssignModerator, GAssignModeratorBuilder> {
  _$GAssignModerator? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _assignModeratorId;
  String? get assignModeratorId => _$this._assignModeratorId;
  set assignModeratorId(String? assignModeratorId) =>
      _$this._assignModeratorId = assignModeratorId;

  GAssignModeratorBuilder();

  GAssignModeratorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _assignModeratorId = $v.assignModeratorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignModerator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignModerator;
  }

  @override
  void update(void Function(GAssignModeratorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAssignModerator build() => _build();

  _$GAssignModerator _build() {
    final _$result = _$v ??
        new _$GAssignModerator._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GAssignModerator', 'postId'),
            assignModeratorId: BuiltValueNullFieldError.checkNotNull(
                assignModeratorId, r'GAssignModerator', 'assignModeratorId'));
    replace(_$result);
    return _$result;
  }
}

class _$GsendPostReplyInput extends GsendPostReplyInput {
  @override
  final String? postId;
  @override
  final String? message;
  @override
  final String? audioByteId;
  @override
  final int? replyLevel;
  @override
  final String? parentReplyId;

  factory _$GsendPostReplyInput(
          [void Function(GsendPostReplyInputBuilder)? updates]) =>
      (new GsendPostReplyInputBuilder()..update(updates))._build();

  _$GsendPostReplyInput._(
      {this.postId,
      this.message,
      this.audioByteId,
      this.replyLevel,
      this.parentReplyId})
      : super._();

  @override
  GsendPostReplyInput rebuild(
          void Function(GsendPostReplyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsendPostReplyInputBuilder toBuilder() =>
      new GsendPostReplyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsendPostReplyInput &&
        postId == other.postId &&
        message == other.message &&
        audioByteId == other.audioByteId &&
        replyLevel == other.replyLevel &&
        parentReplyId == other.parentReplyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, audioByteId.hashCode);
    _$hash = $jc(_$hash, replyLevel.hashCode);
    _$hash = $jc(_$hash, parentReplyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsendPostReplyInput')
          ..add('postId', postId)
          ..add('message', message)
          ..add('audioByteId', audioByteId)
          ..add('replyLevel', replyLevel)
          ..add('parentReplyId', parentReplyId))
        .toString();
  }
}

class GsendPostReplyInputBuilder
    implements Builder<GsendPostReplyInput, GsendPostReplyInputBuilder> {
  _$GsendPostReplyInput? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _audioByteId;
  String? get audioByteId => _$this._audioByteId;
  set audioByteId(String? audioByteId) => _$this._audioByteId = audioByteId;

  int? _replyLevel;
  int? get replyLevel => _$this._replyLevel;
  set replyLevel(int? replyLevel) => _$this._replyLevel = replyLevel;

  String? _parentReplyId;
  String? get parentReplyId => _$this._parentReplyId;
  set parentReplyId(String? parentReplyId) =>
      _$this._parentReplyId = parentReplyId;

  GsendPostReplyInputBuilder();

  GsendPostReplyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _message = $v.message;
      _audioByteId = $v.audioByteId;
      _replyLevel = $v.replyLevel;
      _parentReplyId = $v.parentReplyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsendPostReplyInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsendPostReplyInput;
  }

  @override
  void update(void Function(GsendPostReplyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsendPostReplyInput build() => _build();

  _$GsendPostReplyInput _build() {
    final _$result = _$v ??
        new _$GsendPostReplyInput._(
            postId: postId,
            message: message,
            audioByteId: audioByteId,
            replyLevel: replyLevel,
            parentReplyId: parentReplyId);
    replace(_$result);
    return _$result;
  }
}

class _$GacceptRejectInput extends GacceptRejectInput {
  @override
  final int? postId;
  @override
  final int? type;
  @override
  final int? userId;

  factory _$GacceptRejectInput(
          [void Function(GacceptRejectInputBuilder)? updates]) =>
      (new GacceptRejectInputBuilder()..update(updates))._build();

  _$GacceptRejectInput._({this.postId, this.type, this.userId}) : super._();

  @override
  GacceptRejectInput rebuild(
          void Function(GacceptRejectInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GacceptRejectInputBuilder toBuilder() =>
      new GacceptRejectInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GacceptRejectInput &&
        postId == other.postId &&
        type == other.type &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GacceptRejectInput')
          ..add('postId', postId)
          ..add('type', type)
          ..add('userId', userId))
        .toString();
  }
}

class GacceptRejectInputBuilder
    implements Builder<GacceptRejectInput, GacceptRejectInputBuilder> {
  _$GacceptRejectInput? _$v;

  int? _postId;
  int? get postId => _$this._postId;
  set postId(int? postId) => _$this._postId = postId;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  GacceptRejectInputBuilder();

  GacceptRejectInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _type = $v.type;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GacceptRejectInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GacceptRejectInput;
  }

  @override
  void update(void Function(GacceptRejectInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GacceptRejectInput build() => _build();

  _$GacceptRejectInput _build() {
    final _$result = _$v ??
        new _$GacceptRejectInput._(postId: postId, type: type, userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUpdateTrendingHashtagsInput
    extends GCreateUpdateTrendingHashtagsInput {
  @override
  final int type;
  @override
  final BuiltList<String> listOfHashtags;

  factory _$GCreateUpdateTrendingHashtagsInput(
          [void Function(GCreateUpdateTrendingHashtagsInputBuilder)?
              updates]) =>
      (new GCreateUpdateTrendingHashtagsInputBuilder()..update(updates))
          ._build();

  _$GCreateUpdateTrendingHashtagsInput._(
      {required this.type, required this.listOfHashtags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'GCreateUpdateTrendingHashtagsInput', 'type');
    BuiltValueNullFieldError.checkNotNull(listOfHashtags,
        r'GCreateUpdateTrendingHashtagsInput', 'listOfHashtags');
  }

  @override
  GCreateUpdateTrendingHashtagsInput rebuild(
          void Function(GCreateUpdateTrendingHashtagsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUpdateTrendingHashtagsInputBuilder toBuilder() =>
      new GCreateUpdateTrendingHashtagsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUpdateTrendingHashtagsInput &&
        type == other.type &&
        listOfHashtags == other.listOfHashtags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, listOfHashtags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUpdateTrendingHashtagsInput')
          ..add('type', type)
          ..add('listOfHashtags', listOfHashtags))
        .toString();
  }
}

class GCreateUpdateTrendingHashtagsInputBuilder
    implements
        Builder<GCreateUpdateTrendingHashtagsInput,
            GCreateUpdateTrendingHashtagsInputBuilder> {
  _$GCreateUpdateTrendingHashtagsInput? _$v;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  ListBuilder<String>? _listOfHashtags;
  ListBuilder<String> get listOfHashtags =>
      _$this._listOfHashtags ??= new ListBuilder<String>();
  set listOfHashtags(ListBuilder<String>? listOfHashtags) =>
      _$this._listOfHashtags = listOfHashtags;

  GCreateUpdateTrendingHashtagsInputBuilder();

  GCreateUpdateTrendingHashtagsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _listOfHashtags = $v.listOfHashtags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUpdateTrendingHashtagsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUpdateTrendingHashtagsInput;
  }

  @override
  void update(
      void Function(GCreateUpdateTrendingHashtagsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUpdateTrendingHashtagsInput build() => _build();

  _$GCreateUpdateTrendingHashtagsInput _build() {
    _$GCreateUpdateTrendingHashtagsInput _$result;
    try {
      _$result = _$v ??
          new _$GCreateUpdateTrendingHashtagsInput._(
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'GCreateUpdateTrendingHashtagsInput', 'type'),
              listOfHashtags: listOfHashtags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfHashtags';
        listOfHashtags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUpdateTrendingHashtagsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDateTime extends GDateTime {
  @override
  final String value;

  factory _$GDateTime([void Function(GDateTimeBuilder)? updates]) =>
      (new GDateTimeBuilder()..update(updates))._build();

  _$GDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDateTime', 'value');
  }

  @override
  GDateTime rebuild(void Function(GDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeBuilder toBuilder() => new GDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTime && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDateTime')..add('value', value))
        .toString();
  }
}

class GDateTimeBuilder implements Builder<GDateTime, GDateTimeBuilder> {
  _$GDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeBuilder();

  GDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTime;
  }

  @override
  void update(void Function(GDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDateTime build() => _build();

  _$GDateTime _build() {
    final _$result = _$v ??
        new _$GDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GDate extends GDate {
  @override
  final String value;

  factory _$GDate([void Function(GDateBuilder)? updates]) =>
      (new GDateBuilder()..update(updates))._build();

  _$GDate._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDate', 'value');
  }

  @override
  GDate rebuild(void Function(GDateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateBuilder toBuilder() => new GDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDate && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDate')..add('value', value))
        .toString();
  }
}

class GDateBuilder implements Builder<GDate, GDateBuilder> {
  _$GDate? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateBuilder();

  GDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDate;
  }

  @override
  void update(void Function(GDateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDate build() => _build();

  _$GDate _build() {
    final _$result = _$v ??
        new _$GDate._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDate', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GSendMessage extends GSendMessage {
  @override
  final String? conversationId;
  @override
  final String toUserId;
  @override
  final String message;
  @override
  final BuiltList<GMessageMediaInput?>? media;
  @override
  final int? messageType;

  factory _$GSendMessage([void Function(GSendMessageBuilder)? updates]) =>
      (new GSendMessageBuilder()..update(updates))._build();

  _$GSendMessage._(
      {this.conversationId,
      required this.toUserId,
      required this.message,
      this.media,
      this.messageType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        toUserId, r'GSendMessage', 'toUserId');
    BuiltValueNullFieldError.checkNotNull(message, r'GSendMessage', 'message');
  }

  @override
  GSendMessage rebuild(void Function(GSendMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendMessageBuilder toBuilder() => new GSendMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendMessage &&
        conversationId == other.conversationId &&
        toUserId == other.toUserId &&
        message == other.message &&
        media == other.media &&
        messageType == other.messageType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conversationId.hashCode);
    _$hash = $jc(_$hash, toUserId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, messageType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendMessage')
          ..add('conversationId', conversationId)
          ..add('toUserId', toUserId)
          ..add('message', message)
          ..add('media', media)
          ..add('messageType', messageType))
        .toString();
  }
}

class GSendMessageBuilder
    implements Builder<GSendMessage, GSendMessageBuilder> {
  _$GSendMessage? _$v;

  String? _conversationId;
  String? get conversationId => _$this._conversationId;
  set conversationId(String? conversationId) =>
      _$this._conversationId = conversationId;

  String? _toUserId;
  String? get toUserId => _$this._toUserId;
  set toUserId(String? toUserId) => _$this._toUserId = toUserId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<GMessageMediaInput?>? _media;
  ListBuilder<GMessageMediaInput?> get media =>
      _$this._media ??= new ListBuilder<GMessageMediaInput?>();
  set media(ListBuilder<GMessageMediaInput?>? media) => _$this._media = media;

  int? _messageType;
  int? get messageType => _$this._messageType;
  set messageType(int? messageType) => _$this._messageType = messageType;

  GSendMessageBuilder();

  GSendMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversationId = $v.conversationId;
      _toUserId = $v.toUserId;
      _message = $v.message;
      _media = $v.media?.toBuilder();
      _messageType = $v.messageType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendMessage;
  }

  @override
  void update(void Function(GSendMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendMessage build() => _build();

  _$GSendMessage _build() {
    _$GSendMessage _$result;
    try {
      _$result = _$v ??
          new _$GSendMessage._(
              conversationId: conversationId,
              toUserId: BuiltValueNullFieldError.checkNotNull(
                  toUserId, r'GSendMessage', 'toUserId'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GSendMessage', 'message'),
              media: _media?.build(),
              messageType: messageType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSendMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMessageMediaInput extends GMessageMediaInput {
  @override
  final int? type;
  @override
  final String? media;
  @override
  final String? thumbnail;

  factory _$GMessageMediaInput(
          [void Function(GMessageMediaInputBuilder)? updates]) =>
      (new GMessageMediaInputBuilder()..update(updates))._build();

  _$GMessageMediaInput._({this.type, this.media, this.thumbnail}) : super._();

  @override
  GMessageMediaInput rebuild(
          void Function(GMessageMediaInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageMediaInputBuilder toBuilder() =>
      new GMessageMediaInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageMediaInput &&
        type == other.type &&
        media == other.media &&
        thumbnail == other.thumbnail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMessageMediaInput')
          ..add('type', type)
          ..add('media', media)
          ..add('thumbnail', thumbnail))
        .toString();
  }
}

class GMessageMediaInputBuilder
    implements Builder<GMessageMediaInput, GMessageMediaInputBuilder> {
  _$GMessageMediaInput? _$v;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  String? _media;
  String? get media => _$this._media;
  set media(String? media) => _$this._media = media;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  GMessageMediaInputBuilder();

  GMessageMediaInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _media = $v.media;
      _thumbnail = $v.thumbnail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessageMediaInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageMediaInput;
  }

  @override
  void update(void Function(GMessageMediaInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMessageMediaInput build() => _build();

  _$GMessageMediaInput _build() {
    final _$result = _$v ??
        new _$GMessageMediaInput._(
            type: type, media: media, thumbnail: thumbnail);
    replace(_$result);
    return _$result;
  }
}

class _$GAddService extends GAddService {
  @override
  final String title;
  @override
  final String? description;
  @override
  final BuiltList<String?>? categories;
  @override
  final String? servicePicId;
  @override
  final int serviceType;
  @override
  final int? minMembers;
  @override
  final int? maxMembers;
  @override
  final int? minPrice;
  @override
  final int? maxPrice;
  @override
  final bool? draft;

  factory _$GAddService([void Function(GAddServiceBuilder)? updates]) =>
      (new GAddServiceBuilder()..update(updates))._build();

  _$GAddService._(
      {required this.title,
      this.description,
      this.categories,
      this.servicePicId,
      required this.serviceType,
      this.minMembers,
      this.maxMembers,
      this.minPrice,
      this.maxPrice,
      this.draft})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'GAddService', 'title');
    BuiltValueNullFieldError.checkNotNull(
        serviceType, r'GAddService', 'serviceType');
  }

  @override
  GAddService rebuild(void Function(GAddServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddServiceBuilder toBuilder() => new GAddServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddService &&
        title == other.title &&
        description == other.description &&
        categories == other.categories &&
        servicePicId == other.servicePicId &&
        serviceType == other.serviceType &&
        minMembers == other.minMembers &&
        maxMembers == other.maxMembers &&
        minPrice == other.minPrice &&
        maxPrice == other.maxPrice &&
        draft == other.draft;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, servicePicId.hashCode);
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, minMembers.hashCode);
    _$hash = $jc(_$hash, maxMembers.hashCode);
    _$hash = $jc(_$hash, minPrice.hashCode);
    _$hash = $jc(_$hash, maxPrice.hashCode);
    _$hash = $jc(_$hash, draft.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddService')
          ..add('title', title)
          ..add('description', description)
          ..add('categories', categories)
          ..add('servicePicId', servicePicId)
          ..add('serviceType', serviceType)
          ..add('minMembers', minMembers)
          ..add('maxMembers', maxMembers)
          ..add('minPrice', minPrice)
          ..add('maxPrice', maxPrice)
          ..add('draft', draft))
        .toString();
  }
}

class GAddServiceBuilder implements Builder<GAddService, GAddServiceBuilder> {
  _$GAddService? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String?>? _categories;
  ListBuilder<String?> get categories =>
      _$this._categories ??= new ListBuilder<String?>();
  set categories(ListBuilder<String?>? categories) =>
      _$this._categories = categories;

  String? _servicePicId;
  String? get servicePicId => _$this._servicePicId;
  set servicePicId(String? servicePicId) => _$this._servicePicId = servicePicId;

  int? _serviceType;
  int? get serviceType => _$this._serviceType;
  set serviceType(int? serviceType) => _$this._serviceType = serviceType;

  int? _minMembers;
  int? get minMembers => _$this._minMembers;
  set minMembers(int? minMembers) => _$this._minMembers = minMembers;

  int? _maxMembers;
  int? get maxMembers => _$this._maxMembers;
  set maxMembers(int? maxMembers) => _$this._maxMembers = maxMembers;

  int? _minPrice;
  int? get minPrice => _$this._minPrice;
  set minPrice(int? minPrice) => _$this._minPrice = minPrice;

  int? _maxPrice;
  int? get maxPrice => _$this._maxPrice;
  set maxPrice(int? maxPrice) => _$this._maxPrice = maxPrice;

  bool? _draft;
  bool? get draft => _$this._draft;
  set draft(bool? draft) => _$this._draft = draft;

  GAddServiceBuilder();

  GAddServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _categories = $v.categories?.toBuilder();
      _servicePicId = $v.servicePicId;
      _serviceType = $v.serviceType;
      _minMembers = $v.minMembers;
      _maxMembers = $v.maxMembers;
      _minPrice = $v.minPrice;
      _maxPrice = $v.maxPrice;
      _draft = $v.draft;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddService other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddService;
  }

  @override
  void update(void Function(GAddServiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddService build() => _build();

  _$GAddService _build() {
    _$GAddService _$result;
    try {
      _$result = _$v ??
          new _$GAddService._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GAddService', 'title'),
              description: description,
              categories: _categories?.build(),
              servicePicId: servicePicId,
              serviceType: BuiltValueNullFieldError.checkNotNull(
                  serviceType, r'GAddService', 'serviceType'),
              minMembers: minMembers,
              maxMembers: maxMembers,
              minPrice: minPrice,
              maxPrice: maxPrice,
              draft: draft);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddService', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetNotificationsInput extends GGetNotificationsInput {
  @override
  final String notificationCategory;
  @override
  final int? offset;
  @override
  final int? limit;

  factory _$GGetNotificationsInput(
          [void Function(GGetNotificationsInputBuilder)? updates]) =>
      (new GGetNotificationsInputBuilder()..update(updates))._build();

  _$GGetNotificationsInput._(
      {required this.notificationCategory, this.offset, this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(notificationCategory,
        r'GGetNotificationsInput', 'notificationCategory');
  }

  @override
  GGetNotificationsInput rebuild(
          void Function(GGetNotificationsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetNotificationsInputBuilder toBuilder() =>
      new GGetNotificationsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetNotificationsInput &&
        notificationCategory == other.notificationCategory &&
        offset == other.offset &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notificationCategory.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetNotificationsInput')
          ..add('notificationCategory', notificationCategory)
          ..add('offset', offset)
          ..add('limit', limit))
        .toString();
  }
}

class GGetNotificationsInputBuilder
    implements Builder<GGetNotificationsInput, GGetNotificationsInputBuilder> {
  _$GGetNotificationsInput? _$v;

  String? _notificationCategory;
  String? get notificationCategory => _$this._notificationCategory;
  set notificationCategory(String? notificationCategory) =>
      _$this._notificationCategory = notificationCategory;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GGetNotificationsInputBuilder();

  GGetNotificationsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationCategory = $v.notificationCategory;
      _offset = $v.offset;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetNotificationsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetNotificationsInput;
  }

  @override
  void update(void Function(GGetNotificationsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetNotificationsInput build() => _build();

  _$GGetNotificationsInput _build() {
    final _$result = _$v ??
        new _$GGetNotificationsInput._(
            notificationCategory: BuiltValueNullFieldError.checkNotNull(
                notificationCategory,
                r'GGetNotificationsInput',
                'notificationCategory'),
            offset: offset,
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsSeenInput extends GNotificationsSeenInput {
  @override
  final BuiltList<String?> notificationIds;

  factory _$GNotificationsSeenInput(
          [void Function(GNotificationsSeenInputBuilder)? updates]) =>
      (new GNotificationsSeenInputBuilder()..update(updates))._build();

  _$GNotificationsSeenInput._({required this.notificationIds}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        notificationIds, r'GNotificationsSeenInput', 'notificationIds');
  }

  @override
  GNotificationsSeenInput rebuild(
          void Function(GNotificationsSeenInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsSeenInputBuilder toBuilder() =>
      new GNotificationsSeenInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationsSeenInput &&
        notificationIds == other.notificationIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notificationIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationsSeenInput')
          ..add('notificationIds', notificationIds))
        .toString();
  }
}

class GNotificationsSeenInputBuilder
    implements
        Builder<GNotificationsSeenInput, GNotificationsSeenInputBuilder> {
  _$GNotificationsSeenInput? _$v;

  ListBuilder<String?>? _notificationIds;
  ListBuilder<String?> get notificationIds =>
      _$this._notificationIds ??= new ListBuilder<String?>();
  set notificationIds(ListBuilder<String?>? notificationIds) =>
      _$this._notificationIds = notificationIds;

  GNotificationsSeenInputBuilder();

  GNotificationsSeenInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationIds = $v.notificationIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationsSeenInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationsSeenInput;
  }

  @override
  void update(void Function(GNotificationsSeenInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsSeenInput build() => _build();

  _$GNotificationsSeenInput _build() {
    _$GNotificationsSeenInput _$result;
    try {
      _$result = _$v ??
          new _$GNotificationsSeenInput._(
              notificationIds: notificationIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notificationIds';
        notificationIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationsSeenInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserNotificationSettingsInput
    extends GUpdateUserNotificationSettingsInput {
  @override
  final bool? allNotifications;
  @override
  final bool? lockScreenNotifications;
  @override
  final bool? floatingNotification;
  @override
  final bool? showNewFollower;
  @override
  final bool? showVoicePodComments;
  @override
  final bool? showFollowingActivity;
  @override
  final bool? showJampodSessions;

  factory _$GUpdateUserNotificationSettingsInput(
          [void Function(GUpdateUserNotificationSettingsInputBuilder)?
              updates]) =>
      (new GUpdateUserNotificationSettingsInputBuilder()..update(updates))
          ._build();

  _$GUpdateUserNotificationSettingsInput._(
      {this.allNotifications,
      this.lockScreenNotifications,
      this.floatingNotification,
      this.showNewFollower,
      this.showVoicePodComments,
      this.showFollowingActivity,
      this.showJampodSessions})
      : super._();

  @override
  GUpdateUserNotificationSettingsInput rebuild(
          void Function(GUpdateUserNotificationSettingsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserNotificationSettingsInputBuilder toBuilder() =>
      new GUpdateUserNotificationSettingsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserNotificationSettingsInput &&
        allNotifications == other.allNotifications &&
        lockScreenNotifications == other.lockScreenNotifications &&
        floatingNotification == other.floatingNotification &&
        showNewFollower == other.showNewFollower &&
        showVoicePodComments == other.showVoicePodComments &&
        showFollowingActivity == other.showFollowingActivity &&
        showJampodSessions == other.showJampodSessions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allNotifications.hashCode);
    _$hash = $jc(_$hash, lockScreenNotifications.hashCode);
    _$hash = $jc(_$hash, floatingNotification.hashCode);
    _$hash = $jc(_$hash, showNewFollower.hashCode);
    _$hash = $jc(_$hash, showVoicePodComments.hashCode);
    _$hash = $jc(_$hash, showFollowingActivity.hashCode);
    _$hash = $jc(_$hash, showJampodSessions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserNotificationSettingsInput')
          ..add('allNotifications', allNotifications)
          ..add('lockScreenNotifications', lockScreenNotifications)
          ..add('floatingNotification', floatingNotification)
          ..add('showNewFollower', showNewFollower)
          ..add('showVoicePodComments', showVoicePodComments)
          ..add('showFollowingActivity', showFollowingActivity)
          ..add('showJampodSessions', showJampodSessions))
        .toString();
  }
}

class GUpdateUserNotificationSettingsInputBuilder
    implements
        Builder<GUpdateUserNotificationSettingsInput,
            GUpdateUserNotificationSettingsInputBuilder> {
  _$GUpdateUserNotificationSettingsInput? _$v;

  bool? _allNotifications;
  bool? get allNotifications => _$this._allNotifications;
  set allNotifications(bool? allNotifications) =>
      _$this._allNotifications = allNotifications;

  bool? _lockScreenNotifications;
  bool? get lockScreenNotifications => _$this._lockScreenNotifications;
  set lockScreenNotifications(bool? lockScreenNotifications) =>
      _$this._lockScreenNotifications = lockScreenNotifications;

  bool? _floatingNotification;
  bool? get floatingNotification => _$this._floatingNotification;
  set floatingNotification(bool? floatingNotification) =>
      _$this._floatingNotification = floatingNotification;

  bool? _showNewFollower;
  bool? get showNewFollower => _$this._showNewFollower;
  set showNewFollower(bool? showNewFollower) =>
      _$this._showNewFollower = showNewFollower;

  bool? _showVoicePodComments;
  bool? get showVoicePodComments => _$this._showVoicePodComments;
  set showVoicePodComments(bool? showVoicePodComments) =>
      _$this._showVoicePodComments = showVoicePodComments;

  bool? _showFollowingActivity;
  bool? get showFollowingActivity => _$this._showFollowingActivity;
  set showFollowingActivity(bool? showFollowingActivity) =>
      _$this._showFollowingActivity = showFollowingActivity;

  bool? _showJampodSessions;
  bool? get showJampodSessions => _$this._showJampodSessions;
  set showJampodSessions(bool? showJampodSessions) =>
      _$this._showJampodSessions = showJampodSessions;

  GUpdateUserNotificationSettingsInputBuilder();

  GUpdateUserNotificationSettingsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allNotifications = $v.allNotifications;
      _lockScreenNotifications = $v.lockScreenNotifications;
      _floatingNotification = $v.floatingNotification;
      _showNewFollower = $v.showNewFollower;
      _showVoicePodComments = $v.showVoicePodComments;
      _showFollowingActivity = $v.showFollowingActivity;
      _showJampodSessions = $v.showJampodSessions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserNotificationSettingsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserNotificationSettingsInput;
  }

  @override
  void update(
      void Function(GUpdateUserNotificationSettingsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserNotificationSettingsInput build() => _build();

  _$GUpdateUserNotificationSettingsInput _build() {
    final _$result = _$v ??
        new _$GUpdateUserNotificationSettingsInput._(
            allNotifications: allNotifications,
            lockScreenNotifications: lockScreenNotifications,
            floatingNotification: floatingNotification,
            showNewFollower: showNewFollower,
            showVoicePodComments: showVoicePodComments,
            showFollowingActivity: showFollowingActivity,
            showJampodSessions: showJampodSessions);
    replace(_$result);
    return _$result;
  }
}

class _$GaddEffect extends GaddEffect {
  @override
  final String? name;
  @override
  final String? audio;
  @override
  final String? icon;

  factory _$GaddEffect([void Function(GaddEffectBuilder)? updates]) =>
      (new GaddEffectBuilder()..update(updates))._build();

  _$GaddEffect._({this.name, this.audio, this.icon}) : super._();

  @override
  GaddEffect rebuild(void Function(GaddEffectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaddEffectBuilder toBuilder() => new GaddEffectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GaddEffect &&
        name == other.name &&
        audio == other.audio &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, audio.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GaddEffect')
          ..add('name', name)
          ..add('audio', audio)
          ..add('icon', icon))
        .toString();
  }
}

class GaddEffectBuilder implements Builder<GaddEffect, GaddEffectBuilder> {
  _$GaddEffect? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _audio;
  String? get audio => _$this._audio;
  set audio(String? audio) => _$this._audio = audio;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  GaddEffectBuilder();

  GaddEffectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _audio = $v.audio;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GaddEffect other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GaddEffect;
  }

  @override
  void update(void Function(GaddEffectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GaddEffect build() => _build();

  _$GaddEffect _build() {
    final _$result =
        _$v ?? new _$GaddEffect._(name: name, audio: audio, icon: icon);
    replace(_$result);
    return _$result;
  }
}

class _$GGetInvitesPerDayPerUserInput extends GGetInvitesPerDayPerUserInput {
  @override
  final String? searchByUsername;
  @override
  final String? searchByStartDate;
  @override
  final String? searchByEndDate;
  @override
  final bool? isSuccessfulInvite;

  factory _$GGetInvitesPerDayPerUserInput(
          [void Function(GGetInvitesPerDayPerUserInputBuilder)? updates]) =>
      (new GGetInvitesPerDayPerUserInputBuilder()..update(updates))._build();

  _$GGetInvitesPerDayPerUserInput._(
      {this.searchByUsername,
      this.searchByStartDate,
      this.searchByEndDate,
      this.isSuccessfulInvite})
      : super._();

  @override
  GGetInvitesPerDayPerUserInput rebuild(
          void Function(GGetInvitesPerDayPerUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetInvitesPerDayPerUserInputBuilder toBuilder() =>
      new GGetInvitesPerDayPerUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetInvitesPerDayPerUserInput &&
        searchByUsername == other.searchByUsername &&
        searchByStartDate == other.searchByStartDate &&
        searchByEndDate == other.searchByEndDate &&
        isSuccessfulInvite == other.isSuccessfulInvite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, searchByUsername.hashCode);
    _$hash = $jc(_$hash, searchByStartDate.hashCode);
    _$hash = $jc(_$hash, searchByEndDate.hashCode);
    _$hash = $jc(_$hash, isSuccessfulInvite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetInvitesPerDayPerUserInput')
          ..add('searchByUsername', searchByUsername)
          ..add('searchByStartDate', searchByStartDate)
          ..add('searchByEndDate', searchByEndDate)
          ..add('isSuccessfulInvite', isSuccessfulInvite))
        .toString();
  }
}

class GGetInvitesPerDayPerUserInputBuilder
    implements
        Builder<GGetInvitesPerDayPerUserInput,
            GGetInvitesPerDayPerUserInputBuilder> {
  _$GGetInvitesPerDayPerUserInput? _$v;

  String? _searchByUsername;
  String? get searchByUsername => _$this._searchByUsername;
  set searchByUsername(String? searchByUsername) =>
      _$this._searchByUsername = searchByUsername;

  String? _searchByStartDate;
  String? get searchByStartDate => _$this._searchByStartDate;
  set searchByStartDate(String? searchByStartDate) =>
      _$this._searchByStartDate = searchByStartDate;

  String? _searchByEndDate;
  String? get searchByEndDate => _$this._searchByEndDate;
  set searchByEndDate(String? searchByEndDate) =>
      _$this._searchByEndDate = searchByEndDate;

  bool? _isSuccessfulInvite;
  bool? get isSuccessfulInvite => _$this._isSuccessfulInvite;
  set isSuccessfulInvite(bool? isSuccessfulInvite) =>
      _$this._isSuccessfulInvite = isSuccessfulInvite;

  GGetInvitesPerDayPerUserInputBuilder();

  GGetInvitesPerDayPerUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchByUsername = $v.searchByUsername;
      _searchByStartDate = $v.searchByStartDate;
      _searchByEndDate = $v.searchByEndDate;
      _isSuccessfulInvite = $v.isSuccessfulInvite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetInvitesPerDayPerUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetInvitesPerDayPerUserInput;
  }

  @override
  void update(void Function(GGetInvitesPerDayPerUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetInvitesPerDayPerUserInput build() => _build();

  _$GGetInvitesPerDayPerUserInput _build() {
    final _$result = _$v ??
        new _$GGetInvitesPerDayPerUserInput._(
            searchByUsername: searchByUsername,
            searchByStartDate: searchByStartDate,
            searchByEndDate: searchByEndDate,
            isSuccessfulInvite: isSuccessfulInvite);
    replace(_$result);
    return _$result;
  }
}

class _$GCheckPhoneNumberInBulkUsersInput
    extends GCheckPhoneNumberInBulkUsersInput {
  @override
  final String? phoneNumber;
  @override
  final String? usersInviteBulkDocumentId;
  @override
  final String? username;

  factory _$GCheckPhoneNumberInBulkUsersInput(
          [void Function(GCheckPhoneNumberInBulkUsersInputBuilder)? updates]) =>
      (new GCheckPhoneNumberInBulkUsersInputBuilder()..update(updates))
          ._build();

  _$GCheckPhoneNumberInBulkUsersInput._(
      {this.phoneNumber, this.usersInviteBulkDocumentId, this.username})
      : super._();

  @override
  GCheckPhoneNumberInBulkUsersInput rebuild(
          void Function(GCheckPhoneNumberInBulkUsersInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckPhoneNumberInBulkUsersInputBuilder toBuilder() =>
      new GCheckPhoneNumberInBulkUsersInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckPhoneNumberInBulkUsersInput &&
        phoneNumber == other.phoneNumber &&
        usersInviteBulkDocumentId == other.usersInviteBulkDocumentId &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, usersInviteBulkDocumentId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCheckPhoneNumberInBulkUsersInput')
          ..add('phoneNumber', phoneNumber)
          ..add('usersInviteBulkDocumentId', usersInviteBulkDocumentId)
          ..add('username', username))
        .toString();
  }
}

class GCheckPhoneNumberInBulkUsersInputBuilder
    implements
        Builder<GCheckPhoneNumberInBulkUsersInput,
            GCheckPhoneNumberInBulkUsersInputBuilder> {
  _$GCheckPhoneNumberInBulkUsersInput? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _usersInviteBulkDocumentId;
  String? get usersInviteBulkDocumentId => _$this._usersInviteBulkDocumentId;
  set usersInviteBulkDocumentId(String? usersInviteBulkDocumentId) =>
      _$this._usersInviteBulkDocumentId = usersInviteBulkDocumentId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GCheckPhoneNumberInBulkUsersInputBuilder();

  GCheckPhoneNumberInBulkUsersInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _usersInviteBulkDocumentId = $v.usersInviteBulkDocumentId;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckPhoneNumberInBulkUsersInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckPhoneNumberInBulkUsersInput;
  }

  @override
  void update(
      void Function(GCheckPhoneNumberInBulkUsersInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCheckPhoneNumberInBulkUsersInput build() => _build();

  _$GCheckPhoneNumberInBulkUsersInput _build() {
    final _$result = _$v ??
        new _$GCheckPhoneNumberInBulkUsersInput._(
            phoneNumber: phoneNumber,
            usersInviteBulkDocumentId: usersInviteBulkDocumentId,
            username: username);
    replace(_$result);
    return _$result;
  }
}

class _$GInviteUserInputObject extends GInviteUserInputObject {
  @override
  final String? username;
  @override
  final String? phoneNumber;
  @override
  final String? gender;

  factory _$GInviteUserInputObject(
          [void Function(GInviteUserInputObjectBuilder)? updates]) =>
      (new GInviteUserInputObjectBuilder()..update(updates))._build();

  _$GInviteUserInputObject._({this.username, this.phoneNumber, this.gender})
      : super._();

  @override
  GInviteUserInputObject rebuild(
          void Function(GInviteUserInputObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInviteUserInputObjectBuilder toBuilder() =>
      new GInviteUserInputObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInviteUserInputObject &&
        username == other.username &&
        phoneNumber == other.phoneNumber &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInviteUserInputObject')
          ..add('username', username)
          ..add('phoneNumber', phoneNumber)
          ..add('gender', gender))
        .toString();
  }
}

class GInviteUserInputObjectBuilder
    implements Builder<GInviteUserInputObject, GInviteUserInputObjectBuilder> {
  _$GInviteUserInputObject? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  GInviteUserInputObjectBuilder();

  GInviteUserInputObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _phoneNumber = $v.phoneNumber;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInviteUserInputObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInviteUserInputObject;
  }

  @override
  void update(void Function(GInviteUserInputObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInviteUserInputObject build() => _build();

  _$GInviteUserInputObject _build() {
    final _$result = _$v ??
        new _$GInviteUserInputObject._(
            username: username, phoneNumber: phoneNumber, gender: gender);
    replace(_$result);
    return _$result;
  }
}

class _$GInviteUserInput extends GInviteUserInput {
  @override
  final GInviteUserInputObject data;

  factory _$GInviteUserInput(
          [void Function(GInviteUserInputBuilder)? updates]) =>
      (new GInviteUserInputBuilder()..update(updates))._build();

  _$GInviteUserInput._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GInviteUserInput', 'data');
  }

  @override
  GInviteUserInput rebuild(void Function(GInviteUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInviteUserInputBuilder toBuilder() =>
      new GInviteUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInviteUserInput && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInviteUserInput')..add('data', data))
        .toString();
  }
}

class GInviteUserInputBuilder
    implements Builder<GInviteUserInput, GInviteUserInputBuilder> {
  _$GInviteUserInput? _$v;

  GInviteUserInputObjectBuilder? _data;
  GInviteUserInputObjectBuilder get data =>
      _$this._data ??= new GInviteUserInputObjectBuilder();
  set data(GInviteUserInputObjectBuilder? data) => _$this._data = data;

  GInviteUserInputBuilder();

  GInviteUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInviteUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInviteUserInput;
  }

  @override
  void update(void Function(GInviteUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInviteUserInput build() => _build();

  _$GInviteUserInput _build() {
    _$GInviteUserInput _$result;
    try {
      _$result = _$v ?? new _$GInviteUserInput._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GInviteUserInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGenderChosenByInviteeInput extends GGenderChosenByInviteeInput {
  @override
  final String usersInviteDocumentId;
  @override
  final String genderChosen;
  @override
  final String? phoneNumber;

  factory _$GGenderChosenByInviteeInput(
          [void Function(GGenderChosenByInviteeInputBuilder)? updates]) =>
      (new GGenderChosenByInviteeInputBuilder()..update(updates))._build();

  _$GGenderChosenByInviteeInput._(
      {required this.usersInviteDocumentId,
      required this.genderChosen,
      this.phoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(usersInviteDocumentId,
        r'GGenderChosenByInviteeInput', 'usersInviteDocumentId');
    BuiltValueNullFieldError.checkNotNull(
        genderChosen, r'GGenderChosenByInviteeInput', 'genderChosen');
  }

  @override
  GGenderChosenByInviteeInput rebuild(
          void Function(GGenderChosenByInviteeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGenderChosenByInviteeInputBuilder toBuilder() =>
      new GGenderChosenByInviteeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGenderChosenByInviteeInput &&
        usersInviteDocumentId == other.usersInviteDocumentId &&
        genderChosen == other.genderChosen &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usersInviteDocumentId.hashCode);
    _$hash = $jc(_$hash, genderChosen.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGenderChosenByInviteeInput')
          ..add('usersInviteDocumentId', usersInviteDocumentId)
          ..add('genderChosen', genderChosen)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class GGenderChosenByInviteeInputBuilder
    implements
        Builder<GGenderChosenByInviteeInput,
            GGenderChosenByInviteeInputBuilder> {
  _$GGenderChosenByInviteeInput? _$v;

  String? _usersInviteDocumentId;
  String? get usersInviteDocumentId => _$this._usersInviteDocumentId;
  set usersInviteDocumentId(String? usersInviteDocumentId) =>
      _$this._usersInviteDocumentId = usersInviteDocumentId;

  String? _genderChosen;
  String? get genderChosen => _$this._genderChosen;
  set genderChosen(String? genderChosen) => _$this._genderChosen = genderChosen;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  GGenderChosenByInviteeInputBuilder();

  GGenderChosenByInviteeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usersInviteDocumentId = $v.usersInviteDocumentId;
      _genderChosen = $v.genderChosen;
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGenderChosenByInviteeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGenderChosenByInviteeInput;
  }

  @override
  void update(void Function(GGenderChosenByInviteeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGenderChosenByInviteeInput build() => _build();

  _$GGenderChosenByInviteeInput _build() {
    final _$result = _$v ??
        new _$GGenderChosenByInviteeInput._(
            usersInviteDocumentId: BuiltValueNullFieldError.checkNotNull(
                usersInviteDocumentId,
                r'GGenderChosenByInviteeInput',
                'usersInviteDocumentId'),
            genderChosen: BuiltValueNullFieldError.checkNotNull(
                genderChosen, r'GGenderChosenByInviteeInput', 'genderChosen'),
            phoneNumber: phoneNumber);
    replace(_$result);
    return _$result;
  }
}

class _$GAcceptRejectRequestInput extends GAcceptRejectRequestInput {
  @override
  final String? usersInviteDocumentId;
  @override
  final String? acceptedOrRejectedStatus;

  factory _$GAcceptRejectRequestInput(
          [void Function(GAcceptRejectRequestInputBuilder)? updates]) =>
      (new GAcceptRejectRequestInputBuilder()..update(updates))._build();

  _$GAcceptRejectRequestInput._(
      {this.usersInviteDocumentId, this.acceptedOrRejectedStatus})
      : super._();

  @override
  GAcceptRejectRequestInput rebuild(
          void Function(GAcceptRejectRequestInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAcceptRejectRequestInputBuilder toBuilder() =>
      new GAcceptRejectRequestInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAcceptRejectRequestInput &&
        usersInviteDocumentId == other.usersInviteDocumentId &&
        acceptedOrRejectedStatus == other.acceptedOrRejectedStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usersInviteDocumentId.hashCode);
    _$hash = $jc(_$hash, acceptedOrRejectedStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAcceptRejectRequestInput')
          ..add('usersInviteDocumentId', usersInviteDocumentId)
          ..add('acceptedOrRejectedStatus', acceptedOrRejectedStatus))
        .toString();
  }
}

class GAcceptRejectRequestInputBuilder
    implements
        Builder<GAcceptRejectRequestInput, GAcceptRejectRequestInputBuilder> {
  _$GAcceptRejectRequestInput? _$v;

  String? _usersInviteDocumentId;
  String? get usersInviteDocumentId => _$this._usersInviteDocumentId;
  set usersInviteDocumentId(String? usersInviteDocumentId) =>
      _$this._usersInviteDocumentId = usersInviteDocumentId;

  String? _acceptedOrRejectedStatus;
  String? get acceptedOrRejectedStatus => _$this._acceptedOrRejectedStatus;
  set acceptedOrRejectedStatus(String? acceptedOrRejectedStatus) =>
      _$this._acceptedOrRejectedStatus = acceptedOrRejectedStatus;

  GAcceptRejectRequestInputBuilder();

  GAcceptRejectRequestInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usersInviteDocumentId = $v.usersInviteDocumentId;
      _acceptedOrRejectedStatus = $v.acceptedOrRejectedStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAcceptRejectRequestInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAcceptRejectRequestInput;
  }

  @override
  void update(void Function(GAcceptRejectRequestInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAcceptRejectRequestInput build() => _build();

  _$GAcceptRejectRequestInput _build() {
    final _$result = _$v ??
        new _$GAcceptRejectRequestInput._(
            usersInviteDocumentId: usersInviteDocumentId,
            acceptedOrRejectedStatus: acceptedOrRejectedStatus);
    replace(_$result);
    return _$result;
  }
}

class _$GAddInviteLinkInputObject extends GAddInviteLinkInputObject {
  @override
  final String usersInviteDocumentId;
  @override
  final String inviteLink;
  @override
  final String? gender;
  @override
  final String? username;
  @override
  final String? phoneNumber;
  @override
  final String? inviter;

  factory _$GAddInviteLinkInputObject(
          [void Function(GAddInviteLinkInputObjectBuilder)? updates]) =>
      (new GAddInviteLinkInputObjectBuilder()..update(updates))._build();

  _$GAddInviteLinkInputObject._(
      {required this.usersInviteDocumentId,
      required this.inviteLink,
      this.gender,
      this.username,
      this.phoneNumber,
      this.inviter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(usersInviteDocumentId,
        r'GAddInviteLinkInputObject', 'usersInviteDocumentId');
    BuiltValueNullFieldError.checkNotNull(
        inviteLink, r'GAddInviteLinkInputObject', 'inviteLink');
  }

  @override
  GAddInviteLinkInputObject rebuild(
          void Function(GAddInviteLinkInputObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddInviteLinkInputObjectBuilder toBuilder() =>
      new GAddInviteLinkInputObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddInviteLinkInputObject &&
        usersInviteDocumentId == other.usersInviteDocumentId &&
        inviteLink == other.inviteLink &&
        gender == other.gender &&
        username == other.username &&
        phoneNumber == other.phoneNumber &&
        inviter == other.inviter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usersInviteDocumentId.hashCode);
    _$hash = $jc(_$hash, inviteLink.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, inviter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddInviteLinkInputObject')
          ..add('usersInviteDocumentId', usersInviteDocumentId)
          ..add('inviteLink', inviteLink)
          ..add('gender', gender)
          ..add('username', username)
          ..add('phoneNumber', phoneNumber)
          ..add('inviter', inviter))
        .toString();
  }
}

class GAddInviteLinkInputObjectBuilder
    implements
        Builder<GAddInviteLinkInputObject, GAddInviteLinkInputObjectBuilder> {
  _$GAddInviteLinkInputObject? _$v;

  String? _usersInviteDocumentId;
  String? get usersInviteDocumentId => _$this._usersInviteDocumentId;
  set usersInviteDocumentId(String? usersInviteDocumentId) =>
      _$this._usersInviteDocumentId = usersInviteDocumentId;

  String? _inviteLink;
  String? get inviteLink => _$this._inviteLink;
  set inviteLink(String? inviteLink) => _$this._inviteLink = inviteLink;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _inviter;
  String? get inviter => _$this._inviter;
  set inviter(String? inviter) => _$this._inviter = inviter;

  GAddInviteLinkInputObjectBuilder();

  GAddInviteLinkInputObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usersInviteDocumentId = $v.usersInviteDocumentId;
      _inviteLink = $v.inviteLink;
      _gender = $v.gender;
      _username = $v.username;
      _phoneNumber = $v.phoneNumber;
      _inviter = $v.inviter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddInviteLinkInputObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddInviteLinkInputObject;
  }

  @override
  void update(void Function(GAddInviteLinkInputObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddInviteLinkInputObject build() => _build();

  _$GAddInviteLinkInputObject _build() {
    final _$result = _$v ??
        new _$GAddInviteLinkInputObject._(
            usersInviteDocumentId: BuiltValueNullFieldError.checkNotNull(
                usersInviteDocumentId,
                r'GAddInviteLinkInputObject',
                'usersInviteDocumentId'),
            inviteLink: BuiltValueNullFieldError.checkNotNull(
                inviteLink, r'GAddInviteLinkInputObject', 'inviteLink'),
            gender: gender,
            username: username,
            phoneNumber: phoneNumber,
            inviter: inviter);
    replace(_$result);
    return _$result;
  }
}

class _$GAddInviteLinkInput extends GAddInviteLinkInput {
  @override
  final GAddInviteLinkInputObject data;

  factory _$GAddInviteLinkInput(
          [void Function(GAddInviteLinkInputBuilder)? updates]) =>
      (new GAddInviteLinkInputBuilder()..update(updates))._build();

  _$GAddInviteLinkInput._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GAddInviteLinkInput', 'data');
  }

  @override
  GAddInviteLinkInput rebuild(
          void Function(GAddInviteLinkInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddInviteLinkInputBuilder toBuilder() =>
      new GAddInviteLinkInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddInviteLinkInput && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddInviteLinkInput')
          ..add('data', data))
        .toString();
  }
}

class GAddInviteLinkInputBuilder
    implements Builder<GAddInviteLinkInput, GAddInviteLinkInputBuilder> {
  _$GAddInviteLinkInput? _$v;

  GAddInviteLinkInputObjectBuilder? _data;
  GAddInviteLinkInputObjectBuilder get data =>
      _$this._data ??= new GAddInviteLinkInputObjectBuilder();
  set data(GAddInviteLinkInputObjectBuilder? data) => _$this._data = data;

  GAddInviteLinkInputBuilder();

  GAddInviteLinkInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddInviteLinkInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddInviteLinkInput;
  }

  @override
  void update(void Function(GAddInviteLinkInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddInviteLinkInput build() => _build();

  _$GAddInviteLinkInput _build() {
    _$GAddInviteLinkInput _$result;
    try {
      _$result = _$v ?? new _$GAddInviteLinkInput._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddInviteLinkInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendNotificationToInviterInput
    extends GSendNotificationToInviterInput {
  @override
  final String toUserUsername;
  @override
  final String usersInviteDocumentId;

  factory _$GSendNotificationToInviterInput(
          [void Function(GSendNotificationToInviterInputBuilder)? updates]) =>
      (new GSendNotificationToInviterInputBuilder()..update(updates))._build();

  _$GSendNotificationToInviterInput._(
      {required this.toUserUsername, required this.usersInviteDocumentId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        toUserUsername, r'GSendNotificationToInviterInput', 'toUserUsername');
    BuiltValueNullFieldError.checkNotNull(usersInviteDocumentId,
        r'GSendNotificationToInviterInput', 'usersInviteDocumentId');
  }

  @override
  GSendNotificationToInviterInput rebuild(
          void Function(GSendNotificationToInviterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendNotificationToInviterInputBuilder toBuilder() =>
      new GSendNotificationToInviterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendNotificationToInviterInput &&
        toUserUsername == other.toUserUsername &&
        usersInviteDocumentId == other.usersInviteDocumentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, toUserUsername.hashCode);
    _$hash = $jc(_$hash, usersInviteDocumentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendNotificationToInviterInput')
          ..add('toUserUsername', toUserUsername)
          ..add('usersInviteDocumentId', usersInviteDocumentId))
        .toString();
  }
}

class GSendNotificationToInviterInputBuilder
    implements
        Builder<GSendNotificationToInviterInput,
            GSendNotificationToInviterInputBuilder> {
  _$GSendNotificationToInviterInput? _$v;

  String? _toUserUsername;
  String? get toUserUsername => _$this._toUserUsername;
  set toUserUsername(String? toUserUsername) =>
      _$this._toUserUsername = toUserUsername;

  String? _usersInviteDocumentId;
  String? get usersInviteDocumentId => _$this._usersInviteDocumentId;
  set usersInviteDocumentId(String? usersInviteDocumentId) =>
      _$this._usersInviteDocumentId = usersInviteDocumentId;

  GSendNotificationToInviterInputBuilder();

  GSendNotificationToInviterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _toUserUsername = $v.toUserUsername;
      _usersInviteDocumentId = $v.usersInviteDocumentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendNotificationToInviterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendNotificationToInviterInput;
  }

  @override
  void update(void Function(GSendNotificationToInviterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendNotificationToInviterInput build() => _build();

  _$GSendNotificationToInviterInput _build() {
    final _$result = _$v ??
        new _$GSendNotificationToInviterInput._(
            toUserUsername: BuiltValueNullFieldError.checkNotNull(
                toUserUsername,
                r'GSendNotificationToInviterInput',
                'toUserUsername'),
            usersInviteDocumentId: BuiltValueNullFieldError.checkNotNull(
                usersInviteDocumentId,
                r'GSendNotificationToInviterInput',
                'usersInviteDocumentId'));
    replace(_$result);
    return _$result;
  }
}

class _$GInvitesArrayInput extends GInvitesArrayInput {
  @override
  final String username;
  @override
  final String? phoneNumber;
  @override
  final int numberOfInvitesToAdd;

  factory _$GInvitesArrayInput(
          [void Function(GInvitesArrayInputBuilder)? updates]) =>
      (new GInvitesArrayInputBuilder()..update(updates))._build();

  _$GInvitesArrayInput._(
      {required this.username,
      this.phoneNumber,
      required this.numberOfInvitesToAdd})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'GInvitesArrayInput', 'username');
    BuiltValueNullFieldError.checkNotNull(
        numberOfInvitesToAdd, r'GInvitesArrayInput', 'numberOfInvitesToAdd');
  }

  @override
  GInvitesArrayInput rebuild(
          void Function(GInvitesArrayInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInvitesArrayInputBuilder toBuilder() =>
      new GInvitesArrayInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInvitesArrayInput &&
        username == other.username &&
        phoneNumber == other.phoneNumber &&
        numberOfInvitesToAdd == other.numberOfInvitesToAdd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, numberOfInvitesToAdd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInvitesArrayInput')
          ..add('username', username)
          ..add('phoneNumber', phoneNumber)
          ..add('numberOfInvitesToAdd', numberOfInvitesToAdd))
        .toString();
  }
}

class GInvitesArrayInputBuilder
    implements Builder<GInvitesArrayInput, GInvitesArrayInputBuilder> {
  _$GInvitesArrayInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  int? _numberOfInvitesToAdd;
  int? get numberOfInvitesToAdd => _$this._numberOfInvitesToAdd;
  set numberOfInvitesToAdd(int? numberOfInvitesToAdd) =>
      _$this._numberOfInvitesToAdd = numberOfInvitesToAdd;

  GInvitesArrayInputBuilder();

  GInvitesArrayInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _phoneNumber = $v.phoneNumber;
      _numberOfInvitesToAdd = $v.numberOfInvitesToAdd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInvitesArrayInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInvitesArrayInput;
  }

  @override
  void update(void Function(GInvitesArrayInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInvitesArrayInput build() => _build();

  _$GInvitesArrayInput _build() {
    final _$result = _$v ??
        new _$GInvitesArrayInput._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GInvitesArrayInput', 'username'),
            phoneNumber: phoneNumber,
            numberOfInvitesToAdd: BuiltValueNullFieldError.checkNotNull(
                numberOfInvitesToAdd,
                r'GInvitesArrayInput',
                'numberOfInvitesToAdd'));
    replace(_$result);
    return _$result;
  }
}

class _$GAddInvitesToSpecificUsersInput
    extends GAddInvitesToSpecificUsersInput {
  @override
  final BuiltList<GInvitesArrayInput?> invitesArray;

  factory _$GAddInvitesToSpecificUsersInput(
          [void Function(GAddInvitesToSpecificUsersInputBuilder)? updates]) =>
      (new GAddInvitesToSpecificUsersInputBuilder()..update(updates))._build();

  _$GAddInvitesToSpecificUsersInput._({required this.invitesArray})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        invitesArray, r'GAddInvitesToSpecificUsersInput', 'invitesArray');
  }

  @override
  GAddInvitesToSpecificUsersInput rebuild(
          void Function(GAddInvitesToSpecificUsersInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddInvitesToSpecificUsersInputBuilder toBuilder() =>
      new GAddInvitesToSpecificUsersInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddInvitesToSpecificUsersInput &&
        invitesArray == other.invitesArray;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, invitesArray.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddInvitesToSpecificUsersInput')
          ..add('invitesArray', invitesArray))
        .toString();
  }
}

class GAddInvitesToSpecificUsersInputBuilder
    implements
        Builder<GAddInvitesToSpecificUsersInput,
            GAddInvitesToSpecificUsersInputBuilder> {
  _$GAddInvitesToSpecificUsersInput? _$v;

  ListBuilder<GInvitesArrayInput?>? _invitesArray;
  ListBuilder<GInvitesArrayInput?> get invitesArray =>
      _$this._invitesArray ??= new ListBuilder<GInvitesArrayInput?>();
  set invitesArray(ListBuilder<GInvitesArrayInput?>? invitesArray) =>
      _$this._invitesArray = invitesArray;

  GAddInvitesToSpecificUsersInputBuilder();

  GAddInvitesToSpecificUsersInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _invitesArray = $v.invitesArray.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddInvitesToSpecificUsersInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddInvitesToSpecificUsersInput;
  }

  @override
  void update(void Function(GAddInvitesToSpecificUsersInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddInvitesToSpecificUsersInput build() => _build();

  _$GAddInvitesToSpecificUsersInput _build() {
    _$GAddInvitesToSpecificUsersInput _$result;
    try {
      _$result = _$v ??
          new _$GAddInvitesToSpecificUsersInput._(
              invitesArray: invitesArray.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'invitesArray';
        invitesArray.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddInvitesToSpecificUsersInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddUserToWaitlistTwoInput extends GAddUserToWaitlistTwoInput {
  @override
  final String phoneNumber;

  factory _$GAddUserToWaitlistTwoInput(
          [void Function(GAddUserToWaitlistTwoInputBuilder)? updates]) =>
      (new GAddUserToWaitlistTwoInputBuilder()..update(updates))._build();

  _$GAddUserToWaitlistTwoInput._({required this.phoneNumber}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'GAddUserToWaitlistTwoInput', 'phoneNumber');
  }

  @override
  GAddUserToWaitlistTwoInput rebuild(
          void Function(GAddUserToWaitlistTwoInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddUserToWaitlistTwoInputBuilder toBuilder() =>
      new GAddUserToWaitlistTwoInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddUserToWaitlistTwoInput &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddUserToWaitlistTwoInput')
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class GAddUserToWaitlistTwoInputBuilder
    implements
        Builder<GAddUserToWaitlistTwoInput, GAddUserToWaitlistTwoInputBuilder> {
  _$GAddUserToWaitlistTwoInput? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  GAddUserToWaitlistTwoInputBuilder();

  GAddUserToWaitlistTwoInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddUserToWaitlistTwoInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddUserToWaitlistTwoInput;
  }

  @override
  void update(void Function(GAddUserToWaitlistTwoInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddUserToWaitlistTwoInput build() => _build();

  _$GAddUserToWaitlistTwoInput _build() {
    final _$result = _$v ??
        new _$GAddUserToWaitlistTwoInput._(
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'GAddUserToWaitlistTwoInput', 'phoneNumber'));
    replace(_$result);
    return _$result;
  }
}

class _$GInviteAndNoNumberMismatchTwoInput
    extends GInviteAndNoNumberMismatchTwoInput {
  @override
  final String phoneNumber;

  factory _$GInviteAndNoNumberMismatchTwoInput(
          [void Function(GInviteAndNoNumberMismatchTwoInputBuilder)?
              updates]) =>
      (new GInviteAndNoNumberMismatchTwoInputBuilder()..update(updates))
          ._build();

  _$GInviteAndNoNumberMismatchTwoInput._({required this.phoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'GInviteAndNoNumberMismatchTwoInput', 'phoneNumber');
  }

  @override
  GInviteAndNoNumberMismatchTwoInput rebuild(
          void Function(GInviteAndNoNumberMismatchTwoInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInviteAndNoNumberMismatchTwoInputBuilder toBuilder() =>
      new GInviteAndNoNumberMismatchTwoInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInviteAndNoNumberMismatchTwoInput &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInviteAndNoNumberMismatchTwoInput')
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class GInviteAndNoNumberMismatchTwoInputBuilder
    implements
        Builder<GInviteAndNoNumberMismatchTwoInput,
            GInviteAndNoNumberMismatchTwoInputBuilder> {
  _$GInviteAndNoNumberMismatchTwoInput? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  GInviteAndNoNumberMismatchTwoInputBuilder();

  GInviteAndNoNumberMismatchTwoInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInviteAndNoNumberMismatchTwoInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInviteAndNoNumberMismatchTwoInput;
  }

  @override
  void update(
      void Function(GInviteAndNoNumberMismatchTwoInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInviteAndNoNumberMismatchTwoInput build() => _build();

  _$GInviteAndNoNumberMismatchTwoInput _build() {
    final _$result = _$v ??
        new _$GInviteAndNoNumberMismatchTwoInput._(
            phoneNumber: BuiltValueNullFieldError.checkNotNull(phoneNumber,
                r'GInviteAndNoNumberMismatchTwoInput', 'phoneNumber'));
    replace(_$result);
    return _$result;
  }
}

class _$GRequestForBulkInvitesLinkInput
    extends GRequestForBulkInvitesLinkInput {
  @override
  final int numberOfInvitesRequested;

  factory _$GRequestForBulkInvitesLinkInput(
          [void Function(GRequestForBulkInvitesLinkInputBuilder)? updates]) =>
      (new GRequestForBulkInvitesLinkInputBuilder()..update(updates))._build();

  _$GRequestForBulkInvitesLinkInput._({required this.numberOfInvitesRequested})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(numberOfInvitesRequested,
        r'GRequestForBulkInvitesLinkInput', 'numberOfInvitesRequested');
  }

  @override
  GRequestForBulkInvitesLinkInput rebuild(
          void Function(GRequestForBulkInvitesLinkInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestForBulkInvitesLinkInputBuilder toBuilder() =>
      new GRequestForBulkInvitesLinkInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRequestForBulkInvitesLinkInput &&
        numberOfInvitesRequested == other.numberOfInvitesRequested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, numberOfInvitesRequested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRequestForBulkInvitesLinkInput')
          ..add('numberOfInvitesRequested', numberOfInvitesRequested))
        .toString();
  }
}

class GRequestForBulkInvitesLinkInputBuilder
    implements
        Builder<GRequestForBulkInvitesLinkInput,
            GRequestForBulkInvitesLinkInputBuilder> {
  _$GRequestForBulkInvitesLinkInput? _$v;

  int? _numberOfInvitesRequested;
  int? get numberOfInvitesRequested => _$this._numberOfInvitesRequested;
  set numberOfInvitesRequested(int? numberOfInvitesRequested) =>
      _$this._numberOfInvitesRequested = numberOfInvitesRequested;

  GRequestForBulkInvitesLinkInputBuilder();

  GRequestForBulkInvitesLinkInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numberOfInvitesRequested = $v.numberOfInvitesRequested;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRequestForBulkInvitesLinkInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRequestForBulkInvitesLinkInput;
  }

  @override
  void update(void Function(GRequestForBulkInvitesLinkInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRequestForBulkInvitesLinkInput build() => _build();

  _$GRequestForBulkInvitesLinkInput _build() {
    final _$result = _$v ??
        new _$GRequestForBulkInvitesLinkInput._(
            numberOfInvitesRequested: BuiltValueNullFieldError.checkNotNull(
                numberOfInvitesRequested,
                r'GRequestForBulkInvitesLinkInput',
                'numberOfInvitesRequested'));
    replace(_$result);
    return _$result;
  }
}

class _$GAddInviteLinkBulkInputObject extends GAddInviteLinkBulkInputObject {
  @override
  final String usersInviteBulkDocumentId;
  @override
  final String inviteLinkBulk;
  @override
  final String? userCount;
  @override
  final String? inviter;
  @override
  final String? inviterId;
  @override
  final String? isBulkInviteLink;

  factory _$GAddInviteLinkBulkInputObject(
          [void Function(GAddInviteLinkBulkInputObjectBuilder)? updates]) =>
      (new GAddInviteLinkBulkInputObjectBuilder()..update(updates))._build();

  _$GAddInviteLinkBulkInputObject._(
      {required this.usersInviteBulkDocumentId,
      required this.inviteLinkBulk,
      this.userCount,
      this.inviter,
      this.inviterId,
      this.isBulkInviteLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(usersInviteBulkDocumentId,
        r'GAddInviteLinkBulkInputObject', 'usersInviteBulkDocumentId');
    BuiltValueNullFieldError.checkNotNull(
        inviteLinkBulk, r'GAddInviteLinkBulkInputObject', 'inviteLinkBulk');
  }

  @override
  GAddInviteLinkBulkInputObject rebuild(
          void Function(GAddInviteLinkBulkInputObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddInviteLinkBulkInputObjectBuilder toBuilder() =>
      new GAddInviteLinkBulkInputObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddInviteLinkBulkInputObject &&
        usersInviteBulkDocumentId == other.usersInviteBulkDocumentId &&
        inviteLinkBulk == other.inviteLinkBulk &&
        userCount == other.userCount &&
        inviter == other.inviter &&
        inviterId == other.inviterId &&
        isBulkInviteLink == other.isBulkInviteLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usersInviteBulkDocumentId.hashCode);
    _$hash = $jc(_$hash, inviteLinkBulk.hashCode);
    _$hash = $jc(_$hash, userCount.hashCode);
    _$hash = $jc(_$hash, inviter.hashCode);
    _$hash = $jc(_$hash, inviterId.hashCode);
    _$hash = $jc(_$hash, isBulkInviteLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddInviteLinkBulkInputObject')
          ..add('usersInviteBulkDocumentId', usersInviteBulkDocumentId)
          ..add('inviteLinkBulk', inviteLinkBulk)
          ..add('userCount', userCount)
          ..add('inviter', inviter)
          ..add('inviterId', inviterId)
          ..add('isBulkInviteLink', isBulkInviteLink))
        .toString();
  }
}

class GAddInviteLinkBulkInputObjectBuilder
    implements
        Builder<GAddInviteLinkBulkInputObject,
            GAddInviteLinkBulkInputObjectBuilder> {
  _$GAddInviteLinkBulkInputObject? _$v;

  String? _usersInviteBulkDocumentId;
  String? get usersInviteBulkDocumentId => _$this._usersInviteBulkDocumentId;
  set usersInviteBulkDocumentId(String? usersInviteBulkDocumentId) =>
      _$this._usersInviteBulkDocumentId = usersInviteBulkDocumentId;

  String? _inviteLinkBulk;
  String? get inviteLinkBulk => _$this._inviteLinkBulk;
  set inviteLinkBulk(String? inviteLinkBulk) =>
      _$this._inviteLinkBulk = inviteLinkBulk;

  String? _userCount;
  String? get userCount => _$this._userCount;
  set userCount(String? userCount) => _$this._userCount = userCount;

  String? _inviter;
  String? get inviter => _$this._inviter;
  set inviter(String? inviter) => _$this._inviter = inviter;

  String? _inviterId;
  String? get inviterId => _$this._inviterId;
  set inviterId(String? inviterId) => _$this._inviterId = inviterId;

  String? _isBulkInviteLink;
  String? get isBulkInviteLink => _$this._isBulkInviteLink;
  set isBulkInviteLink(String? isBulkInviteLink) =>
      _$this._isBulkInviteLink = isBulkInviteLink;

  GAddInviteLinkBulkInputObjectBuilder();

  GAddInviteLinkBulkInputObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usersInviteBulkDocumentId = $v.usersInviteBulkDocumentId;
      _inviteLinkBulk = $v.inviteLinkBulk;
      _userCount = $v.userCount;
      _inviter = $v.inviter;
      _inviterId = $v.inviterId;
      _isBulkInviteLink = $v.isBulkInviteLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddInviteLinkBulkInputObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddInviteLinkBulkInputObject;
  }

  @override
  void update(void Function(GAddInviteLinkBulkInputObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddInviteLinkBulkInputObject build() => _build();

  _$GAddInviteLinkBulkInputObject _build() {
    final _$result = _$v ??
        new _$GAddInviteLinkBulkInputObject._(
            usersInviteBulkDocumentId: BuiltValueNullFieldError.checkNotNull(
                usersInviteBulkDocumentId,
                r'GAddInviteLinkBulkInputObject',
                'usersInviteBulkDocumentId'),
            inviteLinkBulk: BuiltValueNullFieldError.checkNotNull(
                inviteLinkBulk,
                r'GAddInviteLinkBulkInputObject',
                'inviteLinkBulk'),
            userCount: userCount,
            inviter: inviter,
            inviterId: inviterId,
            isBulkInviteLink: isBulkInviteLink);
    replace(_$result);
    return _$result;
  }
}

class _$GAddInviteLinkBulkInput extends GAddInviteLinkBulkInput {
  @override
  final GAddInviteLinkBulkInputObject data;

  factory _$GAddInviteLinkBulkInput(
          [void Function(GAddInviteLinkBulkInputBuilder)? updates]) =>
      (new GAddInviteLinkBulkInputBuilder()..update(updates))._build();

  _$GAddInviteLinkBulkInput._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'GAddInviteLinkBulkInput', 'data');
  }

  @override
  GAddInviteLinkBulkInput rebuild(
          void Function(GAddInviteLinkBulkInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddInviteLinkBulkInputBuilder toBuilder() =>
      new GAddInviteLinkBulkInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddInviteLinkBulkInput && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddInviteLinkBulkInput')
          ..add('data', data))
        .toString();
  }
}

class GAddInviteLinkBulkInputBuilder
    implements
        Builder<GAddInviteLinkBulkInput, GAddInviteLinkBulkInputBuilder> {
  _$GAddInviteLinkBulkInput? _$v;

  GAddInviteLinkBulkInputObjectBuilder? _data;
  GAddInviteLinkBulkInputObjectBuilder get data =>
      _$this._data ??= new GAddInviteLinkBulkInputObjectBuilder();
  set data(GAddInviteLinkBulkInputObjectBuilder? data) => _$this._data = data;

  GAddInviteLinkBulkInputBuilder();

  GAddInviteLinkBulkInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddInviteLinkBulkInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddInviteLinkBulkInput;
  }

  @override
  void update(void Function(GAddInviteLinkBulkInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddInviteLinkBulkInput build() => _build();

  _$GAddInviteLinkBulkInput _build() {
    _$GAddInviteLinkBulkInput _$result;
    try {
      _$result = _$v ?? new _$GAddInviteLinkBulkInput._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddInviteLinkBulkInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddBulkInviteUserInput extends GAddBulkInviteUserInput {
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String username;
  @override
  final BuiltList<String?>? languages;
  @override
  final String? phoneNumber;
  @override
  final String? avatar;
  @override
  final String? theme;
  @override
  final String? isAvatar;
  @override
  final String? gender;
  @override
  final bool? isVerified;
  @override
  final BuiltList<String?>? reasons;
  @override
  final String? subId;
  @override
  final BuiltList<GTopicAndSubTopicIds?>? topics;
  @override
  final bool? showGender;
  @override
  final int? verificationStatus;
  @override
  final BuiltList<GPronouns?>? pronouns;
  @override
  final String usersInviteBulkDocumentId;
  @override
  final String inviterId;
  @override
  final String timeUserCheckedPrivacyPolicy;

  factory _$GAddBulkInviteUserInput(
          [void Function(GAddBulkInviteUserInputBuilder)? updates]) =>
      (new GAddBulkInviteUserInputBuilder()..update(updates))._build();

  _$GAddBulkInviteUserInput._(
      {required this.firstname,
      required this.lastname,
      required this.username,
      this.languages,
      this.phoneNumber,
      this.avatar,
      this.theme,
      this.isAvatar,
      this.gender,
      this.isVerified,
      this.reasons,
      this.subId,
      this.topics,
      this.showGender,
      this.verificationStatus,
      this.pronouns,
      required this.usersInviteBulkDocumentId,
      required this.inviterId,
      required this.timeUserCheckedPrivacyPolicy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstname, r'GAddBulkInviteUserInput', 'firstname');
    BuiltValueNullFieldError.checkNotNull(
        lastname, r'GAddBulkInviteUserInput', 'lastname');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GAddBulkInviteUserInput', 'username');
    BuiltValueNullFieldError.checkNotNull(usersInviteBulkDocumentId,
        r'GAddBulkInviteUserInput', 'usersInviteBulkDocumentId');
    BuiltValueNullFieldError.checkNotNull(
        inviterId, r'GAddBulkInviteUserInput', 'inviterId');
    BuiltValueNullFieldError.checkNotNull(timeUserCheckedPrivacyPolicy,
        r'GAddBulkInviteUserInput', 'timeUserCheckedPrivacyPolicy');
  }

  @override
  GAddBulkInviteUserInput rebuild(
          void Function(GAddBulkInviteUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddBulkInviteUserInputBuilder toBuilder() =>
      new GAddBulkInviteUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddBulkInviteUserInput &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        username == other.username &&
        languages == other.languages &&
        phoneNumber == other.phoneNumber &&
        avatar == other.avatar &&
        theme == other.theme &&
        isAvatar == other.isAvatar &&
        gender == other.gender &&
        isVerified == other.isVerified &&
        reasons == other.reasons &&
        subId == other.subId &&
        topics == other.topics &&
        showGender == other.showGender &&
        verificationStatus == other.verificationStatus &&
        pronouns == other.pronouns &&
        usersInviteBulkDocumentId == other.usersInviteBulkDocumentId &&
        inviterId == other.inviterId &&
        timeUserCheckedPrivacyPolicy == other.timeUserCheckedPrivacyPolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, isAvatar.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, isVerified.hashCode);
    _$hash = $jc(_$hash, reasons.hashCode);
    _$hash = $jc(_$hash, subId.hashCode);
    _$hash = $jc(_$hash, topics.hashCode);
    _$hash = $jc(_$hash, showGender.hashCode);
    _$hash = $jc(_$hash, verificationStatus.hashCode);
    _$hash = $jc(_$hash, pronouns.hashCode);
    _$hash = $jc(_$hash, usersInviteBulkDocumentId.hashCode);
    _$hash = $jc(_$hash, inviterId.hashCode);
    _$hash = $jc(_$hash, timeUserCheckedPrivacyPolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddBulkInviteUserInput')
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('username', username)
          ..add('languages', languages)
          ..add('phoneNumber', phoneNumber)
          ..add('avatar', avatar)
          ..add('theme', theme)
          ..add('isAvatar', isAvatar)
          ..add('gender', gender)
          ..add('isVerified', isVerified)
          ..add('reasons', reasons)
          ..add('subId', subId)
          ..add('topics', topics)
          ..add('showGender', showGender)
          ..add('verificationStatus', verificationStatus)
          ..add('pronouns', pronouns)
          ..add('usersInviteBulkDocumentId', usersInviteBulkDocumentId)
          ..add('inviterId', inviterId)
          ..add('timeUserCheckedPrivacyPolicy', timeUserCheckedPrivacyPolicy))
        .toString();
  }
}

class GAddBulkInviteUserInputBuilder
    implements
        Builder<GAddBulkInviteUserInput, GAddBulkInviteUserInputBuilder> {
  _$GAddBulkInviteUserInput? _$v;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  ListBuilder<String?>? _languages;
  ListBuilder<String?> get languages =>
      _$this._languages ??= new ListBuilder<String?>();
  set languages(ListBuilder<String?>? languages) =>
      _$this._languages = languages;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _theme;
  String? get theme => _$this._theme;
  set theme(String? theme) => _$this._theme = theme;

  String? _isAvatar;
  String? get isAvatar => _$this._isAvatar;
  set isAvatar(String? isAvatar) => _$this._isAvatar = isAvatar;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  ListBuilder<String?>? _reasons;
  ListBuilder<String?> get reasons =>
      _$this._reasons ??= new ListBuilder<String?>();
  set reasons(ListBuilder<String?>? reasons) => _$this._reasons = reasons;

  String? _subId;
  String? get subId => _$this._subId;
  set subId(String? subId) => _$this._subId = subId;

  ListBuilder<GTopicAndSubTopicIds?>? _topics;
  ListBuilder<GTopicAndSubTopicIds?> get topics =>
      _$this._topics ??= new ListBuilder<GTopicAndSubTopicIds?>();
  set topics(ListBuilder<GTopicAndSubTopicIds?>? topics) =>
      _$this._topics = topics;

  bool? _showGender;
  bool? get showGender => _$this._showGender;
  set showGender(bool? showGender) => _$this._showGender = showGender;

  int? _verificationStatus;
  int? get verificationStatus => _$this._verificationStatus;
  set verificationStatus(int? verificationStatus) =>
      _$this._verificationStatus = verificationStatus;

  ListBuilder<GPronouns?>? _pronouns;
  ListBuilder<GPronouns?> get pronouns =>
      _$this._pronouns ??= new ListBuilder<GPronouns?>();
  set pronouns(ListBuilder<GPronouns?>? pronouns) =>
      _$this._pronouns = pronouns;

  String? _usersInviteBulkDocumentId;
  String? get usersInviteBulkDocumentId => _$this._usersInviteBulkDocumentId;
  set usersInviteBulkDocumentId(String? usersInviteBulkDocumentId) =>
      _$this._usersInviteBulkDocumentId = usersInviteBulkDocumentId;

  String? _inviterId;
  String? get inviterId => _$this._inviterId;
  set inviterId(String? inviterId) => _$this._inviterId = inviterId;

  String? _timeUserCheckedPrivacyPolicy;
  String? get timeUserCheckedPrivacyPolicy =>
      _$this._timeUserCheckedPrivacyPolicy;
  set timeUserCheckedPrivacyPolicy(String? timeUserCheckedPrivacyPolicy) =>
      _$this._timeUserCheckedPrivacyPolicy = timeUserCheckedPrivacyPolicy;

  GAddBulkInviteUserInputBuilder();

  GAddBulkInviteUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _username = $v.username;
      _languages = $v.languages?.toBuilder();
      _phoneNumber = $v.phoneNumber;
      _avatar = $v.avatar;
      _theme = $v.theme;
      _isAvatar = $v.isAvatar;
      _gender = $v.gender;
      _isVerified = $v.isVerified;
      _reasons = $v.reasons?.toBuilder();
      _subId = $v.subId;
      _topics = $v.topics?.toBuilder();
      _showGender = $v.showGender;
      _verificationStatus = $v.verificationStatus;
      _pronouns = $v.pronouns?.toBuilder();
      _usersInviteBulkDocumentId = $v.usersInviteBulkDocumentId;
      _inviterId = $v.inviterId;
      _timeUserCheckedPrivacyPolicy = $v.timeUserCheckedPrivacyPolicy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddBulkInviteUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddBulkInviteUserInput;
  }

  @override
  void update(void Function(GAddBulkInviteUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddBulkInviteUserInput build() => _build();

  _$GAddBulkInviteUserInput _build() {
    _$GAddBulkInviteUserInput _$result;
    try {
      _$result = _$v ??
          new _$GAddBulkInviteUserInput._(
              firstname: BuiltValueNullFieldError.checkNotNull(
                  firstname, r'GAddBulkInviteUserInput', 'firstname'),
              lastname: BuiltValueNullFieldError.checkNotNull(
                  lastname, r'GAddBulkInviteUserInput', 'lastname'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'GAddBulkInviteUserInput', 'username'),
              languages: _languages?.build(),
              phoneNumber: phoneNumber,
              avatar: avatar,
              theme: theme,
              isAvatar: isAvatar,
              gender: gender,
              isVerified: isVerified,
              reasons: _reasons?.build(),
              subId: subId,
              topics: _topics?.build(),
              showGender: showGender,
              verificationStatus: verificationStatus,
              pronouns: _pronouns?.build(),
              usersInviteBulkDocumentId: BuiltValueNullFieldError.checkNotNull(
                  usersInviteBulkDocumentId,
                  r'GAddBulkInviteUserInput',
                  'usersInviteBulkDocumentId'),
              inviterId: BuiltValueNullFieldError.checkNotNull(
                  inviterId, r'GAddBulkInviteUserInput', 'inviterId'),
              timeUserCheckedPrivacyPolicy:
                  BuiltValueNullFieldError.checkNotNull(
                      timeUserCheckedPrivacyPolicy,
                      r'GAddBulkInviteUserInput',
                      'timeUserCheckedPrivacyPolicy'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'reasons';
        _reasons?.build();

        _$failedField = 'topics';
        _topics?.build();

        _$failedField = 'pronouns';
        _pronouns?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddBulkInviteUserInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAcceptBulkInviteUserInput extends GAcceptBulkInviteUserInput {
  @override
  final String bulkUsersDocumentId;
  @override
  final String usersInviteBulkDocumentId;

  factory _$GAcceptBulkInviteUserInput(
          [void Function(GAcceptBulkInviteUserInputBuilder)? updates]) =>
      (new GAcceptBulkInviteUserInputBuilder()..update(updates))._build();

  _$GAcceptBulkInviteUserInput._(
      {required this.bulkUsersDocumentId,
      required this.usersInviteBulkDocumentId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bulkUsersDocumentId,
        r'GAcceptBulkInviteUserInput', 'bulkUsersDocumentId');
    BuiltValueNullFieldError.checkNotNull(usersInviteBulkDocumentId,
        r'GAcceptBulkInviteUserInput', 'usersInviteBulkDocumentId');
  }

  @override
  GAcceptBulkInviteUserInput rebuild(
          void Function(GAcceptBulkInviteUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAcceptBulkInviteUserInputBuilder toBuilder() =>
      new GAcceptBulkInviteUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAcceptBulkInviteUserInput &&
        bulkUsersDocumentId == other.bulkUsersDocumentId &&
        usersInviteBulkDocumentId == other.usersInviteBulkDocumentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bulkUsersDocumentId.hashCode);
    _$hash = $jc(_$hash, usersInviteBulkDocumentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAcceptBulkInviteUserInput')
          ..add('bulkUsersDocumentId', bulkUsersDocumentId)
          ..add('usersInviteBulkDocumentId', usersInviteBulkDocumentId))
        .toString();
  }
}

class GAcceptBulkInviteUserInputBuilder
    implements
        Builder<GAcceptBulkInviteUserInput, GAcceptBulkInviteUserInputBuilder> {
  _$GAcceptBulkInviteUserInput? _$v;

  String? _bulkUsersDocumentId;
  String? get bulkUsersDocumentId => _$this._bulkUsersDocumentId;
  set bulkUsersDocumentId(String? bulkUsersDocumentId) =>
      _$this._bulkUsersDocumentId = bulkUsersDocumentId;

  String? _usersInviteBulkDocumentId;
  String? get usersInviteBulkDocumentId => _$this._usersInviteBulkDocumentId;
  set usersInviteBulkDocumentId(String? usersInviteBulkDocumentId) =>
      _$this._usersInviteBulkDocumentId = usersInviteBulkDocumentId;

  GAcceptBulkInviteUserInputBuilder();

  GAcceptBulkInviteUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bulkUsersDocumentId = $v.bulkUsersDocumentId;
      _usersInviteBulkDocumentId = $v.usersInviteBulkDocumentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAcceptBulkInviteUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAcceptBulkInviteUserInput;
  }

  @override
  void update(void Function(GAcceptBulkInviteUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAcceptBulkInviteUserInput build() => _build();

  _$GAcceptBulkInviteUserInput _build() {
    final _$result = _$v ??
        new _$GAcceptBulkInviteUserInput._(
            bulkUsersDocumentId: BuiltValueNullFieldError.checkNotNull(
                bulkUsersDocumentId,
                r'GAcceptBulkInviteUserInput',
                'bulkUsersDocumentId'),
            usersInviteBulkDocumentId: BuiltValueNullFieldError.checkNotNull(
                usersInviteBulkDocumentId,
                r'GAcceptBulkInviteUserInput',
                'usersInviteBulkDocumentId'));
    replace(_$result);
    return _$result;
  }
}

class _$GRejectBulkInviteUserInput extends GRejectBulkInviteUserInput {
  @override
  final String bulkUsersDocumentId;
  @override
  final String usersInviteBulkDocumentId;

  factory _$GRejectBulkInviteUserInput(
          [void Function(GRejectBulkInviteUserInputBuilder)? updates]) =>
      (new GRejectBulkInviteUserInputBuilder()..update(updates))._build();

  _$GRejectBulkInviteUserInput._(
      {required this.bulkUsersDocumentId,
      required this.usersInviteBulkDocumentId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bulkUsersDocumentId,
        r'GRejectBulkInviteUserInput', 'bulkUsersDocumentId');
    BuiltValueNullFieldError.checkNotNull(usersInviteBulkDocumentId,
        r'GRejectBulkInviteUserInput', 'usersInviteBulkDocumentId');
  }

  @override
  GRejectBulkInviteUserInput rebuild(
          void Function(GRejectBulkInviteUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRejectBulkInviteUserInputBuilder toBuilder() =>
      new GRejectBulkInviteUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRejectBulkInviteUserInput &&
        bulkUsersDocumentId == other.bulkUsersDocumentId &&
        usersInviteBulkDocumentId == other.usersInviteBulkDocumentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bulkUsersDocumentId.hashCode);
    _$hash = $jc(_$hash, usersInviteBulkDocumentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRejectBulkInviteUserInput')
          ..add('bulkUsersDocumentId', bulkUsersDocumentId)
          ..add('usersInviteBulkDocumentId', usersInviteBulkDocumentId))
        .toString();
  }
}

class GRejectBulkInviteUserInputBuilder
    implements
        Builder<GRejectBulkInviteUserInput, GRejectBulkInviteUserInputBuilder> {
  _$GRejectBulkInviteUserInput? _$v;

  String? _bulkUsersDocumentId;
  String? get bulkUsersDocumentId => _$this._bulkUsersDocumentId;
  set bulkUsersDocumentId(String? bulkUsersDocumentId) =>
      _$this._bulkUsersDocumentId = bulkUsersDocumentId;

  String? _usersInviteBulkDocumentId;
  String? get usersInviteBulkDocumentId => _$this._usersInviteBulkDocumentId;
  set usersInviteBulkDocumentId(String? usersInviteBulkDocumentId) =>
      _$this._usersInviteBulkDocumentId = usersInviteBulkDocumentId;

  GRejectBulkInviteUserInputBuilder();

  GRejectBulkInviteUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bulkUsersDocumentId = $v.bulkUsersDocumentId;
      _usersInviteBulkDocumentId = $v.usersInviteBulkDocumentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRejectBulkInviteUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRejectBulkInviteUserInput;
  }

  @override
  void update(void Function(GRejectBulkInviteUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRejectBulkInviteUserInput build() => _build();

  _$GRejectBulkInviteUserInput _build() {
    final _$result = _$v ??
        new _$GRejectBulkInviteUserInput._(
            bulkUsersDocumentId: BuiltValueNullFieldError.checkNotNull(
                bulkUsersDocumentId,
                r'GRejectBulkInviteUserInput',
                'bulkUsersDocumentId'),
            usersInviteBulkDocumentId: BuiltValueNullFieldError.checkNotNull(
                usersInviteBulkDocumentId,
                r'GRejectBulkInviteUserInput',
                'usersInviteBulkDocumentId'));
    replace(_$result);
    return _$result;
  }
}

class _$GAddBulkInviteUserToSpecificInviteInput
    extends GAddBulkInviteUserToSpecificInviteInput {
  @override
  final String phoneNumber;
  @override
  final String usersInviteDocumentId;

  factory _$GAddBulkInviteUserToSpecificInviteInput(
          [void Function(GAddBulkInviteUserToSpecificInviteInputBuilder)?
              updates]) =>
      (new GAddBulkInviteUserToSpecificInviteInputBuilder()..update(updates))
          ._build();

  _$GAddBulkInviteUserToSpecificInviteInput._(
      {required this.phoneNumber, required this.usersInviteDocumentId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'GAddBulkInviteUserToSpecificInviteInput', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(usersInviteDocumentId,
        r'GAddBulkInviteUserToSpecificInviteInput', 'usersInviteDocumentId');
  }

  @override
  GAddBulkInviteUserToSpecificInviteInput rebuild(
          void Function(GAddBulkInviteUserToSpecificInviteInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddBulkInviteUserToSpecificInviteInputBuilder toBuilder() =>
      new GAddBulkInviteUserToSpecificInviteInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddBulkInviteUserToSpecificInviteInput &&
        phoneNumber == other.phoneNumber &&
        usersInviteDocumentId == other.usersInviteDocumentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, usersInviteDocumentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAddBulkInviteUserToSpecificInviteInput')
          ..add('phoneNumber', phoneNumber)
          ..add('usersInviteDocumentId', usersInviteDocumentId))
        .toString();
  }
}

class GAddBulkInviteUserToSpecificInviteInputBuilder
    implements
        Builder<GAddBulkInviteUserToSpecificInviteInput,
            GAddBulkInviteUserToSpecificInviteInputBuilder> {
  _$GAddBulkInviteUserToSpecificInviteInput? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _usersInviteDocumentId;
  String? get usersInviteDocumentId => _$this._usersInviteDocumentId;
  set usersInviteDocumentId(String? usersInviteDocumentId) =>
      _$this._usersInviteDocumentId = usersInviteDocumentId;

  GAddBulkInviteUserToSpecificInviteInputBuilder();

  GAddBulkInviteUserToSpecificInviteInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _usersInviteDocumentId = $v.usersInviteDocumentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddBulkInviteUserToSpecificInviteInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddBulkInviteUserToSpecificInviteInput;
  }

  @override
  void update(
      void Function(GAddBulkInviteUserToSpecificInviteInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddBulkInviteUserToSpecificInviteInput build() => _build();

  _$GAddBulkInviteUserToSpecificInviteInput _build() {
    final _$result = _$v ??
        new _$GAddBulkInviteUserToSpecificInviteInput._(
            phoneNumber: BuiltValueNullFieldError.checkNotNull(phoneNumber,
                r'GAddBulkInviteUserToSpecificInviteInput', 'phoneNumber'),
            usersInviteDocumentId: BuiltValueNullFieldError.checkNotNull(
                usersInviteDocumentId,
                r'GAddBulkInviteUserToSpecificInviteInput',
                'usersInviteDocumentId'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserContactInput extends GUserContactInput {
  @override
  final String? username;
  @override
  final String? phoneNumber;

  factory _$GUserContactInput(
          [void Function(GUserContactInputBuilder)? updates]) =>
      (new GUserContactInputBuilder()..update(updates))._build();

  _$GUserContactInput._({this.username, this.phoneNumber}) : super._();

  @override
  GUserContactInput rebuild(void Function(GUserContactInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserContactInputBuilder toBuilder() =>
      new GUserContactInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserContactInput &&
        username == other.username &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserContactInput')
          ..add('username', username)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class GUserContactInputBuilder
    implements Builder<GUserContactInput, GUserContactInputBuilder> {
  _$GUserContactInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  GUserContactInputBuilder();

  GUserContactInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserContactInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserContactInput;
  }

  @override
  void update(void Function(GUserContactInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserContactInput build() => _build();

  _$GUserContactInput _build() {
    final _$result = _$v ??
        new _$GUserContactInput._(username: username, phoneNumber: phoneNumber);
    replace(_$result);
    return _$result;
  }
}

class _$GAddContactsOfUserV2Input extends GAddContactsOfUserV2Input {
  @override
  final BuiltList<GUserContactInput?>? data;
  @override
  final int currentSublistNumber;

  factory _$GAddContactsOfUserV2Input(
          [void Function(GAddContactsOfUserV2InputBuilder)? updates]) =>
      (new GAddContactsOfUserV2InputBuilder()..update(updates))._build();

  _$GAddContactsOfUserV2Input._({this.data, required this.currentSublistNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(currentSublistNumber,
        r'GAddContactsOfUserV2Input', 'currentSublistNumber');
  }

  @override
  GAddContactsOfUserV2Input rebuild(
          void Function(GAddContactsOfUserV2InputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddContactsOfUserV2InputBuilder toBuilder() =>
      new GAddContactsOfUserV2InputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddContactsOfUserV2Input &&
        data == other.data &&
        currentSublistNumber == other.currentSublistNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, currentSublistNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddContactsOfUserV2Input')
          ..add('data', data)
          ..add('currentSublistNumber', currentSublistNumber))
        .toString();
  }
}

class GAddContactsOfUserV2InputBuilder
    implements
        Builder<GAddContactsOfUserV2Input, GAddContactsOfUserV2InputBuilder> {
  _$GAddContactsOfUserV2Input? _$v;

  ListBuilder<GUserContactInput?>? _data;
  ListBuilder<GUserContactInput?> get data =>
      _$this._data ??= new ListBuilder<GUserContactInput?>();
  set data(ListBuilder<GUserContactInput?>? data) => _$this._data = data;

  int? _currentSublistNumber;
  int? get currentSublistNumber => _$this._currentSublistNumber;
  set currentSublistNumber(int? currentSublistNumber) =>
      _$this._currentSublistNumber = currentSublistNumber;

  GAddContactsOfUserV2InputBuilder();

  GAddContactsOfUserV2InputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _currentSublistNumber = $v.currentSublistNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddContactsOfUserV2Input other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddContactsOfUserV2Input;
  }

  @override
  void update(void Function(GAddContactsOfUserV2InputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddContactsOfUserV2Input build() => _build();

  _$GAddContactsOfUserV2Input _build() {
    _$GAddContactsOfUserV2Input _$result;
    try {
      _$result = _$v ??
          new _$GAddContactsOfUserV2Input._(
              data: _data?.build(),
              currentSublistNumber: BuiltValueNullFieldError.checkNotNull(
                  currentSublistNumber,
                  r'GAddContactsOfUserV2Input',
                  'currentSublistNumber'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddContactsOfUserV2Input', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddContactsOfUserV3Input extends GAddContactsOfUserV3Input {
  @override
  final BuiltList<GUserContactInput?>? data;

  factory _$GAddContactsOfUserV3Input(
          [void Function(GAddContactsOfUserV3InputBuilder)? updates]) =>
      (new GAddContactsOfUserV3InputBuilder()..update(updates))._build();

  _$GAddContactsOfUserV3Input._({this.data}) : super._();

  @override
  GAddContactsOfUserV3Input rebuild(
          void Function(GAddContactsOfUserV3InputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddContactsOfUserV3InputBuilder toBuilder() =>
      new GAddContactsOfUserV3InputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddContactsOfUserV3Input && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddContactsOfUserV3Input')
          ..add('data', data))
        .toString();
  }
}

class GAddContactsOfUserV3InputBuilder
    implements
        Builder<GAddContactsOfUserV3Input, GAddContactsOfUserV3InputBuilder> {
  _$GAddContactsOfUserV3Input? _$v;

  ListBuilder<GUserContactInput?>? _data;
  ListBuilder<GUserContactInput?> get data =>
      _$this._data ??= new ListBuilder<GUserContactInput?>();
  set data(ListBuilder<GUserContactInput?>? data) => _$this._data = data;

  GAddContactsOfUserV3InputBuilder();

  GAddContactsOfUserV3InputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddContactsOfUserV3Input other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddContactsOfUserV3Input;
  }

  @override
  void update(void Function(GAddContactsOfUserV3InputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddContactsOfUserV3Input build() => _build();

  _$GAddContactsOfUserV3Input _build() {
    _$GAddContactsOfUserV3Input _$result;
    try {
      _$result = _$v ?? new _$GAddContactsOfUserV3Input._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddContactsOfUserV3Input', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchWhileSyncingContactsInput
    extends GSearchWhileSyncingContactsInput {
  @override
  final String? searchString;
  @override
  final BuiltList<GUserContactInput?>? data;

  factory _$GSearchWhileSyncingContactsInput(
          [void Function(GSearchWhileSyncingContactsInputBuilder)? updates]) =>
      (new GSearchWhileSyncingContactsInputBuilder()..update(updates))._build();

  _$GSearchWhileSyncingContactsInput._({this.searchString, this.data})
      : super._();

  @override
  GSearchWhileSyncingContactsInput rebuild(
          void Function(GSearchWhileSyncingContactsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchWhileSyncingContactsInputBuilder toBuilder() =>
      new GSearchWhileSyncingContactsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchWhileSyncingContactsInput &&
        searchString == other.searchString &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, searchString.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchWhileSyncingContactsInput')
          ..add('searchString', searchString)
          ..add('data', data))
        .toString();
  }
}

class GSearchWhileSyncingContactsInputBuilder
    implements
        Builder<GSearchWhileSyncingContactsInput,
            GSearchWhileSyncingContactsInputBuilder> {
  _$GSearchWhileSyncingContactsInput? _$v;

  String? _searchString;
  String? get searchString => _$this._searchString;
  set searchString(String? searchString) => _$this._searchString = searchString;

  ListBuilder<GUserContactInput?>? _data;
  ListBuilder<GUserContactInput?> get data =>
      _$this._data ??= new ListBuilder<GUserContactInput?>();
  set data(ListBuilder<GUserContactInput?>? data) => _$this._data = data;

  GSearchWhileSyncingContactsInputBuilder();

  GSearchWhileSyncingContactsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchString = $v.searchString;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchWhileSyncingContactsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchWhileSyncingContactsInput;
  }

  @override
  void update(void Function(GSearchWhileSyncingContactsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchWhileSyncingContactsInput build() => _build();

  _$GSearchWhileSyncingContactsInput _build() {
    _$GSearchWhileSyncingContactsInput _$result;
    try {
      _$result = _$v ??
          new _$GSearchWhileSyncingContactsInput._(
              searchString: searchString, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchWhileSyncingContactsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateDefaultPodrollInput extends GCreateDefaultPodrollInput {
  @override
  final String coverImageUrl;
  @override
  final String coverImageUrlXs;
  @override
  final String coverImageUrlS;
  @override
  final String coverImageUrlM;
  @override
  final String? coverImageUrlDark;
  @override
  final String? coverImageUrlXsDark;
  @override
  final String? coverImageUrlSDark;
  @override
  final String? coverImageUrlMDark;

  factory _$GCreateDefaultPodrollInput(
          [void Function(GCreateDefaultPodrollInputBuilder)? updates]) =>
      (new GCreateDefaultPodrollInputBuilder()..update(updates))._build();

  _$GCreateDefaultPodrollInput._(
      {required this.coverImageUrl,
      required this.coverImageUrlXs,
      required this.coverImageUrlS,
      required this.coverImageUrlM,
      this.coverImageUrlDark,
      this.coverImageUrlXsDark,
      this.coverImageUrlSDark,
      this.coverImageUrlMDark})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coverImageUrl, r'GCreateDefaultPodrollInput', 'coverImageUrl');
    BuiltValueNullFieldError.checkNotNull(
        coverImageUrlXs, r'GCreateDefaultPodrollInput', 'coverImageUrlXs');
    BuiltValueNullFieldError.checkNotNull(
        coverImageUrlS, r'GCreateDefaultPodrollInput', 'coverImageUrlS');
    BuiltValueNullFieldError.checkNotNull(
        coverImageUrlM, r'GCreateDefaultPodrollInput', 'coverImageUrlM');
  }

  @override
  GCreateDefaultPodrollInput rebuild(
          void Function(GCreateDefaultPodrollInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDefaultPodrollInputBuilder toBuilder() =>
      new GCreateDefaultPodrollInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDefaultPodrollInput &&
        coverImageUrl == other.coverImageUrl &&
        coverImageUrlXs == other.coverImageUrlXs &&
        coverImageUrlS == other.coverImageUrlS &&
        coverImageUrlM == other.coverImageUrlM &&
        coverImageUrlDark == other.coverImageUrlDark &&
        coverImageUrlXsDark == other.coverImageUrlXsDark &&
        coverImageUrlSDark == other.coverImageUrlSDark &&
        coverImageUrlMDark == other.coverImageUrlMDark;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jc(_$hash, coverImageUrlXs.hashCode);
    _$hash = $jc(_$hash, coverImageUrlS.hashCode);
    _$hash = $jc(_$hash, coverImageUrlM.hashCode);
    _$hash = $jc(_$hash, coverImageUrlDark.hashCode);
    _$hash = $jc(_$hash, coverImageUrlXsDark.hashCode);
    _$hash = $jc(_$hash, coverImageUrlSDark.hashCode);
    _$hash = $jc(_$hash, coverImageUrlMDark.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateDefaultPodrollInput')
          ..add('coverImageUrl', coverImageUrl)
          ..add('coverImageUrlXs', coverImageUrlXs)
          ..add('coverImageUrlS', coverImageUrlS)
          ..add('coverImageUrlM', coverImageUrlM)
          ..add('coverImageUrlDark', coverImageUrlDark)
          ..add('coverImageUrlXsDark', coverImageUrlXsDark)
          ..add('coverImageUrlSDark', coverImageUrlSDark)
          ..add('coverImageUrlMDark', coverImageUrlMDark))
        .toString();
  }
}

class GCreateDefaultPodrollInputBuilder
    implements
        Builder<GCreateDefaultPodrollInput, GCreateDefaultPodrollInputBuilder> {
  _$GCreateDefaultPodrollInput? _$v;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  String? _coverImageUrlXs;
  String? get coverImageUrlXs => _$this._coverImageUrlXs;
  set coverImageUrlXs(String? coverImageUrlXs) =>
      _$this._coverImageUrlXs = coverImageUrlXs;

  String? _coverImageUrlS;
  String? get coverImageUrlS => _$this._coverImageUrlS;
  set coverImageUrlS(String? coverImageUrlS) =>
      _$this._coverImageUrlS = coverImageUrlS;

  String? _coverImageUrlM;
  String? get coverImageUrlM => _$this._coverImageUrlM;
  set coverImageUrlM(String? coverImageUrlM) =>
      _$this._coverImageUrlM = coverImageUrlM;

  String? _coverImageUrlDark;
  String? get coverImageUrlDark => _$this._coverImageUrlDark;
  set coverImageUrlDark(String? coverImageUrlDark) =>
      _$this._coverImageUrlDark = coverImageUrlDark;

  String? _coverImageUrlXsDark;
  String? get coverImageUrlXsDark => _$this._coverImageUrlXsDark;
  set coverImageUrlXsDark(String? coverImageUrlXsDark) =>
      _$this._coverImageUrlXsDark = coverImageUrlXsDark;

  String? _coverImageUrlSDark;
  String? get coverImageUrlSDark => _$this._coverImageUrlSDark;
  set coverImageUrlSDark(String? coverImageUrlSDark) =>
      _$this._coverImageUrlSDark = coverImageUrlSDark;

  String? _coverImageUrlMDark;
  String? get coverImageUrlMDark => _$this._coverImageUrlMDark;
  set coverImageUrlMDark(String? coverImageUrlMDark) =>
      _$this._coverImageUrlMDark = coverImageUrlMDark;

  GCreateDefaultPodrollInputBuilder();

  GCreateDefaultPodrollInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coverImageUrl = $v.coverImageUrl;
      _coverImageUrlXs = $v.coverImageUrlXs;
      _coverImageUrlS = $v.coverImageUrlS;
      _coverImageUrlM = $v.coverImageUrlM;
      _coverImageUrlDark = $v.coverImageUrlDark;
      _coverImageUrlXsDark = $v.coverImageUrlXsDark;
      _coverImageUrlSDark = $v.coverImageUrlSDark;
      _coverImageUrlMDark = $v.coverImageUrlMDark;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDefaultPodrollInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDefaultPodrollInput;
  }

  @override
  void update(void Function(GCreateDefaultPodrollInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateDefaultPodrollInput build() => _build();

  _$GCreateDefaultPodrollInput _build() {
    final _$result = _$v ??
        new _$GCreateDefaultPodrollInput._(
            coverImageUrl: BuiltValueNullFieldError.checkNotNull(
                coverImageUrl, r'GCreateDefaultPodrollInput', 'coverImageUrl'),
            coverImageUrlXs: BuiltValueNullFieldError.checkNotNull(
                coverImageUrlXs,
                r'GCreateDefaultPodrollInput',
                'coverImageUrlXs'),
            coverImageUrlS: BuiltValueNullFieldError.checkNotNull(
                coverImageUrlS,
                r'GCreateDefaultPodrollInput',
                'coverImageUrlS'),
            coverImageUrlM: BuiltValueNullFieldError.checkNotNull(
                coverImageUrlM,
                r'GCreateDefaultPodrollInput',
                'coverImageUrlM'),
            coverImageUrlDark: coverImageUrlDark,
            coverImageUrlXsDark: coverImageUrlXsDark,
            coverImageUrlSDark: coverImageUrlSDark,
            coverImageUrlMDark: coverImageUrlMDark);
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePodrollInput extends GCreatePodrollInput {
  @override
  final String title;
  @override
  final bool isPrivate;
  @override
  final String coverImageUrl;
  @override
  final String coverImageUrlXs;
  @override
  final String coverImageUrlS;
  @override
  final String coverImageUrlM;
  @override
  final String? coverImageUrlDark;
  @override
  final String? coverImageUrlXsDark;
  @override
  final String? coverImageUrlSDark;
  @override
  final String? coverImageUrlMDark;
  @override
  final bool isImageUploaded;

  factory _$GCreatePodrollInput(
          [void Function(GCreatePodrollInputBuilder)? updates]) =>
      (new GCreatePodrollInputBuilder()..update(updates))._build();

  _$GCreatePodrollInput._(
      {required this.title,
      required this.isPrivate,
      required this.coverImageUrl,
      required this.coverImageUrlXs,
      required this.coverImageUrlS,
      required this.coverImageUrlM,
      this.coverImageUrlDark,
      this.coverImageUrlXsDark,
      this.coverImageUrlSDark,
      this.coverImageUrlMDark,
      required this.isImageUploaded})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'GCreatePodrollInput', 'title');
    BuiltValueNullFieldError.checkNotNull(
        isPrivate, r'GCreatePodrollInput', 'isPrivate');
    BuiltValueNullFieldError.checkNotNull(
        coverImageUrl, r'GCreatePodrollInput', 'coverImageUrl');
    BuiltValueNullFieldError.checkNotNull(
        coverImageUrlXs, r'GCreatePodrollInput', 'coverImageUrlXs');
    BuiltValueNullFieldError.checkNotNull(
        coverImageUrlS, r'GCreatePodrollInput', 'coverImageUrlS');
    BuiltValueNullFieldError.checkNotNull(
        coverImageUrlM, r'GCreatePodrollInput', 'coverImageUrlM');
    BuiltValueNullFieldError.checkNotNull(
        isImageUploaded, r'GCreatePodrollInput', 'isImageUploaded');
  }

  @override
  GCreatePodrollInput rebuild(
          void Function(GCreatePodrollInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePodrollInputBuilder toBuilder() =>
      new GCreatePodrollInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePodrollInput &&
        title == other.title &&
        isPrivate == other.isPrivate &&
        coverImageUrl == other.coverImageUrl &&
        coverImageUrlXs == other.coverImageUrlXs &&
        coverImageUrlS == other.coverImageUrlS &&
        coverImageUrlM == other.coverImageUrlM &&
        coverImageUrlDark == other.coverImageUrlDark &&
        coverImageUrlXsDark == other.coverImageUrlXsDark &&
        coverImageUrlSDark == other.coverImageUrlSDark &&
        coverImageUrlMDark == other.coverImageUrlMDark &&
        isImageUploaded == other.isImageUploaded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, isPrivate.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jc(_$hash, coverImageUrlXs.hashCode);
    _$hash = $jc(_$hash, coverImageUrlS.hashCode);
    _$hash = $jc(_$hash, coverImageUrlM.hashCode);
    _$hash = $jc(_$hash, coverImageUrlDark.hashCode);
    _$hash = $jc(_$hash, coverImageUrlXsDark.hashCode);
    _$hash = $jc(_$hash, coverImageUrlSDark.hashCode);
    _$hash = $jc(_$hash, coverImageUrlMDark.hashCode);
    _$hash = $jc(_$hash, isImageUploaded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePodrollInput')
          ..add('title', title)
          ..add('isPrivate', isPrivate)
          ..add('coverImageUrl', coverImageUrl)
          ..add('coverImageUrlXs', coverImageUrlXs)
          ..add('coverImageUrlS', coverImageUrlS)
          ..add('coverImageUrlM', coverImageUrlM)
          ..add('coverImageUrlDark', coverImageUrlDark)
          ..add('coverImageUrlXsDark', coverImageUrlXsDark)
          ..add('coverImageUrlSDark', coverImageUrlSDark)
          ..add('coverImageUrlMDark', coverImageUrlMDark)
          ..add('isImageUploaded', isImageUploaded))
        .toString();
  }
}

class GCreatePodrollInputBuilder
    implements Builder<GCreatePodrollInput, GCreatePodrollInputBuilder> {
  _$GCreatePodrollInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _isPrivate;
  bool? get isPrivate => _$this._isPrivate;
  set isPrivate(bool? isPrivate) => _$this._isPrivate = isPrivate;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  String? _coverImageUrlXs;
  String? get coverImageUrlXs => _$this._coverImageUrlXs;
  set coverImageUrlXs(String? coverImageUrlXs) =>
      _$this._coverImageUrlXs = coverImageUrlXs;

  String? _coverImageUrlS;
  String? get coverImageUrlS => _$this._coverImageUrlS;
  set coverImageUrlS(String? coverImageUrlS) =>
      _$this._coverImageUrlS = coverImageUrlS;

  String? _coverImageUrlM;
  String? get coverImageUrlM => _$this._coverImageUrlM;
  set coverImageUrlM(String? coverImageUrlM) =>
      _$this._coverImageUrlM = coverImageUrlM;

  String? _coverImageUrlDark;
  String? get coverImageUrlDark => _$this._coverImageUrlDark;
  set coverImageUrlDark(String? coverImageUrlDark) =>
      _$this._coverImageUrlDark = coverImageUrlDark;

  String? _coverImageUrlXsDark;
  String? get coverImageUrlXsDark => _$this._coverImageUrlXsDark;
  set coverImageUrlXsDark(String? coverImageUrlXsDark) =>
      _$this._coverImageUrlXsDark = coverImageUrlXsDark;

  String? _coverImageUrlSDark;
  String? get coverImageUrlSDark => _$this._coverImageUrlSDark;
  set coverImageUrlSDark(String? coverImageUrlSDark) =>
      _$this._coverImageUrlSDark = coverImageUrlSDark;

  String? _coverImageUrlMDark;
  String? get coverImageUrlMDark => _$this._coverImageUrlMDark;
  set coverImageUrlMDark(String? coverImageUrlMDark) =>
      _$this._coverImageUrlMDark = coverImageUrlMDark;

  bool? _isImageUploaded;
  bool? get isImageUploaded => _$this._isImageUploaded;
  set isImageUploaded(bool? isImageUploaded) =>
      _$this._isImageUploaded = isImageUploaded;

  GCreatePodrollInputBuilder();

  GCreatePodrollInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _isPrivate = $v.isPrivate;
      _coverImageUrl = $v.coverImageUrl;
      _coverImageUrlXs = $v.coverImageUrlXs;
      _coverImageUrlS = $v.coverImageUrlS;
      _coverImageUrlM = $v.coverImageUrlM;
      _coverImageUrlDark = $v.coverImageUrlDark;
      _coverImageUrlXsDark = $v.coverImageUrlXsDark;
      _coverImageUrlSDark = $v.coverImageUrlSDark;
      _coverImageUrlMDark = $v.coverImageUrlMDark;
      _isImageUploaded = $v.isImageUploaded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePodrollInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePodrollInput;
  }

  @override
  void update(void Function(GCreatePodrollInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePodrollInput build() => _build();

  _$GCreatePodrollInput _build() {
    final _$result = _$v ??
        new _$GCreatePodrollInput._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GCreatePodrollInput', 'title'),
            isPrivate: BuiltValueNullFieldError.checkNotNull(
                isPrivate, r'GCreatePodrollInput', 'isPrivate'),
            coverImageUrl: BuiltValueNullFieldError.checkNotNull(
                coverImageUrl, r'GCreatePodrollInput', 'coverImageUrl'),
            coverImageUrlXs: BuiltValueNullFieldError.checkNotNull(
                coverImageUrlXs, r'GCreatePodrollInput', 'coverImageUrlXs'),
            coverImageUrlS: BuiltValueNullFieldError.checkNotNull(
                coverImageUrlS, r'GCreatePodrollInput', 'coverImageUrlS'),
            coverImageUrlM: BuiltValueNullFieldError.checkNotNull(
                coverImageUrlM, r'GCreatePodrollInput', 'coverImageUrlM'),
            coverImageUrlDark: coverImageUrlDark,
            coverImageUrlXsDark: coverImageUrlXsDark,
            coverImageUrlSDark: coverImageUrlSDark,
            coverImageUrlMDark: coverImageUrlMDark,
            isImageUploaded: BuiltValueNullFieldError.checkNotNull(
                isImageUploaded, r'GCreatePodrollInput', 'isImageUploaded'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateAPodrollInput extends GUpdateAPodrollInput {
  @override
  final String podrollId;
  @override
  final String? title;
  @override
  final bool isPrivate;
  @override
  final String? coverImageUrl;
  @override
  final String? coverImageUrlDark;
  @override
  final bool isImageUploaded;

  factory _$GUpdateAPodrollInput(
          [void Function(GUpdateAPodrollInputBuilder)? updates]) =>
      (new GUpdateAPodrollInputBuilder()..update(updates))._build();

  _$GUpdateAPodrollInput._(
      {required this.podrollId,
      this.title,
      required this.isPrivate,
      this.coverImageUrl,
      this.coverImageUrlDark,
      required this.isImageUploaded})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        podrollId, r'GUpdateAPodrollInput', 'podrollId');
    BuiltValueNullFieldError.checkNotNull(
        isPrivate, r'GUpdateAPodrollInput', 'isPrivate');
    BuiltValueNullFieldError.checkNotNull(
        isImageUploaded, r'GUpdateAPodrollInput', 'isImageUploaded');
  }

  @override
  GUpdateAPodrollInput rebuild(
          void Function(GUpdateAPodrollInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateAPodrollInputBuilder toBuilder() =>
      new GUpdateAPodrollInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateAPodrollInput &&
        podrollId == other.podrollId &&
        title == other.title &&
        isPrivate == other.isPrivate &&
        coverImageUrl == other.coverImageUrl &&
        coverImageUrlDark == other.coverImageUrlDark &&
        isImageUploaded == other.isImageUploaded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, podrollId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, isPrivate.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jc(_$hash, coverImageUrlDark.hashCode);
    _$hash = $jc(_$hash, isImageUploaded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateAPodrollInput')
          ..add('podrollId', podrollId)
          ..add('title', title)
          ..add('isPrivate', isPrivate)
          ..add('coverImageUrl', coverImageUrl)
          ..add('coverImageUrlDark', coverImageUrlDark)
          ..add('isImageUploaded', isImageUploaded))
        .toString();
  }
}

class GUpdateAPodrollInputBuilder
    implements Builder<GUpdateAPodrollInput, GUpdateAPodrollInputBuilder> {
  _$GUpdateAPodrollInput? _$v;

  String? _podrollId;
  String? get podrollId => _$this._podrollId;
  set podrollId(String? podrollId) => _$this._podrollId = podrollId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _isPrivate;
  bool? get isPrivate => _$this._isPrivate;
  set isPrivate(bool? isPrivate) => _$this._isPrivate = isPrivate;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  String? _coverImageUrlDark;
  String? get coverImageUrlDark => _$this._coverImageUrlDark;
  set coverImageUrlDark(String? coverImageUrlDark) =>
      _$this._coverImageUrlDark = coverImageUrlDark;

  bool? _isImageUploaded;
  bool? get isImageUploaded => _$this._isImageUploaded;
  set isImageUploaded(bool? isImageUploaded) =>
      _$this._isImageUploaded = isImageUploaded;

  GUpdateAPodrollInputBuilder();

  GUpdateAPodrollInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _podrollId = $v.podrollId;
      _title = $v.title;
      _isPrivate = $v.isPrivate;
      _coverImageUrl = $v.coverImageUrl;
      _coverImageUrlDark = $v.coverImageUrlDark;
      _isImageUploaded = $v.isImageUploaded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateAPodrollInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateAPodrollInput;
  }

  @override
  void update(void Function(GUpdateAPodrollInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateAPodrollInput build() => _build();

  _$GUpdateAPodrollInput _build() {
    final _$result = _$v ??
        new _$GUpdateAPodrollInput._(
            podrollId: BuiltValueNullFieldError.checkNotNull(
                podrollId, r'GUpdateAPodrollInput', 'podrollId'),
            title: title,
            isPrivate: BuiltValueNullFieldError.checkNotNull(
                isPrivate, r'GUpdateAPodrollInput', 'isPrivate'),
            coverImageUrl: coverImageUrl,
            coverImageUrlDark: coverImageUrlDark,
            isImageUploaded: BuiltValueNullFieldError.checkNotNull(
                isImageUploaded, r'GUpdateAPodrollInput', 'isImageUploaded'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
