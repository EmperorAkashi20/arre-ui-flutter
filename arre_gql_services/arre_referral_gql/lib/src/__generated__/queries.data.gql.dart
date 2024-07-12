// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_referral_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queries.data.gql.g.dart';

abstract class GUserInviteData
    implements Built<GUserInviteData, GUserInviteDataBuilder> {
  GUserInviteData._();

  factory GUserInviteData([Function(GUserInviteDataBuilder b) updates]) =
      _$GUserInviteData;

  static void _initializeBuilder(GUserInviteDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserInviteData_response? get response;
  static Serializer<GUserInviteData> get serializer =>
      _$gUserInviteDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserInviteData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserInviteData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserInviteData.serializer,
        json,
      );
}

abstract class GUserInviteData_response
    implements
        Built<GUserInviteData_response, GUserInviteData_responseBuilder> {
  GUserInviteData_response._();

  factory GUserInviteData_response(
          [Function(GUserInviteData_responseBuilder b) updates]) =
      _$GUserInviteData_response;

  static void _initializeBuilder(GUserInviteData_responseBuilder b) =>
      b..G__typename = 'UserInviteResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GUserInviteData_response_data? get data;
  static Serializer<GUserInviteData_response> get serializer =>
      _$gUserInviteDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserInviteData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserInviteData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserInviteData_response.serializer,
        json,
      );
}

abstract class GUserInviteData_response_data
    implements
        Built<GUserInviteData_response_data,
            GUserInviteData_response_dataBuilder> {
  GUserInviteData_response_data._();

  factory GUserInviteData_response_data(
          [Function(GUserInviteData_response_dataBuilder b) updates]) =
      _$GUserInviteData_response_data;

  static void _initializeBuilder(GUserInviteData_response_dataBuilder b) =>
      b..G__typename = 'UserInvite';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get uniqueDeepLink;
  String? get numberOfInvitesLeft;
  bool? get isInviteRequested;
  static Serializer<GUserInviteData_response_data> get serializer =>
      _$gUserInviteDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserInviteData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserInviteData_response_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserInviteData_response_data.serializer,
        json,
      );
}

abstract class GInvitedUsersData
    implements Built<GInvitedUsersData, GInvitedUsersDataBuilder> {
  GInvitedUsersData._();

  factory GInvitedUsersData([Function(GInvitedUsersDataBuilder b) updates]) =
      _$GInvitedUsersData;

  static void _initializeBuilder(GInvitedUsersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GInvitedUsersData_response? get response;
  static Serializer<GInvitedUsersData> get serializer =>
      _$gInvitedUsersDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInvitedUsersData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInvitedUsersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInvitedUsersData.serializer,
        json,
      );
}

abstract class GInvitedUsersData_response
    implements
        Built<GInvitedUsersData_response, GInvitedUsersData_responseBuilder> {
  GInvitedUsersData_response._();

  factory GInvitedUsersData_response(
          [Function(GInvitedUsersData_responseBuilder b) updates]) =
      _$GInvitedUsersData_response;

  static void _initializeBuilder(GInvitedUsersData_responseBuilder b) =>
      b..G__typename = 'InvitedUserResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  BuiltList<GInvitedUsersData_response_data?>? get data;
  static Serializer<GInvitedUsersData_response> get serializer =>
      _$gInvitedUsersDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInvitedUsersData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInvitedUsersData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInvitedUsersData_response.serializer,
        json,
      );
}

abstract class GInvitedUsersData_response_data
    implements
        Built<GInvitedUsersData_response_data,
            GInvitedUsersData_response_dataBuilder> {
  GInvitedUsersData_response_data._();

  factory GInvitedUsersData_response_data(
          [Function(GInvitedUsersData_response_dataBuilder b) updates]) =
      _$GInvitedUsersData_response_data;

  static void _initializeBuilder(GInvitedUsersData_response_dataBuilder b) =>
      b..G__typename = 'InvitedUser';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get inviteeUserId;
  String? get createdOn;
  static Serializer<GInvitedUsersData_response_data> get serializer =>
      _$gInvitedUsersDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInvitedUsersData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInvitedUsersData_response_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInvitedUsersData_response_data.serializer,
        json,
      );
}

abstract class GRequestMoreInvitesData
    implements Built<GRequestMoreInvitesData, GRequestMoreInvitesDataBuilder> {
  GRequestMoreInvitesData._();

  factory GRequestMoreInvitesData(
          [Function(GRequestMoreInvitesDataBuilder b) updates]) =
      _$GRequestMoreInvitesData;

  static void _initializeBuilder(GRequestMoreInvitesDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRequestMoreInvitesData_response? get response;
  static Serializer<GRequestMoreInvitesData> get serializer =>
      _$gRequestMoreInvitesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRequestMoreInvitesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRequestMoreInvitesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRequestMoreInvitesData.serializer,
        json,
      );
}

abstract class GRequestMoreInvitesData_response
    implements
        Built<GRequestMoreInvitesData_response,
            GRequestMoreInvitesData_responseBuilder> {
  GRequestMoreInvitesData_response._();

  factory GRequestMoreInvitesData_response(
          [Function(GRequestMoreInvitesData_responseBuilder b) updates]) =
      _$GRequestMoreInvitesData_response;

  static void _initializeBuilder(GRequestMoreInvitesData_responseBuilder b) =>
      b..G__typename = 'genericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  String? get data;
  static Serializer<GRequestMoreInvitesData_response> get serializer =>
      _$gRequestMoreInvitesDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRequestMoreInvitesData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRequestMoreInvitesData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRequestMoreInvitesData_response.serializer,
        json,
      );
}
