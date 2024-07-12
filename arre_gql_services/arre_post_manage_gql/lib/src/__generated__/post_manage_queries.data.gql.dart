// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_post_manage_gql/src/__generated__/post_manage_schema.schema.gql.dart'
    as _i2;
import 'package:arre_post_manage_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_manage_queries.data.gql.g.dart';

abstract class GGetLanguagesData
    implements Built<GGetLanguagesData, GGetLanguagesDataBuilder> {
  GGetLanguagesData._();

  factory GGetLanguagesData([Function(GGetLanguagesDataBuilder b) updates]) =
      _$GGetLanguagesData;

  static void _initializeBuilder(GGetLanguagesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetLanguagesData_response? get response;
  static Serializer<GGetLanguagesData> get serializer =>
      _$gGetLanguagesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLanguagesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetLanguagesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLanguagesData.serializer,
        json,
      );
}

abstract class GGetLanguagesData_response
    implements
        Built<GGetLanguagesData_response, GGetLanguagesData_responseBuilder> {
  GGetLanguagesData_response._();

  factory GGetLanguagesData_response(
          [Function(GGetLanguagesData_responseBuilder b) updates]) =
      _$GGetLanguagesData_response;

  static void _initializeBuilder(GGetLanguagesData_responseBuilder b) =>
      b..G__typename = 'LanguageResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get error;
  int get statusCode;
  String get errorCodeForClient;
  BuiltList<GGetLanguagesData_response_data> get data;
  static Serializer<GGetLanguagesData_response> get serializer =>
      _$gGetLanguagesDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLanguagesData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetLanguagesData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLanguagesData_response.serializer,
        json,
      );
}

abstract class GGetLanguagesData_response_data
    implements
        Built<GGetLanguagesData_response_data,
            GGetLanguagesData_response_dataBuilder>,
        GLanguage {
  GGetLanguagesData_response_data._();

  factory GGetLanguagesData_response_data(
          [Function(GGetLanguagesData_response_dataBuilder b) updates]) =
      _$GGetLanguagesData_response_data;

  static void _initializeBuilder(GGetLanguagesData_response_dataBuilder b) =>
      b..G__typename = 'Languages';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get nameInEnglish;
  @override
  String get name;
  static Serializer<GGetLanguagesData_response_data> get serializer =>
      _$gGetLanguagesDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLanguagesData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetLanguagesData_response_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLanguagesData_response_data.serializer,
        json,
      );
}

abstract class GBgMusicData
    implements Built<GBgMusicData, GBgMusicDataBuilder> {
  GBgMusicData._();

  factory GBgMusicData([Function(GBgMusicDataBuilder b) updates]) =
      _$GBgMusicData;

  static void _initializeBuilder(GBgMusicDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GBgMusicData_response? get response;
  static Serializer<GBgMusicData> get serializer => _$gBgMusicDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBgMusicData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBgMusicData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBgMusicData.serializer,
        json,
      );
}

abstract class GBgMusicData_response
    implements Built<GBgMusicData_response, GBgMusicData_responseBuilder> {
  GBgMusicData_response._();

  factory GBgMusicData_response(
          [Function(GBgMusicData_responseBuilder b) updates]) =
      _$GBgMusicData_response;

  static void _initializeBuilder(GBgMusicData_responseBuilder b) =>
      b..G__typename = 'BackgroundMusicResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get error;
  int get statusCode;
  String get errorCodeForClient;
  BuiltList<GBgMusicData_response_data> get data;
  static Serializer<GBgMusicData_response> get serializer =>
      _$gBgMusicDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBgMusicData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBgMusicData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBgMusicData_response.serializer,
        json,
      );
}

abstract class GBgMusicData_response_data
    implements
        Built<GBgMusicData_response_data, GBgMusicData_response_dataBuilder> {
  GBgMusicData_response_data._();

  factory GBgMusicData_response_data(
          [Function(GBgMusicData_response_dataBuilder b) updates]) =
      _$GBgMusicData_response_data;

  static void _initializeBuilder(GBgMusicData_response_dataBuilder b) =>
      b..G__typename = 'BackgroundMusic';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get iconUrl;
  String get musicUrl;
  String get filename;
  static Serializer<GBgMusicData_response_data> get serializer =>
      _$gBgMusicDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBgMusicData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBgMusicData_response_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBgMusicData_response_data.serializer,
        json,
      );
}

abstract class GAudioInsertablesData
    implements Built<GAudioInsertablesData, GAudioInsertablesDataBuilder> {
  GAudioInsertablesData._();

  factory GAudioInsertablesData(
          [Function(GAudioInsertablesDataBuilder b) updates]) =
      _$GAudioInsertablesData;

  static void _initializeBuilder(GAudioInsertablesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAudioInsertablesData_response? get response;
  static Serializer<GAudioInsertablesData> get serializer =>
      _$gAudioInsertablesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAudioInsertablesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAudioInsertablesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAudioInsertablesData.serializer,
        json,
      );
}

abstract class GAudioInsertablesData_response
    implements
        Built<GAudioInsertablesData_response,
            GAudioInsertablesData_responseBuilder> {
  GAudioInsertablesData_response._();

  factory GAudioInsertablesData_response(
          [Function(GAudioInsertablesData_responseBuilder b) updates]) =
      _$GAudioInsertablesData_response;

  static void _initializeBuilder(GAudioInsertablesData_responseBuilder b) =>
      b..G__typename = 'InsertablesResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get error;
  int get statusCode;
  String get errorCodeForClient;
  BuiltList<GAudioInsertablesData_response_data> get data;
  static Serializer<GAudioInsertablesData_response> get serializer =>
      _$gAudioInsertablesDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAudioInsertablesData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAudioInsertablesData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAudioInsertablesData_response.serializer,
        json,
      );
}

abstract class GAudioInsertablesData_response_data
    implements
        Built<GAudioInsertablesData_response_data,
            GAudioInsertablesData_response_dataBuilder> {
  GAudioInsertablesData_response_data._();

  factory GAudioInsertablesData_response_data(
          [Function(GAudioInsertablesData_response_dataBuilder b) updates]) =
      _$GAudioInsertablesData_response_data;

  static void _initializeBuilder(
          GAudioInsertablesData_response_dataBuilder b) =>
      b..G__typename = 'Insertables';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get iconUrl;
  String get musicUrl;
  String get filename;
  static Serializer<GAudioInsertablesData_response_data> get serializer =>
      _$gAudioInsertablesDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAudioInsertablesData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAudioInsertablesData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAudioInsertablesData_response_data.serializer,
        json,
      );
}

abstract class GVoiceEffectsData
    implements Built<GVoiceEffectsData, GVoiceEffectsDataBuilder> {
  GVoiceEffectsData._();

  factory GVoiceEffectsData([Function(GVoiceEffectsDataBuilder b) updates]) =
      _$GVoiceEffectsData;

  static void _initializeBuilder(GVoiceEffectsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVoiceEffectsData_response? get response;
  static Serializer<GVoiceEffectsData> get serializer =>
      _$gVoiceEffectsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVoiceEffectsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoiceEffectsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVoiceEffectsData.serializer,
        json,
      );
}

abstract class GVoiceEffectsData_response
    implements
        Built<GVoiceEffectsData_response, GVoiceEffectsData_responseBuilder> {
  GVoiceEffectsData_response._();

  factory GVoiceEffectsData_response(
          [Function(GVoiceEffectsData_responseBuilder b) updates]) =
      _$GVoiceEffectsData_response;

  static void _initializeBuilder(GVoiceEffectsData_responseBuilder b) =>
      b..G__typename = 'PitchResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get error;
  BuiltList<GVoiceEffectsData_response_data> get data;
  static Serializer<GVoiceEffectsData_response> get serializer =>
      _$gVoiceEffectsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVoiceEffectsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoiceEffectsData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVoiceEffectsData_response.serializer,
        json,
      );
}

abstract class GVoiceEffectsData_response_data
    implements
        Built<GVoiceEffectsData_response_data,
            GVoiceEffectsData_response_dataBuilder> {
  GVoiceEffectsData_response_data._();

  factory GVoiceEffectsData_response_data(
          [Function(GVoiceEffectsData_response_dataBuilder b) updates]) =
      _$GVoiceEffectsData_response_data;

  static void _initializeBuilder(GVoiceEffectsData_response_dataBuilder b) =>
      b..G__typename = 'Pitch';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get ffmpegCommand;
  String get iconUrl;
  static Serializer<GVoiceEffectsData_response_data> get serializer =>
      _$gVoiceEffectsDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVoiceEffectsData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoiceEffectsData_response_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVoiceEffectsData_response_data.serializer,
        json,
      );
}

abstract class GUserVoicepodsData
    implements Built<GUserVoicepodsData, GUserVoicepodsDataBuilder> {
  GUserVoicepodsData._();

  factory GUserVoicepodsData([Function(GUserVoicepodsDataBuilder b) updates]) =
      _$GUserVoicepodsData;

  static void _initializeBuilder(GUserVoicepodsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserVoicepodsData_response? get response;
  static Serializer<GUserVoicepodsData> get serializer =>
      _$gUserVoicepodsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserVoicepodsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVoicepodsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserVoicepodsData.serializer,
        json,
      );
}

abstract class GUserVoicepodsData_response
    implements
        Built<GUserVoicepodsData_response, GUserVoicepodsData_responseBuilder> {
  GUserVoicepodsData_response._();

  factory GUserVoicepodsData_response(
          [Function(GUserVoicepodsData_responseBuilder b) updates]) =
      _$GUserVoicepodsData_response;

  static void _initializeBuilder(GUserVoicepodsData_responseBuilder b) =>
      b..G__typename = 'GetUsersVoicepodsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get error;
  String get errorCodeForClient;
  int get statusCode;
  GUserVoicepodsData_response_data? get data;
  static Serializer<GUserVoicepodsData_response> get serializer =>
      _$gUserVoicepodsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserVoicepodsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVoicepodsData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserVoicepodsData_response.serializer,
        json,
      );
}

abstract class GUserVoicepodsData_response_data
    implements
        Built<GUserVoicepodsData_response_data,
            GUserVoicepodsData_response_dataBuilder> {
  GUserVoicepodsData_response_data._();

  factory GUserVoicepodsData_response_data(
          [Function(GUserVoicepodsData_response_dataBuilder b) updates]) =
      _$GUserVoicepodsData_response_data;

  static void _initializeBuilder(GUserVoicepodsData_response_dataBuilder b) =>
      b..G__typename = 'VoicepodsPaginatedResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<String> get voicepods;
  GUserVoicepodsData_response_data_lastEvaluatedKey? get lastEvaluatedKey;
  static Serializer<GUserVoicepodsData_response_data> get serializer =>
      _$gUserVoicepodsDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserVoicepodsData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVoicepodsData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserVoicepodsData_response_data.serializer,
        json,
      );
}

abstract class GUserVoicepodsData_response_data_lastEvaluatedKey
    implements
        Built<GUserVoicepodsData_response_data_lastEvaluatedKey,
            GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder> {
  GUserVoicepodsData_response_data_lastEvaluatedKey._();

  factory GUserVoicepodsData_response_data_lastEvaluatedKey(
      [Function(GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder b)
          updates]) = _$GUserVoicepodsData_response_data_lastEvaluatedKey;

  static void _initializeBuilder(
          GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder b) =>
      b..G__typename = 'lastEvaluatedKeyForVoicepodsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get createdAt;
  String? get postId;
  String? get userId;
  static Serializer<GUserVoicepodsData_response_data_lastEvaluatedKey>
      get serializer =>
          _$gUserVoicepodsDataResponseDataLastEvaluatedKeySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserVoicepodsData_response_data_lastEvaluatedKey.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVoicepodsData_response_data_lastEvaluatedKey? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserVoicepodsData_response_data_lastEvaluatedKey.serializer,
        json,
      );
}

abstract class GMarkAsViewedData
    implements Built<GMarkAsViewedData, GMarkAsViewedDataBuilder> {
  GMarkAsViewedData._();

  factory GMarkAsViewedData([Function(GMarkAsViewedDataBuilder b) updates]) =
      _$GMarkAsViewedData;

  static void _initializeBuilder(GMarkAsViewedDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMarkAsViewedData_response? get response;
  static Serializer<GMarkAsViewedData> get serializer =>
      _$gMarkAsViewedDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMarkAsViewedData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkAsViewedData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMarkAsViewedData.serializer,
        json,
      );
}

abstract class GMarkAsViewedData_response
    implements
        Built<GMarkAsViewedData_response, GMarkAsViewedData_responseBuilder> {
  GMarkAsViewedData_response._();

  factory GMarkAsViewedData_response(
          [Function(GMarkAsViewedData_responseBuilder b) updates]) =
      _$GMarkAsViewedData_response;

  static void _initializeBuilder(GMarkAsViewedData_responseBuilder b) =>
      b..G__typename = 'GenericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get error;
  String get errorCodeForClient;
  int get statusCode;
  String? get data;
  static Serializer<GMarkAsViewedData_response> get serializer =>
      _$gMarkAsViewedDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMarkAsViewedData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkAsViewedData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMarkAsViewedData_response.serializer,
        json,
      );
}

abstract class GMarkAsPlayedData
    implements Built<GMarkAsPlayedData, GMarkAsPlayedDataBuilder> {
  GMarkAsPlayedData._();

  factory GMarkAsPlayedData([Function(GMarkAsPlayedDataBuilder b) updates]) =
      _$GMarkAsPlayedData;

  static void _initializeBuilder(GMarkAsPlayedDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMarkAsPlayedData_response? get response;
  static Serializer<GMarkAsPlayedData> get serializer =>
      _$gMarkAsPlayedDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMarkAsPlayedData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkAsPlayedData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMarkAsPlayedData.serializer,
        json,
      );
}

abstract class GMarkAsPlayedData_response
    implements
        Built<GMarkAsPlayedData_response, GMarkAsPlayedData_responseBuilder> {
  GMarkAsPlayedData_response._();

  factory GMarkAsPlayedData_response(
          [Function(GMarkAsPlayedData_responseBuilder b) updates]) =
      _$GMarkAsPlayedData_response;

  static void _initializeBuilder(GMarkAsPlayedData_responseBuilder b) =>
      b..G__typename = 'GenericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get error;
  String get errorCodeForClient;
  int get statusCode;
  String? get data;
  static Serializer<GMarkAsPlayedData_response> get serializer =>
      _$gMarkAsPlayedDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMarkAsPlayedData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkAsPlayedData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMarkAsPlayedData_response.serializer,
        json,
      );
}

abstract class GCreateVoicepodData
    implements Built<GCreateVoicepodData, GCreateVoicepodDataBuilder> {
  GCreateVoicepodData._();

  factory GCreateVoicepodData(
      [Function(GCreateVoicepodDataBuilder b) updates]) = _$GCreateVoicepodData;

  static void _initializeBuilder(GCreateVoicepodDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateVoicepodData_response get response;
  static Serializer<GCreateVoicepodData> get serializer =>
      _$gCreateVoicepodDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVoicepodData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVoicepodData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateVoicepodData.serializer,
        json,
      );
}

abstract class GCreateVoicepodData_response
    implements
        Built<GCreateVoicepodData_response,
            GCreateVoicepodData_responseBuilder> {
  GCreateVoicepodData_response._();

  factory GCreateVoicepodData_response(
          [Function(GCreateVoicepodData_responseBuilder b) updates]) =
      _$GCreateVoicepodData_response;

  static void _initializeBuilder(GCreateVoicepodData_responseBuilder b) =>
      b..G__typename = 'CreateVoicePodResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateVoicepodData_response_data? get data;
  int get statusCode;
  String get errorCodeForClient;
  bool get error;
  String get message;
  static Serializer<GCreateVoicepodData_response> get serializer =>
      _$gCreateVoicepodDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVoicepodData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVoicepodData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateVoicepodData_response.serializer,
        json,
      );
}

abstract class GCreateVoicepodData_response_data
    implements
        Built<GCreateVoicepodData_response_data,
            GCreateVoicepodData_response_dataBuilder>,
        GPostDetails {
  GCreateVoicepodData_response_data._();

  factory GCreateVoicepodData_response_data(
          [Function(GCreateVoicepodData_response_dataBuilder b) updates]) =
      _$GCreateVoicepodData_response_data;

  static void _initializeBuilder(GCreateVoicepodData_response_dataBuilder b) =>
      b..G__typename = 'Post';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String get postId;
  @override
  String get title;
  @override
  String get postUrl;
  @override
  _i2.GPostVisibility get visibility;
  @override
  BuiltList<String> get audioMediaFiles;
  @override
  BuiltList<String> get videoMediaFiles;
  @override
  BuiltList<String> get imageMediaFiles;
  @override
  int get playCount;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  _i2.GPostStatus get postStatus;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  static Serializer<GCreateVoicepodData_response_data> get serializer =>
      _$gCreateVoicepodDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVoicepodData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVoicepodData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateVoicepodData_response_data.serializer,
        json,
      );
}

abstract class GGetVoicepodDetailsData
    implements Built<GGetVoicepodDetailsData, GGetVoicepodDetailsDataBuilder> {
  GGetVoicepodDetailsData._();

  factory GGetVoicepodDetailsData(
          [Function(GGetVoicepodDetailsDataBuilder b) updates]) =
      _$GGetVoicepodDetailsData;

  static void _initializeBuilder(GGetVoicepodDetailsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetVoicepodDetailsData_response? get response;
  static Serializer<GGetVoicepodDetailsData> get serializer =>
      _$gGetVoicepodDetailsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetVoicepodDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetVoicepodDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetVoicepodDetailsData.serializer,
        json,
      );
}

abstract class GGetVoicepodDetailsData_response
    implements
        Built<GGetVoicepodDetailsData_response,
            GGetVoicepodDetailsData_responseBuilder> {
  GGetVoicepodDetailsData_response._();

  factory GGetVoicepodDetailsData_response(
          [Function(GGetVoicepodDetailsData_responseBuilder b) updates]) =
      _$GGetVoicepodDetailsData_response;

  static void _initializeBuilder(GGetVoicepodDetailsData_responseBuilder b) =>
      b..G__typename = 'GetVoicepodDetailsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetVoicepodDetailsData_response_data? get data;
  int get statusCode;
  String get errorCodeForClient;
  bool get error;
  String get message;
  static Serializer<GGetVoicepodDetailsData_response> get serializer =>
      _$gGetVoicepodDetailsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetVoicepodDetailsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetVoicepodDetailsData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetVoicepodDetailsData_response.serializer,
        json,
      );
}

abstract class GGetVoicepodDetailsData_response_data
    implements
        Built<GGetVoicepodDetailsData_response_data,
            GGetVoicepodDetailsData_response_dataBuilder>,
        GPostDetails {
  GGetVoicepodDetailsData_response_data._();

  factory GGetVoicepodDetailsData_response_data(
          [Function(GGetVoicepodDetailsData_response_dataBuilder b) updates]) =
      _$GGetVoicepodDetailsData_response_data;

  static void _initializeBuilder(
          GGetVoicepodDetailsData_response_dataBuilder b) =>
      b..G__typename = 'Post';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String get postId;
  @override
  String get title;
  @override
  String get postUrl;
  @override
  _i2.GPostVisibility get visibility;
  @override
  BuiltList<String> get audioMediaFiles;
  @override
  BuiltList<String> get videoMediaFiles;
  @override
  BuiltList<String> get imageMediaFiles;
  @override
  int get playCount;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  _i2.GPostStatus get postStatus;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  static Serializer<GGetVoicepodDetailsData_response_data> get serializer =>
      _$gGetVoicepodDetailsDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetVoicepodDetailsData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetVoicepodDetailsData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetVoicepodDetailsData_response_data.serializer,
        json,
      );
}

abstract class GDeleteVoicepodData
    implements Built<GDeleteVoicepodData, GDeleteVoicepodDataBuilder> {
  GDeleteVoicepodData._();

  factory GDeleteVoicepodData(
      [Function(GDeleteVoicepodDataBuilder b) updates]) = _$GDeleteVoicepodData;

  static void _initializeBuilder(GDeleteVoicepodDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteVoicepodData_response get response;
  static Serializer<GDeleteVoicepodData> get serializer =>
      _$gDeleteVoicepodDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteVoicepodData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteVoicepodData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteVoicepodData.serializer,
        json,
      );
}

abstract class GDeleteVoicepodData_response
    implements
        Built<GDeleteVoicepodData_response,
            GDeleteVoicepodData_responseBuilder> {
  GDeleteVoicepodData_response._();

  factory GDeleteVoicepodData_response(
          [Function(GDeleteVoicepodData_responseBuilder b) updates]) =
      _$GDeleteVoicepodData_response;

  static void _initializeBuilder(GDeleteVoicepodData_responseBuilder b) =>
      b..G__typename = 'GenericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get data;
  int get statusCode;
  String get errorCodeForClient;
  bool get error;
  String get message;
  static Serializer<GDeleteVoicepodData_response> get serializer =>
      _$gDeleteVoicepodDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteVoicepodData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteVoicepodData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteVoicepodData_response.serializer,
        json,
      );
}

abstract class GPostCommentData
    implements Built<GPostCommentData, GPostCommentDataBuilder> {
  GPostCommentData._();

  factory GPostCommentData([Function(GPostCommentDataBuilder b) updates]) =
      _$GPostCommentData;

  static void _initializeBuilder(GPostCommentDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostCommentData_response? get response;
  static Serializer<GPostCommentData> get serializer =>
      _$gPostCommentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentData.serializer,
        json,
      );
}

abstract class GPostCommentData_response
    implements
        Built<GPostCommentData_response, GPostCommentData_responseBuilder> {
  GPostCommentData_response._();

  factory GPostCommentData_response(
          [Function(GPostCommentData_responseBuilder b) updates]) =
      _$GPostCommentData_response;

  static void _initializeBuilder(GPostCommentData_responseBuilder b) =>
      b..G__typename = 'PostCommentResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostCommentData_response_data? get data;
  int get statusCode;
  String get errorCodeForClient;
  bool get error;
  String get message;
  static Serializer<GPostCommentData_response> get serializer =>
      _$gPostCommentDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentData_response.serializer,
        json,
      );
}

abstract class GPostCommentData_response_data
    implements
        Built<GPostCommentData_response_data,
            GPostCommentData_response_dataBuilder>,
        GVPComment {
  GPostCommentData_response_data._();

  factory GPostCommentData_response_data(
          [Function(GPostCommentData_response_dataBuilder b) updates]) =
      _$GPostCommentData_response_data;

  static void _initializeBuilder(GPostCommentData_response_dataBuilder b) =>
      b..G__typename = 'VoicepodComments';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get commentId;
  @override
  String get postId;
  @override
  String get userId;
  @override
  String get body;
  @override
  int get likeCount;
  @override
  int get replyCount;
  @override
  _i2.GPostStatus get status;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  static Serializer<GPostCommentData_response_data> get serializer =>
      _$gPostCommentDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentData_response_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentData_response_data.serializer,
        json,
      );
}

abstract class GPostCommentReplyData
    implements Built<GPostCommentReplyData, GPostCommentReplyDataBuilder> {
  GPostCommentReplyData._();

  factory GPostCommentReplyData(
          [Function(GPostCommentReplyDataBuilder b) updates]) =
      _$GPostCommentReplyData;

  static void _initializeBuilder(GPostCommentReplyDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostCommentReplyData_response? get response;
  static Serializer<GPostCommentReplyData> get serializer =>
      _$gPostCommentReplyDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentReplyData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentReplyData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentReplyData.serializer,
        json,
      );
}

abstract class GPostCommentReplyData_response
    implements
        Built<GPostCommentReplyData_response,
            GPostCommentReplyData_responseBuilder> {
  GPostCommentReplyData_response._();

  factory GPostCommentReplyData_response(
          [Function(GPostCommentReplyData_responseBuilder b) updates]) =
      _$GPostCommentReplyData_response;

  static void _initializeBuilder(GPostCommentReplyData_responseBuilder b) =>
      b..G__typename = 'PostReplyResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostCommentReplyData_response_data? get data;
  int get statusCode;
  String get errorCodeForClient;
  bool get error;
  String get message;
  static Serializer<GPostCommentReplyData_response> get serializer =>
      _$gPostCommentReplyDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentReplyData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentReplyData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentReplyData_response.serializer,
        json,
      );
}

abstract class GPostCommentReplyData_response_data
    implements
        Built<GPostCommentReplyData_response_data,
            GPostCommentReplyData_response_dataBuilder>,
        GVPCommentReply {
  GPostCommentReplyData_response_data._();

  factory GPostCommentReplyData_response_data(
          [Function(GPostCommentReplyData_response_dataBuilder b) updates]) =
      _$GPostCommentReplyData_response_data;

  static void _initializeBuilder(
          GPostCommentReplyData_response_dataBuilder b) =>
      b..G__typename = 'CommentsReplies';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get replyId;
  @override
  String get commentId;
  @override
  String get postId;
  @override
  String get userId;
  @override
  String get body;
  @override
  int get likeCount;
  @override
  _i2.GPostStatus get status;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  static Serializer<GPostCommentReplyData_response_data> get serializer =>
      _$gPostCommentReplyDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentReplyData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentReplyData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentReplyData_response_data.serializer,
        json,
      );
}

abstract class GPostDetails {
  String get G__typename;
  String get userId;
  String get postId;
  String get title;
  String get postUrl;
  _i2.GPostVisibility get visibility;
  BuiltList<String> get audioMediaFiles;
  BuiltList<String> get videoMediaFiles;
  BuiltList<String> get imageMediaFiles;
  int get playCount;
  int get likeCount;
  int get commentCount;
  _i2.GPostStatus get postStatus;
  String get createdAt;
  String get updatedAt;
  Map<String, dynamic> toJson();
}

abstract class GPostDetailsData
    implements Built<GPostDetailsData, GPostDetailsDataBuilder>, GPostDetails {
  GPostDetailsData._();

  factory GPostDetailsData([Function(GPostDetailsDataBuilder b) updates]) =
      _$GPostDetailsData;

  static void _initializeBuilder(GPostDetailsDataBuilder b) =>
      b..G__typename = 'Post';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  String get postId;
  @override
  String get title;
  @override
  String get postUrl;
  @override
  _i2.GPostVisibility get visibility;
  @override
  BuiltList<String> get audioMediaFiles;
  @override
  BuiltList<String> get videoMediaFiles;
  @override
  BuiltList<String> get imageMediaFiles;
  @override
  int get playCount;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  _i2.GPostStatus get postStatus;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  static Serializer<GPostDetailsData> get serializer =>
      _$gPostDetailsDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostDetailsData.serializer,
        json,
      );
}

abstract class GVPComment {
  String get G__typename;
  String get commentId;
  String get postId;
  String get userId;
  String get body;
  int get likeCount;
  int get replyCount;
  _i2.GPostStatus get status;
  String get createdAt;
  String get updatedAt;
  Map<String, dynamic> toJson();
}

abstract class GVPCommentData
    implements Built<GVPCommentData, GVPCommentDataBuilder>, GVPComment {
  GVPCommentData._();

  factory GVPCommentData([Function(GVPCommentDataBuilder b) updates]) =
      _$GVPCommentData;

  static void _initializeBuilder(GVPCommentDataBuilder b) =>
      b..G__typename = 'VoicepodComments';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get commentId;
  @override
  String get postId;
  @override
  String get userId;
  @override
  String get body;
  @override
  int get likeCount;
  @override
  int get replyCount;
  @override
  _i2.GPostStatus get status;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  static Serializer<GVPCommentData> get serializer =>
      _$gVPCommentDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVPCommentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVPCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVPCommentData.serializer,
        json,
      );
}

abstract class GVPCommentReply {
  String get G__typename;
  String get replyId;
  String get commentId;
  String get postId;
  String get userId;
  String get body;
  int get likeCount;
  _i2.GPostStatus get status;
  String get createdAt;
  String get updatedAt;
  Map<String, dynamic> toJson();
}

abstract class GVPCommentReplyData
    implements
        Built<GVPCommentReplyData, GVPCommentReplyDataBuilder>,
        GVPCommentReply {
  GVPCommentReplyData._();

  factory GVPCommentReplyData(
      [Function(GVPCommentReplyDataBuilder b) updates]) = _$GVPCommentReplyData;

  static void _initializeBuilder(GVPCommentReplyDataBuilder b) =>
      b..G__typename = 'CommentsReplies';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get replyId;
  @override
  String get commentId;
  @override
  String get postId;
  @override
  String get userId;
  @override
  String get body;
  @override
  int get likeCount;
  @override
  _i2.GPostStatus get status;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  static Serializer<GVPCommentReplyData> get serializer =>
      _$gVPCommentReplyDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVPCommentReplyData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVPCommentReplyData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVPCommentReplyData.serializer,
        json,
      );
}

abstract class GLanguage {
  String get G__typename;
  String get nameInEnglish;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GLanguageData
    implements Built<GLanguageData, GLanguageDataBuilder>, GLanguage {
  GLanguageData._();

  factory GLanguageData([Function(GLanguageDataBuilder b) updates]) =
      _$GLanguageData;

  static void _initializeBuilder(GLanguageDataBuilder b) =>
      b..G__typename = 'Languages';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get nameInEnglish;
  @override
  String get name;
  static Serializer<GLanguageData> get serializer => _$gLanguageDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLanguageData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLanguageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLanguageData.serializer,
        json,
      );
}
