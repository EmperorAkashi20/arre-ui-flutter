// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_manage_queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLanguagesVars> _$gGetLanguagesVarsSerializer =
    new _$GGetLanguagesVarsSerializer();
Serializer<GBgMusicVars> _$gBgMusicVarsSerializer =
    new _$GBgMusicVarsSerializer();
Serializer<GAudioInsertablesVars> _$gAudioInsertablesVarsSerializer =
    new _$GAudioInsertablesVarsSerializer();
Serializer<GVoiceEffectsVars> _$gVoiceEffectsVarsSerializer =
    new _$GVoiceEffectsVarsSerializer();
Serializer<GUserVoicepodsVars> _$gUserVoicepodsVarsSerializer =
    new _$GUserVoicepodsVarsSerializer();
Serializer<GMarkAsViewedVars> _$gMarkAsViewedVarsSerializer =
    new _$GMarkAsViewedVarsSerializer();
Serializer<GMarkAsPlayedVars> _$gMarkAsPlayedVarsSerializer =
    new _$GMarkAsPlayedVarsSerializer();
Serializer<GCreateVoicepodVars> _$gCreateVoicepodVarsSerializer =
    new _$GCreateVoicepodVarsSerializer();
Serializer<GGetVoicepodDetailsVars> _$gGetVoicepodDetailsVarsSerializer =
    new _$GGetVoicepodDetailsVarsSerializer();
Serializer<GDeleteVoicepodVars> _$gDeleteVoicepodVarsSerializer =
    new _$GDeleteVoicepodVarsSerializer();
Serializer<GPostCommentVars> _$gPostCommentVarsSerializer =
    new _$GPostCommentVarsSerializer();
Serializer<GPostCommentReplyVars> _$gPostCommentReplyVarsSerializer =
    new _$GPostCommentReplyVarsSerializer();
Serializer<GPostDetailsVars> _$gPostDetailsVarsSerializer =
    new _$GPostDetailsVarsSerializer();
Serializer<GVPCommentVars> _$gVPCommentVarsSerializer =
    new _$GVPCommentVarsSerializer();
Serializer<GVPCommentReplyVars> _$gVPCommentReplyVarsSerializer =
    new _$GVPCommentReplyVarsSerializer();
Serializer<GLanguageVars> _$gLanguageVarsSerializer =
    new _$GLanguageVarsSerializer();

class _$GGetLanguagesVarsSerializer
    implements StructuredSerializer<GGetLanguagesVars> {
  @override
  final Iterable<Type> types = const [GGetLanguagesVars, _$GGetLanguagesVars];
  @override
  final String wireName = 'GGetLanguagesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetLanguagesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetLanguagesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetLanguagesVarsBuilder().build();
  }
}

class _$GBgMusicVarsSerializer implements StructuredSerializer<GBgMusicVars> {
  @override
  final Iterable<Type> types = const [GBgMusicVars, _$GBgMusicVars];
  @override
  final String wireName = 'GBgMusicVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBgMusicVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GBgMusicVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GBgMusicVarsBuilder().build();
  }
}

class _$GAudioInsertablesVarsSerializer
    implements StructuredSerializer<GAudioInsertablesVars> {
  @override
  final Iterable<Type> types = const [
    GAudioInsertablesVars,
    _$GAudioInsertablesVars
  ];
  @override
  final String wireName = 'GAudioInsertablesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAudioInsertablesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAudioInsertablesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAudioInsertablesVarsBuilder().build();
  }
}

class _$GVoiceEffectsVarsSerializer
    implements StructuredSerializer<GVoiceEffectsVars> {
  @override
  final Iterable<Type> types = const [GVoiceEffectsVars, _$GVoiceEffectsVars];
  @override
  final String wireName = 'GVoiceEffectsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GVoiceEffectsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GVoiceEffectsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GVoiceEffectsVarsBuilder().build();
  }
}

class _$GUserVoicepodsVarsSerializer
    implements StructuredSerializer<GUserVoicepodsVars> {
  @override
  final Iterable<Type> types = const [GUserVoicepodsVars, _$GUserVoicepodsVars];
  @override
  final String wireName = 'GUserVoicepodsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserVoicepodsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lastEvaluatedKey;
    if (value != null) {
      result
        ..add('lastEvaluatedKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GlastEvaluatedKeyForVoicepods)));
    }
    return result;
  }

  @override
  GUserVoicepodsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserVoicepodsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastEvaluatedKey':
          result.lastEvaluatedKey.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GlastEvaluatedKeyForVoicepods))!
              as _i2.GlastEvaluatedKeyForVoicepods);
          break;
      }
    }

    return result.build();
  }
}

class _$GMarkAsViewedVarsSerializer
    implements StructuredSerializer<GMarkAsViewedVars> {
  @override
  final Iterable<Type> types = const [GMarkAsViewedVars, _$GMarkAsViewedVars];
  @override
  final String wireName = 'GMarkAsViewedVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMarkAsViewedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GMarkAsViewedVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkAsViewedVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GMarkAsPlayedVarsSerializer
    implements StructuredSerializer<GMarkAsPlayedVars> {
  @override
  final Iterable<Type> types = const [GMarkAsPlayedVars, _$GMarkAsPlayedVars];
  @override
  final String wireName = 'GMarkAsPlayedVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMarkAsPlayedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GMarkAsPlayedVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkAsPlayedVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVoicepodVarsSerializer
    implements StructuredSerializer<GCreateVoicepodVars> {
  @override
  final Iterable<Type> types = const [
    GCreateVoicepodVars,
    _$GCreateVoicepodVars
  ];
  @override
  final String wireName = 'GCreateVoicepodVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateVoicepodVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'audioMediaFiles',
      serializers.serialize(object.audioMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.visibility;
    if (value != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GPostVisibility)));
    }
    value = object.videoMediaFiles;
    if (value != null) {
      result
        ..add('videoMediaFiles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.imageMediaFiles;
    if (value != null) {
      result
        ..add('imageMediaFiles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.insertables;
    if (value != null) {
      result
        ..add('insertables')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.bgMusic;
    if (value != null) {
      result
        ..add('bgMusic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pitch;
    if (value != null) {
      result
        ..add('pitch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hashtags;
    if (value != null) {
      result
        ..add('hashtags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  GCreateVoicepodVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVoicepodVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostVisibility))
              as _i2.GPostVisibility?;
          break;
        case 'audioMediaFiles':
          result.audioMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'videoMediaFiles':
          result.videoMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'imageMediaFiles':
          result.imageMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'insertables':
          result.insertables.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'bgMusic':
          result.bgMusic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pitch':
          result.pitch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hashtags':
          result.hashtags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetVoicepodDetailsVarsSerializer
    implements StructuredSerializer<GGetVoicepodDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GGetVoicepodDetailsVars,
    _$GGetVoicepodDetailsVars
  ];
  @override
  final String wireName = 'GGetVoicepodDetailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetVoicepodDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetVoicepodDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetVoicepodDetailsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteVoicepodVarsSerializer
    implements StructuredSerializer<GDeleteVoicepodVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteVoicepodVars,
    _$GDeleteVoicepodVars
  ];
  @override
  final String wireName = 'GDeleteVoicepodVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteVoicepodVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteVoicepodVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteVoicepodVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentVarsSerializer
    implements StructuredSerializer<GPostCommentVars> {
  @override
  final Iterable<Type> types = const [GPostCommentVars, _$GPostCommentVars];
  @override
  final String wireName = 'GPostCommentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPostCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentReplyVarsSerializer
    implements StructuredSerializer<GPostCommentReplyVars> {
  @override
  final Iterable<Type> types = const [
    GPostCommentReplyVars,
    _$GPostCommentReplyVars
  ];
  @override
  final String wireName = 'GPostCommentReplyVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentReplyVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'reply',
      serializers.serialize(object.reply,
          specifiedType: const FullType(String)),
      'commentId',
      serializers.serialize(object.commentId,
          specifiedType: const FullType(String)),
      'commentCreatedAt',
      serializers.serialize(object.commentCreatedAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPostCommentReplyVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentReplyVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reply':
          result.reply = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'commentCreatedAt':
          result.commentCreatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostDetailsVarsSerializer
    implements StructuredSerializer<GPostDetailsVars> {
  @override
  final Iterable<Type> types = const [GPostDetailsVars, _$GPostDetailsVars];
  @override
  final String wireName = 'GPostDetailsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPostDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPostDetailsVarsBuilder().build();
  }
}

class _$GVPCommentVarsSerializer
    implements StructuredSerializer<GVPCommentVars> {
  @override
  final Iterable<Type> types = const [GVPCommentVars, _$GVPCommentVars];
  @override
  final String wireName = 'GVPCommentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GVPCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GVPCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GVPCommentVarsBuilder().build();
  }
}

class _$GVPCommentReplyVarsSerializer
    implements StructuredSerializer<GVPCommentReplyVars> {
  @override
  final Iterable<Type> types = const [
    GVPCommentReplyVars,
    _$GVPCommentReplyVars
  ];
  @override
  final String wireName = 'GVPCommentReplyVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVPCommentReplyVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GVPCommentReplyVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GVPCommentReplyVarsBuilder().build();
  }
}

class _$GLanguageVarsSerializer implements StructuredSerializer<GLanguageVars> {
  @override
  final Iterable<Type> types = const [GLanguageVars, _$GLanguageVars];
  @override
  final String wireName = 'GLanguageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLanguageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GLanguageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GLanguageVarsBuilder().build();
  }
}

class _$GGetLanguagesVars extends GGetLanguagesVars {
  factory _$GGetLanguagesVars(
          [void Function(GGetLanguagesVarsBuilder)? updates]) =>
      (new GGetLanguagesVarsBuilder()..update(updates))._build();

  _$GGetLanguagesVars._() : super._();

  @override
  GGetLanguagesVars rebuild(void Function(GGetLanguagesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLanguagesVarsBuilder toBuilder() =>
      new GGetLanguagesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLanguagesVars;
  }

  @override
  int get hashCode {
    return 426475000;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetLanguagesVars').toString();
  }
}

class GGetLanguagesVarsBuilder
    implements Builder<GGetLanguagesVars, GGetLanguagesVarsBuilder> {
  _$GGetLanguagesVars? _$v;

  GGetLanguagesVarsBuilder();

  @override
  void replace(GGetLanguagesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLanguagesVars;
  }

  @override
  void update(void Function(GGetLanguagesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLanguagesVars build() => _build();

  _$GGetLanguagesVars _build() {
    final _$result = _$v ?? new _$GGetLanguagesVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GBgMusicVars extends GBgMusicVars {
  factory _$GBgMusicVars([void Function(GBgMusicVarsBuilder)? updates]) =>
      (new GBgMusicVarsBuilder()..update(updates))._build();

  _$GBgMusicVars._() : super._();

  @override
  GBgMusicVars rebuild(void Function(GBgMusicVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBgMusicVarsBuilder toBuilder() => new GBgMusicVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBgMusicVars;
  }

  @override
  int get hashCode {
    return 809034622;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GBgMusicVars').toString();
  }
}

class GBgMusicVarsBuilder
    implements Builder<GBgMusicVars, GBgMusicVarsBuilder> {
  _$GBgMusicVars? _$v;

  GBgMusicVarsBuilder();

  @override
  void replace(GBgMusicVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBgMusicVars;
  }

  @override
  void update(void Function(GBgMusicVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBgMusicVars build() => _build();

  _$GBgMusicVars _build() {
    final _$result = _$v ?? new _$GBgMusicVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GAudioInsertablesVars extends GAudioInsertablesVars {
  factory _$GAudioInsertablesVars(
          [void Function(GAudioInsertablesVarsBuilder)? updates]) =>
      (new GAudioInsertablesVarsBuilder()..update(updates))._build();

  _$GAudioInsertablesVars._() : super._();

  @override
  GAudioInsertablesVars rebuild(
          void Function(GAudioInsertablesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAudioInsertablesVarsBuilder toBuilder() =>
      new GAudioInsertablesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAudioInsertablesVars;
  }

  @override
  int get hashCode {
    return 414948422;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GAudioInsertablesVars').toString();
  }
}

class GAudioInsertablesVarsBuilder
    implements Builder<GAudioInsertablesVars, GAudioInsertablesVarsBuilder> {
  _$GAudioInsertablesVars? _$v;

  GAudioInsertablesVarsBuilder();

  @override
  void replace(GAudioInsertablesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAudioInsertablesVars;
  }

  @override
  void update(void Function(GAudioInsertablesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAudioInsertablesVars build() => _build();

  _$GAudioInsertablesVars _build() {
    final _$result = _$v ?? new _$GAudioInsertablesVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GVoiceEffectsVars extends GVoiceEffectsVars {
  factory _$GVoiceEffectsVars(
          [void Function(GVoiceEffectsVarsBuilder)? updates]) =>
      (new GVoiceEffectsVarsBuilder()..update(updates))._build();

  _$GVoiceEffectsVars._() : super._();

  @override
  GVoiceEffectsVars rebuild(void Function(GVoiceEffectsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVoiceEffectsVarsBuilder toBuilder() =>
      new GVoiceEffectsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVoiceEffectsVars;
  }

  @override
  int get hashCode {
    return 262142386;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GVoiceEffectsVars').toString();
  }
}

class GVoiceEffectsVarsBuilder
    implements Builder<GVoiceEffectsVars, GVoiceEffectsVarsBuilder> {
  _$GVoiceEffectsVars? _$v;

  GVoiceEffectsVarsBuilder();

  @override
  void replace(GVoiceEffectsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVoiceEffectsVars;
  }

  @override
  void update(void Function(GVoiceEffectsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVoiceEffectsVars build() => _build();

  _$GVoiceEffectsVars _build() {
    final _$result = _$v ?? new _$GVoiceEffectsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GUserVoicepodsVars extends GUserVoicepodsVars {
  @override
  final String userId;
  @override
  final _i2.GlastEvaluatedKeyForVoicepods? lastEvaluatedKey;

  factory _$GUserVoicepodsVars(
          [void Function(GUserVoicepodsVarsBuilder)? updates]) =>
      (new GUserVoicepodsVarsBuilder()..update(updates))._build();

  _$GUserVoicepodsVars._({required this.userId, this.lastEvaluatedKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GUserVoicepodsVars', 'userId');
  }

  @override
  GUserVoicepodsVars rebuild(
          void Function(GUserVoicepodsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserVoicepodsVarsBuilder toBuilder() =>
      new GUserVoicepodsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserVoicepodsVars &&
        userId == other.userId &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserVoicepodsVars')
          ..add('userId', userId)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class GUserVoicepodsVarsBuilder
    implements Builder<GUserVoicepodsVars, GUserVoicepodsVarsBuilder> {
  _$GUserVoicepodsVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  _i2.GlastEvaluatedKeyForVoicepodsBuilder? _lastEvaluatedKey;
  _i2.GlastEvaluatedKeyForVoicepodsBuilder get lastEvaluatedKey =>
      _$this._lastEvaluatedKey ??=
          new _i2.GlastEvaluatedKeyForVoicepodsBuilder();
  set lastEvaluatedKey(
          _i2.GlastEvaluatedKeyForVoicepodsBuilder? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  GUserVoicepodsVarsBuilder();

  GUserVoicepodsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _lastEvaluatedKey = $v.lastEvaluatedKey?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserVoicepodsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserVoicepodsVars;
  }

  @override
  void update(void Function(GUserVoicepodsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserVoicepodsVars build() => _build();

  _$GUserVoicepodsVars _build() {
    _$GUserVoicepodsVars _$result;
    try {
      _$result = _$v ??
          new _$GUserVoicepodsVars._(
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GUserVoicepodsVars', 'userId'),
              lastEvaluatedKey: _lastEvaluatedKey?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lastEvaluatedKey';
        _lastEvaluatedKey?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserVoicepodsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMarkAsViewedVars extends GMarkAsViewedVars {
  @override
  final String postId;

  factory _$GMarkAsViewedVars(
          [void Function(GMarkAsViewedVarsBuilder)? updates]) =>
      (new GMarkAsViewedVarsBuilder()..update(updates))._build();

  _$GMarkAsViewedVars._({required this.postId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GMarkAsViewedVars', 'postId');
  }

  @override
  GMarkAsViewedVars rebuild(void Function(GMarkAsViewedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkAsViewedVarsBuilder toBuilder() =>
      new GMarkAsViewedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarkAsViewedVars && postId == other.postId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMarkAsViewedVars')
          ..add('postId', postId))
        .toString();
  }
}

class GMarkAsViewedVarsBuilder
    implements Builder<GMarkAsViewedVars, GMarkAsViewedVarsBuilder> {
  _$GMarkAsViewedVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  GMarkAsViewedVarsBuilder();

  GMarkAsViewedVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarkAsViewedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkAsViewedVars;
  }

  @override
  void update(void Function(GMarkAsViewedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkAsViewedVars build() => _build();

  _$GMarkAsViewedVars _build() {
    final _$result = _$v ??
        new _$GMarkAsViewedVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GMarkAsViewedVars', 'postId'));
    replace(_$result);
    return _$result;
  }
}

class _$GMarkAsPlayedVars extends GMarkAsPlayedVars {
  @override
  final String postId;
  @override
  final int duration;

  factory _$GMarkAsPlayedVars(
          [void Function(GMarkAsPlayedVarsBuilder)? updates]) =>
      (new GMarkAsPlayedVarsBuilder()..update(updates))._build();

  _$GMarkAsPlayedVars._({required this.postId, required this.duration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GMarkAsPlayedVars', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        duration, r'GMarkAsPlayedVars', 'duration');
  }

  @override
  GMarkAsPlayedVars rebuild(void Function(GMarkAsPlayedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkAsPlayedVarsBuilder toBuilder() =>
      new GMarkAsPlayedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarkAsPlayedVars &&
        postId == other.postId &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMarkAsPlayedVars')
          ..add('postId', postId)
          ..add('duration', duration))
        .toString();
  }
}

class GMarkAsPlayedVarsBuilder
    implements Builder<GMarkAsPlayedVars, GMarkAsPlayedVarsBuilder> {
  _$GMarkAsPlayedVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  GMarkAsPlayedVarsBuilder();

  GMarkAsPlayedVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _duration = $v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarkAsPlayedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkAsPlayedVars;
  }

  @override
  void update(void Function(GMarkAsPlayedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkAsPlayedVars build() => _build();

  _$GMarkAsPlayedVars _build() {
    final _$result = _$v ??
        new _$GMarkAsPlayedVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GMarkAsPlayedVars', 'postId'),
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, r'GMarkAsPlayedVars', 'duration'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVoicepodVars extends GCreateVoicepodVars {
  @override
  final String title;
  @override
  final _i2.GPostVisibility? visibility;
  @override
  final BuiltList<String> audioMediaFiles;
  @override
  final BuiltList<String>? videoMediaFiles;
  @override
  final BuiltList<String>? imageMediaFiles;
  @override
  final String? language;
  @override
  final BuiltList<String>? insertables;
  @override
  final String? bgMusic;
  @override
  final String? pitch;
  @override
  final BuiltList<String>? hashtags;
  @override
  final int duration;

  factory _$GCreateVoicepodVars(
          [void Function(GCreateVoicepodVarsBuilder)? updates]) =>
      (new GCreateVoicepodVarsBuilder()..update(updates))._build();

  _$GCreateVoicepodVars._(
      {required this.title,
      this.visibility,
      required this.audioMediaFiles,
      this.videoMediaFiles,
      this.imageMediaFiles,
      this.language,
      this.insertables,
      this.bgMusic,
      this.pitch,
      this.hashtags,
      required this.duration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'GCreateVoicepodVars', 'title');
    BuiltValueNullFieldError.checkNotNull(
        audioMediaFiles, r'GCreateVoicepodVars', 'audioMediaFiles');
    BuiltValueNullFieldError.checkNotNull(
        duration, r'GCreateVoicepodVars', 'duration');
  }

  @override
  GCreateVoicepodVars rebuild(
          void Function(GCreateVoicepodVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVoicepodVarsBuilder toBuilder() =>
      new GCreateVoicepodVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVoicepodVars &&
        title == other.title &&
        visibility == other.visibility &&
        audioMediaFiles == other.audioMediaFiles &&
        videoMediaFiles == other.videoMediaFiles &&
        imageMediaFiles == other.imageMediaFiles &&
        language == other.language &&
        insertables == other.insertables &&
        bgMusic == other.bgMusic &&
        pitch == other.pitch &&
        hashtags == other.hashtags &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, audioMediaFiles.hashCode);
    _$hash = $jc(_$hash, videoMediaFiles.hashCode);
    _$hash = $jc(_$hash, imageMediaFiles.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, insertables.hashCode);
    _$hash = $jc(_$hash, bgMusic.hashCode);
    _$hash = $jc(_$hash, pitch.hashCode);
    _$hash = $jc(_$hash, hashtags.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateVoicepodVars')
          ..add('title', title)
          ..add('visibility', visibility)
          ..add('audioMediaFiles', audioMediaFiles)
          ..add('videoMediaFiles', videoMediaFiles)
          ..add('imageMediaFiles', imageMediaFiles)
          ..add('language', language)
          ..add('insertables', insertables)
          ..add('bgMusic', bgMusic)
          ..add('pitch', pitch)
          ..add('hashtags', hashtags)
          ..add('duration', duration))
        .toString();
  }
}

class GCreateVoicepodVarsBuilder
    implements Builder<GCreateVoicepodVars, GCreateVoicepodVarsBuilder> {
  _$GCreateVoicepodVars? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i2.GPostVisibility? _visibility;
  _i2.GPostVisibility? get visibility => _$this._visibility;
  set visibility(_i2.GPostVisibility? visibility) =>
      _$this._visibility = visibility;

  ListBuilder<String>? _audioMediaFiles;
  ListBuilder<String> get audioMediaFiles =>
      _$this._audioMediaFiles ??= new ListBuilder<String>();
  set audioMediaFiles(ListBuilder<String>? audioMediaFiles) =>
      _$this._audioMediaFiles = audioMediaFiles;

  ListBuilder<String>? _videoMediaFiles;
  ListBuilder<String> get videoMediaFiles =>
      _$this._videoMediaFiles ??= new ListBuilder<String>();
  set videoMediaFiles(ListBuilder<String>? videoMediaFiles) =>
      _$this._videoMediaFiles = videoMediaFiles;

  ListBuilder<String>? _imageMediaFiles;
  ListBuilder<String> get imageMediaFiles =>
      _$this._imageMediaFiles ??= new ListBuilder<String>();
  set imageMediaFiles(ListBuilder<String>? imageMediaFiles) =>
      _$this._imageMediaFiles = imageMediaFiles;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<String>? _insertables;
  ListBuilder<String> get insertables =>
      _$this._insertables ??= new ListBuilder<String>();
  set insertables(ListBuilder<String>? insertables) =>
      _$this._insertables = insertables;

  String? _bgMusic;
  String? get bgMusic => _$this._bgMusic;
  set bgMusic(String? bgMusic) => _$this._bgMusic = bgMusic;

  String? _pitch;
  String? get pitch => _$this._pitch;
  set pitch(String? pitch) => _$this._pitch = pitch;

  ListBuilder<String>? _hashtags;
  ListBuilder<String> get hashtags =>
      _$this._hashtags ??= new ListBuilder<String>();
  set hashtags(ListBuilder<String>? hashtags) => _$this._hashtags = hashtags;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  GCreateVoicepodVarsBuilder();

  GCreateVoicepodVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _visibility = $v.visibility;
      _audioMediaFiles = $v.audioMediaFiles.toBuilder();
      _videoMediaFiles = $v.videoMediaFiles?.toBuilder();
      _imageMediaFiles = $v.imageMediaFiles?.toBuilder();
      _language = $v.language;
      _insertables = $v.insertables?.toBuilder();
      _bgMusic = $v.bgMusic;
      _pitch = $v.pitch;
      _hashtags = $v.hashtags?.toBuilder();
      _duration = $v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVoicepodVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVoicepodVars;
  }

  @override
  void update(void Function(GCreateVoicepodVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVoicepodVars build() => _build();

  _$GCreateVoicepodVars _build() {
    _$GCreateVoicepodVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateVoicepodVars._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GCreateVoicepodVars', 'title'),
              visibility: visibility,
              audioMediaFiles: audioMediaFiles.build(),
              videoMediaFiles: _videoMediaFiles?.build(),
              imageMediaFiles: _imageMediaFiles?.build(),
              language: language,
              insertables: _insertables?.build(),
              bgMusic: bgMusic,
              pitch: pitch,
              hashtags: _hashtags?.build(),
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, r'GCreateVoicepodVars', 'duration'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'audioMediaFiles';
        audioMediaFiles.build();
        _$failedField = 'videoMediaFiles';
        _videoMediaFiles?.build();
        _$failedField = 'imageMediaFiles';
        _imageMediaFiles?.build();

        _$failedField = 'insertables';
        _insertables?.build();

        _$failedField = 'hashtags';
        _hashtags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVoicepodVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetVoicepodDetailsVars extends GGetVoicepodDetailsVars {
  @override
  final String postId;

  factory _$GGetVoicepodDetailsVars(
          [void Function(GGetVoicepodDetailsVarsBuilder)? updates]) =>
      (new GGetVoicepodDetailsVarsBuilder()..update(updates))._build();

  _$GGetVoicepodDetailsVars._({required this.postId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GGetVoicepodDetailsVars', 'postId');
  }

  @override
  GGetVoicepodDetailsVars rebuild(
          void Function(GGetVoicepodDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetVoicepodDetailsVarsBuilder toBuilder() =>
      new GGetVoicepodDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetVoicepodDetailsVars && postId == other.postId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetVoicepodDetailsVars')
          ..add('postId', postId))
        .toString();
  }
}

class GGetVoicepodDetailsVarsBuilder
    implements
        Builder<GGetVoicepodDetailsVars, GGetVoicepodDetailsVarsBuilder> {
  _$GGetVoicepodDetailsVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  GGetVoicepodDetailsVarsBuilder();

  GGetVoicepodDetailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetVoicepodDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetVoicepodDetailsVars;
  }

  @override
  void update(void Function(GGetVoicepodDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetVoicepodDetailsVars build() => _build();

  _$GGetVoicepodDetailsVars _build() {
    final _$result = _$v ??
        new _$GGetVoicepodDetailsVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GGetVoicepodDetailsVars', 'postId'));
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteVoicepodVars extends GDeleteVoicepodVars {
  @override
  final String postId;

  factory _$GDeleteVoicepodVars(
          [void Function(GDeleteVoicepodVarsBuilder)? updates]) =>
      (new GDeleteVoicepodVarsBuilder()..update(updates))._build();

  _$GDeleteVoicepodVars._({required this.postId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GDeleteVoicepodVars', 'postId');
  }

  @override
  GDeleteVoicepodVars rebuild(
          void Function(GDeleteVoicepodVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteVoicepodVarsBuilder toBuilder() =>
      new GDeleteVoicepodVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteVoicepodVars && postId == other.postId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteVoicepodVars')
          ..add('postId', postId))
        .toString();
  }
}

class GDeleteVoicepodVarsBuilder
    implements Builder<GDeleteVoicepodVars, GDeleteVoicepodVarsBuilder> {
  _$GDeleteVoicepodVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  GDeleteVoicepodVarsBuilder();

  GDeleteVoicepodVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteVoicepodVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteVoicepodVars;
  }

  @override
  void update(void Function(GDeleteVoicepodVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteVoicepodVars build() => _build();

  _$GDeleteVoicepodVars _build() {
    final _$result = _$v ??
        new _$GDeleteVoicepodVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GDeleteVoicepodVars', 'postId'));
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentVars extends GPostCommentVars {
  @override
  final String postId;
  @override
  final String comment;

  factory _$GPostCommentVars(
          [void Function(GPostCommentVarsBuilder)? updates]) =>
      (new GPostCommentVarsBuilder()..update(updates))._build();

  _$GPostCommentVars._({required this.postId, required this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GPostCommentVars', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        comment, r'GPostCommentVars', 'comment');
  }

  @override
  GPostCommentVars rebuild(void Function(GPostCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentVarsBuilder toBuilder() =>
      new GPostCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentVars &&
        postId == other.postId &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostCommentVars')
          ..add('postId', postId)
          ..add('comment', comment))
        .toString();
  }
}

class GPostCommentVarsBuilder
    implements Builder<GPostCommentVars, GPostCommentVarsBuilder> {
  _$GPostCommentVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GPostCommentVarsBuilder();

  GPostCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentVars;
  }

  @override
  void update(void Function(GPostCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentVars build() => _build();

  _$GPostCommentVars _build() {
    final _$result = _$v ??
        new _$GPostCommentVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GPostCommentVars', 'postId'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, r'GPostCommentVars', 'comment'));
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentReplyVars extends GPostCommentReplyVars {
  @override
  final String postId;
  @override
  final String reply;
  @override
  final String commentId;
  @override
  final String commentCreatedAt;

  factory _$GPostCommentReplyVars(
          [void Function(GPostCommentReplyVarsBuilder)? updates]) =>
      (new GPostCommentReplyVarsBuilder()..update(updates))._build();

  _$GPostCommentReplyVars._(
      {required this.postId,
      required this.reply,
      required this.commentId,
      required this.commentCreatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GPostCommentReplyVars', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        reply, r'GPostCommentReplyVars', 'reply');
    BuiltValueNullFieldError.checkNotNull(
        commentId, r'GPostCommentReplyVars', 'commentId');
    BuiltValueNullFieldError.checkNotNull(
        commentCreatedAt, r'GPostCommentReplyVars', 'commentCreatedAt');
  }

  @override
  GPostCommentReplyVars rebuild(
          void Function(GPostCommentReplyVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentReplyVarsBuilder toBuilder() =>
      new GPostCommentReplyVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentReplyVars &&
        postId == other.postId &&
        reply == other.reply &&
        commentId == other.commentId &&
        commentCreatedAt == other.commentCreatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, reply.hashCode);
    _$hash = $jc(_$hash, commentId.hashCode);
    _$hash = $jc(_$hash, commentCreatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostCommentReplyVars')
          ..add('postId', postId)
          ..add('reply', reply)
          ..add('commentId', commentId)
          ..add('commentCreatedAt', commentCreatedAt))
        .toString();
  }
}

class GPostCommentReplyVarsBuilder
    implements Builder<GPostCommentReplyVars, GPostCommentReplyVarsBuilder> {
  _$GPostCommentReplyVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _reply;
  String? get reply => _$this._reply;
  set reply(String? reply) => _$this._reply = reply;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  String? _commentCreatedAt;
  String? get commentCreatedAt => _$this._commentCreatedAt;
  set commentCreatedAt(String? commentCreatedAt) =>
      _$this._commentCreatedAt = commentCreatedAt;

  GPostCommentReplyVarsBuilder();

  GPostCommentReplyVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _reply = $v.reply;
      _commentId = $v.commentId;
      _commentCreatedAt = $v.commentCreatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentReplyVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentReplyVars;
  }

  @override
  void update(void Function(GPostCommentReplyVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentReplyVars build() => _build();

  _$GPostCommentReplyVars _build() {
    final _$result = _$v ??
        new _$GPostCommentReplyVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GPostCommentReplyVars', 'postId'),
            reply: BuiltValueNullFieldError.checkNotNull(
                reply, r'GPostCommentReplyVars', 'reply'),
            commentId: BuiltValueNullFieldError.checkNotNull(
                commentId, r'GPostCommentReplyVars', 'commentId'),
            commentCreatedAt: BuiltValueNullFieldError.checkNotNull(
                commentCreatedAt,
                r'GPostCommentReplyVars',
                'commentCreatedAt'));
    replace(_$result);
    return _$result;
  }
}

class _$GPostDetailsVars extends GPostDetailsVars {
  factory _$GPostDetailsVars(
          [void Function(GPostDetailsVarsBuilder)? updates]) =>
      (new GPostDetailsVarsBuilder()..update(updates))._build();

  _$GPostDetailsVars._() : super._();

  @override
  GPostDetailsVars rebuild(void Function(GPostDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostDetailsVarsBuilder toBuilder() =>
      new GPostDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostDetailsVars;
  }

  @override
  int get hashCode {
    return 65588237;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPostDetailsVars').toString();
  }
}

class GPostDetailsVarsBuilder
    implements Builder<GPostDetailsVars, GPostDetailsVarsBuilder> {
  _$GPostDetailsVars? _$v;

  GPostDetailsVarsBuilder();

  @override
  void replace(GPostDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostDetailsVars;
  }

  @override
  void update(void Function(GPostDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostDetailsVars build() => _build();

  _$GPostDetailsVars _build() {
    final _$result = _$v ?? new _$GPostDetailsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GVPCommentVars extends GVPCommentVars {
  factory _$GVPCommentVars([void Function(GVPCommentVarsBuilder)? updates]) =>
      (new GVPCommentVarsBuilder()..update(updates))._build();

  _$GVPCommentVars._() : super._();

  @override
  GVPCommentVars rebuild(void Function(GVPCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVPCommentVarsBuilder toBuilder() =>
      new GVPCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVPCommentVars;
  }

  @override
  int get hashCode {
    return 678146746;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GVPCommentVars').toString();
  }
}

class GVPCommentVarsBuilder
    implements Builder<GVPCommentVars, GVPCommentVarsBuilder> {
  _$GVPCommentVars? _$v;

  GVPCommentVarsBuilder();

  @override
  void replace(GVPCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVPCommentVars;
  }

  @override
  void update(void Function(GVPCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVPCommentVars build() => _build();

  _$GVPCommentVars _build() {
    final _$result = _$v ?? new _$GVPCommentVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GVPCommentReplyVars extends GVPCommentReplyVars {
  factory _$GVPCommentReplyVars(
          [void Function(GVPCommentReplyVarsBuilder)? updates]) =>
      (new GVPCommentReplyVarsBuilder()..update(updates))._build();

  _$GVPCommentReplyVars._() : super._();

  @override
  GVPCommentReplyVars rebuild(
          void Function(GVPCommentReplyVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVPCommentReplyVarsBuilder toBuilder() =>
      new GVPCommentReplyVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVPCommentReplyVars;
  }

  @override
  int get hashCode {
    return 878227089;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GVPCommentReplyVars').toString();
  }
}

class GVPCommentReplyVarsBuilder
    implements Builder<GVPCommentReplyVars, GVPCommentReplyVarsBuilder> {
  _$GVPCommentReplyVars? _$v;

  GVPCommentReplyVarsBuilder();

  @override
  void replace(GVPCommentReplyVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVPCommentReplyVars;
  }

  @override
  void update(void Function(GVPCommentReplyVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVPCommentReplyVars build() => _build();

  _$GVPCommentReplyVars _build() {
    final _$result = _$v ?? new _$GVPCommentReplyVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GLanguageVars extends GLanguageVars {
  factory _$GLanguageVars([void Function(GLanguageVarsBuilder)? updates]) =>
      (new GLanguageVarsBuilder()..update(updates))._build();

  _$GLanguageVars._() : super._();

  @override
  GLanguageVars rebuild(void Function(GLanguageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLanguageVarsBuilder toBuilder() => new GLanguageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLanguageVars;
  }

  @override
  int get hashCode {
    return 156131946;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GLanguageVars').toString();
  }
}

class GLanguageVarsBuilder
    implements Builder<GLanguageVars, GLanguageVarsBuilder> {
  _$GLanguageVars? _$v;

  GLanguageVarsBuilder();

  @override
  void replace(GLanguageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLanguageVars;
  }

  @override
  void update(void Function(GLanguageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLanguageVars build() => _build();

  _$GLanguageVars _build() {
    final _$result = _$v ?? new _$GLanguageVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
