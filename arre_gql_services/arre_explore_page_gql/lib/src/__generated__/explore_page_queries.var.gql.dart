// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_explore_page_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'explore_page_queries.var.gql.g.dart';

abstract class GListTopCreatorsVars
    implements Built<GListTopCreatorsVars, GListTopCreatorsVarsBuilder> {
  GListTopCreatorsVars._();

  factory GListTopCreatorsVars(
          [Function(GListTopCreatorsVarsBuilder b) updates]) =
      _$GListTopCreatorsVars;

  static Serializer<GListTopCreatorsVars> get serializer =>
      _$gListTopCreatorsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopCreatorsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopCreatorsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopCreatorsVars.serializer,
        json,
      );
}

abstract class GListTopHashtagsVars
    implements Built<GListTopHashtagsVars, GListTopHashtagsVarsBuilder> {
  GListTopHashtagsVars._();

  factory GListTopHashtagsVars(
          [Function(GListTopHashtagsVarsBuilder b) updates]) =
      _$GListTopHashtagsVars;

  int get rankGreaterThan;
  static Serializer<GListTopHashtagsVars> get serializer =>
      _$gListTopHashtagsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopHashtagsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopHashtagsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopHashtagsVars.serializer,
        json,
      );
}

abstract class GListTopPostsByHashTagIdVars
    implements
        Built<GListTopPostsByHashTagIdVars,
            GListTopPostsByHashTagIdVarsBuilder> {
  GListTopPostsByHashTagIdVars._();

  factory GListTopPostsByHashTagIdVars(
          [Function(GListTopPostsByHashTagIdVarsBuilder b) updates]) =
      _$GListTopPostsByHashTagIdVars;

  String get hashTagUniqueIdentifier;
  static Serializer<GListTopPostsByHashTagIdVars> get serializer =>
      _$gListTopPostsByHashTagIdVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListTopPostsByHashTagIdVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListTopPostsByHashTagIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListTopPostsByHashTagIdVars.serializer,
        json,
      );
}
