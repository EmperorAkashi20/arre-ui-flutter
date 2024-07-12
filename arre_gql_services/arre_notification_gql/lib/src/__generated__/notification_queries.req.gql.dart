// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_notification_gql/src/__generated__/notification_queries.ast.gql.dart'
    as _i5;
import 'package:arre_notification_gql/src/__generated__/notification_queries.data.gql.dart'
    as _i2;
import 'package:arre_notification_gql/src/__generated__/notification_queries.var.gql.dart'
    as _i3;
import 'package:arre_notification_gql/src/__generated__/serializers.gql.dart'
    as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'notification_queries.req.gql.g.dart';

abstract class GNotificationReq
    implements
        Built<GNotificationReq, GNotificationReqBuilder>,
        _i1.OperationRequest<_i2.GNotificationData, _i3.GNotificationVars> {
  GNotificationReq._();

  factory GNotificationReq([Function(GNotificationReqBuilder b) updates]) =
      _$GNotificationReq;

  static void _initializeBuilder(GNotificationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Notification',
    )
    ..executeOnListen = true;
  @override
  _i3.GNotificationVars get vars;
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
  _i2.GNotificationData? Function(
    _i2.GNotificationData?,
    _i2.GNotificationData?,
  )? get updateResult;
  @override
  _i2.GNotificationData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GNotificationData? parseData(Map<String, dynamic> json) =>
      _i2.GNotificationData.fromJson(json);
  static Serializer<GNotificationReq> get serializer =>
      _$gNotificationReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GNotificationReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GNotificationReq.serializer,
        json,
      );
}

abstract class GMarkNotificationAsSeenReq
    implements
        Built<GMarkNotificationAsSeenReq, GMarkNotificationAsSeenReqBuilder>,
        _i1.OperationRequest<_i2.GMarkNotificationAsSeenData,
            _i3.GMarkNotificationAsSeenVars> {
  GMarkNotificationAsSeenReq._();

  factory GMarkNotificationAsSeenReq(
          [Function(GMarkNotificationAsSeenReqBuilder b) updates]) =
      _$GMarkNotificationAsSeenReq;

  static void _initializeBuilder(GMarkNotificationAsSeenReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MarkNotificationAsSeen',
    )
    ..executeOnListen = true;
  @override
  _i3.GMarkNotificationAsSeenVars get vars;
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
  _i2.GMarkNotificationAsSeenData? Function(
    _i2.GMarkNotificationAsSeenData?,
    _i2.GMarkNotificationAsSeenData?,
  )? get updateResult;
  @override
  _i2.GMarkNotificationAsSeenData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMarkNotificationAsSeenData? parseData(Map<String, dynamic> json) =>
      _i2.GMarkNotificationAsSeenData.fromJson(json);
  static Serializer<GMarkNotificationAsSeenReq> get serializer =>
      _$gMarkNotificationAsSeenReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMarkNotificationAsSeenReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkNotificationAsSeenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMarkNotificationAsSeenReq.serializer,
        json,
      );
}

abstract class GSaveUserDeviceInformationReq
    implements
        Built<GSaveUserDeviceInformationReq,
            GSaveUserDeviceInformationReqBuilder>,
        _i1.OperationRequest<_i2.GSaveUserDeviceInformationData,
            _i3.GSaveUserDeviceInformationVars> {
  GSaveUserDeviceInformationReq._();

  factory GSaveUserDeviceInformationReq(
          [Function(GSaveUserDeviceInformationReqBuilder b) updates]) =
      _$GSaveUserDeviceInformationReq;

  static void _initializeBuilder(GSaveUserDeviceInformationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SaveUserDeviceInformation',
    )
    ..executeOnListen = true;
  @override
  _i3.GSaveUserDeviceInformationVars get vars;
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
  _i2.GSaveUserDeviceInformationData? Function(
    _i2.GSaveUserDeviceInformationData?,
    _i2.GSaveUserDeviceInformationData?,
  )? get updateResult;
  @override
  _i2.GSaveUserDeviceInformationData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSaveUserDeviceInformationData? parseData(Map<String, dynamic> json) =>
      _i2.GSaveUserDeviceInformationData.fromJson(json);
  static Serializer<GSaveUserDeviceInformationReq> get serializer =>
      _$gSaveUserDeviceInformationReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSaveUserDeviceInformationReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSaveUserDeviceInformationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSaveUserDeviceInformationReq.serializer,
        json,
      );
}
