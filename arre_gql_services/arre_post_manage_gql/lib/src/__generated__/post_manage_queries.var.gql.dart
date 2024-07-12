// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_post_manage_gql/src/__generated__/post_manage_schema.schema.gql.dart'
    as _i2;
import 'package:arre_post_manage_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_manage_queries.var.gql.g.dart';

abstract class GGetLanguagesVars
    implements Built<GGetLanguagesVars, GGetLanguagesVarsBuilder> {
  GGetLanguagesVars._();

  factory GGetLanguagesVars([Function(GGetLanguagesVarsBuilder b) updates]) =
      _$GGetLanguagesVars;

  static Serializer<GGetLanguagesVars> get serializer =>
      _$gGetLanguagesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLanguagesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetLanguagesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLanguagesVars.serializer,
        json,
      );
}

abstract class GBgMusicVars
    implements Built<GBgMusicVars, GBgMusicVarsBuilder> {
  GBgMusicVars._();

  factory GBgMusicVars([Function(GBgMusicVarsBuilder b) updates]) =
      _$GBgMusicVars;

  static Serializer<GBgMusicVars> get serializer => _$gBgMusicVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBgMusicVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBgMusicVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBgMusicVars.serializer,
        json,
      );
}

abstract class GAudioInsertablesVars
    implements Built<GAudioInsertablesVars, GAudioInsertablesVarsBuilder> {
  GAudioInsertablesVars._();

  factory GAudioInsertablesVars(
          [Function(GAudioInsertablesVarsBuilder b) updates]) =
      _$GAudioInsertablesVars;

  static Serializer<GAudioInsertablesVars> get serializer =>
      _$gAudioInsertablesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAudioInsertablesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAudioInsertablesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAudioInsertablesVars.serializer,
        json,
      );
}

abstract class GVoiceEffectsVars
    implements Built<GVoiceEffectsVars, GVoiceEffectsVarsBuilder> {
  GVoiceEffectsVars._();

  factory GVoiceEffectsVars([Function(GVoiceEffectsVarsBuilder b) updates]) =
      _$GVoiceEffectsVars;

  static Serializer<GVoiceEffectsVars> get serializer =>
      _$gVoiceEffectsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVoiceEffectsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoiceEffectsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVoiceEffectsVars.serializer,
        json,
      );
}

abstract class GUserVoicepodsVars
    implements Built<GUserVoicepodsVars, GUserVoicepodsVarsBuilder> {
  GUserVoicepodsVars._();

  factory GUserVoicepodsVars([Function(GUserVoicepodsVarsBuilder b) updates]) =
      _$GUserVoicepodsVars;

  String get userId;
  _i2.GlastEvaluatedKeyForVoicepods? get lastEvaluatedKey;
  static Serializer<GUserVoicepodsVars> get serializer =>
      _$gUserVoicepodsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserVoicepodsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVoicepodsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserVoicepodsVars.serializer,
        json,
      );
}

abstract class GMarkAsViewedVars
    implements Built<GMarkAsViewedVars, GMarkAsViewedVarsBuilder> {
  GMarkAsViewedVars._();

  factory GMarkAsViewedVars([Function(GMarkAsViewedVarsBuilder b) updates]) =
      _$GMarkAsViewedVars;

  String get postId;
  static Serializer<GMarkAsViewedVars> get serializer =>
      _$gMarkAsViewedVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMarkAsViewedVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkAsViewedVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMarkAsViewedVars.serializer,
        json,
      );
}

abstract class GMarkAsPlayedVars
    implements Built<GMarkAsPlayedVars, GMarkAsPlayedVarsBuilder> {
  GMarkAsPlayedVars._();

  factory GMarkAsPlayedVars([Function(GMarkAsPlayedVarsBuilder b) updates]) =
      _$GMarkAsPlayedVars;

  String get postId;
  int get duration;
  static Serializer<GMarkAsPlayedVars> get serializer =>
      _$gMarkAsPlayedVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMarkAsPlayedVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkAsPlayedVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMarkAsPlayedVars.serializer,
        json,
      );
}

abstract class GCreateVoicepodVars
    implements Built<GCreateVoicepodVars, GCreateVoicepodVarsBuilder> {
  GCreateVoicepodVars._();

  factory GCreateVoicepodVars(
      [Function(GCreateVoicepodVarsBuilder b) updates]) = _$GCreateVoicepodVars;

  String get title;
  _i2.GPostVisibility? get visibility;
  BuiltList<String> get audioMediaFiles;
  BuiltList<String>? get videoMediaFiles;
  BuiltList<String>? get imageMediaFiles;
  String? get language;
  BuiltList<String>? get insertables;
  String? get bgMusic;
  String? get pitch;
  BuiltList<String>? get hashtags;
  int get duration;
  static Serializer<GCreateVoicepodVars> get serializer =>
      _$gCreateVoicepodVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVoicepodVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVoicepodVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateVoicepodVars.serializer,
        json,
      );
}

abstract class GGetVoicepodDetailsVars
    implements Built<GGetVoicepodDetailsVars, GGetVoicepodDetailsVarsBuilder> {
  GGetVoicepodDetailsVars._();

  factory GGetVoicepodDetailsVars(
          [Function(GGetVoicepodDetailsVarsBuilder b) updates]) =
      _$GGetVoicepodDetailsVars;

  String get postId;
  static Serializer<GGetVoicepodDetailsVars> get serializer =>
      _$gGetVoicepodDetailsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetVoicepodDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetVoicepodDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetVoicepodDetailsVars.serializer,
        json,
      );
}

abstract class GDeleteVoicepodVars
    implements Built<GDeleteVoicepodVars, GDeleteVoicepodVarsBuilder> {
  GDeleteVoicepodVars._();

  factory GDeleteVoicepodVars(
      [Function(GDeleteVoicepodVarsBuilder b) updates]) = _$GDeleteVoicepodVars;

  String get postId;
  static Serializer<GDeleteVoicepodVars> get serializer =>
      _$gDeleteVoicepodVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteVoicepodVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteVoicepodVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteVoicepodVars.serializer,
        json,
      );
}

abstract class GPostCommentVars
    implements Built<GPostCommentVars, GPostCommentVarsBuilder> {
  GPostCommentVars._();

  factory GPostCommentVars([Function(GPostCommentVarsBuilder b) updates]) =
      _$GPostCommentVars;

  String get postId;
  String get comment;
  static Serializer<GPostCommentVars> get serializer =>
      _$gPostCommentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentVars.serializer,
        json,
      );
}

abstract class GPostCommentReplyVars
    implements Built<GPostCommentReplyVars, GPostCommentReplyVarsBuilder> {
  GPostCommentReplyVars._();

  factory GPostCommentReplyVars(
          [Function(GPostCommentReplyVarsBuilder b) updates]) =
      _$GPostCommentReplyVars;

  String get postId;
  String get reply;
  String get commentId;
  String get commentCreatedAt;
  static Serializer<GPostCommentReplyVars> get serializer =>
      _$gPostCommentReplyVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentReplyVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentReplyVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentReplyVars.serializer,
        json,
      );
}

abstract class GPostDetailsVars
    implements Built<GPostDetailsVars, GPostDetailsVarsBuilder> {
  GPostDetailsVars._();

  factory GPostDetailsVars([Function(GPostDetailsVarsBuilder b) updates]) =
      _$GPostDetailsVars;

  static Serializer<GPostDetailsVars> get serializer =>
      _$gPostDetailsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostDetailsVars.serializer,
        json,
      );
}

abstract class GVPCommentVars
    implements Built<GVPCommentVars, GVPCommentVarsBuilder> {
  GVPCommentVars._();

  factory GVPCommentVars([Function(GVPCommentVarsBuilder b) updates]) =
      _$GVPCommentVars;

  static Serializer<GVPCommentVars> get serializer =>
      _$gVPCommentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVPCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVPCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVPCommentVars.serializer,
        json,
      );
}

abstract class GVPCommentReplyVars
    implements Built<GVPCommentReplyVars, GVPCommentReplyVarsBuilder> {
  GVPCommentReplyVars._();

  factory GVPCommentReplyVars(
      [Function(GVPCommentReplyVarsBuilder b) updates]) = _$GVPCommentReplyVars;

  static Serializer<GVPCommentReplyVars> get serializer =>
      _$gVPCommentReplyVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVPCommentReplyVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVPCommentReplyVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVPCommentReplyVars.serializer,
        json,
      );
}

abstract class GLanguageVars
    implements Built<GLanguageVars, GLanguageVarsBuilder> {
  GLanguageVars._();

  factory GLanguageVars([Function(GLanguageVarsBuilder b) updates]) =
      _$GLanguageVars;

  static Serializer<GLanguageVars> get serializer => _$gLanguageVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLanguageVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLanguageVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLanguageVars.serializer,
        json,
      );
}
