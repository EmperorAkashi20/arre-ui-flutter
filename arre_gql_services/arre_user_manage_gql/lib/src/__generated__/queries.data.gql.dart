// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_user_manage_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queries.data.gql.g.dart';

abstract class GUpdatePreferencesData
    implements Built<GUpdatePreferencesData, GUpdatePreferencesDataBuilder> {
  GUpdatePreferencesData._();

  factory GUpdatePreferencesData(
          [Function(GUpdatePreferencesDataBuilder b) updates]) =
      _$GUpdatePreferencesData;

  static void _initializeBuilder(GUpdatePreferencesDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdatePreferencesData_response? get response;
  static Serializer<GUpdatePreferencesData> get serializer =>
      _$gUpdatePreferencesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePreferencesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdatePreferencesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePreferencesData.serializer,
        json,
      );
}

abstract class GUpdatePreferencesData_response
    implements
        Built<GUpdatePreferencesData_response,
            GUpdatePreferencesData_responseBuilder> {
  GUpdatePreferencesData_response._();

  factory GUpdatePreferencesData_response(
          [Function(GUpdatePreferencesData_responseBuilder b) updates]) =
      _$GUpdatePreferencesData_response;

  static void _initializeBuilder(GUpdatePreferencesData_responseBuilder b) =>
      b..G__typename = 'updatePreferencesResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  String? get data;
  static Serializer<GUpdatePreferencesData_response> get serializer =>
      _$gUpdatePreferencesDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePreferencesData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdatePreferencesData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePreferencesData_response.serializer,
        json,
      );
}

abstract class GGetUserShortDetailsByIdV2Data
    implements
        Built<GGetUserShortDetailsByIdV2Data,
            GGetUserShortDetailsByIdV2DataBuilder> {
  GGetUserShortDetailsByIdV2Data._();

  factory GGetUserShortDetailsByIdV2Data(
          [Function(GGetUserShortDetailsByIdV2DataBuilder b) updates]) =
      _$GGetUserShortDetailsByIdV2Data;

  static void _initializeBuilder(GGetUserShortDetailsByIdV2DataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserShortDetailsByIdV2Data_response? get response;
  static Serializer<GGetUserShortDetailsByIdV2Data> get serializer =>
      _$gGetUserShortDetailsByIdV2DataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserShortDetailsByIdV2Data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserShortDetailsByIdV2Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserShortDetailsByIdV2Data.serializer,
        json,
      );
}

abstract class GGetUserShortDetailsByIdV2Data_response
    implements
        Built<GGetUserShortDetailsByIdV2Data_response,
            GGetUserShortDetailsByIdV2Data_responseBuilder> {
  GGetUserShortDetailsByIdV2Data_response._();

  factory GGetUserShortDetailsByIdV2Data_response(
      [Function(GGetUserShortDetailsByIdV2Data_responseBuilder b)
          updates]) = _$GGetUserShortDetailsByIdV2Data_response;

  static void _initializeBuilder(
          GGetUserShortDetailsByIdV2Data_responseBuilder b) =>
      b..G__typename = 'UserProfileResponseV2';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GGetUserShortDetailsByIdV2Data_response_data? get data;
  static Serializer<GGetUserShortDetailsByIdV2Data_response> get serializer =>
      _$gGetUserShortDetailsByIdV2DataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserShortDetailsByIdV2Data_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserShortDetailsByIdV2Data_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserShortDetailsByIdV2Data_response.serializer,
        json,
      );
}

abstract class GGetUserShortDetailsByIdV2Data_response_data
    implements
        Built<GGetUserShortDetailsByIdV2Data_response_data,
            GGetUserShortDetailsByIdV2Data_response_dataBuilder>,
        GUserShortDetails {
  GGetUserShortDetailsByIdV2Data_response_data._();

  factory GGetUserShortDetailsByIdV2Data_response_data(
      [Function(GGetUserShortDetailsByIdV2Data_response_dataBuilder b)
          updates]) = _$GGetUserShortDetailsByIdV2Data_response_data;

  static void _initializeBuilder(
          GGetUserShortDetailsByIdV2Data_response_dataBuilder b) =>
      b..G__typename = 'UserProfileV2';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String get username;
  @override
  String? get profilePictureMediaId;
  static Serializer<GGetUserShortDetailsByIdV2Data_response_data>
      get serializer => _$gGetUserShortDetailsByIdV2DataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserShortDetailsByIdV2Data_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserShortDetailsByIdV2Data_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserShortDetailsByIdV2Data_response_data.serializer,
        json,
      );
}

abstract class GGetUserDetailsByIdV2Data
    implements
        Built<GGetUserDetailsByIdV2Data, GGetUserDetailsByIdV2DataBuilder> {
  GGetUserDetailsByIdV2Data._();

  factory GGetUserDetailsByIdV2Data(
          [Function(GGetUserDetailsByIdV2DataBuilder b) updates]) =
      _$GGetUserDetailsByIdV2Data;

  static void _initializeBuilder(GGetUserDetailsByIdV2DataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserDetailsByIdV2Data_response? get response;
  static Serializer<GGetUserDetailsByIdV2Data> get serializer =>
      _$gGetUserDetailsByIdV2DataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserDetailsByIdV2Data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserDetailsByIdV2Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserDetailsByIdV2Data.serializer,
        json,
      );
}

abstract class GGetUserDetailsByIdV2Data_response
    implements
        Built<GGetUserDetailsByIdV2Data_response,
            GGetUserDetailsByIdV2Data_responseBuilder> {
  GGetUserDetailsByIdV2Data_response._();

  factory GGetUserDetailsByIdV2Data_response(
          [Function(GGetUserDetailsByIdV2Data_responseBuilder b) updates]) =
      _$GGetUserDetailsByIdV2Data_response;

  static void _initializeBuilder(GGetUserDetailsByIdV2Data_responseBuilder b) =>
      b..G__typename = 'UserProfileResponseV2';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GGetUserDetailsByIdV2Data_response_data? get data;
  static Serializer<GGetUserDetailsByIdV2Data_response> get serializer =>
      _$gGetUserDetailsByIdV2DataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserDetailsByIdV2Data_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserDetailsByIdV2Data_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserDetailsByIdV2Data_response.serializer,
        json,
      );
}

abstract class GGetUserDetailsByIdV2Data_response_data
    implements
        Built<GGetUserDetailsByIdV2Data_response_data,
            GGetUserDetailsByIdV2Data_response_dataBuilder>,
        GUserDetails {
  GGetUserDetailsByIdV2Data_response_data._();

  factory GGetUserDetailsByIdV2Data_response_data(
      [Function(GGetUserDetailsByIdV2Data_response_dataBuilder b)
          updates]) = _$GGetUserDetailsByIdV2Data_response_data;

  static void _initializeBuilder(
          GGetUserDetailsByIdV2Data_response_dataBuilder b) =>
      b..G__typename = 'UserProfileV2';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get profilePictureMediaId;
  @override
  String get username;
  @override
  String get gender;
  @override
  String get deletionStatus;
  @override
  BuiltList<String?>? get languages;
  @override
  String get phoneNumber;
  @override
  String? get moderationStatus;
  @override
  String? get verificationStatus;
  @override
  BuiltList<String?>? get publicTags;
  @override
  String? get profileLink;
  @override
  String get inviterUserId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  GGetUserDetailsByIdV2Data_response_data_profile? get profile;
  static Serializer<GGetUserDetailsByIdV2Data_response_data> get serializer =>
      _$gGetUserDetailsByIdV2DataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserDetailsByIdV2Data_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserDetailsByIdV2Data_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserDetailsByIdV2Data_response_data.serializer,
        json,
      );
}

abstract class GGetUserDetailsByIdV2Data_response_data_profile
    implements
        Built<GGetUserDetailsByIdV2Data_response_data_profile,
            GGetUserDetailsByIdV2Data_response_data_profileBuilder>,
        GUserDetails_profile {
  GGetUserDetailsByIdV2Data_response_data_profile._();

  factory GGetUserDetailsByIdV2Data_response_data_profile(
      [Function(GGetUserDetailsByIdV2Data_response_data_profileBuilder b)
          updates]) = _$GGetUserDetailsByIdV2Data_response_data_profile;

  static void _initializeBuilder(
          GGetUserDetailsByIdV2Data_response_data_profileBuilder b) =>
      b..G__typename = 'profile';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String? get bio;
  @override
  String? get twitterHandle;
  @override
  String? get instagramHandle;
  @override
  String? get linkedinHandle;
  @override
  String? get youtubeHandle;
  @override
  String? get spotifyHandle;
  @override
  String? get website;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  static Serializer<GGetUserDetailsByIdV2Data_response_data_profile>
      get serializer =>
          _$gGetUserDetailsByIdV2DataResponseDataProfileSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserDetailsByIdV2Data_response_data_profile.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserDetailsByIdV2Data_response_data_profile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserDetailsByIdV2Data_response_data_profile.serializer,
        json,
      );
}

abstract class GUpdateUserProfileData
    implements Built<GUpdateUserProfileData, GUpdateUserProfileDataBuilder> {
  GUpdateUserProfileData._();

  factory GUpdateUserProfileData(
          [Function(GUpdateUserProfileDataBuilder b) updates]) =
      _$GUpdateUserProfileData;

  static void _initializeBuilder(GUpdateUserProfileDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateUserProfileData_response? get response;
  static Serializer<GUpdateUserProfileData> get serializer =>
      _$gUpdateUserProfileDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserProfileData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserProfileData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserProfileData.serializer,
        json,
      );
}

abstract class GUpdateUserProfileData_response
    implements
        Built<GUpdateUserProfileData_response,
            GUpdateUserProfileData_responseBuilder> {
  GUpdateUserProfileData_response._();

  factory GUpdateUserProfileData_response(
          [Function(GUpdateUserProfileData_responseBuilder b) updates]) =
      _$GUpdateUserProfileData_response;

  static void _initializeBuilder(GUpdateUserProfileData_responseBuilder b) =>
      b..G__typename = 'genericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  String? get data;
  static Serializer<GUpdateUserProfileData_response> get serializer =>
      _$gUpdateUserProfileDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserProfileData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserProfileData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserProfileData_response.serializer,
        json,
      );
}

abstract class GGetUserLanguageListData
    implements
        Built<GGetUserLanguageListData, GGetUserLanguageListDataBuilder> {
  GGetUserLanguageListData._();

  factory GGetUserLanguageListData(
          [Function(GGetUserLanguageListDataBuilder b) updates]) =
      _$GGetUserLanguageListData;

  static void _initializeBuilder(GGetUserLanguageListDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserLanguageListData_response? get response;
  static Serializer<GGetUserLanguageListData> get serializer =>
      _$gGetUserLanguageListDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserLanguageListData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserLanguageListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserLanguageListData.serializer,
        json,
      );
}

abstract class GGetUserLanguageListData_response
    implements
        Built<GGetUserLanguageListData_response,
            GGetUserLanguageListData_responseBuilder> {
  GGetUserLanguageListData_response._();

  factory GGetUserLanguageListData_response(
          [Function(GGetUserLanguageListData_responseBuilder b) updates]) =
      _$GGetUserLanguageListData_response;

  static void _initializeBuilder(GGetUserLanguageListData_responseBuilder b) =>
      b..G__typename = 'UserProfileResponseV2';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GGetUserLanguageListData_response_data? get data;
  static Serializer<GGetUserLanguageListData_response> get serializer =>
      _$gGetUserLanguageListDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserLanguageListData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserLanguageListData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserLanguageListData_response.serializer,
        json,
      );
}

abstract class GGetUserLanguageListData_response_data
    implements
        Built<GGetUserLanguageListData_response_data,
            GGetUserLanguageListData_response_dataBuilder> {
  GGetUserLanguageListData_response_data._();

  factory GGetUserLanguageListData_response_data(
          [Function(GGetUserLanguageListData_response_dataBuilder b) updates]) =
      _$GGetUserLanguageListData_response_data;

  static void _initializeBuilder(
          GGetUserLanguageListData_response_dataBuilder b) =>
      b..G__typename = 'UserProfileV2';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get userId;
  BuiltList<String?>? get languages;
  static Serializer<GGetUserLanguageListData_response_data> get serializer =>
      _$gGetUserLanguageListDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserLanguageListData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserLanguageListData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserLanguageListData_response_data.serializer,
        json,
      );
}

abstract class GUserShortDetails {
  String get G__typename;
  String get userId;
  String get username;
  String? get profilePictureMediaId;
  Map<String, dynamic> toJson();
}

abstract class GUserShortDetailsData
    implements
        Built<GUserShortDetailsData, GUserShortDetailsDataBuilder>,
        GUserShortDetails {
  GUserShortDetailsData._();

  factory GUserShortDetailsData(
          [Function(GUserShortDetailsDataBuilder b) updates]) =
      _$GUserShortDetailsData;

  static void _initializeBuilder(GUserShortDetailsDataBuilder b) =>
      b..G__typename = 'UserProfileV2';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String get username;
  @override
  String? get profilePictureMediaId;
  static Serializer<GUserShortDetailsData> get serializer =>
      _$gUserShortDetailsDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserShortDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserShortDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserShortDetailsData.serializer,
        json,
      );
}

abstract class GUserDetails {
  String get G__typename;
  String get userId;
  String? get firstname;
  String? get lastname;
  String? get profilePictureMediaId;
  String get username;
  String get gender;
  String get deletionStatus;
  BuiltList<String?>? get languages;
  String get phoneNumber;
  String? get moderationStatus;
  String? get verificationStatus;
  BuiltList<String?>? get publicTags;
  String? get profileLink;
  String get inviterUserId;
  String? get createdAt;
  String? get updatedAt;
  GUserDetails_profile? get profile;
  Map<String, dynamic> toJson();
}

abstract class GUserDetails_profile {
  String get G__typename;
  String get userId;
  String? get bio;
  String? get twitterHandle;
  String? get instagramHandle;
  String? get linkedinHandle;
  String? get youtubeHandle;
  String? get spotifyHandle;
  String? get website;
  String? get city;
  String? get country;
  String get createdAt;
  String get updatedAt;
  Map<String, dynamic> toJson();
}

abstract class GUserDetailsData
    implements Built<GUserDetailsData, GUserDetailsDataBuilder>, GUserDetails {
  GUserDetailsData._();

  factory GUserDetailsData([Function(GUserDetailsDataBuilder b) updates]) =
      _$GUserDetailsData;

  static void _initializeBuilder(GUserDetailsDataBuilder b) =>
      b..G__typename = 'UserProfileV2';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get profilePictureMediaId;
  @override
  String get username;
  @override
  String get gender;
  @override
  String get deletionStatus;
  @override
  BuiltList<String?>? get languages;
  @override
  String get phoneNumber;
  @override
  String? get moderationStatus;
  @override
  String? get verificationStatus;
  @override
  BuiltList<String?>? get publicTags;
  @override
  String? get profileLink;
  @override
  String get inviterUserId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  GUserDetailsData_profile? get profile;
  static Serializer<GUserDetailsData> get serializer =>
      _$gUserDetailsDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserDetailsData.serializer,
        json,
      );
}

abstract class GUserDetailsData_profile
    implements
        Built<GUserDetailsData_profile, GUserDetailsData_profileBuilder>,
        GUserDetails_profile {
  GUserDetailsData_profile._();

  factory GUserDetailsData_profile(
          [Function(GUserDetailsData_profileBuilder b) updates]) =
      _$GUserDetailsData_profile;

  static void _initializeBuilder(GUserDetailsData_profileBuilder b) =>
      b..G__typename = 'profile';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String? get bio;
  @override
  String? get twitterHandle;
  @override
  String? get instagramHandle;
  @override
  String? get linkedinHandle;
  @override
  String? get youtubeHandle;
  @override
  String? get spotifyHandle;
  @override
  String? get website;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  static Serializer<GUserDetailsData_profile> get serializer =>
      _$gUserDetailsDataProfileSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserDetailsData_profile.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserDetailsData_profile? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserDetailsData_profile.serializer,
        json,
      );
}
