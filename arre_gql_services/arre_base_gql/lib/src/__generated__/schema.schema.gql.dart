// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_base_gql/src/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

class GAqlEdgeDirection extends EnumClass {
  const GAqlEdgeDirection._(String name) : super(name);

  static const GAqlEdgeDirection OUTBOUND = _$gAqlEdgeDirectionOUTBOUND;

  static const GAqlEdgeDirection INBOUND = _$gAqlEdgeDirectionINBOUND;

  static const GAqlEdgeDirection ANY = _$gAqlEdgeDirectionANY;

  static Serializer<GAqlEdgeDirection> get serializer =>
      _$gAqlEdgeDirectionSerializer;
  static BuiltSet<GAqlEdgeDirection> get values => _$gAqlEdgeDirectionValues;
  static GAqlEdgeDirection valueOf(String name) =>
      _$gAqlEdgeDirectionValueOf(name);
}

class GAqlSortOrder extends EnumClass {
  const GAqlSortOrder._(String name) : super(name);

  static const GAqlSortOrder DESC = _$gAqlSortOrderDESC;

  static const GAqlSortOrder ASC = _$gAqlSortOrderASC;

  static Serializer<GAqlSortOrder> get serializer => _$gAqlSortOrderSerializer;
  static BuiltSet<GAqlSortOrder> get values => _$gAqlSortOrderValues;
  static GAqlSortOrder valueOf(String name) => _$gAqlSortOrderValueOf(name);
}

abstract class GAqlSortInput
    implements Built<GAqlSortInput, GAqlSortInputBuilder> {
  GAqlSortInput._();

  factory GAqlSortInput([Function(GAqlSortInputBuilder b) updates]) =
      _$GAqlSortInput;

  String get property;
  GAqlSortOrder? get order;
  String? get sortOn;
  static Serializer<GAqlSortInput> get serializer => _$gAqlSortInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAqlSortInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAqlSortInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAqlSortInput.serializer,
        json,
      );
}

abstract class GAqlLimitInput
    implements Built<GAqlLimitInput, GAqlLimitInputBuilder> {
  GAqlLimitInput._();

  factory GAqlLimitInput([Function(GAqlLimitInputBuilder b) updates]) =
      _$GAqlLimitInput;

  String get count;
  String? get skip;
  static Serializer<GAqlLimitInput> get serializer =>
      _$gAqlLimitInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAqlLimitInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAqlLimitInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAqlLimitInput.serializer,
        json,
      );
}

abstract class GAqlTraverseOptionsInput
    implements
        Built<GAqlTraverseOptionsInput, GAqlTraverseOptionsInputBuilder> {
  GAqlTraverseOptionsInput._();

  factory GAqlTraverseOptionsInput(
          [Function(GAqlTraverseOptionsInputBuilder b) updates]) =
      _$GAqlTraverseOptionsInput;

  bool? get bfs;
  String? get uniqueVertices;
  String? get uniqueEdges;
  static Serializer<GAqlTraverseOptionsInput> get serializer =>
      _$gAqlTraverseOptionsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAqlTraverseOptionsInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAqlTraverseOptionsInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAqlTraverseOptionsInput.serializer,
        json,
      );
}

class GStatus extends EnumClass {
  const GStatus._(String name) : super(name);

  static const GStatus active = _$gStatusactive;

  static const GStatus inactive = _$gStatusinactive;

  static Serializer<GStatus> get serializer => _$gStatusSerializer;
  static BuiltSet<GStatus> get values => _$gStatusValues;
  static GStatus valueOf(String name) => _$gStatusValueOf(name);
}

abstract class GTopicAndSubTopicIds
    implements Built<GTopicAndSubTopicIds, GTopicAndSubTopicIdsBuilder> {
  GTopicAndSubTopicIds._();

  factory GTopicAndSubTopicIds(
          [Function(GTopicAndSubTopicIdsBuilder b) updates]) =
      _$GTopicAndSubTopicIds;

  String? get topicId;
  BuiltList<String?>? get subTopicIds;
  static Serializer<GTopicAndSubTopicIds> get serializer =>
      _$gTopicAndSubTopicIdsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTopicAndSubTopicIds.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTopicAndSubTopicIds? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTopicAndSubTopicIds.serializer,
        json,
      );
}

abstract class GPronouns implements Built<GPronouns, GPronounsBuilder> {
  GPronouns._();

  factory GPronouns([Function(GPronounsBuilder b) updates]) = _$GPronouns;

  String? get name;
  int? get id;
  bool? get isMain;
  static Serializer<GPronouns> get serializer => _$gPronounsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPronouns.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPronouns? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPronouns.serializer,
        json,
      );
}

abstract class GAddUser implements Built<GAddUser, GAddUserBuilder> {
  GAddUser._();

  factory GAddUser([Function(GAddUserBuilder b) updates]) = _$GAddUser;

  String get firstname;
  String get lastname;
  String get username;
  BuiltList<String?>? get languages;
  String? get phoneNumber;
  String? get avatar;
  String? get theme;
  String? get isAvatar;
  String? get gender;
  bool? get isVerified;
  BuiltList<String?>? get reasons;
  String? get subId;
  BuiltList<GTopicAndSubTopicIds?>? get topics;
  bool? get showGender;
  int? get verificationStatus;
  BuiltList<GPronouns?>? get pronouns;
  String get timeUserCheckedPrivacyPolicy;
  static Serializer<GAddUser> get serializer => _$gAddUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddUser.serializer,
        json,
      );
}

abstract class GUserAvatar implements Built<GUserAvatar, GUserAvatarBuilder> {
  GUserAvatar._();

  factory GUserAvatar([Function(GUserAvatarBuilder b) updates]) = _$GUserAvatar;

  String get firstname;
  String get lastname;
  String get username;
  static Serializer<GUserAvatar> get serializer => _$gUserAvatarSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserAvatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserAvatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserAvatar.serializer,
        json,
      );
}

abstract class GUpdateUser implements Built<GUpdateUser, GUpdateUserBuilder> {
  GUpdateUser._();

  factory GUpdateUser([Function(GUpdateUserBuilder b) updates]) = _$GUpdateUser;

  String? get firstname;
  String? get lastname;
  String? get username;
  String? get bio;
  String? get avatar;
  String? get theme;
  String? get isAvatar;
  String? get frames;
  bool? get isFrameLive;
  String? get twitterHandle;
  String? get instagramHandle;
  static Serializer<GUpdateUser> get serializer => _$gUpdateUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUser.serializer,
        json,
      );
}

abstract class GGetUserFriendsInput
    implements Built<GGetUserFriendsInput, GGetUserFriendsInputBuilder> {
  GGetUserFriendsInput._();

  factory GGetUserFriendsInput(
          [Function(GGetUserFriendsInputBuilder b) updates]) =
      _$GGetUserFriendsInput;

  int? get offset;
  int? get limit;
  bool? get womenOnly;
  String? get searchString;
  static Serializer<GGetUserFriendsInput> get serializer =>
      _$gGetUserFriendsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserFriendsInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserFriendsInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserFriendsInput.serializer,
        json,
      );
}

abstract class GGetUsersToInviteInput
    implements Built<GGetUsersToInviteInput, GGetUsersToInviteInputBuilder> {
  GGetUsersToInviteInput._();

  factory GGetUsersToInviteInput(
          [Function(GGetUsersToInviteInputBuilder b) updates]) =
      _$GGetUsersToInviteInput;

  int? get offset;
  int? get limit;
  bool? get womenOnly;
  String? get jampodId;
  String? get searchString;
  static Serializer<GGetUsersToInviteInput> get serializer =>
      _$gGetUsersToInviteInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUsersToInviteInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUsersToInviteInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUsersToInviteInput.serializer,
        json,
      );
}

abstract class GGetUsersBySearchIncludesWomenInput
    implements
        Built<GGetUsersBySearchIncludesWomenInput,
            GGetUsersBySearchIncludesWomenInputBuilder> {
  GGetUsersBySearchIncludesWomenInput._();

  factory GGetUsersBySearchIncludesWomenInput(
          [Function(GGetUsersBySearchIncludesWomenInputBuilder b) updates]) =
      _$GGetUsersBySearchIncludesWomenInput;

  String? get searchString;
  int? get offset;
  int? get limit;
  bool? get womenOnly;
  static Serializer<GGetUsersBySearchIncludesWomenInput> get serializer =>
      _$gGetUsersBySearchIncludesWomenInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUsersBySearchIncludesWomenInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUsersBySearchIncludesWomenInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUsersBySearchIncludesWomenInput.serializer,
        json,
      );
}

abstract class GGetUsersBySearchInput
    implements Built<GGetUsersBySearchInput, GGetUsersBySearchInputBuilder> {
  GGetUsersBySearchInput._();

  factory GGetUsersBySearchInput(
          [Function(GGetUsersBySearchInputBuilder b) updates]) =
      _$GGetUsersBySearchInput;

  String? get searchString;
  int? get offset;
  int? get limit;
  static Serializer<GGetUsersBySearchInput> get serializer =>
      _$gGetUsersBySearchInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUsersBySearchInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUsersBySearchInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUsersBySearchInput.serializer,
        json,
      );
}

abstract class GGetSuggestedUserWithCategory
    implements
        Built<GGetSuggestedUserWithCategory,
            GGetSuggestedUserWithCategoryBuilder> {
  GGetSuggestedUserWithCategory._();

  factory GGetSuggestedUserWithCategory(
          [Function(GGetSuggestedUserWithCategoryBuilder b) updates]) =
      _$GGetSuggestedUserWithCategory;

  String? get topicName;
  bool? get isDefault;
  BuiltList<String?>? get defaultUser;
  static Serializer<GGetSuggestedUserWithCategory> get serializer =>
      _$gGetSuggestedUserWithCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSuggestedUserWithCategory.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSuggestedUserWithCategory? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSuggestedUserWithCategory.serializer,
        json,
      );
}

abstract class GReportUserInput
    implements Built<GReportUserInput, GReportUserInputBuilder> {
  GReportUserInput._();

  factory GReportUserInput([Function(GReportUserInputBuilder b) updates]) =
      _$GReportUserInput;

  String get otherUserId;
  String? get message;
  BuiltList<String?>? get issueTypeIds;
  BuiltList<String?>? get evidence;
  String? get audio;
  static Serializer<GReportUserInput> get serializer =>
      _$gReportUserInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReportUserInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReportUserInput.serializer,
        json,
      );
}

abstract class GUpdateEndPointInput
    implements Built<GUpdateEndPointInput, GUpdateEndPointInputBuilder> {
  GUpdateEndPointInput._();

  factory GUpdateEndPointInput(
          [Function(GUpdateEndPointInputBuilder b) updates]) =
      _$GUpdateEndPointInput;

  String get deviceToken;
  String get service;
  static Serializer<GUpdateEndPointInput> get serializer =>
      _$gUpdateEndPointInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateEndPointInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateEndPointInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateEndPointInput.serializer,
        json,
      );
}

abstract class GLogoutInput
    implements Built<GLogoutInput, GLogoutInputBuilder> {
  GLogoutInput._();

  factory GLogoutInput([Function(GLogoutInputBuilder b) updates]) =
      _$GLogoutInput;

  String get deviceToken;
  static Serializer<GLogoutInput> get serializer => _$gLogoutInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLogoutInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLogoutInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLogoutInput.serializer,
        json,
      );
}

abstract class GDeviceInfo implements Built<GDeviceInfo, GDeviceInfoBuilder> {
  GDeviceInfo._();

  factory GDeviceInfo([Function(GDeviceInfoBuilder b) updates]) = _$GDeviceInfo;

  String get deviceId;
  String get androidVersion;
  static Serializer<GDeviceInfo> get serializer => _$gDeviceInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeviceInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeviceInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeviceInfo.serializer,
        json,
      );
}

abstract class GcreateTicketInput
    implements Built<GcreateTicketInput, GcreateTicketInputBuilder> {
  GcreateTicketInput._();

  factory GcreateTicketInput([Function(GcreateTicketInputBuilder b) updates]) =
      _$GcreateTicketInput;

  String? get description;
  BuiltList<String?>? get key;
  String? get category;
  static Serializer<GcreateTicketInput> get serializer =>
      _$gcreateTicketInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateTicketInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GcreateTicketInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateTicketInput.serializer,
        json,
      );
}

abstract class GticketReplyInput
    implements Built<GticketReplyInput, GticketReplyInputBuilder> {
  GticketReplyInput._();

  factory GticketReplyInput([Function(GticketReplyInputBuilder b) updates]) =
      _$GticketReplyInput;

  String? get description;
  BuiltList<String?>? get key;
  String? get ticketId;
  static Serializer<GticketReplyInput> get serializer =>
      _$gticketReplyInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GticketReplyInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GticketReplyInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GticketReplyInput.serializer,
        json,
      );
}

abstract class GsuggestedUsersByTopics
    implements Built<GsuggestedUsersByTopics, GsuggestedUsersByTopicsBuilder> {
  GsuggestedUsersByTopics._();

  factory GsuggestedUsersByTopics(
          [Function(GsuggestedUsersByTopicsBuilder b) updates]) =
      _$GsuggestedUsersByTopics;

  String? get topic;
  int? get order;
  BuiltList<String?>? get users;
  static Serializer<GsuggestedUsersByTopics> get serializer =>
      _$gsuggestedUsersByTopicsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsuggestedUsersByTopics.serializer,
        this,
      ) as Map<String, dynamic>);
  static GsuggestedUsersByTopics? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsuggestedUsersByTopics.serializer,
        json,
      );
}

abstract class GoperatingSystemData
    implements Built<GoperatingSystemData, GoperatingSystemDataBuilder> {
  GoperatingSystemData._();

  factory GoperatingSystemData(
          [Function(GoperatingSystemDataBuilder b) updates]) =
      _$GoperatingSystemData;

  String? get operatingSystem;
  String? get operatingSystemVersion;
  static Serializer<GoperatingSystemData> get serializer =>
      _$goperatingSystemDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GoperatingSystemData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GoperatingSystemData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GoperatingSystemData.serializer,
        json,
      );
}

abstract class GdeviceInfoData
    implements Built<GdeviceInfoData, GdeviceInfoDataBuilder> {
  GdeviceInfoData._();

  factory GdeviceInfoData([Function(GdeviceInfoDataBuilder b) updates]) =
      _$GdeviceInfoData;

  String? get modelName;
  String? get manufacturer;
  String? get deviceName;
  String? get deviceUniqueId;
  String? get imeiNumber;
  static Serializer<GdeviceInfoData> get serializer =>
      _$gdeviceInfoDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeviceInfoData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GdeviceInfoData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeviceInfoData.serializer,
        json,
      );
}

class GVisibility extends EnumClass {
  const GVisibility._(String name) : super(name);

  static const GVisibility public = _$gVisibilitypublic;

  static const GVisibility private = _$gVisibilityprivate;

  static const GVisibility inviteOnly = _$gVisibilityinviteOnly;

  static const GVisibility womenOnly = _$gVisibilitywomenOnly;

  static Serializer<GVisibility> get serializer => _$gVisibilitySerializer;
  static BuiltSet<GVisibility> get values => _$gVisibilityValues;
  static GVisibility valueOf(String name) => _$gVisibilityValueOf(name);
}

abstract class GSelectedSubTopic
    implements Built<GSelectedSubTopic, GSelectedSubTopicBuilder> {
  GSelectedSubTopic._();

  factory GSelectedSubTopic([Function(GSelectedSubTopicBuilder b) updates]) =
      _$GSelectedSubTopic;

  String? get topicId;
  static Serializer<GSelectedSubTopic> get serializer =>
      _$gSelectedSubTopicSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSelectedSubTopic.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSelectedSubTopic? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSelectedSubTopic.serializer,
        json,
      );
}

abstract class GSelectedParticipates
    implements Built<GSelectedParticipates, GSelectedParticipatesBuilder> {
  GSelectedParticipates._();

  factory GSelectedParticipates(
          [Function(GSelectedParticipatesBuilder b) updates]) =
      _$GSelectedParticipates;

  String? get id;
  static Serializer<GSelectedParticipates> get serializer =>
      _$gSelectedParticipatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSelectedParticipates.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSelectedParticipates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSelectedParticipates.serializer,
        json,
      );
}

abstract class GAddPost implements Built<GAddPost, GAddPostBuilder> {
  GAddPost._();

  factory GAddPost([Function(GAddPostBuilder b) updates]) = _$GAddPost;

  int? get userId;
  String? get title;
  String? get description;
  int? get postType;
  String? get audioByteId;
  int? get audioBytePreviewStartTime;
  int? get audioBytePreviewEndTime;
  int? get audioDuration;
  GDateTime? get startTime;
  GDateTime? get endTime;
  int? get visibility;
  int? get postUsertype;
  BuiltList<GSelectedSubTopic?>? get selectedTopics;
  BuiltList<GSelectedParticipates?>? get participants;
  static Serializer<GAddPost> get serializer => _$gAddPostSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddPost.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddPost? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddPost.serializer,
        json,
      );
}

abstract class GSearchData implements Built<GSearchData, GSearchDataBuilder> {
  GSearchData._();

  factory GSearchData([Function(GSearchDataBuilder b) updates]) = _$GSearchData;

  String? get searchString;
  int? get offset;
  int? get limit;
  String? get postType;
  bool? get isSearched;
  static Serializer<GSearchData> get serializer => _$gSearchDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchData.serializer,
        json,
      );
}

abstract class GAddGuideline
    implements Built<GAddGuideline, GAddGuidelineBuilder> {
  GAddGuideline._();

  factory GAddGuideline([Function(GAddGuidelineBuilder b) updates]) =
      _$GAddGuideline;

  String? get postId;
  String? get name;
  static Serializer<GAddGuideline> get serializer => _$gAddGuidelineSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddGuideline.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddGuideline? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddGuideline.serializer,
        json,
      );
}

abstract class GRemoveGuideline
    implements Built<GRemoveGuideline, GRemoveGuidelineBuilder> {
  GRemoveGuideline._();

  factory GRemoveGuideline([Function(GRemoveGuidelineBuilder b) updates]) =
      _$GRemoveGuideline;

  String? get postId;
  String? get guidelineId;
  static Serializer<GRemoveGuideline> get serializer =>
      _$gRemoveGuidelineSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveGuideline.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRemoveGuideline? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveGuideline.serializer,
        json,
      );
}

abstract class GSendPostInvite
    implements Built<GSendPostInvite, GSendPostInviteBuilder> {
  GSendPostInvite._();

  factory GSendPostInvite([Function(GSendPostInviteBuilder b) updates]) =
      _$GSendPostInvite;

  String? get postId;
  String? get inviteeUserId;
  String? get message;
  int? get invitationFrom;
  int? get postType;
  static Serializer<GSendPostInvite> get serializer =>
      _$gSendPostInviteSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendPostInvite.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSendPostInvite? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendPostInvite.serializer,
        json,
      );
}

abstract class GsendPostInviteToMultipleUsers
    implements
        Built<GsendPostInviteToMultipleUsers,
            GsendPostInviteToMultipleUsersBuilder> {
  GsendPostInviteToMultipleUsers._();

  factory GsendPostInviteToMultipleUsers(
          [Function(GsendPostInviteToMultipleUsersBuilder b) updates]) =
      _$GsendPostInviteToMultipleUsers;

  String? get postId;
  BuiltList<String?>? get inviteeUserId;
  String? get message;
  int? get invitationFrom;
  int? get postType;
  static Serializer<GsendPostInviteToMultipleUsers> get serializer =>
      _$gsendPostInviteToMultipleUsersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsendPostInviteToMultipleUsers.serializer,
        this,
      ) as Map<String, dynamic>);
  static GsendPostInviteToMultipleUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsendPostInviteToMultipleUsers.serializer,
        json,
      );
}

abstract class GCreatePostV1
    implements Built<GCreatePostV1, GCreatePostV1Builder> {
  GCreatePostV1._();

  factory GCreatePostV1([Function(GCreatePostV1Builder b) updates]) =
      _$GCreatePostV1;

  String get title;
  String? get description;
  int get postType;
  int get visibility;
  int? get postUsertype;
  String get audioByteId;
  int? get audioBytePreviewStartTime;
  int? get audioBytePreviewEndTime;
  int? get audioDuration;
  GDateTime? get startTime;
  GDateTime? get endTime;
  BuiltList<String?>? get selectedTopics;
  String? get media;
  int? get mediaType;
  bool? get repod;
  bool? get isDraft;
  String? get thumbnail;
  String? get language;
  BuiltList<int?>? get insertables;
  String? get parentPostId;
  String? get parallelizationUrl;
  String? get draftPostId;
  String? get bgMusicId;
  String? get pitchId;
  BuiltList<String?>? get hashTags;
  static Serializer<GCreatePostV1> get serializer => _$gCreatePostV1Serializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostV1.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreatePostV1? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostV1.serializer,
        json,
      );
}

abstract class GCreatePostV2
    implements Built<GCreatePostV2, GCreatePostV2Builder> {
  GCreatePostV2._();

  factory GCreatePostV2([Function(GCreatePostV2Builder b) updates]) =
      _$GCreatePostV2;

  String get title;
  String? get description;
  int get postType;
  int get visibility;
  int? get postUsertype;
  String get audioByteId;
  int? get audioBytePreviewStartTime;
  int? get audioBytePreviewEndTime;
  int? get audioDuration;
  GDateTime? get startTime;
  GDateTime? get endTime;
  BuiltList<String?>? get selectedTopics;
  String? get media;
  int? get mediaType;
  bool? get repod;
  bool? get isDraft;
  String? get thumbnail;
  String? get language;
  BuiltList<String?>? get insertables;
  String? get parentPostId;
  String? get parallelizationUrl;
  String? get draftPostId;
  String? get bgMusicId;
  String? get pitchId;
  BuiltList<String?>? get hashTags;
  static Serializer<GCreatePostV2> get serializer => _$gCreatePostV2Serializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostV2.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreatePostV2? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostV2.serializer,
        json,
      );
}

abstract class GUpdatePostV1
    implements Built<GUpdatePostV1, GUpdatePostV1Builder> {
  GUpdatePostV1._();

  factory GUpdatePostV1([Function(GUpdatePostV1Builder b) updates]) =
      _$GUpdatePostV1;

  String? get title;
  String? get description;
  int? get postType;
  int? get visibility;
  int? get postUsertype;
  String? get audioByteId;
  int? get audioBytePreviewStartTime;
  int? get audioBytePreviewEndTime;
  int? get audioDuration;
  GDateTime? get startTime;
  GDateTime? get endTime;
  BuiltList<String?>? get selectedTopics;
  String? get media;
  int? get mediaType;
  bool? get repod;
  bool? get isDraft;
  String? get thumbnail;
  String? get language;
  BuiltList<int?>? get insertables;
  String? get parentPostId;
  String? get parallelizationUrl;
  String? get bgMusicId;
  String? get pitchId;
  BuiltList<String?>? get hashTags;
  static Serializer<GUpdatePostV1> get serializer => _$gUpdatePostV1Serializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostV1.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdatePostV1? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostV1.serializer,
        json,
      );
}

abstract class GGetGuideline
    implements Built<GGetGuideline, GGetGuidelineBuilder> {
  GGetGuideline._();

  factory GGetGuideline([Function(GGetGuidelineBuilder b) updates]) =
      _$GGetGuideline;

  String get postId;
  static Serializer<GGetGuideline> get serializer => _$gGetGuidelineSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetGuideline.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetGuideline? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetGuideline.serializer,
        json,
      );
}

abstract class GGetUserPosts
    implements Built<GGetUserPosts, GGetUserPostsBuilder> {
  GGetUserPosts._();

  factory GGetUserPosts([Function(GGetUserPostsBuilder b) updates]) =
      _$GGetUserPosts;

  int? get filterType;
  int? get offset;
  int? get limit;
  static Serializer<GGetUserPosts> get serializer => _$gGetUserPostsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserPosts.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserPosts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserPosts.serializer,
        json,
      );
}

abstract class GLaunchJampod
    implements Built<GLaunchJampod, GLaunchJampodBuilder> {
  GLaunchJampod._();

  factory GLaunchJampod([Function(GLaunchJampodBuilder b) updates]) =
      _$GLaunchJampod;

  String get voicepodId;
  int get visibility;
  int? get postUsertype;
  GDateTime? get startTime;
  GDateTime? get endTime;
  BuiltList<String?>? get inviteUserIds;
  String? get status;
  bool? get selectAll;
  static Serializer<GLaunchJampod> get serializer => _$gLaunchJampodSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchJampod.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLaunchJampod? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchJampod.serializer,
        json,
      );
}

abstract class GRSVP implements Built<GRSVP, GRSVPBuilder> {
  GRSVP._();

  factory GRSVP([Function(GRSVPBuilder b) updates]) = _$GRSVP;

  String? get postId;
  String? get startTime;
  int? get visibility;
  static Serializer<GRSVP> get serializer => _$gRSVPSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRSVP.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRSVP? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRSVP.serializer,
        json,
      );
}

abstract class GrepodInput implements Built<GrepodInput, GrepodInputBuilder> {
  GrepodInput._();

  factory GrepodInput([Function(GrepodInputBuilder b) updates]) = _$GrepodInput;

  String? get postId;
  String? get voice_pod_id;
  bool? get isRepod;
  static Serializer<GrepodInput> get serializer => _$grepodInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrepodInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GrepodInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrepodInput.serializer,
        json,
      );
}

abstract class GUpdateWeights
    implements Built<GUpdateWeights, GUpdateWeightsBuilder> {
  GUpdateWeights._();

  factory GUpdateWeights([Function(GUpdateWeightsBuilder b) updates]) =
      _$GUpdateWeights;

  String get type;
  int get weight;
  static Serializer<GUpdateWeights> get serializer =>
      _$gUpdateWeightsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateWeights.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateWeights? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateWeights.serializer,
        json,
      );
}

abstract class GAssignModerator
    implements Built<GAssignModerator, GAssignModeratorBuilder> {
  GAssignModerator._();

  factory GAssignModerator([Function(GAssignModeratorBuilder b) updates]) =
      _$GAssignModerator;

  String get postId;
  String get assignModeratorId;
  static Serializer<GAssignModerator> get serializer =>
      _$gAssignModeratorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAssignModerator.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAssignModerator? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAssignModerator.serializer,
        json,
      );
}

abstract class GsendPostReplyInput
    implements Built<GsendPostReplyInput, GsendPostReplyInputBuilder> {
  GsendPostReplyInput._();

  factory GsendPostReplyInput(
      [Function(GsendPostReplyInputBuilder b) updates]) = _$GsendPostReplyInput;

  String? get postId;
  String? get message;
  String? get audioByteId;
  int? get replyLevel;
  String? get parentReplyId;
  static Serializer<GsendPostReplyInput> get serializer =>
      _$gsendPostReplyInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsendPostReplyInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GsendPostReplyInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsendPostReplyInput.serializer,
        json,
      );
}

abstract class GacceptRejectInput
    implements Built<GacceptRejectInput, GacceptRejectInputBuilder> {
  GacceptRejectInput._();

  factory GacceptRejectInput([Function(GacceptRejectInputBuilder b) updates]) =
      _$GacceptRejectInput;

  int? get postId;
  int? get type;
  int? get userId;
  static Serializer<GacceptRejectInput> get serializer =>
      _$gacceptRejectInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GacceptRejectInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GacceptRejectInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GacceptRejectInput.serializer,
        json,
      );
}

abstract class GCreateUpdateTrendingHashtagsInput
    implements
        Built<GCreateUpdateTrendingHashtagsInput,
            GCreateUpdateTrendingHashtagsInputBuilder> {
  GCreateUpdateTrendingHashtagsInput._();

  factory GCreateUpdateTrendingHashtagsInput(
          [Function(GCreateUpdateTrendingHashtagsInputBuilder b) updates]) =
      _$GCreateUpdateTrendingHashtagsInput;

  int get type;
  BuiltList<String> get listOfHashtags;
  static Serializer<GCreateUpdateTrendingHashtagsInput> get serializer =>
      _$gCreateUpdateTrendingHashtagsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUpdateTrendingHashtagsInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUpdateTrendingHashtagsInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUpdateTrendingHashtagsInput.serializer,
        json,
      );
}

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i2.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GDate implements Built<GDate, GDateBuilder> {
  GDate._();

  factory GDate([String? value]) =>
      _$GDate((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDate> get serializer => _i2.DefaultScalarSerializer<GDate>(
      (Object serialized) => GDate((serialized as String?)));
}

abstract class GSendMessage
    implements Built<GSendMessage, GSendMessageBuilder> {
  GSendMessage._();

  factory GSendMessage([Function(GSendMessageBuilder b) updates]) =
      _$GSendMessage;

  String? get conversationId;
  String get toUserId;
  String get message;
  BuiltList<GMessageMediaInput?>? get media;
  int? get messageType;
  static Serializer<GSendMessage> get serializer => _$gSendMessageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendMessage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSendMessage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendMessage.serializer,
        json,
      );
}

abstract class GMessageMediaInput
    implements Built<GMessageMediaInput, GMessageMediaInputBuilder> {
  GMessageMediaInput._();

  factory GMessageMediaInput([Function(GMessageMediaInputBuilder b) updates]) =
      _$GMessageMediaInput;

  int? get type;
  String? get media;
  String? get thumbnail;
  static Serializer<GMessageMediaInput> get serializer =>
      _$gMessageMediaInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMessageMediaInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMessageMediaInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMessageMediaInput.serializer,
        json,
      );
}

abstract class GAddService implements Built<GAddService, GAddServiceBuilder> {
  GAddService._();

  factory GAddService([Function(GAddServiceBuilder b) updates]) = _$GAddService;

  String get title;
  String? get description;
  BuiltList<String?>? get categories;
  String? get servicePicId;
  int get serviceType;
  int? get minMembers;
  int? get maxMembers;
  int? get minPrice;
  int? get maxPrice;
  bool? get draft;
  static Serializer<GAddService> get serializer => _$gAddServiceSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddService.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddService? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddService.serializer,
        json,
      );
}

abstract class GGetNotificationsInput
    implements Built<GGetNotificationsInput, GGetNotificationsInputBuilder> {
  GGetNotificationsInput._();

  factory GGetNotificationsInput(
          [Function(GGetNotificationsInputBuilder b) updates]) =
      _$GGetNotificationsInput;

  String get notificationCategory;
  int? get offset;
  int? get limit;
  static Serializer<GGetNotificationsInput> get serializer =>
      _$gGetNotificationsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetNotificationsInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetNotificationsInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetNotificationsInput.serializer,
        json,
      );
}

abstract class GNotificationsSeenInput
    implements Built<GNotificationsSeenInput, GNotificationsSeenInputBuilder> {
  GNotificationsSeenInput._();

  factory GNotificationsSeenInput(
          [Function(GNotificationsSeenInputBuilder b) updates]) =
      _$GNotificationsSeenInput;

  BuiltList<String?> get notificationIds;
  static Serializer<GNotificationsSeenInput> get serializer =>
      _$gNotificationsSeenInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsSeenInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsSeenInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsSeenInput.serializer,
        json,
      );
}

abstract class GUpdateUserNotificationSettingsInput
    implements
        Built<GUpdateUserNotificationSettingsInput,
            GUpdateUserNotificationSettingsInputBuilder> {
  GUpdateUserNotificationSettingsInput._();

  factory GUpdateUserNotificationSettingsInput(
          [Function(GUpdateUserNotificationSettingsInputBuilder b) updates]) =
      _$GUpdateUserNotificationSettingsInput;

  bool? get allNotifications;
  bool? get lockScreenNotifications;
  bool? get floatingNotification;
  bool? get showNewFollower;
  bool? get showVoicePodComments;
  bool? get showFollowingActivity;
  bool? get showJampodSessions;
  static Serializer<GUpdateUserNotificationSettingsInput> get serializer =>
      _$gUpdateUserNotificationSettingsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserNotificationSettingsInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserNotificationSettingsInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserNotificationSettingsInput.serializer,
        json,
      );
}

abstract class GaddEffect implements Built<GaddEffect, GaddEffectBuilder> {
  GaddEffect._();

  factory GaddEffect([Function(GaddEffectBuilder b) updates]) = _$GaddEffect;

  String? get name;
  String? get audio;
  String? get icon;
  static Serializer<GaddEffect> get serializer => _$gaddEffectSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddEffect.serializer,
        this,
      ) as Map<String, dynamic>);
  static GaddEffect? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddEffect.serializer,
        json,
      );
}

abstract class GGetInvitesPerDayPerUserInput
    implements
        Built<GGetInvitesPerDayPerUserInput,
            GGetInvitesPerDayPerUserInputBuilder> {
  GGetInvitesPerDayPerUserInput._();

  factory GGetInvitesPerDayPerUserInput(
          [Function(GGetInvitesPerDayPerUserInputBuilder b) updates]) =
      _$GGetInvitesPerDayPerUserInput;

  String? get searchByUsername;
  String? get searchByStartDate;
  String? get searchByEndDate;
  bool? get isSuccessfulInvite;
  static Serializer<GGetInvitesPerDayPerUserInput> get serializer =>
      _$gGetInvitesPerDayPerUserInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetInvitesPerDayPerUserInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetInvitesPerDayPerUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetInvitesPerDayPerUserInput.serializer,
        json,
      );
}

abstract class GCheckPhoneNumberInBulkUsersInput
    implements
        Built<GCheckPhoneNumberInBulkUsersInput,
            GCheckPhoneNumberInBulkUsersInputBuilder> {
  GCheckPhoneNumberInBulkUsersInput._();

  factory GCheckPhoneNumberInBulkUsersInput(
          [Function(GCheckPhoneNumberInBulkUsersInputBuilder b) updates]) =
      _$GCheckPhoneNumberInBulkUsersInput;

  String? get phoneNumber;
  String? get usersInviteBulkDocumentId;
  String? get username;
  static Serializer<GCheckPhoneNumberInBulkUsersInput> get serializer =>
      _$gCheckPhoneNumberInBulkUsersInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCheckPhoneNumberInBulkUsersInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCheckPhoneNumberInBulkUsersInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCheckPhoneNumberInBulkUsersInput.serializer,
        json,
      );
}

abstract class GInviteUserInputObject
    implements Built<GInviteUserInputObject, GInviteUserInputObjectBuilder> {
  GInviteUserInputObject._();

  factory GInviteUserInputObject(
          [Function(GInviteUserInputObjectBuilder b) updates]) =
      _$GInviteUserInputObject;

  String? get username;
  String? get phoneNumber;
  String? get gender;
  static Serializer<GInviteUserInputObject> get serializer =>
      _$gInviteUserInputObjectSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInviteUserInputObject.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInviteUserInputObject? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInviteUserInputObject.serializer,
        json,
      );
}

abstract class GInviteUserInput
    implements Built<GInviteUserInput, GInviteUserInputBuilder> {
  GInviteUserInput._();

  factory GInviteUserInput([Function(GInviteUserInputBuilder b) updates]) =
      _$GInviteUserInput;

  GInviteUserInputObject get data;
  static Serializer<GInviteUserInput> get serializer =>
      _$gInviteUserInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInviteUserInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInviteUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInviteUserInput.serializer,
        json,
      );
}

abstract class GGenderChosenByInviteeInput
    implements
        Built<GGenderChosenByInviteeInput, GGenderChosenByInviteeInputBuilder> {
  GGenderChosenByInviteeInput._();

  factory GGenderChosenByInviteeInput(
          [Function(GGenderChosenByInviteeInputBuilder b) updates]) =
      _$GGenderChosenByInviteeInput;

  String get usersInviteDocumentId;
  String get genderChosen;
  String? get phoneNumber;
  static Serializer<GGenderChosenByInviteeInput> get serializer =>
      _$gGenderChosenByInviteeInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGenderChosenByInviteeInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGenderChosenByInviteeInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGenderChosenByInviteeInput.serializer,
        json,
      );
}

abstract class GAcceptRejectRequestInput
    implements
        Built<GAcceptRejectRequestInput, GAcceptRejectRequestInputBuilder> {
  GAcceptRejectRequestInput._();

  factory GAcceptRejectRequestInput(
          [Function(GAcceptRejectRequestInputBuilder b) updates]) =
      _$GAcceptRejectRequestInput;

  String? get usersInviteDocumentId;
  String? get acceptedOrRejectedStatus;
  static Serializer<GAcceptRejectRequestInput> get serializer =>
      _$gAcceptRejectRequestInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAcceptRejectRequestInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAcceptRejectRequestInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAcceptRejectRequestInput.serializer,
        json,
      );
}

abstract class GAddInviteLinkInputObject
    implements
        Built<GAddInviteLinkInputObject, GAddInviteLinkInputObjectBuilder> {
  GAddInviteLinkInputObject._();

  factory GAddInviteLinkInputObject(
          [Function(GAddInviteLinkInputObjectBuilder b) updates]) =
      _$GAddInviteLinkInputObject;

  String get usersInviteDocumentId;
  String get inviteLink;
  String? get gender;
  String? get username;
  String? get phoneNumber;
  String? get inviter;
  static Serializer<GAddInviteLinkInputObject> get serializer =>
      _$gAddInviteLinkInputObjectSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddInviteLinkInputObject.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddInviteLinkInputObject? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddInviteLinkInputObject.serializer,
        json,
      );
}

abstract class GAddInviteLinkInput
    implements Built<GAddInviteLinkInput, GAddInviteLinkInputBuilder> {
  GAddInviteLinkInput._();

  factory GAddInviteLinkInput(
      [Function(GAddInviteLinkInputBuilder b) updates]) = _$GAddInviteLinkInput;

  GAddInviteLinkInputObject get data;
  static Serializer<GAddInviteLinkInput> get serializer =>
      _$gAddInviteLinkInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddInviteLinkInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddInviteLinkInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddInviteLinkInput.serializer,
        json,
      );
}

abstract class GSendNotificationToInviterInput
    implements
        Built<GSendNotificationToInviterInput,
            GSendNotificationToInviterInputBuilder> {
  GSendNotificationToInviterInput._();

  factory GSendNotificationToInviterInput(
          [Function(GSendNotificationToInviterInputBuilder b) updates]) =
      _$GSendNotificationToInviterInput;

  String get toUserUsername;
  String get usersInviteDocumentId;
  static Serializer<GSendNotificationToInviterInput> get serializer =>
      _$gSendNotificationToInviterInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendNotificationToInviterInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSendNotificationToInviterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendNotificationToInviterInput.serializer,
        json,
      );
}

abstract class GInvitesArrayInput
    implements Built<GInvitesArrayInput, GInvitesArrayInputBuilder> {
  GInvitesArrayInput._();

  factory GInvitesArrayInput([Function(GInvitesArrayInputBuilder b) updates]) =
      _$GInvitesArrayInput;

  String get username;
  String? get phoneNumber;
  int get numberOfInvitesToAdd;
  static Serializer<GInvitesArrayInput> get serializer =>
      _$gInvitesArrayInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInvitesArrayInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInvitesArrayInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInvitesArrayInput.serializer,
        json,
      );
}

abstract class GAddInvitesToSpecificUsersInput
    implements
        Built<GAddInvitesToSpecificUsersInput,
            GAddInvitesToSpecificUsersInputBuilder> {
  GAddInvitesToSpecificUsersInput._();

  factory GAddInvitesToSpecificUsersInput(
          [Function(GAddInvitesToSpecificUsersInputBuilder b) updates]) =
      _$GAddInvitesToSpecificUsersInput;

  BuiltList<GInvitesArrayInput?> get invitesArray;
  static Serializer<GAddInvitesToSpecificUsersInput> get serializer =>
      _$gAddInvitesToSpecificUsersInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddInvitesToSpecificUsersInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddInvitesToSpecificUsersInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddInvitesToSpecificUsersInput.serializer,
        json,
      );
}

abstract class GAddUserToWaitlistTwoInput
    implements
        Built<GAddUserToWaitlistTwoInput, GAddUserToWaitlistTwoInputBuilder> {
  GAddUserToWaitlistTwoInput._();

  factory GAddUserToWaitlistTwoInput(
          [Function(GAddUserToWaitlistTwoInputBuilder b) updates]) =
      _$GAddUserToWaitlistTwoInput;

  String get phoneNumber;
  static Serializer<GAddUserToWaitlistTwoInput> get serializer =>
      _$gAddUserToWaitlistTwoInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddUserToWaitlistTwoInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddUserToWaitlistTwoInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddUserToWaitlistTwoInput.serializer,
        json,
      );
}

abstract class GInviteAndNoNumberMismatchTwoInput
    implements
        Built<GInviteAndNoNumberMismatchTwoInput,
            GInviteAndNoNumberMismatchTwoInputBuilder> {
  GInviteAndNoNumberMismatchTwoInput._();

  factory GInviteAndNoNumberMismatchTwoInput(
          [Function(GInviteAndNoNumberMismatchTwoInputBuilder b) updates]) =
      _$GInviteAndNoNumberMismatchTwoInput;

  String get phoneNumber;
  static Serializer<GInviteAndNoNumberMismatchTwoInput> get serializer =>
      _$gInviteAndNoNumberMismatchTwoInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInviteAndNoNumberMismatchTwoInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInviteAndNoNumberMismatchTwoInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInviteAndNoNumberMismatchTwoInput.serializer,
        json,
      );
}

abstract class GRequestForBulkInvitesLinkInput
    implements
        Built<GRequestForBulkInvitesLinkInput,
            GRequestForBulkInvitesLinkInputBuilder> {
  GRequestForBulkInvitesLinkInput._();

  factory GRequestForBulkInvitesLinkInput(
          [Function(GRequestForBulkInvitesLinkInputBuilder b) updates]) =
      _$GRequestForBulkInvitesLinkInput;

  int get numberOfInvitesRequested;
  static Serializer<GRequestForBulkInvitesLinkInput> get serializer =>
      _$gRequestForBulkInvitesLinkInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRequestForBulkInvitesLinkInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRequestForBulkInvitesLinkInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRequestForBulkInvitesLinkInput.serializer,
        json,
      );
}

abstract class GAddInviteLinkBulkInputObject
    implements
        Built<GAddInviteLinkBulkInputObject,
            GAddInviteLinkBulkInputObjectBuilder> {
  GAddInviteLinkBulkInputObject._();

  factory GAddInviteLinkBulkInputObject(
          [Function(GAddInviteLinkBulkInputObjectBuilder b) updates]) =
      _$GAddInviteLinkBulkInputObject;

  String get usersInviteBulkDocumentId;
  String get inviteLinkBulk;
  String? get userCount;
  String? get inviter;
  String? get inviterId;
  String? get isBulkInviteLink;
  static Serializer<GAddInviteLinkBulkInputObject> get serializer =>
      _$gAddInviteLinkBulkInputObjectSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddInviteLinkBulkInputObject.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddInviteLinkBulkInputObject? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddInviteLinkBulkInputObject.serializer,
        json,
      );
}

abstract class GAddInviteLinkBulkInput
    implements Built<GAddInviteLinkBulkInput, GAddInviteLinkBulkInputBuilder> {
  GAddInviteLinkBulkInput._();

  factory GAddInviteLinkBulkInput(
          [Function(GAddInviteLinkBulkInputBuilder b) updates]) =
      _$GAddInviteLinkBulkInput;

  GAddInviteLinkBulkInputObject get data;
  static Serializer<GAddInviteLinkBulkInput> get serializer =>
      _$gAddInviteLinkBulkInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddInviteLinkBulkInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddInviteLinkBulkInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddInviteLinkBulkInput.serializer,
        json,
      );
}

abstract class GAddBulkInviteUserInput
    implements Built<GAddBulkInviteUserInput, GAddBulkInviteUserInputBuilder> {
  GAddBulkInviteUserInput._();

  factory GAddBulkInviteUserInput(
          [Function(GAddBulkInviteUserInputBuilder b) updates]) =
      _$GAddBulkInviteUserInput;

  String get firstname;
  String get lastname;
  String get username;
  BuiltList<String?>? get languages;
  String? get phoneNumber;
  String? get avatar;
  String? get theme;
  String? get isAvatar;
  String? get gender;
  bool? get isVerified;
  BuiltList<String?>? get reasons;
  String? get subId;
  BuiltList<GTopicAndSubTopicIds?>? get topics;
  bool? get showGender;
  int? get verificationStatus;
  BuiltList<GPronouns?>? get pronouns;
  String get usersInviteBulkDocumentId;
  String get inviterId;
  String get timeUserCheckedPrivacyPolicy;
  static Serializer<GAddBulkInviteUserInput> get serializer =>
      _$gAddBulkInviteUserInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddBulkInviteUserInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddBulkInviteUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddBulkInviteUserInput.serializer,
        json,
      );
}

abstract class GAcceptBulkInviteUserInput
    implements
        Built<GAcceptBulkInviteUserInput, GAcceptBulkInviteUserInputBuilder> {
  GAcceptBulkInviteUserInput._();

  factory GAcceptBulkInviteUserInput(
          [Function(GAcceptBulkInviteUserInputBuilder b) updates]) =
      _$GAcceptBulkInviteUserInput;

  String get bulkUsersDocumentId;
  String get usersInviteBulkDocumentId;
  static Serializer<GAcceptBulkInviteUserInput> get serializer =>
      _$gAcceptBulkInviteUserInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAcceptBulkInviteUserInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAcceptBulkInviteUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAcceptBulkInviteUserInput.serializer,
        json,
      );
}

abstract class GRejectBulkInviteUserInput
    implements
        Built<GRejectBulkInviteUserInput, GRejectBulkInviteUserInputBuilder> {
  GRejectBulkInviteUserInput._();

  factory GRejectBulkInviteUserInput(
          [Function(GRejectBulkInviteUserInputBuilder b) updates]) =
      _$GRejectBulkInviteUserInput;

  String get bulkUsersDocumentId;
  String get usersInviteBulkDocumentId;
  static Serializer<GRejectBulkInviteUserInput> get serializer =>
      _$gRejectBulkInviteUserInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRejectBulkInviteUserInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRejectBulkInviteUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRejectBulkInviteUserInput.serializer,
        json,
      );
}

abstract class GAddBulkInviteUserToSpecificInviteInput
    implements
        Built<GAddBulkInviteUserToSpecificInviteInput,
            GAddBulkInviteUserToSpecificInviteInputBuilder> {
  GAddBulkInviteUserToSpecificInviteInput._();

  factory GAddBulkInviteUserToSpecificInviteInput(
      [Function(GAddBulkInviteUserToSpecificInviteInputBuilder b)
          updates]) = _$GAddBulkInviteUserToSpecificInviteInput;

  String get phoneNumber;
  String get usersInviteDocumentId;
  static Serializer<GAddBulkInviteUserToSpecificInviteInput> get serializer =>
      _$gAddBulkInviteUserToSpecificInviteInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddBulkInviteUserToSpecificInviteInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddBulkInviteUserToSpecificInviteInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddBulkInviteUserToSpecificInviteInput.serializer,
        json,
      );
}

abstract class GUserContactInput
    implements Built<GUserContactInput, GUserContactInputBuilder> {
  GUserContactInput._();

  factory GUserContactInput([Function(GUserContactInputBuilder b) updates]) =
      _$GUserContactInput;

  String? get username;
  String? get phoneNumber;
  static Serializer<GUserContactInput> get serializer =>
      _$gUserContactInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserContactInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserContactInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserContactInput.serializer,
        json,
      );
}

abstract class GAddContactsOfUserV2Input
    implements
        Built<GAddContactsOfUserV2Input, GAddContactsOfUserV2InputBuilder> {
  GAddContactsOfUserV2Input._();

  factory GAddContactsOfUserV2Input(
          [Function(GAddContactsOfUserV2InputBuilder b) updates]) =
      _$GAddContactsOfUserV2Input;

  BuiltList<GUserContactInput?>? get data;
  int get currentSublistNumber;
  static Serializer<GAddContactsOfUserV2Input> get serializer =>
      _$gAddContactsOfUserV2InputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddContactsOfUserV2Input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddContactsOfUserV2Input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddContactsOfUserV2Input.serializer,
        json,
      );
}

abstract class GAddContactsOfUserV3Input
    implements
        Built<GAddContactsOfUserV3Input, GAddContactsOfUserV3InputBuilder> {
  GAddContactsOfUserV3Input._();

  factory GAddContactsOfUserV3Input(
          [Function(GAddContactsOfUserV3InputBuilder b) updates]) =
      _$GAddContactsOfUserV3Input;

  BuiltList<GUserContactInput?>? get data;
  static Serializer<GAddContactsOfUserV3Input> get serializer =>
      _$gAddContactsOfUserV3InputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddContactsOfUserV3Input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddContactsOfUserV3Input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddContactsOfUserV3Input.serializer,
        json,
      );
}

abstract class GSearchWhileSyncingContactsInput
    implements
        Built<GSearchWhileSyncingContactsInput,
            GSearchWhileSyncingContactsInputBuilder> {
  GSearchWhileSyncingContactsInput._();

  factory GSearchWhileSyncingContactsInput(
          [Function(GSearchWhileSyncingContactsInputBuilder b) updates]) =
      _$GSearchWhileSyncingContactsInput;

  String? get searchString;
  BuiltList<GUserContactInput?>? get data;
  static Serializer<GSearchWhileSyncingContactsInput> get serializer =>
      _$gSearchWhileSyncingContactsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchWhileSyncingContactsInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchWhileSyncingContactsInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchWhileSyncingContactsInput.serializer,
        json,
      );
}

abstract class GCreateDefaultPodrollInput
    implements
        Built<GCreateDefaultPodrollInput, GCreateDefaultPodrollInputBuilder> {
  GCreateDefaultPodrollInput._();

  factory GCreateDefaultPodrollInput(
          [Function(GCreateDefaultPodrollInputBuilder b) updates]) =
      _$GCreateDefaultPodrollInput;

  String get coverImageUrl;
  String get coverImageUrlXs;
  String get coverImageUrlS;
  String get coverImageUrlM;
  String? get coverImageUrlDark;
  String? get coverImageUrlXsDark;
  String? get coverImageUrlSDark;
  String? get coverImageUrlMDark;
  static Serializer<GCreateDefaultPodrollInput> get serializer =>
      _$gCreateDefaultPodrollInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateDefaultPodrollInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateDefaultPodrollInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateDefaultPodrollInput.serializer,
        json,
      );
}

abstract class GCreatePodrollInput
    implements Built<GCreatePodrollInput, GCreatePodrollInputBuilder> {
  GCreatePodrollInput._();

  factory GCreatePodrollInput(
      [Function(GCreatePodrollInputBuilder b) updates]) = _$GCreatePodrollInput;

  String get title;
  bool get isPrivate;
  String get coverImageUrl;
  String get coverImageUrlXs;
  String get coverImageUrlS;
  String get coverImageUrlM;
  String? get coverImageUrlDark;
  String? get coverImageUrlXsDark;
  String? get coverImageUrlSDark;
  String? get coverImageUrlMDark;
  bool get isImageUploaded;
  static Serializer<GCreatePodrollInput> get serializer =>
      _$gCreatePodrollInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePodrollInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreatePodrollInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePodrollInput.serializer,
        json,
      );
}

abstract class GUpdateAPodrollInput
    implements Built<GUpdateAPodrollInput, GUpdateAPodrollInputBuilder> {
  GUpdateAPodrollInput._();

  factory GUpdateAPodrollInput(
          [Function(GUpdateAPodrollInputBuilder b) updates]) =
      _$GUpdateAPodrollInput;

  String get podrollId;
  String? get title;
  bool get isPrivate;
  String? get coverImageUrl;
  String? get coverImageUrlDark;
  bool get isImageUploaded;
  static Serializer<GUpdateAPodrollInput> get serializer =>
      _$gUpdateAPodrollInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateAPodrollInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateAPodrollInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateAPodrollInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
