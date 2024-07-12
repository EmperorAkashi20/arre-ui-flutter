// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_playlist_gql/src/__generated__/playlist_schema.schema.gql.dart'
    as _i2;
import 'package:arre_playlist_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'playlist_requests.data.gql.g.dart';

abstract class GPlaylistDetailsData
    implements Built<GPlaylistDetailsData, GPlaylistDetailsDataBuilder> {
  GPlaylistDetailsData._();

  factory GPlaylistDetailsData(
          [Function(GPlaylistDetailsDataBuilder b) updates]) =
      _$GPlaylistDetailsData;

  static void _initializeBuilder(GPlaylistDetailsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPlaylistDetailsData_response? get response;
  static Serializer<GPlaylistDetailsData> get serializer =>
      _$gPlaylistDetailsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistDetailsData.serializer,
        json,
      );
}

abstract class GPlaylistDetailsData_response
    implements
        Built<GPlaylistDetailsData_response,
            GPlaylistDetailsData_responseBuilder> {
  GPlaylistDetailsData_response._();

  factory GPlaylistDetailsData_response(
          [Function(GPlaylistDetailsData_responseBuilder b) updates]) =
      _$GPlaylistDetailsData_response;

  static void _initializeBuilder(GPlaylistDetailsData_responseBuilder b) =>
      b..G__typename = 'playlistDetailsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get message;
  bool? get error;
  GPlaylistDetailsData_response_data? get data;
  static Serializer<GPlaylistDetailsData_response> get serializer =>
      _$gPlaylistDetailsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistDetailsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistDetailsData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistDetailsData_response.serializer,
        json,
      );
}

abstract class GPlaylistDetailsData_response_data
    implements
        Built<GPlaylistDetailsData_response_data,
            GPlaylistDetailsData_response_dataBuilder>,
        GPlaylist {
  GPlaylistDetailsData_response_data._();

  factory GPlaylistDetailsData_response_data(
          [Function(GPlaylistDetailsData_response_dataBuilder b) updates]) =
      _$GPlaylistDetailsData_response_data;

  static void _initializeBuilder(GPlaylistDetailsData_response_dataBuilder b) =>
      b..G__typename = 'playlist';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GprivacyType get privacy;
  @override
  String get userId;
  @override
  BuiltList<String> get listOfPosts;
  @override
  String? get coverImage;
  @override
  String get createdOn;
  @override
  String get title;
  @override
  String get shareLink;
  @override
  String get playlistId;
  @override
  String get creatorOfPlaylist;
  @override
  int get totalDuration;
  @override
  int get numberOfPosts;
  static Serializer<GPlaylistDetailsData_response_data> get serializer =>
      _$gPlaylistDetailsDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistDetailsData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistDetailsData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistDetailsData_response_data.serializer,
        json,
      );
}

abstract class GPlaylistByUserIdData
    implements Built<GPlaylistByUserIdData, GPlaylistByUserIdDataBuilder> {
  GPlaylistByUserIdData._();

  factory GPlaylistByUserIdData(
          [Function(GPlaylistByUserIdDataBuilder b) updates]) =
      _$GPlaylistByUserIdData;

  static void _initializeBuilder(GPlaylistByUserIdDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPlaylistByUserIdData_response? get response;
  static Serializer<GPlaylistByUserIdData> get serializer =>
      _$gPlaylistByUserIdDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistByUserIdData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistByUserIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistByUserIdData.serializer,
        json,
      );
}

abstract class GPlaylistByUserIdData_response
    implements
        Built<GPlaylistByUserIdData_response,
            GPlaylistByUserIdData_responseBuilder> {
  GPlaylistByUserIdData_response._();

  factory GPlaylistByUserIdData_response(
          [Function(GPlaylistByUserIdData_responseBuilder b) updates]) =
      _$GPlaylistByUserIdData_response;

  static void _initializeBuilder(GPlaylistByUserIdData_responseBuilder b) =>
      b..G__typename = 'playlistsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GPlaylistByUserIdData_response_data?>? get data;
  static Serializer<GPlaylistByUserIdData_response> get serializer =>
      _$gPlaylistByUserIdDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistByUserIdData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistByUserIdData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistByUserIdData_response.serializer,
        json,
      );
}

abstract class GPlaylistByUserIdData_response_data
    implements
        Built<GPlaylistByUserIdData_response_data,
            GPlaylistByUserIdData_response_dataBuilder>,
        GPlaylist {
  GPlaylistByUserIdData_response_data._();

  factory GPlaylistByUserIdData_response_data(
          [Function(GPlaylistByUserIdData_response_dataBuilder b) updates]) =
      _$GPlaylistByUserIdData_response_data;

  static void _initializeBuilder(
          GPlaylistByUserIdData_response_dataBuilder b) =>
      b..G__typename = 'playlist';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GprivacyType get privacy;
  @override
  String get userId;
  @override
  BuiltList<String> get listOfPosts;
  @override
  String? get coverImage;
  @override
  String get createdOn;
  @override
  String get title;
  @override
  String get shareLink;
  @override
  String get playlistId;
  @override
  String get creatorOfPlaylist;
  @override
  int get totalDuration;
  @override
  int get numberOfPosts;
  static Serializer<GPlaylistByUserIdData_response_data> get serializer =>
      _$gPlaylistByUserIdDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistByUserIdData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistByUserIdData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistByUserIdData_response_data.serializer,
        json,
      );
}

abstract class GCreatePlaylistData
    implements Built<GCreatePlaylistData, GCreatePlaylistDataBuilder> {
  GCreatePlaylistData._();

  factory GCreatePlaylistData(
      [Function(GCreatePlaylistDataBuilder b) updates]) = _$GCreatePlaylistData;

  static void _initializeBuilder(GCreatePlaylistDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreatePlaylistData_response? get response;
  static Serializer<GCreatePlaylistData> get serializer =>
      _$gCreatePlaylistDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePlaylistData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreatePlaylistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePlaylistData.serializer,
        json,
      );
}

abstract class GCreatePlaylistData_response
    implements
        Built<GCreatePlaylistData_response,
            GCreatePlaylistData_responseBuilder> {
  GCreatePlaylistData_response._();

  factory GCreatePlaylistData_response(
          [Function(GCreatePlaylistData_responseBuilder b) updates]) =
      _$GCreatePlaylistData_response;

  static void _initializeBuilder(GCreatePlaylistData_responseBuilder b) =>
      b..G__typename = 'playlistDetailsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GCreatePlaylistData_response_data? get data;
  static Serializer<GCreatePlaylistData_response> get serializer =>
      _$gCreatePlaylistDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePlaylistData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreatePlaylistData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePlaylistData_response.serializer,
        json,
      );
}

abstract class GCreatePlaylistData_response_data
    implements
        Built<GCreatePlaylistData_response_data,
            GCreatePlaylistData_response_dataBuilder>,
        GPlaylist {
  GCreatePlaylistData_response_data._();

  factory GCreatePlaylistData_response_data(
          [Function(GCreatePlaylistData_response_dataBuilder b) updates]) =
      _$GCreatePlaylistData_response_data;

  static void _initializeBuilder(GCreatePlaylistData_response_dataBuilder b) =>
      b..G__typename = 'playlist';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GprivacyType get privacy;
  @override
  String get userId;
  @override
  BuiltList<String> get listOfPosts;
  @override
  String? get coverImage;
  @override
  String get createdOn;
  @override
  String get title;
  @override
  String get shareLink;
  @override
  String get playlistId;
  @override
  String get creatorOfPlaylist;
  @override
  int get totalDuration;
  @override
  int get numberOfPosts;
  static Serializer<GCreatePlaylistData_response_data> get serializer =>
      _$gCreatePlaylistDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePlaylistData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreatePlaylistData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePlaylistData_response_data.serializer,
        json,
      );
}

abstract class GEditPlaylistData
    implements Built<GEditPlaylistData, GEditPlaylistDataBuilder> {
  GEditPlaylistData._();

  factory GEditPlaylistData([Function(GEditPlaylistDataBuilder b) updates]) =
      _$GEditPlaylistData;

  static void _initializeBuilder(GEditPlaylistDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GEditPlaylistData_response? get response;
  static Serializer<GEditPlaylistData> get serializer =>
      _$gEditPlaylistDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEditPlaylistData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEditPlaylistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEditPlaylistData.serializer,
        json,
      );
}

abstract class GEditPlaylistData_response
    implements
        Built<GEditPlaylistData_response, GEditPlaylistData_responseBuilder> {
  GEditPlaylistData_response._();

  factory GEditPlaylistData_response(
          [Function(GEditPlaylistData_responseBuilder b) updates]) =
      _$GEditPlaylistData_response;

  static void _initializeBuilder(GEditPlaylistData_responseBuilder b) =>
      b..G__typename = 'playlistDetailsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GEditPlaylistData_response_data? get data;
  static Serializer<GEditPlaylistData_response> get serializer =>
      _$gEditPlaylistDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEditPlaylistData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEditPlaylistData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEditPlaylistData_response.serializer,
        json,
      );
}

abstract class GEditPlaylistData_response_data
    implements
        Built<GEditPlaylistData_response_data,
            GEditPlaylistData_response_dataBuilder>,
        GPlaylist {
  GEditPlaylistData_response_data._();

  factory GEditPlaylistData_response_data(
          [Function(GEditPlaylistData_response_dataBuilder b) updates]) =
      _$GEditPlaylistData_response_data;

  static void _initializeBuilder(GEditPlaylistData_response_dataBuilder b) =>
      b..G__typename = 'playlist';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GprivacyType get privacy;
  @override
  String get userId;
  @override
  BuiltList<String> get listOfPosts;
  @override
  String? get coverImage;
  @override
  String get createdOn;
  @override
  String get title;
  @override
  String get shareLink;
  @override
  String get playlistId;
  @override
  String get creatorOfPlaylist;
  @override
  int get totalDuration;
  @override
  int get numberOfPosts;
  static Serializer<GEditPlaylistData_response_data> get serializer =>
      _$gEditPlaylistDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEditPlaylistData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEditPlaylistData_response_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEditPlaylistData_response_data.serializer,
        json,
      );
}

abstract class GDeletePlaylistData
    implements Built<GDeletePlaylistData, GDeletePlaylistDataBuilder> {
  GDeletePlaylistData._();

  factory GDeletePlaylistData(
      [Function(GDeletePlaylistDataBuilder b) updates]) = _$GDeletePlaylistData;

  static void _initializeBuilder(GDeletePlaylistDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeletePlaylistData_response? get response;
  static Serializer<GDeletePlaylistData> get serializer =>
      _$gDeletePlaylistDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeletePlaylistData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeletePlaylistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeletePlaylistData.serializer,
        json,
      );
}

abstract class GDeletePlaylistData_response
    implements
        Built<GDeletePlaylistData_response,
            GDeletePlaylistData_responseBuilder> {
  GDeletePlaylistData_response._();

  factory GDeletePlaylistData_response(
          [Function(GDeletePlaylistData_responseBuilder b) updates]) =
      _$GDeletePlaylistData_response;

  static void _initializeBuilder(GDeletePlaylistData_responseBuilder b) =>
      b..G__typename = 'genericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  String? get data;
  static Serializer<GDeletePlaylistData_response> get serializer =>
      _$gDeletePlaylistDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeletePlaylistData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeletePlaylistData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeletePlaylistData_response.serializer,
        json,
      );
}

abstract class GAddPostToPlaylistData
    implements Built<GAddPostToPlaylistData, GAddPostToPlaylistDataBuilder> {
  GAddPostToPlaylistData._();

  factory GAddPostToPlaylistData(
          [Function(GAddPostToPlaylistDataBuilder b) updates]) =
      _$GAddPostToPlaylistData;

  static void _initializeBuilder(GAddPostToPlaylistDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAddPostToPlaylistData_response? get response;
  static Serializer<GAddPostToPlaylistData> get serializer =>
      _$gAddPostToPlaylistDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddPostToPlaylistData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddPostToPlaylistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddPostToPlaylistData.serializer,
        json,
      );
}

abstract class GAddPostToPlaylistData_response
    implements
        Built<GAddPostToPlaylistData_response,
            GAddPostToPlaylistData_responseBuilder> {
  GAddPostToPlaylistData_response._();

  factory GAddPostToPlaylistData_response(
          [Function(GAddPostToPlaylistData_responseBuilder b) updates]) =
      _$GAddPostToPlaylistData_response;

  static void _initializeBuilder(GAddPostToPlaylistData_responseBuilder b) =>
      b..G__typename = 'playlistDetailsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GAddPostToPlaylistData_response_data? get data;
  static Serializer<GAddPostToPlaylistData_response> get serializer =>
      _$gAddPostToPlaylistDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddPostToPlaylistData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddPostToPlaylistData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddPostToPlaylistData_response.serializer,
        json,
      );
}

abstract class GAddPostToPlaylistData_response_data
    implements
        Built<GAddPostToPlaylistData_response_data,
            GAddPostToPlaylistData_response_dataBuilder>,
        GPlaylist {
  GAddPostToPlaylistData_response_data._();

  factory GAddPostToPlaylistData_response_data(
          [Function(GAddPostToPlaylistData_response_dataBuilder b) updates]) =
      _$GAddPostToPlaylistData_response_data;

  static void _initializeBuilder(
          GAddPostToPlaylistData_response_dataBuilder b) =>
      b..G__typename = 'playlist';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GprivacyType get privacy;
  @override
  String get userId;
  @override
  BuiltList<String> get listOfPosts;
  @override
  String? get coverImage;
  @override
  String get createdOn;
  @override
  String get title;
  @override
  String get shareLink;
  @override
  String get playlistId;
  @override
  String get creatorOfPlaylist;
  @override
  int get totalDuration;
  @override
  int get numberOfPosts;
  static Serializer<GAddPostToPlaylistData_response_data> get serializer =>
      _$gAddPostToPlaylistDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddPostToPlaylistData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddPostToPlaylistData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddPostToPlaylistData_response_data.serializer,
        json,
      );
}

abstract class GSavePostToDefaultPlaylistData
    implements
        Built<GSavePostToDefaultPlaylistData,
            GSavePostToDefaultPlaylistDataBuilder> {
  GSavePostToDefaultPlaylistData._();

  factory GSavePostToDefaultPlaylistData(
          [Function(GSavePostToDefaultPlaylistDataBuilder b) updates]) =
      _$GSavePostToDefaultPlaylistData;

  static void _initializeBuilder(GSavePostToDefaultPlaylistDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSavePostToDefaultPlaylistData_response? get response;
  static Serializer<GSavePostToDefaultPlaylistData> get serializer =>
      _$gSavePostToDefaultPlaylistDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSavePostToDefaultPlaylistData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSavePostToDefaultPlaylistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSavePostToDefaultPlaylistData.serializer,
        json,
      );
}

abstract class GSavePostToDefaultPlaylistData_response
    implements
        Built<GSavePostToDefaultPlaylistData_response,
            GSavePostToDefaultPlaylistData_responseBuilder> {
  GSavePostToDefaultPlaylistData_response._();

  factory GSavePostToDefaultPlaylistData_response(
      [Function(GSavePostToDefaultPlaylistData_responseBuilder b)
          updates]) = _$GSavePostToDefaultPlaylistData_response;

  static void _initializeBuilder(
          GSavePostToDefaultPlaylistData_responseBuilder b) =>
      b..G__typename = 'playlistDetailsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GSavePostToDefaultPlaylistData_response_data? get data;
  static Serializer<GSavePostToDefaultPlaylistData_response> get serializer =>
      _$gSavePostToDefaultPlaylistDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSavePostToDefaultPlaylistData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSavePostToDefaultPlaylistData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSavePostToDefaultPlaylistData_response.serializer,
        json,
      );
}

abstract class GSavePostToDefaultPlaylistData_response_data
    implements
        Built<GSavePostToDefaultPlaylistData_response_data,
            GSavePostToDefaultPlaylistData_response_dataBuilder>,
        GPlaylist {
  GSavePostToDefaultPlaylistData_response_data._();

  factory GSavePostToDefaultPlaylistData_response_data(
      [Function(GSavePostToDefaultPlaylistData_response_dataBuilder b)
          updates]) = _$GSavePostToDefaultPlaylistData_response_data;

  static void _initializeBuilder(
          GSavePostToDefaultPlaylistData_response_dataBuilder b) =>
      b..G__typename = 'playlist';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GprivacyType get privacy;
  @override
  String get userId;
  @override
  BuiltList<String> get listOfPosts;
  @override
  String? get coverImage;
  @override
  String get createdOn;
  @override
  String get title;
  @override
  String get shareLink;
  @override
  String get playlistId;
  @override
  String get creatorOfPlaylist;
  @override
  int get totalDuration;
  @override
  int get numberOfPosts;
  static Serializer<GSavePostToDefaultPlaylistData_response_data>
      get serializer => _$gSavePostToDefaultPlaylistDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSavePostToDefaultPlaylistData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSavePostToDefaultPlaylistData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSavePostToDefaultPlaylistData_response_data.serializer,
        json,
      );
}

abstract class GRemovePostFromPlaylistData
    implements
        Built<GRemovePostFromPlaylistData, GRemovePostFromPlaylistDataBuilder> {
  GRemovePostFromPlaylistData._();

  factory GRemovePostFromPlaylistData(
          [Function(GRemovePostFromPlaylistDataBuilder b) updates]) =
      _$GRemovePostFromPlaylistData;

  static void _initializeBuilder(GRemovePostFromPlaylistDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRemovePostFromPlaylistData_response? get response;
  static Serializer<GRemovePostFromPlaylistData> get serializer =>
      _$gRemovePostFromPlaylistDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemovePostFromPlaylistData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRemovePostFromPlaylistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemovePostFromPlaylistData.serializer,
        json,
      );
}

abstract class GRemovePostFromPlaylistData_response
    implements
        Built<GRemovePostFromPlaylistData_response,
            GRemovePostFromPlaylistData_responseBuilder> {
  GRemovePostFromPlaylistData_response._();

  factory GRemovePostFromPlaylistData_response(
          [Function(GRemovePostFromPlaylistData_responseBuilder b) updates]) =
      _$GRemovePostFromPlaylistData_response;

  static void _initializeBuilder(
          GRemovePostFromPlaylistData_responseBuilder b) =>
      b..G__typename = 'playlistDetailsResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  GRemovePostFromPlaylistData_response_data? get data;
  static Serializer<GRemovePostFromPlaylistData_response> get serializer =>
      _$gRemovePostFromPlaylistDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemovePostFromPlaylistData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRemovePostFromPlaylistData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemovePostFromPlaylistData_response.serializer,
        json,
      );
}

abstract class GRemovePostFromPlaylistData_response_data
    implements
        Built<GRemovePostFromPlaylistData_response_data,
            GRemovePostFromPlaylistData_response_dataBuilder>,
        GPlaylist {
  GRemovePostFromPlaylistData_response_data._();

  factory GRemovePostFromPlaylistData_response_data(
      [Function(GRemovePostFromPlaylistData_response_dataBuilder b)
          updates]) = _$GRemovePostFromPlaylistData_response_data;

  static void _initializeBuilder(
          GRemovePostFromPlaylistData_response_dataBuilder b) =>
      b..G__typename = 'playlist';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GprivacyType get privacy;
  @override
  String get userId;
  @override
  BuiltList<String> get listOfPosts;
  @override
  String? get coverImage;
  @override
  String get createdOn;
  @override
  String get title;
  @override
  String get shareLink;
  @override
  String get playlistId;
  @override
  String get creatorOfPlaylist;
  @override
  int get totalDuration;
  @override
  int get numberOfPosts;
  static Serializer<GRemovePostFromPlaylistData_response_data> get serializer =>
      _$gRemovePostFromPlaylistDataResponseDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemovePostFromPlaylistData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRemovePostFromPlaylistData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemovePostFromPlaylistData_response_data.serializer,
        json,
      );
}

abstract class GPlaylist {
  String get G__typename;
  _i2.GprivacyType get privacy;
  String get userId;
  BuiltList<String> get listOfPosts;
  String? get coverImage;
  String get createdOn;
  String get title;
  String get shareLink;
  String get playlistId;
  String get creatorOfPlaylist;
  int get totalDuration;
  int get numberOfPosts;
  Map<String, dynamic> toJson();
}

abstract class GPlaylistData
    implements Built<GPlaylistData, GPlaylistDataBuilder>, GPlaylist {
  GPlaylistData._();

  factory GPlaylistData([Function(GPlaylistDataBuilder b) updates]) =
      _$GPlaylistData;

  static void _initializeBuilder(GPlaylistDataBuilder b) =>
      b..G__typename = 'playlist';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GprivacyType get privacy;
  @override
  String get userId;
  @override
  BuiltList<String> get listOfPosts;
  @override
  String? get coverImage;
  @override
  String get createdOn;
  @override
  String get title;
  @override
  String get shareLink;
  @override
  String get playlistId;
  @override
  String get creatorOfPlaylist;
  @override
  int get totalDuration;
  @override
  int get numberOfPosts;
  static Serializer<GPlaylistData> get serializer => _$gPlaylistDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistData.serializer,
        json,
      );
}
