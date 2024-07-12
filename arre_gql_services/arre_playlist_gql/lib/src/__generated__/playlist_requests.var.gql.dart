// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_playlist_gql/src/__generated__/playlist_schema.schema.gql.dart'
    as _i2;
import 'package:arre_playlist_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'playlist_requests.var.gql.g.dart';

abstract class GPlaylistDetailsVars
    implements Built<GPlaylistDetailsVars, GPlaylistDetailsVarsBuilder> {
  GPlaylistDetailsVars._();

  factory GPlaylistDetailsVars(
          [Function(GPlaylistDetailsVarsBuilder b) updates]) =
      _$GPlaylistDetailsVars;

  String get playlistId;
  static Serializer<GPlaylistDetailsVars> get serializer =>
      _$gPlaylistDetailsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistDetailsVars.serializer,
        json,
      );
}

abstract class GPlaylistByUserIdVars
    implements Built<GPlaylistByUserIdVars, GPlaylistByUserIdVarsBuilder> {
  GPlaylistByUserIdVars._();

  factory GPlaylistByUserIdVars(
          [Function(GPlaylistByUserIdVarsBuilder b) updates]) =
      _$GPlaylistByUserIdVars;

  _i2.GprivacyType get privacy;
  String get userId;
  String get after;
  static Serializer<GPlaylistByUserIdVars> get serializer =>
      _$gPlaylistByUserIdVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistByUserIdVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistByUserIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistByUserIdVars.serializer,
        json,
      );
}

abstract class GCreatePlaylistVars
    implements Built<GCreatePlaylistVars, GCreatePlaylistVarsBuilder> {
  GCreatePlaylistVars._();

  factory GCreatePlaylistVars(
      [Function(GCreatePlaylistVarsBuilder b) updates]) = _$GCreatePlaylistVars;

  String get title;
  String get privacy;
  String? get coverImage;
  static Serializer<GCreatePlaylistVars> get serializer =>
      _$gCreatePlaylistVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePlaylistVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreatePlaylistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePlaylistVars.serializer,
        json,
      );
}

abstract class GEditPlaylistVars
    implements Built<GEditPlaylistVars, GEditPlaylistVarsBuilder> {
  GEditPlaylistVars._();

  factory GEditPlaylistVars([Function(GEditPlaylistVarsBuilder b) updates]) =
      _$GEditPlaylistVars;

  String get playlistId;
  String? get title;
  String? get privacy;
  String? get coverImage;
  static Serializer<GEditPlaylistVars> get serializer =>
      _$gEditPlaylistVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEditPlaylistVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEditPlaylistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEditPlaylistVars.serializer,
        json,
      );
}

abstract class GDeletePlaylistVars
    implements Built<GDeletePlaylistVars, GDeletePlaylistVarsBuilder> {
  GDeletePlaylistVars._();

  factory GDeletePlaylistVars(
      [Function(GDeletePlaylistVarsBuilder b) updates]) = _$GDeletePlaylistVars;

  String get playlistId;
  static Serializer<GDeletePlaylistVars> get serializer =>
      _$gDeletePlaylistVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeletePlaylistVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeletePlaylistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeletePlaylistVars.serializer,
        json,
      );
}

abstract class GAddPostToPlaylistVars
    implements Built<GAddPostToPlaylistVars, GAddPostToPlaylistVarsBuilder> {
  GAddPostToPlaylistVars._();

  factory GAddPostToPlaylistVars(
          [Function(GAddPostToPlaylistVarsBuilder b) updates]) =
      _$GAddPostToPlaylistVars;

  String get playlistId;
  String get voicePodId;
  static Serializer<GAddPostToPlaylistVars> get serializer =>
      _$gAddPostToPlaylistVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddPostToPlaylistVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddPostToPlaylistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddPostToPlaylistVars.serializer,
        json,
      );
}

abstract class GSavePostToDefaultPlaylistVars
    implements
        Built<GSavePostToDefaultPlaylistVars,
            GSavePostToDefaultPlaylistVarsBuilder> {
  GSavePostToDefaultPlaylistVars._();

  factory GSavePostToDefaultPlaylistVars(
          [Function(GSavePostToDefaultPlaylistVarsBuilder b) updates]) =
      _$GSavePostToDefaultPlaylistVars;

  String get voicePodId;
  static Serializer<GSavePostToDefaultPlaylistVars> get serializer =>
      _$gSavePostToDefaultPlaylistVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSavePostToDefaultPlaylistVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSavePostToDefaultPlaylistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSavePostToDefaultPlaylistVars.serializer,
        json,
      );
}

abstract class GRemovePostFromPlaylistVars
    implements
        Built<GRemovePostFromPlaylistVars, GRemovePostFromPlaylistVarsBuilder> {
  GRemovePostFromPlaylistVars._();

  factory GRemovePostFromPlaylistVars(
          [Function(GRemovePostFromPlaylistVarsBuilder b) updates]) =
      _$GRemovePostFromPlaylistVars;

  String get playlistId;
  String get voicePodId;
  static Serializer<GRemovePostFromPlaylistVars> get serializer =>
      _$gRemovePostFromPlaylistVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemovePostFromPlaylistVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRemovePostFromPlaylistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemovePostFromPlaylistVars.serializer,
        json,
      );
}

abstract class GPlaylistVars
    implements Built<GPlaylistVars, GPlaylistVarsBuilder> {
  GPlaylistVars._();

  factory GPlaylistVars([Function(GPlaylistVarsBuilder b) updates]) =
      _$GPlaylistVars;

  static Serializer<GPlaylistVars> get serializer => _$gPlaylistVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPlaylistVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPlaylistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPlaylistVars.serializer,
        json,
      );
}
