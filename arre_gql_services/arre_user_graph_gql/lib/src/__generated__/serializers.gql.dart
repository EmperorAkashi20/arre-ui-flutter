// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:arre_user_graph_gql/src/__generated__/user_graph_requests.data.gql.dart'
    show
        GFollowUserData,
        GFollowUserData_response,
        GGetIsFollowingUserData,
        GGetIsFollowingUserData_response,
        GGetIsFollowingUserData_response_data,
        GGetListOfFollowersPaginatedData,
        GGetListOfFollowersPaginatedData_response,
        GGetListOfFollowersPaginatedData_response_data,
        GGetListOfFollowingPaginatedData,
        GGetListOfFollowingPaginatedData_response,
        GGetListOfFollowingPaginatedData_response_data,
        GGetUserFollowCountsData,
        GGetUserFollowCountsData_response,
        GGetUserFollowCountsData_response_data,
        GUnFollowUserData,
        GUnFollowUserData_response,
        GUserFollowCountsData,
        GUserFollowRelationData;
import 'package:arre_user_graph_gql/src/__generated__/user_graph_requests.req.gql.dart'
    show
        GFollowUserReq,
        GGetIsFollowingUserReq,
        GGetListOfFollowersPaginatedReq,
        GGetListOfFollowingPaginatedReq,
        GGetUserFollowCountsReq,
        GUnFollowUserReq,
        GUserFollowCountsReq,
        GUserFollowRelationReq;
import 'package:arre_user_graph_gql/src/__generated__/user_graph_requests.var.gql.dart'
    show
        GFollowUserVars,
        GGetIsFollowingUserVars,
        GGetListOfFollowersPaginatedVars,
        GGetListOfFollowingPaginatedVars,
        GGetUserFollowCountsVars,
        GUnFollowUserVars,
        GUserFollowCountsVars,
        GUserFollowRelationVars;
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
  GFollowUserData,
  GFollowUserData_response,
  GFollowUserReq,
  GFollowUserVars,
  GGetIsFollowingUserData,
  GGetIsFollowingUserData_response,
  GGetIsFollowingUserData_response_data,
  GGetIsFollowingUserReq,
  GGetIsFollowingUserVars,
  GGetListOfFollowersPaginatedData,
  GGetListOfFollowersPaginatedData_response,
  GGetListOfFollowersPaginatedData_response_data,
  GGetListOfFollowersPaginatedReq,
  GGetListOfFollowersPaginatedVars,
  GGetListOfFollowingPaginatedData,
  GGetListOfFollowingPaginatedData_response,
  GGetListOfFollowingPaginatedData_response_data,
  GGetListOfFollowingPaginatedReq,
  GGetListOfFollowingPaginatedVars,
  GGetUserFollowCountsData,
  GGetUserFollowCountsData_response,
  GGetUserFollowCountsData_response_data,
  GGetUserFollowCountsReq,
  GGetUserFollowCountsVars,
  GUnFollowUserData,
  GUnFollowUserData_response,
  GUnFollowUserReq,
  GUnFollowUserVars,
  GUserFollowCountsData,
  GUserFollowCountsReq,
  GUserFollowCountsVars,
  GUserFollowRelationData,
  GUserFollowRelationReq,
  GUserFollowRelationVars,
])
final Serializers serializers = _serializersBuilder.build();
