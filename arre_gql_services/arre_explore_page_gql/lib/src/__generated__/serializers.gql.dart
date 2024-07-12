// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:arre_explore_page_gql/src/__generated__/explore_page_queries.data.gql.dart'
    show
        GListTopCreatorsData,
        GListTopCreatorsData_response,
        GListTopCreatorsData_response_data,
        GListTopHashtagsData,
        GListTopHashtagsData_response,
        GListTopHashtagsData_response_data,
        GListTopPostsByHashTagIdData,
        GListTopPostsByHashTagIdData_response,
        GListTopPostsByHashTagIdData_response_data;
import 'package:arre_explore_page_gql/src/__generated__/explore_page_queries.req.gql.dart'
    show GListTopCreatorsReq, GListTopHashtagsReq, GListTopPostsByHashTagIdReq;
import 'package:arre_explore_page_gql/src/__generated__/explore_page_queries.var.gql.dart'
    show
        GListTopCreatorsVars,
        GListTopHashtagsVars,
        GListTopPostsByHashTagIdVars;
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
  GListTopCreatorsData,
  GListTopCreatorsData_response,
  GListTopCreatorsData_response_data,
  GListTopCreatorsReq,
  GListTopCreatorsVars,
  GListTopHashtagsData,
  GListTopHashtagsData_response,
  GListTopHashtagsData_response_data,
  GListTopHashtagsReq,
  GListTopHashtagsVars,
  GListTopPostsByHashTagIdData,
  GListTopPostsByHashTagIdData_response,
  GListTopPostsByHashTagIdData_response_data,
  GListTopPostsByHashTagIdReq,
  GListTopPostsByHashTagIdVars,
])
final Serializers serializers = _serializersBuilder.build();
