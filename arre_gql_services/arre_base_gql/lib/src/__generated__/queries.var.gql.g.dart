// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GTrendingHashtagsVars> _$gTrendingHashtagsVarsSerializer =
    new _$GTrendingHashtagsVarsSerializer();
Serializer<GDeletePostVars> _$gDeletePostVarsSerializer =
    new _$GDeletePostVarsSerializer();
Serializer<GLikePostVars> _$gLikePostVarsSerializer =
    new _$GLikePostVarsSerializer();
Serializer<GUnlikePostVars> _$gUnlikePostVarsSerializer =
    new _$GUnlikePostVarsSerializer();
Serializer<GPostCommentsRepliesVars> _$gPostCommentsRepliesVarsSerializer =
    new _$GPostCommentsRepliesVarsSerializer();
Serializer<GPostVoicepodCommentVars> _$gPostVoicepodCommentVarsSerializer =
    new _$GPostVoicepodCommentVarsSerializer();
Serializer<GLikePostCommentVars> _$gLikePostCommentVarsSerializer =
    new _$GLikePostCommentVarsSerializer();
Serializer<GUnlikePostCommentVars> _$gUnlikePostCommentVarsSerializer =
    new _$GUnlikePostCommentVarsSerializer();
Serializer<GBlockUserVars> _$gBlockUserVarsSerializer =
    new _$GBlockUserVarsSerializer();

class _$GTrendingHashtagsVarsSerializer
    implements StructuredSerializer<GTrendingHashtagsVars> {
  @override
  final Iterable<Type> types = const [
    GTrendingHashtagsVars,
    _$GTrendingHashtagsVars
  ];
  @override
  final String wireName = 'GTrendingHashtagsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTrendingHashtagsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GTrendingHashtagsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GTrendingHashtagsVarsBuilder().build();
  }
}

class _$GDeletePostVarsSerializer
    implements StructuredSerializer<GDeletePostVars> {
  @override
  final Iterable<Type> types = const [GDeletePostVars, _$GDeletePostVars];
  @override
  final String wireName = 'GDeletePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeletePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'postType',
      serializers.serialize(object.postType,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GDeletePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletePostVarsBuilder();

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
        case 'postType':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostVarsSerializer implements StructuredSerializer<GLikePostVars> {
  @override
  final Iterable<Type> types = const [GLikePostVars, _$GLikePostVars];
  @override
  final String wireName = 'GLikePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLikePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLikePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostVarsBuilder();

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

class _$GUnlikePostVarsSerializer
    implements StructuredSerializer<GUnlikePostVars> {
  @override
  final Iterable<Type> types = const [GUnlikePostVars, _$GUnlikePostVars];
  @override
  final String wireName = 'GUnlikePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUnlikePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUnlikePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnlikePostVarsBuilder();

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

class _$GPostCommentsRepliesVarsSerializer
    implements StructuredSerializer<GPostCommentsRepliesVars> {
  @override
  final Iterable<Type> types = const [
    GPostCommentsRepliesVars,
    _$GPostCommentsRepliesVars
  ];
  @override
  final String wireName = 'GPostCommentsRepliesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentsRepliesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GPostCommentsRepliesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentsRepliesVarsBuilder();

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
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostVoicepodCommentVarsSerializer
    implements StructuredSerializer<GPostVoicepodCommentVars> {
  @override
  final Iterable<Type> types = const [
    GPostVoicepodCommentVars,
    _$GPostVoicepodCommentVars
  ];
  @override
  final String wireName = 'GPostVoicepodCommentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostVoicepodCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GsendPostReplyInput)));
    }
    return result;
  }

  @override
  GPostVoicepodCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostVoicepodCommentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GsendPostReplyInput))!
              as _i2.GsendPostReplyInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostCommentVarsSerializer
    implements StructuredSerializer<GLikePostCommentVars> {
  @override
  final Iterable<Type> types = const [
    GLikePostCommentVars,
    _$GLikePostCommentVars
  ];
  @override
  final String wireName = 'GLikePostCommentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLikePostCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.replyId;
    if (value != null) {
      result
        ..add('replyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interactionType;
    if (value != null) {
      result
        ..add('interactionType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.level;
    if (value != null) {
      result
        ..add('level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.parentID;
    if (value != null) {
      result
        ..add('parentID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GLikePostCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostCommentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyId':
          result.replyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interactionType':
          result.interactionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'parentID':
          result.parentID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUnlikePostCommentVarsSerializer
    implements StructuredSerializer<GUnlikePostCommentVars> {
  @override
  final Iterable<Type> types = const [
    GUnlikePostCommentVars,
    _$GUnlikePostCommentVars
  ];
  @override
  final String wireName = 'GUnlikePostCommentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUnlikePostCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.replyId;
    if (value != null) {
      result
        ..add('replyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interactionType;
    if (value != null) {
      result
        ..add('interactionType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.level;
    if (value != null) {
      result
        ..add('level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.parentID;
    if (value != null) {
      result
        ..add('parentID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUnlikePostCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnlikePostCommentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyId':
          result.replyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interactionType':
          result.interactionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'parentID':
          result.parentID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GBlockUserVarsSerializer
    implements StructuredSerializer<GBlockUserVars> {
  @override
  final Iterable<Type> types = const [GBlockUserVars, _$GBlockUserVars];
  @override
  final String wireName = 'GBlockUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBlockUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.blockUserId;
    if (value != null) {
      result
        ..add('blockUserId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GBlockUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBlockUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'blockUserId':
          result.blockUserId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GTrendingHashtagsVars extends GTrendingHashtagsVars {
  factory _$GTrendingHashtagsVars(
          [void Function(GTrendingHashtagsVarsBuilder)? updates]) =>
      (new GTrendingHashtagsVarsBuilder()..update(updates))._build();

  _$GTrendingHashtagsVars._() : super._();

  @override
  GTrendingHashtagsVars rebuild(
          void Function(GTrendingHashtagsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTrendingHashtagsVarsBuilder toBuilder() =>
      new GTrendingHashtagsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTrendingHashtagsVars;
  }

  @override
  int get hashCode {
    return 712149585;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GTrendingHashtagsVars').toString();
  }
}

class GTrendingHashtagsVarsBuilder
    implements Builder<GTrendingHashtagsVars, GTrendingHashtagsVarsBuilder> {
  _$GTrendingHashtagsVars? _$v;

  GTrendingHashtagsVarsBuilder();

  @override
  void replace(GTrendingHashtagsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTrendingHashtagsVars;
  }

  @override
  void update(void Function(GTrendingHashtagsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTrendingHashtagsVars build() => _build();

  _$GTrendingHashtagsVars _build() {
    final _$result = _$v ?? new _$GTrendingHashtagsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GDeletePostVars extends GDeletePostVars {
  @override
  final String postId;
  @override
  final int postType;

  factory _$GDeletePostVars([void Function(GDeletePostVarsBuilder)? updates]) =>
      (new GDeletePostVarsBuilder()..update(updates))._build();

  _$GDeletePostVars._({required this.postId, required this.postType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(postId, r'GDeletePostVars', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        postType, r'GDeletePostVars', 'postType');
  }

  @override
  GDeletePostVars rebuild(void Function(GDeletePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletePostVarsBuilder toBuilder() =>
      new GDeletePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeletePostVars &&
        postId == other.postId &&
        postType == other.postType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, postType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeletePostVars')
          ..add('postId', postId)
          ..add('postType', postType))
        .toString();
  }
}

class GDeletePostVarsBuilder
    implements Builder<GDeletePostVars, GDeletePostVarsBuilder> {
  _$GDeletePostVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  int? _postType;
  int? get postType => _$this._postType;
  set postType(int? postType) => _$this._postType = postType;

  GDeletePostVarsBuilder();

  GDeletePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _postType = $v.postType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeletePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletePostVars;
  }

  @override
  void update(void Function(GDeletePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeletePostVars build() => _build();

  _$GDeletePostVars _build() {
    final _$result = _$v ??
        new _$GDeletePostVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GDeletePostVars', 'postId'),
            postType: BuiltValueNullFieldError.checkNotNull(
                postType, r'GDeletePostVars', 'postType'));
    replace(_$result);
    return _$result;
  }
}

class _$GLikePostVars extends GLikePostVars {
  @override
  final String postId;

  factory _$GLikePostVars([void Function(GLikePostVarsBuilder)? updates]) =>
      (new GLikePostVarsBuilder()..update(updates))._build();

  _$GLikePostVars._({required this.postId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(postId, r'GLikePostVars', 'postId');
  }

  @override
  GLikePostVars rebuild(void Function(GLikePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostVarsBuilder toBuilder() => new GLikePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostVars && postId == other.postId;
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
    return (newBuiltValueToStringHelper(r'GLikePostVars')
          ..add('postId', postId))
        .toString();
  }
}

class GLikePostVarsBuilder
    implements Builder<GLikePostVars, GLikePostVarsBuilder> {
  _$GLikePostVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  GLikePostVarsBuilder();

  GLikePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostVars;
  }

  @override
  void update(void Function(GLikePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikePostVars build() => _build();

  _$GLikePostVars _build() {
    final _$result = _$v ??
        new _$GLikePostVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GLikePostVars', 'postId'));
    replace(_$result);
    return _$result;
  }
}

class _$GUnlikePostVars extends GUnlikePostVars {
  @override
  final String postId;

  factory _$GUnlikePostVars([void Function(GUnlikePostVarsBuilder)? updates]) =>
      (new GUnlikePostVarsBuilder()..update(updates))._build();

  _$GUnlikePostVars._({required this.postId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(postId, r'GUnlikePostVars', 'postId');
  }

  @override
  GUnlikePostVars rebuild(void Function(GUnlikePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnlikePostVarsBuilder toBuilder() =>
      new GUnlikePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUnlikePostVars && postId == other.postId;
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
    return (newBuiltValueToStringHelper(r'GUnlikePostVars')
          ..add('postId', postId))
        .toString();
  }
}

class GUnlikePostVarsBuilder
    implements Builder<GUnlikePostVars, GUnlikePostVarsBuilder> {
  _$GUnlikePostVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  GUnlikePostVarsBuilder();

  GUnlikePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUnlikePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnlikePostVars;
  }

  @override
  void update(void Function(GUnlikePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnlikePostVars build() => _build();

  _$GUnlikePostVars _build() {
    final _$result = _$v ??
        new _$GUnlikePostVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GUnlikePostVars', 'postId'));
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentsRepliesVars extends GPostCommentsRepliesVars {
  @override
  final String postId;
  @override
  final int? limit;
  @override
  final int? offset;

  factory _$GPostCommentsRepliesVars(
          [void Function(GPostCommentsRepliesVarsBuilder)? updates]) =>
      (new GPostCommentsRepliesVarsBuilder()..update(updates))._build();

  _$GPostCommentsRepliesVars._({required this.postId, this.limit, this.offset})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GPostCommentsRepliesVars', 'postId');
  }

  @override
  GPostCommentsRepliesVars rebuild(
          void Function(GPostCommentsRepliesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentsRepliesVarsBuilder toBuilder() =>
      new GPostCommentsRepliesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentsRepliesVars &&
        postId == other.postId &&
        limit == other.limit &&
        offset == other.offset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostCommentsRepliesVars')
          ..add('postId', postId)
          ..add('limit', limit)
          ..add('offset', offset))
        .toString();
  }
}

class GPostCommentsRepliesVarsBuilder
    implements
        Builder<GPostCommentsRepliesVars, GPostCommentsRepliesVarsBuilder> {
  _$GPostCommentsRepliesVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  GPostCommentsRepliesVarsBuilder();

  GPostCommentsRepliesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _limit = $v.limit;
      _offset = $v.offset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentsRepliesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentsRepliesVars;
  }

  @override
  void update(void Function(GPostCommentsRepliesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentsRepliesVars build() => _build();

  _$GPostCommentsRepliesVars _build() {
    final _$result = _$v ??
        new _$GPostCommentsRepliesVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GPostCommentsRepliesVars', 'postId'),
            limit: limit,
            offset: offset);
    replace(_$result);
    return _$result;
  }
}

class _$GPostVoicepodCommentVars extends GPostVoicepodCommentVars {
  @override
  final _i2.GsendPostReplyInput? input;

  factory _$GPostVoicepodCommentVars(
          [void Function(GPostVoicepodCommentVarsBuilder)? updates]) =>
      (new GPostVoicepodCommentVarsBuilder()..update(updates))._build();

  _$GPostVoicepodCommentVars._({this.input}) : super._();

  @override
  GPostVoicepodCommentVars rebuild(
          void Function(GPostVoicepodCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostVoicepodCommentVarsBuilder toBuilder() =>
      new GPostVoicepodCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostVoicepodCommentVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostVoicepodCommentVars')
          ..add('input', input))
        .toString();
  }
}

class GPostVoicepodCommentVarsBuilder
    implements
        Builder<GPostVoicepodCommentVars, GPostVoicepodCommentVarsBuilder> {
  _$GPostVoicepodCommentVars? _$v;

  _i2.GsendPostReplyInputBuilder? _input;
  _i2.GsendPostReplyInputBuilder get input =>
      _$this._input ??= new _i2.GsendPostReplyInputBuilder();
  set input(_i2.GsendPostReplyInputBuilder? input) => _$this._input = input;

  GPostVoicepodCommentVarsBuilder();

  GPostVoicepodCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostVoicepodCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostVoicepodCommentVars;
  }

  @override
  void update(void Function(GPostVoicepodCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostVoicepodCommentVars build() => _build();

  _$GPostVoicepodCommentVars _build() {
    _$GPostVoicepodCommentVars _$result;
    try {
      _$result =
          _$v ?? new _$GPostVoicepodCommentVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostVoicepodCommentVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLikePostCommentVars extends GLikePostCommentVars {
  @override
  final String? postId;
  @override
  final String? replyId;
  @override
  final String? interactionType;
  @override
  final int? level;
  @override
  final String? parentID;

  factory _$GLikePostCommentVars(
          [void Function(GLikePostCommentVarsBuilder)? updates]) =>
      (new GLikePostCommentVarsBuilder()..update(updates))._build();

  _$GLikePostCommentVars._(
      {this.postId,
      this.replyId,
      this.interactionType,
      this.level,
      this.parentID})
      : super._();

  @override
  GLikePostCommentVars rebuild(
          void Function(GLikePostCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostCommentVarsBuilder toBuilder() =>
      new GLikePostCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostCommentVars &&
        postId == other.postId &&
        replyId == other.replyId &&
        interactionType == other.interactionType &&
        level == other.level &&
        parentID == other.parentID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, replyId.hashCode);
    _$hash = $jc(_$hash, interactionType.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, parentID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLikePostCommentVars')
          ..add('postId', postId)
          ..add('replyId', replyId)
          ..add('interactionType', interactionType)
          ..add('level', level)
          ..add('parentID', parentID))
        .toString();
  }
}

class GLikePostCommentVarsBuilder
    implements Builder<GLikePostCommentVars, GLikePostCommentVarsBuilder> {
  _$GLikePostCommentVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _replyId;
  String? get replyId => _$this._replyId;
  set replyId(String? replyId) => _$this._replyId = replyId;

  String? _interactionType;
  String? get interactionType => _$this._interactionType;
  set interactionType(String? interactionType) =>
      _$this._interactionType = interactionType;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  String? _parentID;
  String? get parentID => _$this._parentID;
  set parentID(String? parentID) => _$this._parentID = parentID;

  GLikePostCommentVarsBuilder();

  GLikePostCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _replyId = $v.replyId;
      _interactionType = $v.interactionType;
      _level = $v.level;
      _parentID = $v.parentID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostCommentVars;
  }

  @override
  void update(void Function(GLikePostCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikePostCommentVars build() => _build();

  _$GLikePostCommentVars _build() {
    final _$result = _$v ??
        new _$GLikePostCommentVars._(
            postId: postId,
            replyId: replyId,
            interactionType: interactionType,
            level: level,
            parentID: parentID);
    replace(_$result);
    return _$result;
  }
}

class _$GUnlikePostCommentVars extends GUnlikePostCommentVars {
  @override
  final String? postId;
  @override
  final String? replyId;
  @override
  final String? interactionType;
  @override
  final int? level;
  @override
  final String? parentID;

  factory _$GUnlikePostCommentVars(
          [void Function(GUnlikePostCommentVarsBuilder)? updates]) =>
      (new GUnlikePostCommentVarsBuilder()..update(updates))._build();

  _$GUnlikePostCommentVars._(
      {this.postId,
      this.replyId,
      this.interactionType,
      this.level,
      this.parentID})
      : super._();

  @override
  GUnlikePostCommentVars rebuild(
          void Function(GUnlikePostCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnlikePostCommentVarsBuilder toBuilder() =>
      new GUnlikePostCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUnlikePostCommentVars &&
        postId == other.postId &&
        replyId == other.replyId &&
        interactionType == other.interactionType &&
        level == other.level &&
        parentID == other.parentID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, replyId.hashCode);
    _$hash = $jc(_$hash, interactionType.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, parentID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUnlikePostCommentVars')
          ..add('postId', postId)
          ..add('replyId', replyId)
          ..add('interactionType', interactionType)
          ..add('level', level)
          ..add('parentID', parentID))
        .toString();
  }
}

class GUnlikePostCommentVarsBuilder
    implements Builder<GUnlikePostCommentVars, GUnlikePostCommentVarsBuilder> {
  _$GUnlikePostCommentVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _replyId;
  String? get replyId => _$this._replyId;
  set replyId(String? replyId) => _$this._replyId = replyId;

  String? _interactionType;
  String? get interactionType => _$this._interactionType;
  set interactionType(String? interactionType) =>
      _$this._interactionType = interactionType;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  String? _parentID;
  String? get parentID => _$this._parentID;
  set parentID(String? parentID) => _$this._parentID = parentID;

  GUnlikePostCommentVarsBuilder();

  GUnlikePostCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _replyId = $v.replyId;
      _interactionType = $v.interactionType;
      _level = $v.level;
      _parentID = $v.parentID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUnlikePostCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnlikePostCommentVars;
  }

  @override
  void update(void Function(GUnlikePostCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnlikePostCommentVars build() => _build();

  _$GUnlikePostCommentVars _build() {
    final _$result = _$v ??
        new _$GUnlikePostCommentVars._(
            postId: postId,
            replyId: replyId,
            interactionType: interactionType,
            level: level,
            parentID: parentID);
    replace(_$result);
    return _$result;
  }
}

class _$GBlockUserVars extends GBlockUserVars {
  @override
  final int? blockUserId;

  factory _$GBlockUserVars([void Function(GBlockUserVarsBuilder)? updates]) =>
      (new GBlockUserVarsBuilder()..update(updates))._build();

  _$GBlockUserVars._({this.blockUserId}) : super._();

  @override
  GBlockUserVars rebuild(void Function(GBlockUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBlockUserVarsBuilder toBuilder() =>
      new GBlockUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBlockUserVars && blockUserId == other.blockUserId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockUserId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBlockUserVars')
          ..add('blockUserId', blockUserId))
        .toString();
  }
}

class GBlockUserVarsBuilder
    implements Builder<GBlockUserVars, GBlockUserVarsBuilder> {
  _$GBlockUserVars? _$v;

  int? _blockUserId;
  int? get blockUserId => _$this._blockUserId;
  set blockUserId(int? blockUserId) => _$this._blockUserId = blockUserId;

  GBlockUserVarsBuilder();

  GBlockUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockUserId = $v.blockUserId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBlockUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBlockUserVars;
  }

  @override
  void update(void Function(GBlockUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBlockUserVars build() => _build();

  _$GBlockUserVars _build() {
    final _$result = _$v ?? new _$GBlockUserVars._(blockUserId: blockUserId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
