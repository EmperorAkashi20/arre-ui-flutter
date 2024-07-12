// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_explore_page_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'explore_page_queries.data.gql.g.dart';

abstract class GListTopCreatorsData
    implements Built<GListTopCreatorsData, GListTopCreatorsDataBuilder> {
  GListTopCreatorsData._();

  factory GListTopCreatorsData(
          [Function(GListTopCreatorsDataBuilder b) updates]) =
      _$GListTopCreatorsData;

  static void _initializeBuilder(GListTopCreatorsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GListTopCreatorsData_response? get response;
  static Serializer<GListTopCreatorsData> get serializer =>
      _$gListTopCreatorsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopCreatorsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopCreatorsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopCreatorsData.serializer,
        json,
      );
}

abstract class GListTopCreatorsData_response
    implements
        Built<GListTopCreatorsData_response,
            GListTopCreatorsData_responseBuilder> {
  GListTopCreatorsData_response._();

  factory GListTopCreatorsData_response(
          [Function(GListTopCreatorsData_responseBuilder b) updates]) =
      _$GListTopCreatorsData_response;

  static void _initializeBuilder(GListTopCreatorsData_responseBuilder b) =>
      b..G__typename = 'ListTopCreatorsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get error;
  String get message;
  int get statusCode;
  String get errorCodeForClient;
  BuiltList<GListTopCreatorsData_response_data?>? get data;
  static Serializer<GListTopCreatorsData_response> get serializer =>
      _$gListTopCreatorsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopCreatorsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopCreatorsData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopCreatorsData_response.serializer,
        json,
      );
}

abstract class GListTopCreatorsData_response_data
    implements
        Built<GListTopCreatorsData_response_data,
            GListTopCreatorsData_response_dataBuilder> {
  GListTopCreatorsData_response_data._();

  factory GListTopCreatorsData_response_data(
          [Function(GListTopCreatorsData_response_dataBuilder b) updates]) =
      _$GListTopCreatorsData_response_data;

  static void _initializeBuilder(GListTopCreatorsData_response_dataBuilder b) =>
      b..G__typename = 'ListTopCreatorsResponseData';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get userId;
  String get mediaId;
  static Serializer<GListTopCreatorsData_response_data> get serializer =>
      _$gListTopCreatorsDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopCreatorsData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopCreatorsData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopCreatorsData_response_data.serializer,
        json,
      );
}

abstract class GListTopHashtagsData
    implements Built<GListTopHashtagsData, GListTopHashtagsDataBuilder> {
  GListTopHashtagsData._();

  factory GListTopHashtagsData(
          [Function(GListTopHashtagsDataBuilder b) updates]) =
      _$GListTopHashtagsData;

  static void _initializeBuilder(GListTopHashtagsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GListTopHashtagsData_response? get response;
  static Serializer<GListTopHashtagsData> get serializer =>
      _$gListTopHashtagsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopHashtagsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopHashtagsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopHashtagsData.serializer,
        json,
      );
}

abstract class GListTopHashtagsData_response
    implements
        Built<GListTopHashtagsData_response,
            GListTopHashtagsData_responseBuilder> {
  GListTopHashtagsData_response._();

  factory GListTopHashtagsData_response(
          [Function(GListTopHashtagsData_responseBuilder b) updates]) =
      _$GListTopHashtagsData_response;

  static void _initializeBuilder(GListTopHashtagsData_responseBuilder b) =>
      b..G__typename = 'listTopHashtagsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get error;
  String get message;
  int get statusCode;
  String get errorCodeForClient;
  BuiltList<GListTopHashtagsData_response_data?>? get data;
  static Serializer<GListTopHashtagsData_response> get serializer =>
      _$gListTopHashtagsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopHashtagsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopHashtagsData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopHashtagsData_response.serializer,
        json,
      );
}

abstract class GListTopHashtagsData_response_data
    implements
        Built<GListTopHashtagsData_response_data,
            GListTopHashtagsData_response_dataBuilder> {
  GListTopHashtagsData_response_data._();

  factory GListTopHashtagsData_response_data(
          [Function(GListTopHashtagsData_response_dataBuilder b) updates]) =
      _$GListTopHashtagsData_response_data;

  static void _initializeBuilder(GListTopHashtagsData_response_dataBuilder b) =>
      b..G__typename = 'TopHashtag';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get hashTagName;
  String get hashTagUniqueIdentifier;
  String get hashTagDescription;
  String get mediaId;
  static Serializer<GListTopHashtagsData_response_data> get serializer =>
      _$gListTopHashtagsDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopHashtagsData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopHashtagsData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopHashtagsData_response_data.serializer,
        json,
      );
}

abstract class GListTopPostsByHashTagIdData
    implements
        Built<GListTopPostsByHashTagIdData,
            GListTopPostsByHashTagIdDataBuilder> {
  GListTopPostsByHashTagIdData._();

  factory GListTopPostsByHashTagIdData(
          [Function(GListTopPostsByHashTagIdDataBuilder b) updates]) =
      _$GListTopPostsByHashTagIdData;

  static void _initializeBuilder(GListTopPostsByHashTagIdDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GListTopPostsByHashTagIdData_response? get response;
  static Serializer<GListTopPostsByHashTagIdData> get serializer =>
      _$gListTopPostsByHashTagIdDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopPostsByHashTagIdData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopPostsByHashTagIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopPostsByHashTagIdData.serializer,
        json,
      );
}

abstract class GListTopPostsByHashTagIdData_response
    implements
        Built<GListTopPostsByHashTagIdData_response,
            GListTopPostsByHashTagIdData_responseBuilder> {
  GListTopPostsByHashTagIdData_response._();

  factory GListTopPostsByHashTagIdData_response(
          [Function(GListTopPostsByHashTagIdData_responseBuilder b) updates]) =
      _$GListTopPostsByHashTagIdData_response;

  static void _initializeBuilder(
          GListTopPostsByHashTagIdData_responseBuilder b) =>
      b..G__typename = 'listTopPostsByHashTagIdResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get error;
  String get message;
  int get statusCode;
  String get errorCodeForClient;
  BuiltList<GListTopPostsByHashTagIdData_response_data?>? get data;
  static Serializer<GListTopPostsByHashTagIdData_response> get serializer =>
      _$gListTopPostsByHashTagIdDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopPostsByHashTagIdData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopPostsByHashTagIdData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopPostsByHashTagIdData_response.serializer,
        json,
      );
}

abstract class GListTopPostsByHashTagIdData_response_data
    implements
        Built<GListTopPostsByHashTagIdData_response_data,
            GListTopPostsByHashTagIdData_response_dataBuilder> {
  GListTopPostsByHashTagIdData_response_data._();

  factory GListTopPostsByHashTagIdData_response_data(
      [Function(GListTopPostsByHashTagIdData_response_dataBuilder b)
          updates]) = _$GListTopPostsByHashTagIdData_response_data;

  static void _initializeBuilder(
          GListTopPostsByHashTagIdData_response_dataBuilder b) =>
      b..G__typename = 'Post';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get voicepodId;
  static Serializer<GListTopPostsByHashTagIdData_response_data>
      get serializer => _$gListTopPostsByHashTagIdDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopPostsByHashTagIdData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopPostsByHashTagIdData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopPostsByHashTagIdData_response_data.serializer,
        json,
      );
}
