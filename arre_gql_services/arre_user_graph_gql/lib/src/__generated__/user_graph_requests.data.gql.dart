// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_user_graph_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_graph_requests.data.gql.g.dart';

abstract class GGetIsFollowingUserData
    implements Built<GGetIsFollowingUserData, GGetIsFollowingUserDataBuilder> {
  GGetIsFollowingUserData._();

  factory GGetIsFollowingUserData(
          [Function(GGetIsFollowingUserDataBuilder b) updates]) =
      _$GGetIsFollowingUserData;

  static void _initializeBuilder(GGetIsFollowingUserDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetIsFollowingUserData_response? get response;
  static Serializer<GGetIsFollowingUserData> get serializer =>
      _$gGetIsFollowingUserDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetIsFollowingUserData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetIsFollowingUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetIsFollowingUserData.serializer,
        json,
      );
}

abstract class GGetIsFollowingUserData_response
    implements
        Built<GGetIsFollowingUserData_response,
            GGetIsFollowingUserData_responseBuilder> {
  GGetIsFollowingUserData_response._();

  factory GGetIsFollowingUserData_response(
          [Function(GGetIsFollowingUserData_responseBuilder b) updates]) =
      _$GGetIsFollowingUserData_response;

  static void _initializeBuilder(GGetIsFollowingUserData_responseBuilder b) =>
      b..G__typename = 'isFollowingUserResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GGetIsFollowingUserData_response_data? get data;
  static Serializer<GGetIsFollowingUserData_response> get serializer =>
      _$gGetIsFollowingUserDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetIsFollowingUserData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetIsFollowingUserData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetIsFollowingUserData_response.serializer,
        json,
      );
}

abstract class GGetIsFollowingUserData_response_data
    implements
        Built<GGetIsFollowingUserData_response_data,
            GGetIsFollowingUserData_response_dataBuilder> {
  GGetIsFollowingUserData_response_data._();

  factory GGetIsFollowingUserData_response_data(
          [Function(GGetIsFollowingUserData_response_dataBuilder b) updates]) =
      _$GGetIsFollowingUserData_response_data;

  static void _initializeBuilder(
          GGetIsFollowingUserData_response_dataBuilder b) =>
      b..G__typename = 'isFollowingUser';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get isFollowingUser;
  static Serializer<GGetIsFollowingUserData_response_data> get serializer =>
      _$gGetIsFollowingUserDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetIsFollowingUserData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetIsFollowingUserData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetIsFollowingUserData_response_data.serializer,
        json,
      );
}

abstract class GGetListOfFollowersPaginatedData
    implements
        Built<GGetListOfFollowersPaginatedData,
            GGetListOfFollowersPaginatedDataBuilder> {
  GGetListOfFollowersPaginatedData._();

  factory GGetListOfFollowersPaginatedData(
          [Function(GGetListOfFollowersPaginatedDataBuilder b) updates]) =
      _$GGetListOfFollowersPaginatedData;

  static void _initializeBuilder(GGetListOfFollowersPaginatedDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetListOfFollowersPaginatedData_response? get response;
  static Serializer<GGetListOfFollowersPaginatedData> get serializer =>
      _$gGetListOfFollowersPaginatedDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetListOfFollowersPaginatedData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowersPaginatedData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetListOfFollowersPaginatedData.serializer,
        json,
      );
}

abstract class GGetListOfFollowersPaginatedData_response
    implements
        Built<GGetListOfFollowersPaginatedData_response,
            GGetListOfFollowersPaginatedData_responseBuilder> {
  GGetListOfFollowersPaginatedData_response._();

  factory GGetListOfFollowersPaginatedData_response(
      [Function(GGetListOfFollowersPaginatedData_responseBuilder b)
          updates]) = _$GGetListOfFollowersPaginatedData_response;

  static void _initializeBuilder(
          GGetListOfFollowersPaginatedData_responseBuilder b) =>
      b..G__typename = 'userRelationResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  BuiltList<GGetListOfFollowersPaginatedData_response_data> get data;
  static Serializer<GGetListOfFollowersPaginatedData_response> get serializer =>
      _$gGetListOfFollowersPaginatedDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetListOfFollowersPaginatedData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowersPaginatedData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetListOfFollowersPaginatedData_response.serializer,
        json,
      );
}

abstract class GGetListOfFollowersPaginatedData_response_data
    implements
        Built<GGetListOfFollowersPaginatedData_response_data,
            GGetListOfFollowersPaginatedData_response_dataBuilder>,
        GUserFollowRelation {
  GGetListOfFollowersPaginatedData_response_data._();

  factory GGetListOfFollowersPaginatedData_response_data(
      [Function(GGetListOfFollowersPaginatedData_response_dataBuilder b)
          updates]) = _$GGetListOfFollowersPaginatedData_response_data;

  static void _initializeBuilder(
          GGetListOfFollowersPaginatedData_response_dataBuilder b) =>
      b..G__typename = 'user';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String get createdOn;
  static Serializer<GGetListOfFollowersPaginatedData_response_data>
      get serializer =>
          _$gGetListOfFollowersPaginatedDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetListOfFollowersPaginatedData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowersPaginatedData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetListOfFollowersPaginatedData_response_data.serializer,
        json,
      );
}

abstract class GGetListOfFollowingPaginatedData
    implements
        Built<GGetListOfFollowingPaginatedData,
            GGetListOfFollowingPaginatedDataBuilder> {
  GGetListOfFollowingPaginatedData._();

  factory GGetListOfFollowingPaginatedData(
          [Function(GGetListOfFollowingPaginatedDataBuilder b) updates]) =
      _$GGetListOfFollowingPaginatedData;

  static void _initializeBuilder(GGetListOfFollowingPaginatedDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetListOfFollowingPaginatedData_response? get response;
  static Serializer<GGetListOfFollowingPaginatedData> get serializer =>
      _$gGetListOfFollowingPaginatedDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetListOfFollowingPaginatedData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowingPaginatedData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetListOfFollowingPaginatedData.serializer,
        json,
      );
}

abstract class GGetListOfFollowingPaginatedData_response
    implements
        Built<GGetListOfFollowingPaginatedData_response,
            GGetListOfFollowingPaginatedData_responseBuilder> {
  GGetListOfFollowingPaginatedData_response._();

  factory GGetListOfFollowingPaginatedData_response(
      [Function(GGetListOfFollowingPaginatedData_responseBuilder b)
          updates]) = _$GGetListOfFollowingPaginatedData_response;

  static void _initializeBuilder(
          GGetListOfFollowingPaginatedData_responseBuilder b) =>
      b..G__typename = 'userRelationResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  BuiltList<GGetListOfFollowingPaginatedData_response_data> get data;
  static Serializer<GGetListOfFollowingPaginatedData_response> get serializer =>
      _$gGetListOfFollowingPaginatedDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetListOfFollowingPaginatedData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowingPaginatedData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetListOfFollowingPaginatedData_response.serializer,
        json,
      );
}

abstract class GGetListOfFollowingPaginatedData_response_data
    implements
        Built<GGetListOfFollowingPaginatedData_response_data,
            GGetListOfFollowingPaginatedData_response_dataBuilder>,
        GUserFollowRelation {
  GGetListOfFollowingPaginatedData_response_data._();

  factory GGetListOfFollowingPaginatedData_response_data(
      [Function(GGetListOfFollowingPaginatedData_response_dataBuilder b)
          updates]) = _$GGetListOfFollowingPaginatedData_response_data;

  static void _initializeBuilder(
          GGetListOfFollowingPaginatedData_response_dataBuilder b) =>
      b..G__typename = 'user';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String get createdOn;
  static Serializer<GGetListOfFollowingPaginatedData_response_data>
      get serializer =>
          _$gGetListOfFollowingPaginatedDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetListOfFollowingPaginatedData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowingPaginatedData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetListOfFollowingPaginatedData_response_data.serializer,
        json,
      );
}

abstract class GGetUserFollowCountsData
    implements
        Built<GGetUserFollowCountsData, GGetUserFollowCountsDataBuilder> {
  GGetUserFollowCountsData._();

  factory GGetUserFollowCountsData(
          [Function(GGetUserFollowCountsDataBuilder b) updates]) =
      _$GGetUserFollowCountsData;

  static void _initializeBuilder(GGetUserFollowCountsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserFollowCountsData_response? get response;
  static Serializer<GGetUserFollowCountsData> get serializer =>
      _$gGetUserFollowCountsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserFollowCountsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserFollowCountsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserFollowCountsData.serializer,
        json,
      );
}

abstract class GGetUserFollowCountsData_response
    implements
        Built<GGetUserFollowCountsData_response,
            GGetUserFollowCountsData_responseBuilder> {
  GGetUserFollowCountsData_response._();

  factory GGetUserFollowCountsData_response(
          [Function(GGetUserFollowCountsData_responseBuilder b) updates]) =
      _$GGetUserFollowCountsData_response;

  static void _initializeBuilder(GGetUserFollowCountsData_responseBuilder b) =>
      b..G__typename = 'userFollowCountsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GGetUserFollowCountsData_response_data? get data;
  static Serializer<GGetUserFollowCountsData_response> get serializer =>
      _$gGetUserFollowCountsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserFollowCountsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserFollowCountsData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserFollowCountsData_response.serializer,
        json,
      );
}

abstract class GGetUserFollowCountsData_response_data
    implements
        Built<GGetUserFollowCountsData_response_data,
            GGetUserFollowCountsData_response_dataBuilder>,
        GUserFollowCounts {
  GGetUserFollowCountsData_response_data._();

  factory GGetUserFollowCountsData_response_data(
          [Function(GGetUserFollowCountsData_response_dataBuilder b) updates]) =
      _$GGetUserFollowCountsData_response_data;

  static void _initializeBuilder(
          GGetUserFollowCountsData_response_dataBuilder b) =>
      b..G__typename = 'userFollowCount';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  int get numberOfFollowers;
  @override
  int get numberOfFollowing;
  static Serializer<GGetUserFollowCountsData_response_data> get serializer =>
      _$gGetUserFollowCountsDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserFollowCountsData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserFollowCountsData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserFollowCountsData_response_data.serializer,
        json,
      );
}

abstract class GFollowUserData
    implements Built<GFollowUserData, GFollowUserDataBuilder> {
  GFollowUserData._();

  factory GFollowUserData([Function(GFollowUserDataBuilder b) updates]) =
      _$GFollowUserData;

  static void _initializeBuilder(GFollowUserDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFollowUserData_response? get response;
  static Serializer<GFollowUserData> get serializer =>
      _$gFollowUserDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFollowUserData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFollowUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFollowUserData.serializer,
        json,
      );
}

abstract class GFollowUserData_response
    implements
        Built<GFollowUserData_response, GFollowUserData_responseBuilder> {
  GFollowUserData_response._();

  factory GFollowUserData_response(
          [Function(GFollowUserData_responseBuilder b) updates]) =
      _$GFollowUserData_response;

  static void _initializeBuilder(GFollowUserData_responseBuilder b) =>
      b..G__typename = 'genericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  String? get data;
  static Serializer<GFollowUserData_response> get serializer =>
      _$gFollowUserDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFollowUserData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFollowUserData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFollowUserData_response.serializer,
        json,
      );
}

abstract class GUnFollowUserData
    implements Built<GUnFollowUserData, GUnFollowUserDataBuilder> {
  GUnFollowUserData._();

  factory GUnFollowUserData([Function(GUnFollowUserDataBuilder b) updates]) =
      _$GUnFollowUserData;

  static void _initializeBuilder(GUnFollowUserDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUnFollowUserData_response? get response;
  static Serializer<GUnFollowUserData> get serializer =>
      _$gUnFollowUserDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUnFollowUserData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnFollowUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUnFollowUserData.serializer,
        json,
      );
}

abstract class GUnFollowUserData_response
    implements
        Built<GUnFollowUserData_response, GUnFollowUserData_responseBuilder> {
  GUnFollowUserData_response._();

  factory GUnFollowUserData_response(
          [Function(GUnFollowUserData_responseBuilder b) updates]) =
      _$GUnFollowUserData_response;

  static void _initializeBuilder(GUnFollowUserData_responseBuilder b) =>
      b..G__typename = 'genericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  String? get data;
  static Serializer<GUnFollowUserData_response> get serializer =>
      _$gUnFollowUserDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUnFollowUserData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnFollowUserData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUnFollowUserData_response.serializer,
        json,
      );
}

abstract class GUserFollowRelation {
  String get G__typename;
  String get userId;
  String get createdOn;
  Map<String, dynamic> toJson();
}

abstract class GUserFollowRelationData
    implements
        Built<GUserFollowRelationData, GUserFollowRelationDataBuilder>,
        GUserFollowRelation {
  GUserFollowRelationData._();

  factory GUserFollowRelationData(
          [Function(GUserFollowRelationDataBuilder b) updates]) =
      _$GUserFollowRelationData;

  static void _initializeBuilder(GUserFollowRelationDataBuilder b) =>
      b..G__typename = 'user';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String get createdOn;
  static Serializer<GUserFollowRelationData> get serializer =>
      _$gUserFollowRelationDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFollowRelationData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserFollowRelationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFollowRelationData.serializer,
        json,
      );
}

abstract class GUserFollowCounts {
  String get G__typename;
  String get userId;
  int get numberOfFollowers;
  int get numberOfFollowing;
  Map<String, dynamic> toJson();
}

abstract class GUserFollowCountsData
    implements
        Built<GUserFollowCountsData, GUserFollowCountsDataBuilder>,
        GUserFollowCounts {
  GUserFollowCountsData._();

  factory GUserFollowCountsData(
          [Function(GUserFollowCountsDataBuilder b) updates]) =
      _$GUserFollowCountsData;

  static void _initializeBuilder(GUserFollowCountsDataBuilder b) =>
      b..G__typename = 'userFollowCount';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  int get numberOfFollowers;
  @override
  int get numberOfFollowing;
  static Serializer<GUserFollowCountsData> get serializer =>
      _$gUserFollowCountsDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFollowCountsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserFollowCountsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFollowCountsData.serializer,
        json,
      );
}
