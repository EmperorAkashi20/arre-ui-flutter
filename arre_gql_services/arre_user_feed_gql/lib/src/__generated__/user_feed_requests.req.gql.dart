// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_user_feed_gql/src/__generated__/serializers.gql.dart'
    as _i6;
import 'package:arre_user_feed_gql/src/__generated__/user_feed_requests.ast.gql.dart'
    as _i5;
import 'package:arre_user_feed_gql/src/__generated__/user_feed_requests.data.gql.dart'
    as _i2;
import 'package:arre_user_feed_gql/src/__generated__/user_feed_requests.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'user_feed_requests.req.gql.g.dart';

abstract class GPopularFeedsReq
    implements
        Built<GPopularFeedsReq, GPopularFeedsReqBuilder>,
        _i1.OperationRequest<_i2.GPopularFeedsData, _i3.GPopularFeedsVars> {
  GPopularFeedsReq._();

  factory GPopularFeedsReq([Function(GPopularFeedsReqBuilder b) updates]) =
      _$GPopularFeedsReq;

  static void _initializeBuilder(GPopularFeedsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'PopularFeeds',
    )
    ..executeOnListen = true;
  @override
  _i3.GPopularFeedsVars get vars;
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
  _i2.GPopularFeedsData? Function(
    _i2.GPopularFeedsData?,
    _i2.GPopularFeedsData?,
  )? get updateResult;
  @override
  _i2.GPopularFeedsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPopularFeedsData? parseData(Map<String, dynamic> json) =>
      _i2.GPopularFeedsData.fromJson(json);
  static Serializer<GPopularFeedsReq> get serializer =>
      _$gPopularFeedsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPopularFeedsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPopularFeedsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPopularFeedsReq.serializer,
        json,
      );
}

abstract class GUserPostRelationsReq
    implements
        Built<GUserPostRelationsReq, GUserPostRelationsReqBuilder>,
        _i1.OperationRequest<_i2.GUserPostRelationsData,
            _i3.GUserPostRelationsVars> {
  GUserPostRelationsReq._();

  factory GUserPostRelationsReq(
          [Function(GUserPostRelationsReqBuilder b) updates]) =
      _$GUserPostRelationsReq;

  static void _initializeBuilder(GUserPostRelationsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UserPostRelations',
    )
    ..executeOnListen = true;
  @override
  _i3.GUserPostRelationsVars get vars;
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
  _i2.GUserPostRelationsData? Function(
    _i2.GUserPostRelationsData?,
    _i2.GUserPostRelationsData?,
  )? get updateResult;
  @override
  _i2.GUserPostRelationsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUserPostRelationsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserPostRelationsData.fromJson(json);
  static Serializer<GUserPostRelationsReq> get serializer =>
      _$gUserPostRelationsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserPostRelationsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserPostRelationsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserPostRelationsReq.serializer,
        json,
      );
}
