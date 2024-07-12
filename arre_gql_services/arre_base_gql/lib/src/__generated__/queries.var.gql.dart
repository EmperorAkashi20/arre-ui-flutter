// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_base_gql/src/__generated__/schema.schema.gql.dart' as _i2;
import 'package:arre_base_gql/src/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queries.var.gql.g.dart';

abstract class GTrendingHashtagsVars
    implements Built<GTrendingHashtagsVars, GTrendingHashtagsVarsBuilder> {
  GTrendingHashtagsVars._();

  factory GTrendingHashtagsVars(
          [Function(GTrendingHashtagsVarsBuilder b) updates]) =
      _$GTrendingHashtagsVars;

  static Serializer<GTrendingHashtagsVars> get serializer =>
      _$gTrendingHashtagsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTrendingHashtagsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTrendingHashtagsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTrendingHashtagsVars.serializer,
        json,
      );
}

abstract class GDeletePostVars
    implements Built<GDeletePostVars, GDeletePostVarsBuilder> {
  GDeletePostVars._();

  factory GDeletePostVars([Function(GDeletePostVarsBuilder b) updates]) =
      _$GDeletePostVars;

  String get postId;
  int get postType;
  static Serializer<GDeletePostVars> get serializer =>
      _$gDeletePostVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeletePostVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeletePostVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeletePostVars.serializer,
        json,
      );
}

abstract class GLikePostVars
    implements Built<GLikePostVars, GLikePostVarsBuilder> {
  GLikePostVars._();

  factory GLikePostVars([Function(GLikePostVarsBuilder b) updates]) =
      _$GLikePostVars;

  String get postId;
  static Serializer<GLikePostVars> get serializer => _$gLikePostVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikePostVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLikePostVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikePostVars.serializer,
        json,
      );
}

abstract class GUnlikePostVars
    implements Built<GUnlikePostVars, GUnlikePostVarsBuilder> {
  GUnlikePostVars._();

  factory GUnlikePostVars([Function(GUnlikePostVarsBuilder b) updates]) =
      _$GUnlikePostVars;

  String get postId;
  static Serializer<GUnlikePostVars> get serializer =>
      _$gUnlikePostVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUnlikePostVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnlikePostVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUnlikePostVars.serializer,
        json,
      );
}

abstract class GPostCommentsRepliesVars
    implements
        Built<GPostCommentsRepliesVars, GPostCommentsRepliesVarsBuilder> {
  GPostCommentsRepliesVars._();

  factory GPostCommentsRepliesVars(
          [Function(GPostCommentsRepliesVarsBuilder b) updates]) =
      _$GPostCommentsRepliesVars;

  String get postId;
  int? get limit;
  int? get offset;
  static Serializer<GPostCommentsRepliesVars> get serializer =>
      _$gPostCommentsRepliesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCommentsRepliesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentsRepliesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCommentsRepliesVars.serializer,
        json,
      );
}

abstract class GPostVoicepodCommentVars
    implements
        Built<GPostVoicepodCommentVars, GPostVoicepodCommentVarsBuilder> {
  GPostVoicepodCommentVars._();

  factory GPostVoicepodCommentVars(
          [Function(GPostVoicepodCommentVarsBuilder b) updates]) =
      _$GPostVoicepodCommentVars;

  _i2.GsendPostReplyInput? get input;
  static Serializer<GPostVoicepodCommentVars> get serializer =>
      _$gPostVoicepodCommentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostVoicepodCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostVoicepodCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostVoicepodCommentVars.serializer,
        json,
      );
}

abstract class GLikePostCommentVars
    implements Built<GLikePostCommentVars, GLikePostCommentVarsBuilder> {
  GLikePostCommentVars._();

  factory GLikePostCommentVars(
          [Function(GLikePostCommentVarsBuilder b) updates]) =
      _$GLikePostCommentVars;

  String? get postId;
  String? get replyId;
  String? get interactionType;
  int? get level;
  String? get parentID;
  static Serializer<GLikePostCommentVars> get serializer =>
      _$gLikePostCommentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikePostCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLikePostCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikePostCommentVars.serializer,
        json,
      );
}

abstract class GUnlikePostCommentVars
    implements Built<GUnlikePostCommentVars, GUnlikePostCommentVarsBuilder> {
  GUnlikePostCommentVars._();

  factory GUnlikePostCommentVars(
          [Function(GUnlikePostCommentVarsBuilder b) updates]) =
      _$GUnlikePostCommentVars;

  String? get postId;
  String? get replyId;
  String? get interactionType;
  int? get level;
  String? get parentID;
  static Serializer<GUnlikePostCommentVars> get serializer =>
      _$gUnlikePostCommentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUnlikePostCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUnlikePostCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUnlikePostCommentVars.serializer,
        json,
      );
}

abstract class GBlockUserVars
    implements Built<GBlockUserVars, GBlockUserVarsBuilder> {
  GBlockUserVars._();

  factory GBlockUserVars([Function(GBlockUserVarsBuilder b) updates]) =
      _$GBlockUserVars;

  int? get blockUserId;
  static Serializer<GBlockUserVars> get serializer =>
      _$gBlockUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBlockUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBlockUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBlockUserVars.serializer,
        json,
      );
}
