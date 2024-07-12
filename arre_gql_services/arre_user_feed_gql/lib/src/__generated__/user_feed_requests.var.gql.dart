// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_user_feed_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_feed_requests.var.gql.g.dart';

abstract class GPopularFeedsVars
    implements Built<GPopularFeedsVars, GPopularFeedsVarsBuilder> {
  GPopularFeedsVars._();

  factory GPopularFeedsVars([Function(GPopularFeedsVarsBuilder b) updates]) =
      _$GPopularFeedsVars;

  int get pageNo;
  static Serializer<GPopularFeedsVars> get serializer =>
      _$gPopularFeedsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPopularFeedsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPopularFeedsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPopularFeedsVars.serializer,
        json,
      );
}

abstract class GUserPostRelationsVars
    implements Built<GUserPostRelationsVars, GUserPostRelationsVarsBuilder> {
  GUserPostRelationsVars._();

  factory GUserPostRelationsVars(
          [Function(GUserPostRelationsVarsBuilder b) updates]) =
      _$GUserPostRelationsVars;

  String get postId;
  static Serializer<GUserPostRelationsVars> get serializer =>
      _$gUserPostRelationsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserPostRelationsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserPostRelationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserPostRelationsVars.serializer,
        json,
      );
}
