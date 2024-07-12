// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:arre_notification_gql/src/__generated__/notification_queries.data.gql.dart'
    show
        GMarkNotificationAsSeenData,
        GMarkNotificationAsSeenData_response,
        GNotificationData,
        GNotificationData_response,
        GNotificationData_response_data,
        GSaveUserDeviceInformationData,
        GSaveUserDeviceInformationData_response;
import 'package:arre_notification_gql/src/__generated__/notification_queries.req.gql.dart'
    show
        GMarkNotificationAsSeenReq,
        GNotificationReq,
        GSaveUserDeviceInformationReq;
import 'package:arre_notification_gql/src/__generated__/notification_queries.var.gql.dart'
    show
        GMarkNotificationAsSeenVars,
        GNotificationVars,
        GSaveUserDeviceInformationVars;
import 'package:arre_notification_gql/src/__generated__/notification_schema.schema.gql.dart'
    show GinputDeviceInfo, GlastAppLandingSourceType, GschemaName;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GMarkNotificationAsSeenData,
  GMarkNotificationAsSeenData_response,
  GMarkNotificationAsSeenReq,
  GMarkNotificationAsSeenVars,
  GNotificationData,
  GNotificationData_response,
  GNotificationData_response_data,
  GNotificationReq,
  GNotificationVars,
  GSaveUserDeviceInformationData,
  GSaveUserDeviceInformationData_response,
  GSaveUserDeviceInformationReq,
  GSaveUserDeviceInformationVars,
  GinputDeviceInfo,
  GlastAppLandingSourceType,
  GschemaName,
])
final Serializers serializers = _serializersBuilder.build();
