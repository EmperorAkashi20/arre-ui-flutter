// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_user_feed_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_feed_requests.data.gql.g.dart';

abstract class GPopularFeedsData
    implements Built<GPopularFeedsData, GPopularFeedsDataBuilder> {
  GPopularFeedsData._();

  factory GPopularFeedsData([Function(GPopularFeedsDataBuilder b) updates]) =
      _$GPopularFeedsData;

  static void _initializeBuilder(GPopularFeedsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPopularFeedsData_response? get response;
  static Serializer<GPopularFeedsData> get serializer =>
      _$gPopularFeedsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPopularFeedsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPopularFeedsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPopularFeedsData.serializer,
        json,
      );
}

abstract class GPopularFeedsData_response
    implements
        Built<GPopularFeedsData_response, GPopularFeedsData_responseBuilder> {
  GPopularFeedsData_response._();

  factory GPopularFeedsData_response(
          [Function(GPopularFeedsData_responseBuilder b) updates]) =
      _$GPopularFeedsData_response;

  static void _initializeBuilder(GPopularFeedsData_responseBuilder b) =>
      b..G__typename = 'popularFeedV1Response';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get errorCodeForClient;
  bool? get error;
  String? get message;
  int? get statusCode;
  BuiltList<String?>? get data;
  static Serializer<GPopularFeedsData_response> get serializer =>
      _$gPopularFeedsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPopularFeedsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPopularFeedsData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPopularFeedsData_response.serializer,
        json,
      );
}

abstract class GUserPostRelationsData
    implements Built<GUserPostRelationsData, GUserPostRelationsDataBuilder> {
  GUserPostRelationsData._();

  factory GUserPostRelationsData(
          [Function(GUserPostRelationsDataBuilder b) updates]) =
      _$GUserPostRelationsData;

  static void _initializeBuilder(GUserPostRelationsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserPostRelationsData_response? get response;
  static Serializer<GUserPostRelationsData> get serializer =>
      _$gUserPostRelationsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserPostRelationsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserPostRelationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserPostRelationsData.serializer,
        json,
      );
}

abstract class GUserPostRelationsData_response
    implements
        Built<GUserPostRelationsData_response,
            GUserPostRelationsData_responseBuilder> {
  GUserPostRelationsData_response._();

  factory GUserPostRelationsData_response(
          [Function(GUserPostRelationsData_responseBuilder b) updates]) =
      _$GUserPostRelationsData_response;

  static void _initializeBuilder(GUserPostRelationsData_responseBuilder b) =>
      b..G__typename = 'userPostRelationsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserPostRelationsData_response_data? get data;
  static Serializer<GUserPostRelationsData_response> get serializer =>
      _$gUserPostRelationsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserPostRelationsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserPostRelationsData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserPostRelationsData_response.serializer,
        json,
      );
}

abstract class GUserPostRelationsData_response_data
    implements
        Built<GUserPostRelationsData_response_data,
            GUserPostRelationsData_response_dataBuilder> {
  GUserPostRelationsData_response_data._();

  factory GUserPostRelationsData_response_data(
          [Function(GUserPostRelationsData_response_dataBuilder b) updates]) =
      _$GUserPostRelationsData_response_data;

  static void _initializeBuilder(
          GUserPostRelationsData_response_dataBuilder b) =>
      b..G__typename = 'userPostRelations';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<String?>? get audioPlayedTime;
  bool? get bookmarkedPost;
  bool? get commentInteracted;
  bool? get isFollowingCreator;
  bool? get isRepod;
  bool? get postLikeByUser;
  bool? get playedAudioByte;
  static Serializer<GUserPostRelationsData_response_data> get serializer =>
      _$gUserPostRelationsDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserPostRelationsData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserPostRelationsData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserPostRelationsData_response_data.serializer,
        json,
      );
}
