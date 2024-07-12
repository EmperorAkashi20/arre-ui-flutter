// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_base_gql/src/__generated__/queries.ast.gql.dart' as _i5;
import 'package:arre_base_gql/src/__generated__/queries.data.gql.dart' as _i2;
import 'package:arre_base_gql/src/__generated__/queries.var.gql.dart' as _i3;
import 'package:arre_base_gql/src/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'queries.req.gql.g.dart';

abstract class GTrendingHashtagsReq
    implements
        Built<GTrendingHashtagsReq, GTrendingHashtagsReqBuilder>,
        _i1.OperationRequest<_i2.GTrendingHashtagsData,
            _i3.GTrendingHashtagsVars> {
  GTrendingHashtagsReq._();

  factory GTrendingHashtagsReq(
          [Function(GTrendingHashtagsReqBuilder b) updates]) =
      _$GTrendingHashtagsReq;

  static void _initializeBuilder(GTrendingHashtagsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'TrendingHashtags',
    )
    ..executeOnListen = true;
  @override
  _i3.GTrendingHashtagsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GTrendingHashtagsData? Function(
    _i2.GTrendingHashtagsData?,
    _i2.GTrendingHashtagsData?,
  )? get updateResult;
  @override
  _i2.GTrendingHashtagsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GTrendingHashtagsData? parseData(Map<String, dynamic> json) =>
      _i2.GTrendingHashtagsData.fromJson(json);
  static Serializer<GTrendingHashtagsReq> get serializer =>
      _$gTrendingHashtagsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GTrendingHashtagsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTrendingHashtagsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GTrendingHashtagsReq.serializer,
        json,
      );
}

abstract class GDeletePostReq
    implements
        Built<GDeletePostReq, GDeletePostReqBuilder>,
        _i1.OperationRequest<_i2.GDeletePostData, _i3.GDeletePostVars> {
  GDeletePostReq._();

  factory GDeletePostReq([Function(GDeletePostReqBuilder b) updates]) =
      _$GDeletePostReq;

  static void _initializeBuilder(GDeletePostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeletePost',
    )
    ..executeOnListen = true;
  @override
  _i3.GDeletePostVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GDeletePostData? Function(
    _i2.GDeletePostData?,
    _i2.GDeletePostData?,
  )? get updateResult;
  @override
  _i2.GDeletePostData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDeletePostData? parseData(Map<String, dynamic> json) =>
      _i2.GDeletePostData.fromJson(json);
  static Serializer<GDeletePostReq> get serializer =>
      _$gDeletePostReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeletePostReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeletePostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeletePostReq.serializer,
        json,
      );
}

abstract class GLikePostReq
    implements
        Built<GLikePostReq, GLikePostReqBuilder>,
        _i1.OperationRequest<_i2.GLikePostData, _i3.GLikePostVars> {
  GLikePostReq._();

  factory GLikePostReq([Function(GLikePostReqBuilder b) updates]) =
      _$GLikePostReq;

  static void _initializeBuilder(GLikePostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'LikePost',
    )
    ..executeOnListen = true;
  @override
  _i3.GLikePostVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GLikePostData? Function(
    _i2.GLikePostData?,
    _i2.GLikePostData?,
  )? get updateResult;
  @override
  _i2.GLikePostData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GLikePostData? parseData(Map<String, dynamic> json) =>
      _i2.GLikePostData.fromJson(json);
  static Serializer<GLikePostReq> get serializer => _$gLikePostReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLikePostReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLikePostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLikePostReq.serializer,
        json,
      );
}

abstract class GUnlikePostReq
    implements
        Built<GUnlikePostReq, GUnlikePostReqBuilder>,
        _i1.OperationRequest<_i2.GUnlikePostData, _i3.GUnlikePostVars> {
  GUnlikePostReq._();

  factory GUnlikePostReq([Function(GUnlikePostReqBuilder b) updates]) =
      _$GUnlikePostReq;

  static void _initializeBuilder(GUnlikePostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UnlikePost',
    )
    ..executeOnListen = true;
  @override
  _i3.GUnlikePostVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GUnlikePostData? Function(
    _i2.GUnlikePostData?,
    _i2.GUnlikePostData?,
  )? get updateResult;
  @override
  _i2.GUnlikePostData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUnlikePostData? parseData(Map<String, dynamic> json) =>
      _i2.GUnlikePostData.fromJson(json);
  static Serializer<GUnlikePostReq> get serializer =>
      _$gUnlikePostReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUnlikePostReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnlikePostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUnlikePostReq.serializer,
        json,
      );
}

abstract class GPostCommentsRepliesReq
    implements
        Built<GPostCommentsRepliesReq, GPostCommentsRepliesReqBuilder>,
        _i1.OperationRequest<_i2.GPostCommentsRepliesData,
            _i3.GPostCommentsRepliesVars> {
  GPostCommentsRepliesReq._();

  factory GPostCommentsRepliesReq(
          [Function(GPostCommentsRepliesReqBuilder b) updates]) =
      _$GPostCommentsRepliesReq;

  static void _initializeBuilder(GPostCommentsRepliesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'PostCommentsReplies',
    )
    ..executeOnListen = true;
  @override
  _i3.GPostCommentsRepliesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GPostCommentsRepliesData? Function(
    _i2.GPostCommentsRepliesData?,
    _i2.GPostCommentsRepliesData?,
  )? get updateResult;
  @override
  _i2.GPostCommentsRepliesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPostCommentsRepliesData? parseData(Map<String, dynamic> json) =>
      _i2.GPostCommentsRepliesData.fromJson(json);
  static Serializer<GPostCommentsRepliesReq> get serializer =>
      _$gPostCommentsRepliesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPostCommentsRepliesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPostCommentsRepliesReq.serializer,
        json,
      );
}

abstract class GPostVoicepodCommentReq
    implements
        Built<GPostVoicepodCommentReq, GPostVoicepodCommentReqBuilder>,
        _i1.OperationRequest<_i2.GPostVoicepodCommentData,
            _i3.GPostVoicepodCommentVars> {
  GPostVoicepodCommentReq._();

  factory GPostVoicepodCommentReq(
          [Function(GPostVoicepodCommentReqBuilder b) updates]) =
      _$GPostVoicepodCommentReq;

  static void _initializeBuilder(GPostVoicepodCommentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'PostVoicepodComment',
    )
    ..executeOnListen = true;
  @override
  _i3.GPostVoicepodCommentVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GPostVoicepodCommentData? Function(
    _i2.GPostVoicepodCommentData?,
    _i2.GPostVoicepodCommentData?,
  )? get updateResult;
  @override
  _i2.GPostVoicepodCommentData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPostVoicepodCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GPostVoicepodCommentData.fromJson(json);
  static Serializer<GPostVoicepodCommentReq> get serializer =>
      _$gPostVoicepodCommentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPostVoicepodCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostVoicepodCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPostVoicepodCommentReq.serializer,
        json,
      );
}

abstract class GLikePostCommentReq
    implements
        Built<GLikePostCommentReq, GLikePostCommentReqBuilder>,
        _i1.OperationRequest<_i2.GLikePostCommentData,
            _i3.GLikePostCommentVars> {
  GLikePostCommentReq._();

  factory GLikePostCommentReq(
      [Function(GLikePostCommentReqBuilder b) updates]) = _$GLikePostCommentReq;

  static void _initializeBuilder(GLikePostCommentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'LikePostComment',
    )
    ..executeOnListen = true;
  @override
  _i3.GLikePostCommentVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GLikePostCommentData? Function(
    _i2.GLikePostCommentData?,
    _i2.GLikePostCommentData?,
  )? get updateResult;
  @override
  _i2.GLikePostCommentData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GLikePostCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GLikePostCommentData.fromJson(json);
  static Serializer<GLikePostCommentReq> get serializer =>
      _$gLikePostCommentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLikePostCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLikePostCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLikePostCommentReq.serializer,
        json,
      );
}

abstract class GUnlikePostCommentReq
    implements
        Built<GUnlikePostCommentReq, GUnlikePostCommentReqBuilder>,
        _i1.OperationRequest<_i2.GUnlikePostCommentData,
            _i3.GUnlikePostCommentVars> {
  GUnlikePostCommentReq._();

  factory GUnlikePostCommentReq(
          [Function(GUnlikePostCommentReqBuilder b) updates]) =
      _$GUnlikePostCommentReq;

  static void _initializeBuilder(GUnlikePostCommentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UnlikePostComment',
    )
    ..executeOnListen = true;
  @override
  _i3.GUnlikePostCommentVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GUnlikePostCommentData? Function(
    _i2.GUnlikePostCommentData?,
    _i2.GUnlikePostCommentData?,
  )? get updateResult;
  @override
  _i2.GUnlikePostCommentData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUnlikePostCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GUnlikePostCommentData.fromJson(json);
  static Serializer<GUnlikePostCommentReq> get serializer =>
      _$gUnlikePostCommentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUnlikePostCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnlikePostCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUnlikePostCommentReq.serializer,
        json,
      );
}

abstract class GBlockUserReq
    implements
        Built<GBlockUserReq, GBlockUserReqBuilder>,
        _i1.OperationRequest<_i2.GBlockUserData, _i3.GBlockUserVars> {
  GBlockUserReq._();

  factory GBlockUserReq([Function(GBlockUserReqBuilder b) updates]) =
      _$GBlockUserReq;

  static void _initializeBuilder(GBlockUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'BlockUser',
    )
    ..executeOnListen = true;
  @override
  _i3.GBlockUserVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GBlockUserData? Function(
    _i2.GBlockUserData?,
    _i2.GBlockUserData?,
  )? get updateResult;
  @override
  _i2.GBlockUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GBlockUserData? parseData(Map<String, dynamic> json) =>
      _i2.GBlockUserData.fromJson(json);
  static Serializer<GBlockUserReq> get serializer => _$gBlockUserReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GBlockUserReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBlockUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GBlockUserReq.serializer,
        json,
      );
}
