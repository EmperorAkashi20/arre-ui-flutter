// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_requests.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPlaylistDetailsVars> _$gPlaylistDetailsVarsSerializer =
    new _$GPlaylistDetailsVarsSerializer();
Serializer<GPlaylistByUserIdVars> _$gPlaylistByUserIdVarsSerializer =
    new _$GPlaylistByUserIdVarsSerializer();
Serializer<GCreatePlaylistVars> _$gCreatePlaylistVarsSerializer =
    new _$GCreatePlaylistVarsSerializer();
Serializer<GEditPlaylistVars> _$gEditPlaylistVarsSerializer =
    new _$GEditPlaylistVarsSerializer();
Serializer<GDeletePlaylistVars> _$gDeletePlaylistVarsSerializer =
    new _$GDeletePlaylistVarsSerializer();
Serializer<GAddPostToPlaylistVars> _$gAddPostToPlaylistVarsSerializer =
    new _$GAddPostToPlaylistVarsSerializer();
Serializer<GSavePostToDefaultPlaylistVars>
    _$gSavePostToDefaultPlaylistVarsSerializer =
    new _$GSavePostToDefaultPlaylistVarsSerializer();
Serializer<GRemovePostFromPlaylistVars>
    _$gRemovePostFromPlaylistVarsSerializer =
    new _$GRemovePostFromPlaylistVarsSerializer();
Serializer<GPlaylistVars> _$gPlaylistVarsSerializer =
    new _$GPlaylistVarsSerializer();

class _$GPlaylistDetailsVarsSerializer
    implements StructuredSerializer<GPlaylistDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GPlaylistDetailsVars,
    _$GPlaylistDetailsVars
  ];
  @override
  final String wireName = 'GPlaylistDetailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPlaylistDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistDetailsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPlaylistByUserIdVarsSerializer
    implements StructuredSerializer<GPlaylistByUserIdVars> {
  @override
  final Iterable<Type> types = const [
    GPlaylistByUserIdVars,
    _$GPlaylistByUserIdVars
  ];
  @override
  final String wireName = 'GPlaylistByUserIdVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistByUserIdVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(_i2.GprivacyType)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'after',
      serializers.serialize(object.after,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPlaylistByUserIdVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistByUserIdVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GprivacyType))!
              as _i2.GprivacyType;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'after':
          result.after = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePlaylistVarsSerializer
    implements StructuredSerializer<GCreatePlaylistVars> {
  @override
  final Iterable<Type> types = const [
    GCreatePlaylistVars,
    _$GCreatePlaylistVars
  ];
  @override
  final String wireName = 'GCreatePlaylistVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePlaylistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreatePlaylistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePlaylistVarsBuilder();

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
        case 'privacy':
          result.privacy = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GEditPlaylistVarsSerializer
    implements StructuredSerializer<GEditPlaylistVars> {
  @override
  final Iterable<Type> types = const [GEditPlaylistVars, _$GEditPlaylistVars];
  @override
  final String wireName = 'GEditPlaylistVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GEditPlaylistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.privacy;
    if (value != null) {
      result
        ..add('privacy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GEditPlaylistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEditPlaylistVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'privacy':
          result.privacy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeletePlaylistVarsSerializer
    implements StructuredSerializer<GDeletePlaylistVars> {
  @override
  final Iterable<Type> types = const [
    GDeletePlaylistVars,
    _$GDeletePlaylistVars
  ];
  @override
  final String wireName = 'GDeletePlaylistVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeletePlaylistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeletePlaylistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletePlaylistVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddPostToPlaylistVarsSerializer
    implements StructuredSerializer<GAddPostToPlaylistVars> {
  @override
  final Iterable<Type> types = const [
    GAddPostToPlaylistVars,
    _$GAddPostToPlaylistVars
  ];
  @override
  final String wireName = 'GAddPostToPlaylistVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddPostToPlaylistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'voicePodId',
      serializers.serialize(object.voicePodId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAddPostToPlaylistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddPostToPlaylistVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'voicePodId':
          result.voicePodId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSavePostToDefaultPlaylistVarsSerializer
    implements StructuredSerializer<GSavePostToDefaultPlaylistVars> {
  @override
  final Iterable<Type> types = const [
    GSavePostToDefaultPlaylistVars,
    _$GSavePostToDefaultPlaylistVars
  ];
  @override
  final String wireName = 'GSavePostToDefaultPlaylistVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSavePostToDefaultPlaylistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'voicePodId',
      serializers.serialize(object.voicePodId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSavePostToDefaultPlaylistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSavePostToDefaultPlaylistVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'voicePodId':
          result.voicePodId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemovePostFromPlaylistVarsSerializer
    implements StructuredSerializer<GRemovePostFromPlaylistVars> {
  @override
  final Iterable<Type> types = const [
    GRemovePostFromPlaylistVars,
    _$GRemovePostFromPlaylistVars
  ];
  @override
  final String wireName = 'GRemovePostFromPlaylistVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemovePostFromPlaylistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'voicePodId',
      serializers.serialize(object.voicePodId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRemovePostFromPlaylistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemovePostFromPlaylistVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'voicePodId':
          result.voicePodId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPlaylistVarsSerializer implements StructuredSerializer<GPlaylistVars> {
  @override
  final Iterable<Type> types = const [GPlaylistVars, _$GPlaylistVars];
  @override
  final String wireName = 'GPlaylistVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPlaylistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPlaylistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPlaylistVarsBuilder().build();
  }
}

class _$GPlaylistDetailsVars extends GPlaylistDetailsVars {
  @override
  final String playlistId;

  factory _$GPlaylistDetailsVars(
          [void Function(GPlaylistDetailsVarsBuilder)? updates]) =>
      (new GPlaylistDetailsVarsBuilder()..update(updates))._build();

  _$GPlaylistDetailsVars._({required this.playlistId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GPlaylistDetailsVars', 'playlistId');
  }

  @override
  GPlaylistDetailsVars rebuild(
          void Function(GPlaylistDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistDetailsVarsBuilder toBuilder() =>
      new GPlaylistDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistDetailsVars && playlistId == other.playlistId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPlaylistDetailsVars')
          ..add('playlistId', playlistId))
        .toString();
  }
}

class GPlaylistDetailsVarsBuilder
    implements Builder<GPlaylistDetailsVars, GPlaylistDetailsVarsBuilder> {
  _$GPlaylistDetailsVars? _$v;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  GPlaylistDetailsVarsBuilder();

  GPlaylistDetailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playlistId = $v.playlistId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPlaylistDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistDetailsVars;
  }

  @override
  void update(void Function(GPlaylistDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistDetailsVars build() => _build();

  _$GPlaylistDetailsVars _build() {
    final _$result = _$v ??
        new _$GPlaylistDetailsVars._(
            playlistId: BuiltValueNullFieldError.checkNotNull(
                playlistId, r'GPlaylistDetailsVars', 'playlistId'));
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistByUserIdVars extends GPlaylistByUserIdVars {
  @override
  final _i2.GprivacyType privacy;
  @override
  final String userId;
  @override
  final String after;

  factory _$GPlaylistByUserIdVars(
          [void Function(GPlaylistByUserIdVarsBuilder)? updates]) =>
      (new GPlaylistByUserIdVarsBuilder()..update(updates))._build();

  _$GPlaylistByUserIdVars._(
      {required this.privacy, required this.userId, required this.after})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        privacy, r'GPlaylistByUserIdVars', 'privacy');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GPlaylistByUserIdVars', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        after, r'GPlaylistByUserIdVars', 'after');
  }

  @override
  GPlaylistByUserIdVars rebuild(
          void Function(GPlaylistByUserIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistByUserIdVarsBuilder toBuilder() =>
      new GPlaylistByUserIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistByUserIdVars &&
        privacy == other.privacy &&
        userId == other.userId &&
        after == other.after;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPlaylistByUserIdVars')
          ..add('privacy', privacy)
          ..add('userId', userId)
          ..add('after', after))
        .toString();
  }
}

class GPlaylistByUserIdVarsBuilder
    implements Builder<GPlaylistByUserIdVars, GPlaylistByUserIdVarsBuilder> {
  _$GPlaylistByUserIdVars? _$v;

  _i2.GprivacyType? _privacy;
  _i2.GprivacyType? get privacy => _$this._privacy;
  set privacy(_i2.GprivacyType? privacy) => _$this._privacy = privacy;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  GPlaylistByUserIdVarsBuilder();

  GPlaylistByUserIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _privacy = $v.privacy;
      _userId = $v.userId;
      _after = $v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPlaylistByUserIdVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistByUserIdVars;
  }

  @override
  void update(void Function(GPlaylistByUserIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistByUserIdVars build() => _build();

  _$GPlaylistByUserIdVars _build() {
    final _$result = _$v ??
        new _$GPlaylistByUserIdVars._(
            privacy: BuiltValueNullFieldError.checkNotNull(
                privacy, r'GPlaylistByUserIdVars', 'privacy'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GPlaylistByUserIdVars', 'userId'),
            after: BuiltValueNullFieldError.checkNotNull(
                after, r'GPlaylistByUserIdVars', 'after'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePlaylistVars extends GCreatePlaylistVars {
  @override
  final String title;
  @override
  final String privacy;
  @override
  final String? coverImage;

  factory _$GCreatePlaylistVars(
          [void Function(GCreatePlaylistVarsBuilder)? updates]) =>
      (new GCreatePlaylistVarsBuilder()..update(updates))._build();

  _$GCreatePlaylistVars._(
      {required this.title, required this.privacy, this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'GCreatePlaylistVars', 'title');
    BuiltValueNullFieldError.checkNotNull(
        privacy, r'GCreatePlaylistVars', 'privacy');
  }

  @override
  GCreatePlaylistVars rebuild(
          void Function(GCreatePlaylistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePlaylistVarsBuilder toBuilder() =>
      new GCreatePlaylistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePlaylistVars &&
        title == other.title &&
        privacy == other.privacy &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePlaylistVars')
          ..add('title', title)
          ..add('privacy', privacy)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GCreatePlaylistVarsBuilder
    implements Builder<GCreatePlaylistVars, GCreatePlaylistVarsBuilder> {
  _$GCreatePlaylistVars? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _privacy;
  String? get privacy => _$this._privacy;
  set privacy(String? privacy) => _$this._privacy = privacy;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  GCreatePlaylistVarsBuilder();

  GCreatePlaylistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _privacy = $v.privacy;
      _coverImage = $v.coverImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePlaylistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePlaylistVars;
  }

  @override
  void update(void Function(GCreatePlaylistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePlaylistVars build() => _build();

  _$GCreatePlaylistVars _build() {
    final _$result = _$v ??
        new _$GCreatePlaylistVars._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GCreatePlaylistVars', 'title'),
            privacy: BuiltValueNullFieldError.checkNotNull(
                privacy, r'GCreatePlaylistVars', 'privacy'),
            coverImage: coverImage);
    replace(_$result);
    return _$result;
  }
}

class _$GEditPlaylistVars extends GEditPlaylistVars {
  @override
  final String playlistId;
  @override
  final String? title;
  @override
  final String? privacy;
  @override
  final String? coverImage;

  factory _$GEditPlaylistVars(
          [void Function(GEditPlaylistVarsBuilder)? updates]) =>
      (new GEditPlaylistVarsBuilder()..update(updates))._build();

  _$GEditPlaylistVars._(
      {required this.playlistId, this.title, this.privacy, this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GEditPlaylistVars', 'playlistId');
  }

  @override
  GEditPlaylistVars rebuild(void Function(GEditPlaylistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEditPlaylistVarsBuilder toBuilder() =>
      new GEditPlaylistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEditPlaylistVars &&
        playlistId == other.playlistId &&
        title == other.title &&
        privacy == other.privacy &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GEditPlaylistVars')
          ..add('playlistId', playlistId)
          ..add('title', title)
          ..add('privacy', privacy)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GEditPlaylistVarsBuilder
    implements Builder<GEditPlaylistVars, GEditPlaylistVarsBuilder> {
  _$GEditPlaylistVars? _$v;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _privacy;
  String? get privacy => _$this._privacy;
  set privacy(String? privacy) => _$this._privacy = privacy;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  GEditPlaylistVarsBuilder();

  GEditPlaylistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playlistId = $v.playlistId;
      _title = $v.title;
      _privacy = $v.privacy;
      _coverImage = $v.coverImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEditPlaylistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEditPlaylistVars;
  }

  @override
  void update(void Function(GEditPlaylistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEditPlaylistVars build() => _build();

  _$GEditPlaylistVars _build() {
    final _$result = _$v ??
        new _$GEditPlaylistVars._(
            playlistId: BuiltValueNullFieldError.checkNotNull(
                playlistId, r'GEditPlaylistVars', 'playlistId'),
            title: title,
            privacy: privacy,
            coverImage: coverImage);
    replace(_$result);
    return _$result;
  }
}

class _$GDeletePlaylistVars extends GDeletePlaylistVars {
  @override
  final String playlistId;

  factory _$GDeletePlaylistVars(
          [void Function(GDeletePlaylistVarsBuilder)? updates]) =>
      (new GDeletePlaylistVarsBuilder()..update(updates))._build();

  _$GDeletePlaylistVars._({required this.playlistId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GDeletePlaylistVars', 'playlistId');
  }

  @override
  GDeletePlaylistVars rebuild(
          void Function(GDeletePlaylistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletePlaylistVarsBuilder toBuilder() =>
      new GDeletePlaylistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeletePlaylistVars && playlistId == other.playlistId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeletePlaylistVars')
          ..add('playlistId', playlistId))
        .toString();
  }
}

class GDeletePlaylistVarsBuilder
    implements Builder<GDeletePlaylistVars, GDeletePlaylistVarsBuilder> {
  _$GDeletePlaylistVars? _$v;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  GDeletePlaylistVarsBuilder();

  GDeletePlaylistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playlistId = $v.playlistId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeletePlaylistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletePlaylistVars;
  }

  @override
  void update(void Function(GDeletePlaylistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeletePlaylistVars build() => _build();

  _$GDeletePlaylistVars _build() {
    final _$result = _$v ??
        new _$GDeletePlaylistVars._(
            playlistId: BuiltValueNullFieldError.checkNotNull(
                playlistId, r'GDeletePlaylistVars', 'playlistId'));
    replace(_$result);
    return _$result;
  }
}

class _$GAddPostToPlaylistVars extends GAddPostToPlaylistVars {
  @override
  final String playlistId;
  @override
  final String voicePodId;

  factory _$GAddPostToPlaylistVars(
          [void Function(GAddPostToPlaylistVarsBuilder)? updates]) =>
      (new GAddPostToPlaylistVarsBuilder()..update(updates))._build();

  _$GAddPostToPlaylistVars._(
      {required this.playlistId, required this.voicePodId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GAddPostToPlaylistVars', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(
        voicePodId, r'GAddPostToPlaylistVars', 'voicePodId');
  }

  @override
  GAddPostToPlaylistVars rebuild(
          void Function(GAddPostToPlaylistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddPostToPlaylistVarsBuilder toBuilder() =>
      new GAddPostToPlaylistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddPostToPlaylistVars &&
        playlistId == other.playlistId &&
        voicePodId == other.voicePodId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, voicePodId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddPostToPlaylistVars')
          ..add('playlistId', playlistId)
          ..add('voicePodId', voicePodId))
        .toString();
  }
}

class GAddPostToPlaylistVarsBuilder
    implements Builder<GAddPostToPlaylistVars, GAddPostToPlaylistVarsBuilder> {
  _$GAddPostToPlaylistVars? _$v;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _voicePodId;
  String? get voicePodId => _$this._voicePodId;
  set voicePodId(String? voicePodId) => _$this._voicePodId = voicePodId;

  GAddPostToPlaylistVarsBuilder();

  GAddPostToPlaylistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playlistId = $v.playlistId;
      _voicePodId = $v.voicePodId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddPostToPlaylistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddPostToPlaylistVars;
  }

  @override
  void update(void Function(GAddPostToPlaylistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddPostToPlaylistVars build() => _build();

  _$GAddPostToPlaylistVars _build() {
    final _$result = _$v ??
        new _$GAddPostToPlaylistVars._(
            playlistId: BuiltValueNullFieldError.checkNotNull(
                playlistId, r'GAddPostToPlaylistVars', 'playlistId'),
            voicePodId: BuiltValueNullFieldError.checkNotNull(
                voicePodId, r'GAddPostToPlaylistVars', 'voicePodId'));
    replace(_$result);
    return _$result;
  }
}

class _$GSavePostToDefaultPlaylistVars extends GSavePostToDefaultPlaylistVars {
  @override
  final String voicePodId;

  factory _$GSavePostToDefaultPlaylistVars(
          [void Function(GSavePostToDefaultPlaylistVarsBuilder)? updates]) =>
      (new GSavePostToDefaultPlaylistVarsBuilder()..update(updates))._build();

  _$GSavePostToDefaultPlaylistVars._({required this.voicePodId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        voicePodId, r'GSavePostToDefaultPlaylistVars', 'voicePodId');
  }

  @override
  GSavePostToDefaultPlaylistVars rebuild(
          void Function(GSavePostToDefaultPlaylistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSavePostToDefaultPlaylistVarsBuilder toBuilder() =>
      new GSavePostToDefaultPlaylistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSavePostToDefaultPlaylistVars &&
        voicePodId == other.voicePodId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, voicePodId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSavePostToDefaultPlaylistVars')
          ..add('voicePodId', voicePodId))
        .toString();
  }
}

class GSavePostToDefaultPlaylistVarsBuilder
    implements
        Builder<GSavePostToDefaultPlaylistVars,
            GSavePostToDefaultPlaylistVarsBuilder> {
  _$GSavePostToDefaultPlaylistVars? _$v;

  String? _voicePodId;
  String? get voicePodId => _$this._voicePodId;
  set voicePodId(String? voicePodId) => _$this._voicePodId = voicePodId;

  GSavePostToDefaultPlaylistVarsBuilder();

  GSavePostToDefaultPlaylistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voicePodId = $v.voicePodId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSavePostToDefaultPlaylistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSavePostToDefaultPlaylistVars;
  }

  @override
  void update(void Function(GSavePostToDefaultPlaylistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSavePostToDefaultPlaylistVars build() => _build();

  _$GSavePostToDefaultPlaylistVars _build() {
    final _$result = _$v ??
        new _$GSavePostToDefaultPlaylistVars._(
            voicePodId: BuiltValueNullFieldError.checkNotNull(
                voicePodId, r'GSavePostToDefaultPlaylistVars', 'voicePodId'));
    replace(_$result);
    return _$result;
  }
}

class _$GRemovePostFromPlaylistVars extends GRemovePostFromPlaylistVars {
  @override
  final String playlistId;
  @override
  final String voicePodId;

  factory _$GRemovePostFromPlaylistVars(
          [void Function(GRemovePostFromPlaylistVarsBuilder)? updates]) =>
      (new GRemovePostFromPlaylistVarsBuilder()..update(updates))._build();

  _$GRemovePostFromPlaylistVars._(
      {required this.playlistId, required this.voicePodId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GRemovePostFromPlaylistVars', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(
        voicePodId, r'GRemovePostFromPlaylistVars', 'voicePodId');
  }

  @override
  GRemovePostFromPlaylistVars rebuild(
          void Function(GRemovePostFromPlaylistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemovePostFromPlaylistVarsBuilder toBuilder() =>
      new GRemovePostFromPlaylistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemovePostFromPlaylistVars &&
        playlistId == other.playlistId &&
        voicePodId == other.voicePodId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, voicePodId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemovePostFromPlaylistVars')
          ..add('playlistId', playlistId)
          ..add('voicePodId', voicePodId))
        .toString();
  }
}

class GRemovePostFromPlaylistVarsBuilder
    implements
        Builder<GRemovePostFromPlaylistVars,
            GRemovePostFromPlaylistVarsBuilder> {
  _$GRemovePostFromPlaylistVars? _$v;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _voicePodId;
  String? get voicePodId => _$this._voicePodId;
  set voicePodId(String? voicePodId) => _$this._voicePodId = voicePodId;

  GRemovePostFromPlaylistVarsBuilder();

  GRemovePostFromPlaylistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playlistId = $v.playlistId;
      _voicePodId = $v.voicePodId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemovePostFromPlaylistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemovePostFromPlaylistVars;
  }

  @override
  void update(void Function(GRemovePostFromPlaylistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemovePostFromPlaylistVars build() => _build();

  _$GRemovePostFromPlaylistVars _build() {
    final _$result = _$v ??
        new _$GRemovePostFromPlaylistVars._(
            playlistId: BuiltValueNullFieldError.checkNotNull(
                playlistId, r'GRemovePostFromPlaylistVars', 'playlistId'),
            voicePodId: BuiltValueNullFieldError.checkNotNull(
                voicePodId, r'GRemovePostFromPlaylistVars', 'voicePodId'));
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistVars extends GPlaylistVars {
  factory _$GPlaylistVars([void Function(GPlaylistVarsBuilder)? updates]) =>
      (new GPlaylistVarsBuilder()..update(updates))._build();

  _$GPlaylistVars._() : super._();

  @override
  GPlaylistVars rebuild(void Function(GPlaylistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistVarsBuilder toBuilder() => new GPlaylistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistVars;
  }

  @override
  int get hashCode {
    return 748794794;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPlaylistVars').toString();
  }
}

class GPlaylistVarsBuilder
    implements Builder<GPlaylistVars, GPlaylistVarsBuilder> {
  _$GPlaylistVars? _$v;

  GPlaylistVarsBuilder();

  @override
  void replace(GPlaylistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistVars;
  }

  @override
  void update(void Function(GPlaylistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistVars build() => _build();

  _$GPlaylistVars _build() {
    final _$result = _$v ?? new _$GPlaylistVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
