// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_referral_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queries.var.gql.g.dart';

abstract class GUserInviteVars
    implements Built<GUserInviteVars, GUserInviteVarsBuilder> {
  GUserInviteVars._();

  factory GUserInviteVars([Function(GUserInviteVarsBuilder b) updates]) =
      _$GUserInviteVars;

  String? get userId;
  static Serializer<GUserInviteVars> get serializer =>
      _$gUserInviteVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserInviteVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserInviteVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserInviteVars.serializer,
        json,
      );
}

abstract class GInvitedUsersVars
    implements Built<GInvitedUsersVars, GInvitedUsersVarsBuilder> {
  GInvitedUsersVars._();

  factory GInvitedUsersVars([Function(GInvitedUsersVarsBuilder b) updates]) =
      _$GInvitedUsersVars;

  String? get userId;
  String? get after;
  static Serializer<GInvitedUsersVars> get serializer =>
      _$gInvitedUsersVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInvitedUsersVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInvitedUsersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInvitedUsersVars.serializer,
        json,
      );
}

abstract class GRequestMoreInvitesVars
    implements Built<GRequestMoreInvitesVars, GRequestMoreInvitesVarsBuilder> {
  GRequestMoreInvitesVars._();

  factory GRequestMoreInvitesVars(
          [Function(GRequestMoreInvitesVarsBuilder b) updates]) =
      _$GRequestMoreInvitesVars;

  static Serializer<GRequestMoreInvitesVars> get serializer =>
      _$gRequestMoreInvitesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRequestMoreInvitesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRequestMoreInvitesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRequestMoreInvitesVars.serializer,
        json,
      );
}
