// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_explore_page_gql/src/__generated__/explore_page_queries.ast.gql.dart'
    as _i5;
import 'package:arre_explore_page_gql/src/__generated__/explore_page_queries.data.gql.dart'
    as _i2;
import 'package:arre_explore_page_gql/src/__generated__/explore_page_queries.var.gql.dart'
    as _i3;
import 'package:arre_explore_page_gql/src/__generated__/serializers.gql.dart'
    as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'explore_page_queries.req.gql.g.dart';

abstract class GListTopCreatorsReq
    implements
        Built<GListTopCreatorsReq, GListTopCreatorsReqBuilder>,
        _i1.OperationRequest<_i2.GListTopCreatorsData,
            _i3.GListTopCreatorsVars> {
  GListTopCreatorsReq._();

  factory GListTopCreatorsReq(
      [Function(GListTopCreatorsReqBuilder b) updates]) = _$GListTopCreatorsReq;

  static void _initializeBuilder(GListTopCreatorsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ListTopCreators',
    )
    ..executeOnListen = true;
  @override
  _i3.GListTopCreatorsVars get vars;
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
  _i2.GListTopCreatorsData? Function(
    _i2.GListTopCreatorsData?,
    _i2.GListTopCreatorsData?,
  )? get updateResult;
  @override
  _i2.GListTopCreatorsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GListTopCreatorsData? parseData(Map<String, dynamic> json) =>
      _i2.GListTopCreatorsData.fromJson(json);
  static Serializer<GListTopCreatorsReq> get serializer =>
      _$gListTopCreatorsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListTopCreatorsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopCreatorsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListTopCreatorsReq.serializer,
        json,
      );
}

abstract class GListTopHashtagsReq
    implements
        Built<GListTopHashtagsReq, GListTopHashtagsReqBuilder>,
        _i1.OperationRequest<_i2.GListTopHashtagsData,
            _i3.GListTopHashtagsVars> {
  GListTopHashtagsReq._();

  factory GListTopHashtagsReq(
      [Function(GListTopHashtagsReqBuilder b) updates]) = _$GListTopHashtagsReq;

  static void _initializeBuilder(GListTopHashtagsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ListTopHashtags',
    )
    ..executeOnListen = true;
  @override
  _i3.GListTopHashtagsVars get vars;
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
  _i2.GListTopHashtagsData? Function(
    _i2.GListTopHashtagsData?,
    _i2.GListTopHashtagsData?,
  )? get updateResult;
  @override
  _i2.GListTopHashtagsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GListTopHashtagsData? parseData(Map<String, dynamic> json) =>
      _i2.GListTopHashtagsData.fromJson(json);
  static Serializer<GListTopHashtagsReq> get serializer =>
      _$gListTopHashtagsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListTopHashtagsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopHashtagsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListTopHashtagsReq.serializer,
        json,
      );
}

abstract class GListTopPostsByHashTagIdReq
    implements
        Built<GListTopPostsByHashTagIdReq, GListTopPostsByHashTagIdReqBuilder>,
        _i1.OperationRequest<_i2.GListTopPostsByHashTagIdData,
            _i3.GListTopPostsByHashTagIdVars> {
  GListTopPostsByHashTagIdReq._();

  factory GListTopPostsByHashTagIdReq(
          [Function(GListTopPostsByHashTagIdReqBuilder b) updates]) =
      _$GListTopPostsByHashTagIdReq;

  static void _initializeBuilder(GListTopPostsByHashTagIdReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ListTopPostsByHashTagId',
    )
    ..executeOnListen = true;
  @override
  _i3.GListTopPostsByHashTagIdVars get vars;
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
  _i2.GListTopPostsByHashTagIdData? Function(
    _i2.GListTopPostsByHashTagIdData?,
    _i2.GListTopPostsByHashTagIdData?,
  )? get updateResult;
  @override
  _i2.GListTopPostsByHashTagIdData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GListTopPostsByHashTagIdData? parseData(Map<String, dynamic> json) =>
      _i2.GListTopPostsByHashTagIdData.fromJson(json);
  static Serializer<GListTopPostsByHashTagIdReq> get serializer =>
      _$gListTopPostsByHashTagIdReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListTopPostsByHashTagIdReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopPostsByHashTagIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListTopPostsByHashTagIdReq.serializer,
        json,
      );
}
