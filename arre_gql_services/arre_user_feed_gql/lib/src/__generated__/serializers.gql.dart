// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:arre_user_feed_gql/src/__generated__/user_feed_requests.data.gql.dart'
    show
        GPopularFeedsData,
        GPopularFeedsData_response,
        GUserPostRelationsData,
        GUserPostRelationsData_response,
        GUserPostRelationsData_response_data;
import 'package:arre_user_feed_gql/src/__generated__/user_feed_requests.req.gql.dart'
    show GPopularFeedsReq, GUserPostRelationsReq;
import 'package:arre_user_feed_gql/src/__generated__/user_feed_requests.var.gql.dart'
    show GPopularFeedsVars, GUserPostRelationsVars;
import 'package:arre_user_feed_gql/src/__generated__/user_feed_schema.schema.gql.dart'
    show Gstatus;
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
  GPopularFeedsData,
  GPopularFeedsData_response,
  GPopularFeedsReq,
  GPopularFeedsVars,
  GUserPostRelationsData,
  GUserPostRelationsData_response,
  GUserPostRelationsData_response_data,
  GUserPostRelationsReq,
  GUserPostRelationsVars,
  Gstatus,
])
final Serializers serializers = _serializersBuilder.build();
