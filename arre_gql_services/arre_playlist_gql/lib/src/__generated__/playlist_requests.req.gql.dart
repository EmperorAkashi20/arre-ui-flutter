// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_playlist_gql/src/__generated__/playlist_requests.ast.gql.dart'
    as _i5;
import 'package:arre_playlist_gql/src/__generated__/playlist_requests.data.gql.dart'
    as _i2;
import 'package:arre_playlist_gql/src/__generated__/playlist_requests.var.gql.dart'
    as _i3;
import 'package:arre_playlist_gql/src/__generated__/serializers.gql.dart'
    as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'playlist_requests.req.gql.g.dart';

abstract class GPlaylistDetailsReq
    implements
        Built<GPlaylistDetailsReq, GPlaylistDetailsReqBuilder>,
        _i1.OperationRequest<_i2.GPlaylistDetailsData,
            _i3.GPlaylistDetailsVars> {
  GPlaylistDetailsReq._();

  factory GPlaylistDetailsReq(
      [Function(GPlaylistDetailsReqBuilder b) updates]) = _$GPlaylistDetailsReq;

  static void _initializeBuilder(GPlaylistDetailsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'PlaylistDetails',
    )
    ..executeOnListen = true;
  @override
  _i3.GPlaylistDetailsVars get vars;
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
  _i2.GPlaylistDetailsData? Function(
    _i2.GPlaylistDetailsData?,
    _i2.GPlaylistDetailsData?,
  )? get updateResult;
  @override
  _i2.GPlaylistDetailsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPlaylistDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GPlaylistDetailsData.fromJson(json);
  static Serializer<GPlaylistDetailsReq> get serializer =>
      _$gPlaylistDetailsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPlaylistDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPlaylistDetailsReq.serializer,
        json,
      );
}

abstract class GPlaylistByUserIdReq
    implements
        Built<GPlaylistByUserIdReq, GPlaylistByUserIdReqBuilder>,
        _i1.OperationRequest<_i2.GPlaylistByUserIdData,
            _i3.GPlaylistByUserIdVars> {
  GPlaylistByUserIdReq._();

  factory GPlaylistByUserIdReq(
          [Function(GPlaylistByUserIdReqBuilder b) updates]) =
      _$GPlaylistByUserIdReq;

  static void _initializeBuilder(GPlaylistByUserIdReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'PlaylistByUserId',
    )
    ..executeOnListen = true;
  @override
  _i3.GPlaylistByUserIdVars get vars;
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
  _i2.GPlaylistByUserIdData? Function(
    _i2.GPlaylistByUserIdData?,
    _i2.GPlaylistByUserIdData?,
  )? get updateResult;
  @override
  _i2.GPlaylistByUserIdData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPlaylistByUserIdData? parseData(Map<String, dynamic> json) =>
      _i2.GPlaylistByUserIdData.fromJson(json);
  static Serializer<GPlaylistByUserIdReq> get serializer =>
      _$gPlaylistByUserIdReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPlaylistByUserIdReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistByUserIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPlaylistByUserIdReq.serializer,
        json,
      );
}

abstract class GCreatePlaylistReq
    implements
        Built<GCreatePlaylistReq, GCreatePlaylistReqBuilder>,
        _i1.OperationRequest<_i2.GCreatePlaylistData, _i3.GCreatePlaylistVars> {
  GCreatePlaylistReq._();

  factory GCreatePlaylistReq([Function(GCreatePlaylistReqBuilder b) updates]) =
      _$GCreatePlaylistReq;

  static void _initializeBuilder(GCreatePlaylistReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreatePlaylist',
    )
    ..executeOnListen = true;
  @override
  _i3.GCreatePlaylistVars get vars;
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
  _i2.GCreatePlaylistData? Function(
    _i2.GCreatePlaylistData?,
    _i2.GCreatePlaylistData?,
  )? get updateResult;
  @override
  _i2.GCreatePlaylistData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCreatePlaylistData? parseData(Map<String, dynamic> json) =>
      _i2.GCreatePlaylistData.fromJson(json);
  static Serializer<GCreatePlaylistReq> get serializer =>
      _$gCreatePlaylistReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreatePlaylistReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreatePlaylistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreatePlaylistReq.serializer,
        json,
      );
}

abstract class GEditPlaylistReq
    implements
        Built<GEditPlaylistReq, GEditPlaylistReqBuilder>,
        _i1.OperationRequest<_i2.GEditPlaylistData, _i3.GEditPlaylistVars> {
  GEditPlaylistReq._();

  factory GEditPlaylistReq([Function(GEditPlaylistReqBuilder b) updates]) =
      _$GEditPlaylistReq;

  static void _initializeBuilder(GEditPlaylistReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'EditPlaylist',
    )
    ..executeOnListen = true;
  @override
  _i3.GEditPlaylistVars get vars;
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
  _i2.GEditPlaylistData? Function(
    _i2.GEditPlaylistData?,
    _i2.GEditPlaylistData?,
  )? get updateResult;
  @override
  _i2.GEditPlaylistData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GEditPlaylistData? parseData(Map<String, dynamic> json) =>
      _i2.GEditPlaylistData.fromJson(json);
  static Serializer<GEditPlaylistReq> get serializer =>
      _$gEditPlaylistReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GEditPlaylistReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEditPlaylistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GEditPlaylistReq.serializer,
        json,
      );
}

abstract class GDeletePlaylistReq
    implements
        Built<GDeletePlaylistReq, GDeletePlaylistReqBuilder>,
        _i1.OperationRequest<_i2.GDeletePlaylistData, _i3.GDeletePlaylistVars> {
  GDeletePlaylistReq._();

  factory GDeletePlaylistReq([Function(GDeletePlaylistReqBuilder b) updates]) =
      _$GDeletePlaylistReq;

  static void _initializeBuilder(GDeletePlaylistReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeletePlaylist',
    )
    ..executeOnListen = true;
  @override
  _i3.GDeletePlaylistVars get vars;
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
  _i2.GDeletePlaylistData? Function(
    _i2.GDeletePlaylistData?,
    _i2.GDeletePlaylistData?,
  )? get updateResult;
  @override
  _i2.GDeletePlaylistData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDeletePlaylistData? parseData(Map<String, dynamic> json) =>
      _i2.GDeletePlaylistData.fromJson(json);
  static Serializer<GDeletePlaylistReq> get serializer =>
      _$gDeletePlaylistReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeletePlaylistReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeletePlaylistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeletePlaylistReq.serializer,
        json,
      );
}

abstract class GAddPostToPlaylistReq
    implements
        Built<GAddPostToPlaylistReq, GAddPostToPlaylistReqBuilder>,
        _i1.OperationRequest<_i2.GAddPostToPlaylistData,
            _i3.GAddPostToPlaylistVars> {
  GAddPostToPlaylistReq._();

  factory GAddPostToPlaylistReq(
          [Function(GAddPostToPlaylistReqBuilder b) updates]) =
      _$GAddPostToPlaylistReq;

  static void _initializeBuilder(GAddPostToPlaylistReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AddPostToPlaylist',
    )
    ..executeOnListen = true;
  @override
  _i3.GAddPostToPlaylistVars get vars;
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
  _i2.GAddPostToPlaylistData? Function(
    _i2.GAddPostToPlaylistData?,
    _i2.GAddPostToPlaylistData?,
  )? get updateResult;
  @override
  _i2.GAddPostToPlaylistData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GAddPostToPlaylistData? parseData(Map<String, dynamic> json) =>
      _i2.GAddPostToPlaylistData.fromJson(json);
  static Serializer<GAddPostToPlaylistReq> get serializer =>
      _$gAddPostToPlaylistReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAddPostToPlaylistReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddPostToPlaylistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAddPostToPlaylistReq.serializer,
        json,
      );
}

abstract class GSavePostToDefaultPlaylistReq
    implements
        Built<GSavePostToDefaultPlaylistReq,
            GSavePostToDefaultPlaylistReqBuilder>,
        _i1.OperationRequest<_i2.GSavePostToDefaultPlaylistData,
            _i3.GSavePostToDefaultPlaylistVars> {
  GSavePostToDefaultPlaylistReq._();

  factory GSavePostToDefaultPlaylistReq(
          [Function(GSavePostToDefaultPlaylistReqBuilder b) updates]) =
      _$GSavePostToDefaultPlaylistReq;

  static void _initializeBuilder(GSavePostToDefaultPlaylistReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SavePostToDefaultPlaylist',
    )
    ..executeOnListen = true;
  @override
  _i3.GSavePostToDefaultPlaylistVars get vars;
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
  _i2.GSavePostToDefaultPlaylistData? Function(
    _i2.GSavePostToDefaultPlaylistData?,
    _i2.GSavePostToDefaultPlaylistData?,
  )? get updateResult;
  @override
  _i2.GSavePostToDefaultPlaylistData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSavePostToDefaultPlaylistData? parseData(Map<String, dynamic> json) =>
      _i2.GSavePostToDefaultPlaylistData.fromJson(json);
  static Serializer<GSavePostToDefaultPlaylistReq> get serializer =>
      _$gSavePostToDefaultPlaylistReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSavePostToDefaultPlaylistReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSavePostToDefaultPlaylistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSavePostToDefaultPlaylistReq.serializer,
        json,
      );
}

abstract class GRemovePostFromPlaylistReq
    implements
        Built<GRemovePostFromPlaylistReq, GRemovePostFromPlaylistReqBuilder>,
        _i1.OperationRequest<_i2.GRemovePostFromPlaylistData,
            _i3.GRemovePostFromPlaylistVars> {
  GRemovePostFromPlaylistReq._();

  factory GRemovePostFromPlaylistReq(
          [Function(GRemovePostFromPlaylistReqBuilder b) updates]) =
      _$GRemovePostFromPlaylistReq;

  static void _initializeBuilder(GRemovePostFromPlaylistReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RemovePostFromPlaylist',
    )
    ..executeOnListen = true;
  @override
  _i3.GRemovePostFromPlaylistVars get vars;
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
  _i2.GRemovePostFromPlaylistData? Function(
    _i2.GRemovePostFromPlaylistData?,
    _i2.GRemovePostFromPlaylistData?,
  )? get updateResult;
  @override
  _i2.GRemovePostFromPlaylistData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GRemovePostFromPlaylistData? parseData(Map<String, dynamic> json) =>
      _i2.GRemovePostFromPlaylistData.fromJson(json);
  static Serializer<GRemovePostFromPlaylistReq> get serializer =>
      _$gRemovePostFromPlaylistReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRemovePostFromPlaylistReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRemovePostFromPlaylistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRemovePostFromPlaylistReq.serializer,
        json,
      );
}

abstract class GPlaylistReq
    implements
        Built<GPlaylistReq, GPlaylistReqBuilder>,
        _i1.FragmentRequest<_i2.GPlaylistData, _i3.GPlaylistVars> {
  GPlaylistReq._();

  factory GPlaylistReq([Function(GPlaylistReqBuilder b) updates]) =
      _$GPlaylistReq;

  static void _initializeBuilder(GPlaylistReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'Playlist';
  @override
  _i3.GPlaylistVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GPlaylistData? parseData(Map<String, dynamic> json) =>
      _i2.GPlaylistData.fromJson(json);
  static Serializer<GPlaylistReq> get serializer => _$gPlaylistReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPlaylistReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPlaylistReq.serializer,
        json,
      );
}
