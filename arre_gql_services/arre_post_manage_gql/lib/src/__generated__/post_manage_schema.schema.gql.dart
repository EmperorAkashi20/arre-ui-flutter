// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_post_manage_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_manage_schema.schema.gql.g.dart';

class GPostStatus extends EnumClass {
  const GPostStatus._(String name) : super(name);

  static const GPostStatus published = _$gPostStatuspublished;

  static const GPostStatus unpublished = _$gPostStatusunpublished;

  static Serializer<GPostStatus> get serializer => _$gPostStatusSerializer;
  static BuiltSet<GPostStatus> get values => _$gPostStatusValues;
  static GPostStatus valueOf(String name) => _$gPostStatusValueOf(name);
}

class GPostVisibility extends EnumClass {
  const GPostVisibility._(String name) : super(name);

  static const GPostVisibility private = _$gPostVisibilityprivate;

  static const GPostVisibility public = _$gPostVisibilitypublic;

  static const GPostVisibility womenOnly = _$gPostVisibilitywomenOnly;

  static Serializer<GPostVisibility> get serializer =>
      _$gPostVisibilitySerializer;
  static BuiltSet<GPostVisibility> get values => _$gPostVisibilityValues;
  static GPostVisibility valueOf(String name) => _$gPostVisibilityValueOf(name);
}

abstract class GlastEvaluatedKeyForReplyComments
    implements
        Built<GlastEvaluatedKeyForReplyComments,
            GlastEvaluatedKeyForReplyCommentsBuilder> {
  GlastEvaluatedKeyForReplyComments._();

  factory GlastEvaluatedKeyForReplyComments(
          [Function(GlastEvaluatedKeyForReplyCommentsBuilder b) updates]) =
      _$GlastEvaluatedKeyForReplyComments;

  String? get createdAt;
  String? get commentId;
  String? get replyId;
  String? get status;
  static Serializer<GlastEvaluatedKeyForReplyComments> get serializer =>
      _$glastEvaluatedKeyForReplyCommentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlastEvaluatedKeyForReplyComments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GlastEvaluatedKeyForReplyComments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlastEvaluatedKeyForReplyComments.serializer,
        json,
      );
}

abstract class GlastEvaluatedKeyForVoicepodComments
    implements
        Built<GlastEvaluatedKeyForVoicepodComments,
            GlastEvaluatedKeyForVoicepodCommentsBuilder> {
  GlastEvaluatedKeyForVoicepodComments._();

  factory GlastEvaluatedKeyForVoicepodComments(
          [Function(GlastEvaluatedKeyForVoicepodCommentsBuilder b) updates]) =
      _$GlastEvaluatedKeyForVoicepodComments;

  String? get createdAt;
  String? get postId;
  String? get commentId;
  String? get status;
  static Serializer<GlastEvaluatedKeyForVoicepodComments> get serializer =>
      _$glastEvaluatedKeyForVoicepodCommentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlastEvaluatedKeyForVoicepodComments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GlastEvaluatedKeyForVoicepodComments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlastEvaluatedKeyForVoicepodComments.serializer,
        json,
      );
}

abstract class GlastEvaluatedKeyForVoicepods
    implements
        Built<GlastEvaluatedKeyForVoicepods,
            GlastEvaluatedKeyForVoicepodsBuilder> {
  GlastEvaluatedKeyForVoicepods._();

  factory GlastEvaluatedKeyForVoicepods(
          [Function(GlastEvaluatedKeyForVoicepodsBuilder b) updates]) =
      _$GlastEvaluatedKeyForVoicepods;

  String? get postId;
  String? get userId;
  String? get createdAt;
  static Serializer<GlastEvaluatedKeyForVoicepods> get serializer =>
      _$glastEvaluatedKeyForVoicepodsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlastEvaluatedKeyForVoicepods.serializer,
        this,
      ) as Map<String, dynamic>);
  static GlastEvaluatedKeyForVoicepods? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlastEvaluatedKeyForVoicepods.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
