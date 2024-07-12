// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_base_gql/src/__generated__/schema.schema.gql.dart' as _i2;
import 'package:arre_base_gql/src/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queries.data.gql.g.dart';

abstract class GTrendingHashtagsData
    implements Built<GTrendingHashtagsData, GTrendingHashtagsDataBuilder> {
  GTrendingHashtagsData._();

  factory GTrendingHashtagsData(
          [Function(GTrendingHashtagsDataBuilder b) updates]) =
      _$GTrendingHashtagsData;

  static void _initializeBuilder(GTrendingHashtagsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GTrendingHashtagsData_response? get response;
  static Serializer<GTrendingHashtagsData> get serializer =>
      _$gTrendingHashtagsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTrendingHashtagsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTrendingHashtagsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTrendingHashtagsData.serializer,
        json,
      );
}

abstract class GTrendingHashtagsData_response
    implements
        Built<GTrendingHashtagsData_response,
            GTrendingHashtagsData_responseBuilder> {
  GTrendingHashtagsData_response._();

  factory GTrendingHashtagsData_response(
          [Function(GTrendingHashtagsData_responseBuilder b) updates]) =
      _$GTrendingHashtagsData_response;

  static void _initializeBuilder(GTrendingHashtagsData_responseBuilder b) =>
      b..G__typename = 'GetTrendingHashtagsForVPResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get error;
  BuiltList<String>? get data;
  String? get message;
  static Serializer<GTrendingHashtagsData_response> get serializer =>
      _$gTrendingHashtagsDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTrendingHashtagsData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTrendingHashtagsData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTrendingHashtagsData_response.serializer,
        json,
      );
}

abstract class GDeletePostData
    implements Built<GDeletePostData, GDeletePostDataBuilder> {
  GDeletePostData._();

  factory GDeletePostData([Function(GDeletePostDataBuilder b) updates]) =
      _$GDeletePostData;

  static void _initializeBuilder(GDeletePostDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeletePostData_response? get response;
  static Serializer<GDeletePostData> get serializer =>
      _$gDeletePostDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeletePostData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeletePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeletePostData.serializer,
        json,
      );
}

abstract class GDeletePostData_response
    implements
        Built<GDeletePostData_response, GDeletePostData_responseBuilder> {
  GDeletePostData_response._();

  factory GDeletePostData_response(
          [Function(GDeletePostData_responseBuilder b) updates]) =
      _$GDeletePostData_response;

  static void _initializeBuilder(GDeletePostData_responseBuilder b) =>
      b..G__typename = 'ResGeneric';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get status;
  String? get error;
  String? get message;
  static Serializer<GDeletePostData_response> get serializer =>
      _$gDeletePostDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeletePostData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeletePostData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeletePostData_response.serializer,
        json,
      );
}

abstract class GLikePostData
    implements Built<GLikePostData, GLikePostDataBuilder> {
  GLikePostData._();

  factory GLikePostData([Function(GLikePostDataBuilder b) updates]) =
      _$GLikePostData;

  static void _initializeBuilder(GLikePostDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLikePostData_response? get response;
  static Serializer<GLikePostData> get serializer => _$gLikePostDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikePostData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLikePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikePostData.serializer,
        json,
      );
}

abstract class GLikePostData_response
    implements Built<GLikePostData_response, GLikePostData_responseBuilder> {
  GLikePostData_response._();

  factory GLikePostData_response(
          [Function(GLikePostData_responseBuilder b) updates]) =
      _$GLikePostData_response;

  static void _initializeBuilder(GLikePostData_responseBuilder b) =>
      b..G__typename = 'ResGeneric';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get message;
  String? get error;
  bool? get status;
  static Serializer<GLikePostData_response> get serializer =>
      _$gLikePostDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikePostData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLikePostData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikePostData_response.serializer,
        json,
      );
}

abstract class GUnlikePostData
    implements Built<GUnlikePostData, GUnlikePostDataBuilder> {
  GUnlikePostData._();

  factory GUnlikePostData([Function(GUnlikePostDataBuilder b) updates]) =
      _$GUnlikePostData;

  static void _initializeBuilder(GUnlikePostDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUnlikePostData_response? get response;
  static Serializer<GUnlikePostData> get serializer =>
      _$gUnlikePostDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUnlikePostData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnlikePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUnlikePostData.serializer,
        json,
      );
}

abstract class GUnlikePostData_response
    implements
        Built<GUnlikePostData_response, GUnlikePostData_responseBuilder> {
  GUnlikePostData_response._();

  factory GUnlikePostData_response(
          [Function(GUnlikePostData_responseBuilder b) updates]) =
      _$GUnlikePostData_response;

  static void _initializeBuilder(GUnlikePostData_responseBuilder b) =>
      b..G__typename = 'ResGeneric';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get message;
  String? get error;
  bool? get status;
  static Serializer<GUnlikePostData_response> get serializer =>
      _$gUnlikePostDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUnlikePostData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnlikePostData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUnlikePostData_response.serializer,
        json,
      );
}

abstract class GPostCommentsRepliesData
    implements
        Built<GPostCommentsRepliesData, GPostCommentsRepliesDataBuilder> {
  GPostCommentsRepliesData._();

  factory GPostCommentsRepliesData(
          [Function(GPostCommentsRepliesDataBuilder b) updates]) =
      _$GPostCommentsRepliesData;

  static void _initializeBuilder(GPostCommentsRepliesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostCommentsRepliesData_response? get response;
  static Serializer<GPostCommentsRepliesData> get serializer =>
      _$gPostCommentsRepliesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentsRepliesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentsRepliesData.serializer,
        json,
      );
}

abstract class GPostCommentsRepliesData_response
    implements
        Built<GPostCommentsRepliesData_response,
            GPostCommentsRepliesData_responseBuilder> {
  GPostCommentsRepliesData_response._();

  factory GPostCommentsRepliesData_response(
          [Function(GPostCommentsRepliesData_responseBuilder b) updates]) =
      _$GPostCommentsRepliesData_response;

  static void _initializeBuilder(GPostCommentsRepliesData_responseBuilder b) =>
      b..G__typename = 'GetPostRepliesResp';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get message;
  String? get error;
  bool? get status;
  BuiltList<GPostCommentsRepliesData_response_data>? get data;
  static Serializer<GPostCommentsRepliesData_response> get serializer =>
      _$gPostCommentsRepliesDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentsRepliesData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentsRepliesData_response.serializer,
        json,
      );
}

abstract class GPostCommentsRepliesData_response_data
    implements
        Built<GPostCommentsRepliesData_response_data,
            GPostCommentsRepliesData_response_dataBuilder> {
  GPostCommentsRepliesData_response_data._();

  factory GPostCommentsRepliesData_response_data(
          [Function(GPostCommentsRepliesData_response_dataBuilder b) updates]) =
      _$GPostCommentsRepliesData_response_data;

  static void _initializeBuilder(
          GPostCommentsRepliesData_response_dataBuilder b) =>
      b..G__typename = 'Reply';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get message;
  _i2.GDateTime get createdAt;
  BuiltList<String>? get currentUserInteractions;
  int get replyLevel;
  BuiltList<GPostCommentsRepliesData_response_data_secondLevelReplies>?
      get secondLevelReplies;
  GPostCommentsRepliesData_response_data_interactions? get interactions;
  GPostCommentsRepliesData_response_data_createdBy get createdBy;
  static Serializer<GPostCommentsRepliesData_response_data> get serializer =>
      _$gPostCommentsRepliesDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentsRepliesData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesData_response_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentsRepliesData_response_data.serializer,
        json,
      );
}

abstract class GPostCommentsRepliesData_response_data_secondLevelReplies
    implements
        Built<GPostCommentsRepliesData_response_data_secondLevelReplies,
            GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder> {
  GPostCommentsRepliesData_response_data_secondLevelReplies._();

  factory GPostCommentsRepliesData_response_data_secondLevelReplies(
      [Function(
              GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder
                  b)
          updates]) = _$GPostCommentsRepliesData_response_data_secondLevelReplies;

  static void _initializeBuilder(
          GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder b) =>
      b..G__typename = 'SecondLevelReplies';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get message;
  _i2.GDateTime get createdAt;
  int get replyLevel;
  String get parentId;
  BuiltList<String>? get secondLevelInteractions;
  GPostCommentsRepliesData_response_data_secondLevelReplies_interactions?
      get interactions;
  GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
      get createdBy;
  static Serializer<GPostCommentsRepliesData_response_data_secondLevelReplies>
      get serializer =>
          _$gPostCommentsRepliesDataResponseDataSecondLevelRepliesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentsRepliesData_response_data_secondLevelReplies.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesData_response_data_secondLevelReplies? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentsRepliesData_response_data_secondLevelReplies.serializer,
        json,
      );
}

abstract class GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
    implements
        Built<
            GPostCommentsRepliesData_response_data_secondLevelReplies_interactions,
            GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder> {
  GPostCommentsRepliesData_response_data_secondLevelReplies_interactions._();

  factory GPostCommentsRepliesData_response_data_secondLevelReplies_interactions(
          [Function(
                  GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder
                      b)
              updates]) =
      _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactions;

  static void _initializeBuilder(
          GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder
              b) =>
      b..G__typename = 'InteractionsData';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get heart;
  static Serializer<
          GPostCommentsRepliesData_response_data_secondLevelReplies_interactions>
      get serializer =>
          _$gPostCommentsRepliesDataResponseDataSecondLevelRepliesInteractionsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesData_response_data_secondLevelReplies_interactions?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
                .serializer,
            json,
          );
}

abstract class GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
    implements
        Built<
            GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy,
            GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder> {
  GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy._();

  factory GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy(
          [Function(
                  GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder
                      b)
              updates]) =
      _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy;

  static void _initializeBuilder(
          GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder
              b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get username;
  String? get isAvatar;
  String? get avatarUrl;
  String? get themeUrl;
  static Serializer<
          GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy>
      get serializer =>
          _$gPostCommentsRepliesDataResponseDataSecondLevelRepliesCreatedBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
                .serializer,
            json,
          );
}

abstract class GPostCommentsRepliesData_response_data_interactions
    implements
        Built<GPostCommentsRepliesData_response_data_interactions,
            GPostCommentsRepliesData_response_data_interactionsBuilder> {
  GPostCommentsRepliesData_response_data_interactions._();

  factory GPostCommentsRepliesData_response_data_interactions(
      [Function(GPostCommentsRepliesData_response_data_interactionsBuilder b)
          updates]) = _$GPostCommentsRepliesData_response_data_interactions;

  static void _initializeBuilder(
          GPostCommentsRepliesData_response_data_interactionsBuilder b) =>
      b..G__typename = 'InteractionsData';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get heart;
  static Serializer<GPostCommentsRepliesData_response_data_interactions>
      get serializer =>
          _$gPostCommentsRepliesDataResponseDataInteractionsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentsRepliesData_response_data_interactions.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesData_response_data_interactions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentsRepliesData_response_data_interactions.serializer,
        json,
      );
}

abstract class GPostCommentsRepliesData_response_data_createdBy
    implements
        Built<GPostCommentsRepliesData_response_data_createdBy,
            GPostCommentsRepliesData_response_data_createdByBuilder> {
  GPostCommentsRepliesData_response_data_createdBy._();

  factory GPostCommentsRepliesData_response_data_createdBy(
      [Function(GPostCommentsRepliesData_response_data_createdByBuilder b)
          updates]) = _$GPostCommentsRepliesData_response_data_createdBy;

  static void _initializeBuilder(
          GPostCommentsRepliesData_response_data_createdByBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get username;
  String? get isAvatar;
  String? get avatarUrl;
  String? get themeUrl;
  static Serializer<GPostCommentsRepliesData_response_data_createdBy>
      get serializer =>
          _$gPostCommentsRepliesDataResponseDataCreatedBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentsRepliesData_response_data_createdBy.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesData_response_data_createdBy? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentsRepliesData_response_data_createdBy.serializer,
        json,
      );
}

abstract class GPostVoicepodCommentData
    implements
        Built<GPostVoicepodCommentData, GPostVoicepodCommentDataBuilder> {
  GPostVoicepodCommentData._();

  factory GPostVoicepodCommentData(
          [Function(GPostVoicepodCommentDataBuilder b) updates]) =
      _$GPostVoicepodCommentData;

  static void _initializeBuilder(GPostVoicepodCommentDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostVoicepodCommentData_sendPostReply? get sendPostReply;
  static Serializer<GPostVoicepodCommentData> get serializer =>
      _$gPostVoicepodCommentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostVoicepodCommentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostVoicepodCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostVoicepodCommentData.serializer,
        json,
      );
}

abstract class GPostVoicepodCommentData_sendPostReply
    implements
        Built<GPostVoicepodCommentData_sendPostReply,
            GPostVoicepodCommentData_sendPostReplyBuilder> {
  GPostVoicepodCommentData_sendPostReply._();

  factory GPostVoicepodCommentData_sendPostReply(
          [Function(GPostVoicepodCommentData_sendPostReplyBuilder b) updates]) =
      _$GPostVoicepodCommentData_sendPostReply;

  static void _initializeBuilder(
          GPostVoicepodCommentData_sendPostReplyBuilder b) =>
      b..G__typename = 'SendPostReplyResp';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get message;
  bool? get status;
  String? get error;
  GPostVoicepodCommentData_sendPostReply_data? get data;
  static Serializer<GPostVoicepodCommentData_sendPostReply> get serializer =>
      _$gPostVoicepodCommentDataSendPostReplySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostVoicepodCommentData_sendPostReply.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostVoicepodCommentData_sendPostReply? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostVoicepodCommentData_sendPostReply.serializer,
        json,
      );
}

abstract class GPostVoicepodCommentData_sendPostReply_data
    implements
        Built<GPostVoicepodCommentData_sendPostReply_data,
            GPostVoicepodCommentData_sendPostReply_dataBuilder> {
  GPostVoicepodCommentData_sendPostReply_data._();

  factory GPostVoicepodCommentData_sendPostReply_data(
      [Function(GPostVoicepodCommentData_sendPostReply_dataBuilder b)
          updates]) = _$GPostVoicepodCommentData_sendPostReply_data;

  static void _initializeBuilder(
          GPostVoicepodCommentData_sendPostReply_dataBuilder b) =>
      b..G__typename = 'SendPostReplyData';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get replyId;
  static Serializer<GPostVoicepodCommentData_sendPostReply_data>
      get serializer => _$gPostVoicepodCommentDataSendPostReplyDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostVoicepodCommentData_sendPostReply_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostVoicepodCommentData_sendPostReply_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostVoicepodCommentData_sendPostReply_data.serializer,
        json,
      );
}

abstract class GLikePostCommentData
    implements Built<GLikePostCommentData, GLikePostCommentDataBuilder> {
  GLikePostCommentData._();

  factory GLikePostCommentData(
          [Function(GLikePostCommentDataBuilder b) updates]) =
      _$GLikePostCommentData;

  static void _initializeBuilder(GLikePostCommentDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLikePostCommentData_response? get response;
  static Serializer<GLikePostCommentData> get serializer =>
      _$gLikePostCommentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikePostCommentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLikePostCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikePostCommentData.serializer,
        json,
      );
}

abstract class GLikePostCommentData_response
    implements
        Built<GLikePostCommentData_response,
            GLikePostCommentData_responseBuilder> {
  GLikePostCommentData_response._();

  factory GLikePostCommentData_response(
          [Function(GLikePostCommentData_responseBuilder b) updates]) =
      _$GLikePostCommentData_response;

  static void _initializeBuilder(GLikePostCommentData_responseBuilder b) =>
      b..G__typename = 'ResGeneric';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get error;
  bool? get status;
  String? get message;
  static Serializer<GLikePostCommentData_response> get serializer =>
      _$gLikePostCommentDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikePostCommentData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLikePostCommentData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikePostCommentData_response.serializer,
        json,
      );
}

abstract class GUnlikePostCommentData
    implements Built<GUnlikePostCommentData, GUnlikePostCommentDataBuilder> {
  GUnlikePostCommentData._();

  factory GUnlikePostCommentData(
          [Function(GUnlikePostCommentDataBuilder b) updates]) =
      _$GUnlikePostCommentData;

  static void _initializeBuilder(GUnlikePostCommentDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUnlikePostCommentData_response? get response;
  static Serializer<GUnlikePostCommentData> get serializer =>
      _$gUnlikePostCommentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUnlikePostCommentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnlikePostCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUnlikePostCommentData.serializer,
        json,
      );
}

abstract class GUnlikePostCommentData_response
    implements
        Built<GUnlikePostCommentData_response,
            GUnlikePostCommentData_responseBuilder> {
  GUnlikePostCommentData_response._();

  factory GUnlikePostCommentData_response(
          [Function(GUnlikePostCommentData_responseBuilder b) updates]) =
      _$GUnlikePostCommentData_response;

  static void _initializeBuilder(GUnlikePostCommentData_responseBuilder b) =>
      b..G__typename = 'ResGeneric';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get error;
  bool? get status;
  String? get message;
  static Serializer<GUnlikePostCommentData_response> get serializer =>
      _$gUnlikePostCommentDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUnlikePostCommentData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnlikePostCommentData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUnlikePostCommentData_response.serializer,
        json,
      );
}

abstract class GBlockUserData
    implements Built<GBlockUserData, GBlockUserDataBuilder> {
  GBlockUserData._();

  factory GBlockUserData([Function(GBlockUserDataBuilder b) updates]) =
      _$GBlockUserData;

  static void _initializeBuilder(GBlockUserDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GBlockUserData_response? get response;
  static Serializer<GBlockUserData> get serializer =>
      _$gBlockUserDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBlockUserData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBlockUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBlockUserData.serializer,
        json,
      );
}

abstract class GBlockUserData_response
    implements Built<GBlockUserData_response, GBlockUserData_responseBuilder> {
  GBlockUserData_response._();

  factory GBlockUserData_response(
          [Function(GBlockUserData_responseBuilder b) updates]) =
      _$GBlockUserData_response;

  static void _initializeBuilder(GBlockUserData_responseBuilder b) =>
      b..G__typename = 'blockUserResp';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get status;
  String? get message;
  String? get error;
  GBlockUserData_response_data? get data;
  static Serializer<GBlockUserData_response> get serializer =>
      _$gBlockUserDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBlockUserData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBlockUserData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBlockUserData_response.serializer,
        json,
      );
}

abstract class GBlockUserData_response_data
    implements
        Built<GBlockUserData_response_data,
            GBlockUserData_response_dataBuilder> {
  GBlockUserData_response_data._();

  factory GBlockUserData_response_data(
          [Function(GBlockUserData_response_dataBuilder b) updates]) =
      _$GBlockUserData_response_data;

  static void _initializeBuilder(GBlockUserData_response_dataBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get username;
  String get id;
  static Serializer<GBlockUserData_response_data> get serializer =>
      _$gBlockUserDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBlockUserData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBlockUserData_response_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBlockUserData_response_data.serializer,
        json,
      );
}
