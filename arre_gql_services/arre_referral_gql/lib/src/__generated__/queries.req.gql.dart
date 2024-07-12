// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_referral_gql/src/__generated__/queries.ast.gql.dart'
    as _i5;
import 'package:arre_referral_gql/src/__generated__/queries.data.gql.dart'
    as _i2;
import 'package:arre_referral_gql/src/__generated__/queries.var.gql.dart'
    as _i3;
import 'package:arre_referral_gql/src/__generated__/serializers.gql.dart'
    as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'queries.req.gql.g.dart';

abstract class GUserInviteReq
    implements
        Built<GUserInviteReq, GUserInviteReqBuilder>,
        _i1.OperationRequest<_i2.GUserInviteData, _i3.GUserInviteVars> {
  GUserInviteReq._();

  factory GUserInviteReq([Function(GUserInviteReqBuilder b) updates]) =
      _$GUserInviteReq;

  static void _initializeBuilder(GUserInviteReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UserInvite',
    )
    ..executeOnListen = true;
  @override
  _i3.GUserInviteVars get vars;
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
  _i2.GUserInviteData? Function(
    _i2.GUserInviteData?,
    _i2.GUserInviteData?,
  )? get updateResult;
  @override
  _i2.GUserInviteData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUserInviteData? parseData(Map<String, dynamic> json) =>
      _i2.GUserInviteData.fromJson(json);
  static Serializer<GUserInviteReq> get serializer =>
      _$gUserInviteReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserInviteReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserInviteReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserInviteReq.serializer,
        json,
      );
}

abstract class GInvitedUsersReq
    implements
        Built<GInvitedUsersReq, GInvitedUsersReqBuilder>,
        _i1.OperationRequest<_i2.GInvitedUsersData, _i3.GInvitedUsersVars> {
  GInvitedUsersReq._();

  factory GInvitedUsersReq([Function(GInvitedUsersReqBuilder b) updates]) =
      _$GInvitedUsersReq;

  static void _initializeBuilder(GInvitedUsersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'InvitedUsers',
    )
    ..executeOnListen = true;
  @override
  _i3.GInvitedUsersVars get vars;
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
  _i2.GInvitedUsersData? Function(
    _i2.GInvitedUsersData?,
    _i2.GInvitedUsersData?,
  )? get updateResult;
  @override
  _i2.GInvitedUsersData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GInvitedUsersData? parseData(Map<String, dynamic> json) =>
      _i2.GInvitedUsersData.fromJson(json);
  static Serializer<GInvitedUsersReq> get serializer =>
      _$gInvitedUsersReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GInvitedUsersReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInvitedUsersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GInvitedUsersReq.serializer,
        json,
      );
}

abstract class GRequestMoreInvitesReq
    implements
        Built<GRequestMoreInvitesReq, GRequestMoreInvitesReqBuilder>,
        _i1.OperationRequest<_i2.GRequestMoreInvitesData,
            _i3.GRequestMoreInvitesVars> {
  GRequestMoreInvitesReq._();

  factory GRequestMoreInvitesReq(
          [Function(GRequestMoreInvitesReqBuilder b) updates]) =
      _$GRequestMoreInvitesReq;

  static void _initializeBuilder(GRequestMoreInvitesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RequestMoreInvites',
    )
    ..executeOnListen = true;
  @override
  _i3.GRequestMoreInvitesVars get vars;
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
  _i2.GRequestMoreInvitesData? Function(
    _i2.GRequestMoreInvitesData?,
    _i2.GRequestMoreInvitesData?,
  )? get updateResult;
  @override
  _i2.GRequestMoreInvitesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GRequestMoreInvitesData? parseData(Map<String, dynamic> json) =>
      _i2.GRequestMoreInvitesData.fromJson(json);
  static Serializer<GRequestMoreInvitesReq> get serializer =>
      _$gRequestMoreInvitesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRequestMoreInvitesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRequestMoreInvitesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRequestMoreInvitesReq.serializer,
        json,
      );
}
