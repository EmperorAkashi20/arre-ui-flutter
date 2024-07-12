// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_user_manage_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queries.var.gql.g.dart';

abstract class GUpdatePreferencesVars
    implements Built<GUpdatePreferencesVars, GUpdatePreferencesVarsBuilder> {
  GUpdatePreferencesVars._();

  factory GUpdatePreferencesVars(
          [Function(GUpdatePreferencesVarsBuilder b) updates]) =
      _$GUpdatePreferencesVars;

  String get languageCsv;
  String get topicsCsv;
  static Serializer<GUpdatePreferencesVars> get serializer =>
      _$gUpdatePreferencesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePreferencesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdatePreferencesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePreferencesVars.serializer,
        json,
      );
}

abstract class GGetUserShortDetailsByIdV2Vars
    implements
        Built<GGetUserShortDetailsByIdV2Vars,
            GGetUserShortDetailsByIdV2VarsBuilder> {
  GGetUserShortDetailsByIdV2Vars._();

  factory GGetUserShortDetailsByIdV2Vars(
          [Function(GGetUserShortDetailsByIdV2VarsBuilder b) updates]) =
      _$GGetUserShortDetailsByIdV2Vars;

  String? get userId;
  static Serializer<GGetUserShortDetailsByIdV2Vars> get serializer =>
      _$gGetUserShortDetailsByIdV2VarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserShortDetailsByIdV2Vars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserShortDetailsByIdV2Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserShortDetailsByIdV2Vars.serializer,
        json,
      );
}

abstract class GGetUserDetailsByIdV2Vars
    implements
        Built<GGetUserDetailsByIdV2Vars, GGetUserDetailsByIdV2VarsBuilder> {
  GGetUserDetailsByIdV2Vars._();

  factory GGetUserDetailsByIdV2Vars(
          [Function(GGetUserDetailsByIdV2VarsBuilder b) updates]) =
      _$GGetUserDetailsByIdV2Vars;

  String? get userId;
  static Serializer<GGetUserDetailsByIdV2Vars> get serializer =>
      _$gGetUserDetailsByIdV2VarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserDetailsByIdV2Vars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserDetailsByIdV2Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserDetailsByIdV2Vars.serializer,
        json,
      );
}

abstract class GUpdateUserProfileVars
    implements Built<GUpdateUserProfileVars, GUpdateUserProfileVarsBuilder> {
  GUpdateUserProfileVars._();

  factory GUpdateUserProfileVars(
          [Function(GUpdateUserProfileVarsBuilder b) updates]) =
      _$GUpdateUserProfileVars;

  String? get profilePictureMediaId;
  String? get bio;
  String? get twitterHandle;
  String? get instagramHandle;
  static Serializer<GUpdateUserProfileVars> get serializer =>
      _$gUpdateUserProfileVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserProfileVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserProfileVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserProfileVars.serializer,
        json,
      );
}

abstract class GGetUserLanguageListVars
    implements
        Built<GGetUserLanguageListVars, GGetUserLanguageListVarsBuilder> {
  GGetUserLanguageListVars._();

  factory GGetUserLanguageListVars(
          [Function(GGetUserLanguageListVarsBuilder b) updates]) =
      _$GGetUserLanguageListVars;

  String? get userId;
  static Serializer<GGetUserLanguageListVars> get serializer =>
      _$gGetUserLanguageListVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserLanguageListVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserLanguageListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserLanguageListVars.serializer,
        json,
      );
}

abstract class GUserShortDetailsVars
    implements Built<GUserShortDetailsVars, GUserShortDetailsVarsBuilder> {
  GUserShortDetailsVars._();

  factory GUserShortDetailsVars(
          [Function(GUserShortDetailsVarsBuilder b) updates]) =
      _$GUserShortDetailsVars;

  static Serializer<GUserShortDetailsVars> get serializer =>
      _$gUserShortDetailsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserShortDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserShortDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserShortDetailsVars.serializer,
        json,
      );
}

abstract class GUserDetailsVars
    implements Built<GUserDetailsVars, GUserDetailsVarsBuilder> {
  GUserDetailsVars._();

  factory GUserDetailsVars([Function(GUserDetailsVarsBuilder b) updates]) =
      _$GUserDetailsVars;

  static Serializer<GUserDetailsVars> get serializer =>
      _$gUserDetailsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserDetailsVars.serializer,
        json,
      );
}
