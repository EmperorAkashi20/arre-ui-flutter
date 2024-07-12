// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:arre_referral_gql/src/__generated__/queries.data.gql.dart'
    show
        GInvitedUsersData,
        GInvitedUsersData_response,
        GInvitedUsersData_response_data,
        GRequestMoreInvitesData,
        GRequestMoreInvitesData_response,
        GUserInviteData,
        GUserInviteData_response,
        GUserInviteData_response_data;
import 'package:arre_referral_gql/src/__generated__/queries.req.gql.dart'
    show GInvitedUsersReq, GRequestMoreInvitesReq, GUserInviteReq;
import 'package:arre_referral_gql/src/__generated__/queries.var.gql.dart'
    show GInvitedUsersVars, GRequestMoreInvitesVars, GUserInviteVars;
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
  GInvitedUsersData,
  GInvitedUsersData_response,
  GInvitedUsersData_response_data,
  GInvitedUsersReq,
  GInvitedUsersVars,
  GRequestMoreInvitesData,
  GRequestMoreInvitesData_response,
  GRequestMoreInvitesReq,
  GRequestMoreInvitesVars,
  GUserInviteData,
  GUserInviteData_response,
  GUserInviteData_response_data,
  GUserInviteReq,
  GUserInviteVars,
])
final Serializers serializers = _serializersBuilder.build();
