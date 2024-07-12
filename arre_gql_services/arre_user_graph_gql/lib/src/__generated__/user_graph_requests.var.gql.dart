// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_user_graph_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_graph_requests.var.gql.g.dart';

abstract class GGetIsFollowingUserVars
    implements Built<GGetIsFollowingUserVars, GGetIsFollowingUserVarsBuilder> {
  GGetIsFollowingUserVars._();

  factory GGetIsFollowingUserVars(
          [Function(GGetIsFollowingUserVarsBuilder b) updates]) =
      _$GGetIsFollowingUserVars;

  String get userId;
  static Serializer<GGetIsFollowingUserVars> get serializer =>
      _$gGetIsFollowingUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetIsFollowingUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetIsFollowingUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetIsFollowingUserVars.serializer,
        json,
      );
}

abstract class GGetListOfFollowersPaginatedVars
    implements
        Built<GGetListOfFollowersPaginatedVars,
            GGetListOfFollowersPaginatedVarsBuilder> {
  GGetListOfFollowersPaginatedVars._();

  factory GGetListOfFollowersPaginatedVars(
          [Function(GGetListOfFollowersPaginatedVarsBuilder b) updates]) =
      _$GGetListOfFollowersPaginatedVars;

  String get userId;
  String? get after;
  static Serializer<GGetListOfFollowersPaginatedVars> get serializer =>
      _$gGetListOfFollowersPaginatedVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetListOfFollowersPaginatedVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowersPaginatedVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetListOfFollowersPaginatedVars.serializer,
        json,
      );
}

abstract class GGetListOfFollowingPaginatedVars
    implements
        Built<GGetListOfFollowingPaginatedVars,
            GGetListOfFollowingPaginatedVarsBuilder> {
  GGetListOfFollowingPaginatedVars._();

  factory GGetListOfFollowingPaginatedVars(
          [Function(GGetListOfFollowingPaginatedVarsBuilder b) updates]) =
      _$GGetListOfFollowingPaginatedVars;

  String get userId;
  String? get after;
  static Serializer<GGetListOfFollowingPaginatedVars> get serializer =>
      _$gGetListOfFollowingPaginatedVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetListOfFollowingPaginatedVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetListOfFollowingPaginatedVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetListOfFollowingPaginatedVars.serializer,
        json,
      );
}

abstract class GGetUserFollowCountsVars
    implements
        Built<GGetUserFollowCountsVars, GGetUserFollowCountsVarsBuilder> {
  GGetUserFollowCountsVars._();

  factory GGetUserFollowCountsVars(
          [Function(GGetUserFollowCountsVarsBuilder b) updates]) =
      _$GGetUserFollowCountsVars;

  String get userId;
  static Serializer<GGetUserFollowCountsVars> get serializer =>
      _$gGetUserFollowCountsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserFollowCountsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserFollowCountsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserFollowCountsVars.serializer,
        json,
      );
}

abstract class GFollowUserVars
    implements Built<GFollowUserVars, GFollowUserVarsBuilder> {
  GFollowUserVars._();

  factory GFollowUserVars([Function(GFollowUserVarsBuilder b) updates]) =
      _$GFollowUserVars;

  String get userId;
  static Serializer<GFollowUserVars> get serializer =>
      _$gFollowUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFollowUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFollowUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFollowUserVars.serializer,
        json,
      );
}

abstract class GUnFollowUserVars
    implements Built<GUnFollowUserVars, GUnFollowUserVarsBuilder> {
  GUnFollowUserVars._();

  factory GUnFollowUserVars([Function(GUnFollowUserVarsBuilder b) updates]) =
      _$GUnFollowUserVars;

  String get userId;
  static Serializer<GUnFollowUserVars> get serializer =>
      _$gUnFollowUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUnFollowUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnFollowUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUnFollowUserVars.serializer,
        json,
      );
}

abstract class GUserFollowRelationVars
    implements Built<GUserFollowRelationVars, GUserFollowRelationVarsBuilder> {
  GUserFollowRelationVars._();

  factory GUserFollowRelationVars(
          [Function(GUserFollowRelationVarsBuilder b) updates]) =
      _$GUserFollowRelationVars;

  static Serializer<GUserFollowRelationVars> get serializer =>
      _$gUserFollowRelationVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFollowRelationVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserFollowRelationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFollowRelationVars.serializer,
        json,
      );
}

abstract class GUserFollowCountsVars
    implements Built<GUserFollowCountsVars, GUserFollowCountsVarsBuilder> {
  GUserFollowCountsVars._();

  factory GUserFollowCountsVars(
          [Function(GUserFollowCountsVarsBuilder b) updates]) =
      _$GUserFollowCountsVars;

  static Serializer<GUserFollowCountsVars> get serializer =>
      _$gUserFollowCountsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFollowCountsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserFollowCountsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFollowCountsVars.serializer,
        json,
      );
}
