// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_user_graph_gql/src/__generated__/serializers.gql.dart'
    as _i6;
import 'package:arre_user_graph_gql/src/__generated__/user_graph_requests.ast.gql.dart'
    as _i5;
import 'package:arre_user_graph_gql/src/__generated__/user_graph_requests.data.gql.dart'
    as _i2;
import 'package:arre_user_graph_gql/src/__generated__/user_graph_requests.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'user_graph_requests.req.gql.g.dart';

abstract class GGetIsFollowingUserReq
    implements
        Built<GGetIsFollowingUserReq, GGetIsFollowingUserReqBuilder>,
        _i1.OperationRequest<_i2.GGetIsFollowingUserData,
            _i3.GGetIsFollowingUserVars> {
  GGetIsFollowingUserReq._();

  factory GGetIsFollowingUserReq(
          [Function(GGetIsFollowingUserReqBuilder b) updates]) =
      _$GGetIsFollowingUserReq;

  static void _initializeBuilder(GGetIsFollowingUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetIsFollowingUser',
    )
    ..executeOnListen = true;
  @override
  _i3.GGetIsFollowingUserVars get vars;
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
  _i2.GGetIsFollowingUserData? Function(
    _i2.GGetIsFollowingUserData?,
    _i2.GGetIsFollowingUserData?,
  )? get updateResult;
  @override
  _i2.GGetIsFollowingUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetIsFollowingUserData? parseData(Map<String, dynamic> json) =>
      _i2.GGetIsFollowingUserData.fromJson(json);
  static Serializer<GGetIsFollowingUserReq> get serializer =>
      _$gGetIsFollowingUserReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetIsFollowingUserReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetIsFollowingUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetIsFollowingUserReq.serializer,
        json,
      );
}

abstract class GGetListOfFollowersPaginatedReq
    implements
        Built<GGetListOfFollowersPaginatedReq,
            GGetListOfFollowersPaginatedReqBuilder>,
        _i1.OperationRequest<_i2.GGetListOfFollowersPaginatedData,
            _i3.GGetListOfFollowersPaginatedVars> {
  GGetListOfFollowersPaginatedReq._();

  factory GGetListOfFollowersPaginatedReq(
          [Function(GGetListOfFollowersPaginatedReqBuilder b) updates]) =
      _$GGetListOfFollowersPaginatedReq;

  static void _initializeBuilder(GGetListOfFollowersPaginatedReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetListOfFollowersPaginated',
    )
    ..executeOnListen = true;
  @override
  _i3.GGetListOfFollowersPaginatedVars get vars;
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
  _i2.GGetListOfFollowersPaginatedData? Function(
    _i2.GGetListOfFollowersPaginatedData?,
    _i2.GGetListOfFollowersPaginatedData?,
  )? get updateResult;
  @override
  _i2.GGetListOfFollowersPaginatedData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetListOfFollowersPaginatedData? parseData(Map<String, dynamic> json) =>
      _i2.GGetListOfFollowersPaginatedData.fromJson(json);
  static Serializer<GGetListOfFollowersPaginatedReq> get serializer =>
      _$gGetListOfFollowersPaginatedReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetListOfFollowersPaginatedReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowersPaginatedReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetListOfFollowersPaginatedReq.serializer,
        json,
      );
}

abstract class GGetListOfFollowingPaginatedReq
    implements
        Built<GGetListOfFollowingPaginatedReq,
            GGetListOfFollowingPaginatedReqBuilder>,
        _i1.OperationRequest<_i2.GGetListOfFollowingPaginatedData,
            _i3.GGetListOfFollowingPaginatedVars> {
  GGetListOfFollowingPaginatedReq._();

  factory GGetListOfFollowingPaginatedReq(
          [Function(GGetListOfFollowingPaginatedReqBuilder b) updates]) =
      _$GGetListOfFollowingPaginatedReq;

  static void _initializeBuilder(GGetListOfFollowingPaginatedReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetListOfFollowingPaginated',
    )
    ..executeOnListen = true;
  @override
  _i3.GGetListOfFollowingPaginatedVars get vars;
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
  _i2.GGetListOfFollowingPaginatedData? Function(
    _i2.GGetListOfFollowingPaginatedData?,
    _i2.GGetListOfFollowingPaginatedData?,
  )? get updateResult;
  @override
  _i2.GGetListOfFollowingPaginatedData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetListOfFollowingPaginatedData? parseData(Map<String, dynamic> json) =>
      _i2.GGetListOfFollowingPaginatedData.fromJson(json);
  static Serializer<GGetListOfFollowingPaginatedReq> get serializer =>
      _$gGetListOfFollowingPaginatedReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetListOfFollowingPaginatedReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowingPaginatedReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetListOfFollowingPaginatedReq.serializer,
        json,
      );
}

abstract class GGetUserFollowCountsReq
    implements
        Built<GGetUserFollowCountsReq, GGetUserFollowCountsReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserFollowCountsData,
            _i3.GGetUserFollowCountsVars> {
  GGetUserFollowCountsReq._();

  factory GGetUserFollowCountsReq(
          [Function(GGetUserFollowCountsReqBuilder b) updates]) =
      _$GGetUserFollowCountsReq;

  static void _initializeBuilder(GGetUserFollowCountsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetUserFollowCounts',
    )
    ..executeOnListen = true;
  @override
  _i3.GGetUserFollowCountsVars get vars;
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
  _i2.GGetUserFollowCountsData? Function(
    _i2.GGetUserFollowCountsData?,
    _i2.GGetUserFollowCountsData?,
  )? get updateResult;
  @override
  _i2.GGetUserFollowCountsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetUserFollowCountsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserFollowCountsData.fromJson(json);
  static Serializer<GGetUserFollowCountsReq> get serializer =>
      _$gGetUserFollowCountsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetUserFollowCountsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserFollowCountsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetUserFollowCountsReq.serializer,
        json,
      );
}

abstract class GFollowUserReq
    implements
        Built<GFollowUserReq, GFollowUserReqBuilder>,
        _i1.OperationRequest<_i2.GFollowUserData, _i3.GFollowUserVars> {
  GFollowUserReq._();

  factory GFollowUserReq([Function(GFollowUserReqBuilder b) updates]) =
      _$GFollowUserReq;

  static void _initializeBuilder(GFollowUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'FollowUser',
    )
    ..executeOnListen = true;
  @override
  _i3.GFollowUserVars get vars;
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
  _i2.GFollowUserData? Function(
    _i2.GFollowUserData?,
    _i2.GFollowUserData?,
  )? get updateResult;
  @override
  _i2.GFollowUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GFollowUserData? parseData(Map<String, dynamic> json) =>
      _i2.GFollowUserData.fromJson(json);
  static Serializer<GFollowUserReq> get serializer =>
      _$gFollowUserReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GFollowUserReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFollowUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GFollowUserReq.serializer,
        json,
      );
}

abstract class GUnFollowUserReq
    implements
        Built<GUnFollowUserReq, GUnFollowUserReqBuilder>,
        _i1.OperationRequest<_i2.GUnFollowUserData, _i3.GUnFollowUserVars> {
  GUnFollowUserReq._();

  factory GUnFollowUserReq([Function(GUnFollowUserReqBuilder b) updates]) =
      _$GUnFollowUserReq;

  static void _initializeBuilder(GUnFollowUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UnFollowUser',
    )
    ..executeOnListen = true;
  @override
  _i3.GUnFollowUserVars get vars;
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
  _i2.GUnFollowUserData? Function(
    _i2.GUnFollowUserData?,
    _i2.GUnFollowUserData?,
  )? get updateResult;
  @override
  _i2.GUnFollowUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUnFollowUserData? parseData(Map<String, dynamic> json) =>
      _i2.GUnFollowUserData.fromJson(json);
  static Serializer<GUnFollowUserReq> get serializer =>
      _$gUnFollowUserReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUnFollowUserReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnFollowUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUnFollowUserReq.serializer,
        json,
      );
}

abstract class GUserFollowRelationReq
    implements
        Built<GUserFollowRelationReq, GUserFollowRelationReqBuilder>,
        _i1.FragmentRequest<_i2.GUserFollowRelationData,
            _i3.GUserFollowRelationVars> {
  GUserFollowRelationReq._();

  factory GUserFollowRelationReq(
          [Function(GUserFollowRelationReqBuilder b) updates]) =
      _$GUserFollowRelationReq;

  static void _initializeBuilder(GUserFollowRelationReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'UserFollowRelation';
  @override
  _i3.GUserFollowRelationVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserFollowRelationData? parseData(Map<String, dynamic> json) =>
      _i2.GUserFollowRelationData.fromJson(json);
  static Serializer<GUserFollowRelationReq> get serializer =>
      _$gUserFollowRelationReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserFollowRelationReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserFollowRelationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserFollowRelationReq.serializer,
        json,
      );
}

abstract class GUserFollowCountsReq
    implements
        Built<GUserFollowCountsReq, GUserFollowCountsReqBuilder>,
        _i1.FragmentRequest<_i2.GUserFollowCountsData,
            _i3.GUserFollowCountsVars> {
  GUserFollowCountsReq._();

  factory GUserFollowCountsReq(
          [Function(GUserFollowCountsReqBuilder b) updates]) =
      _$GUserFollowCountsReq;

  static void _initializeBuilder(GUserFollowCountsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'UserFollowCounts';
  @override
  _i3.GUserFollowCountsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserFollowCountsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserFollowCountsData.fromJson(json);
  static Serializer<GUserFollowCountsReq> get serializer =>
      _$gUserFollowCountsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserFollowCountsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserFollowCountsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserFollowCountsReq.serializer,
        json,
      );
}
