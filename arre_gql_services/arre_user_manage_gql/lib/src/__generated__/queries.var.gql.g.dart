// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdatePreferencesVars> _$gUpdatePreferencesVarsSerializer =
    new _$GUpdatePreferencesVarsSerializer();
Serializer<GGetUserShortDetailsByIdV2Vars>
    _$gGetUserShortDetailsByIdV2VarsSerializer =
    new _$GGetUserShortDetailsByIdV2VarsSerializer();
Serializer<GGetUserDetailsByIdV2Vars> _$gGetUserDetailsByIdV2VarsSerializer =
    new _$GGetUserDetailsByIdV2VarsSerializer();
Serializer<GUpdateUserProfileVars> _$gUpdateUserProfileVarsSerializer =
    new _$GUpdateUserProfileVarsSerializer();
Serializer<GGetUserLanguageListVars> _$gGetUserLanguageListVarsSerializer =
    new _$GGetUserLanguageListVarsSerializer();
Serializer<GUserShortDetailsVars> _$gUserShortDetailsVarsSerializer =
    new _$GUserShortDetailsVarsSerializer();
Serializer<GUserDetailsVars> _$gUserDetailsVarsSerializer =
    new _$GUserDetailsVarsSerializer();

class _$GUpdatePreferencesVarsSerializer
    implements StructuredSerializer<GUpdatePreferencesVars> {
  @override
  final Iterable<Type> types = const [
    GUpdatePreferencesVars,
    _$GUpdatePreferencesVars
  ];
  @override
  final String wireName = 'GUpdatePreferencesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdatePreferencesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'languageCsv',
      serializers.serialize(object.languageCsv,
          specifiedType: const FullType(String)),
      'topicsCsv',
      serializers.serialize(object.topicsCsv,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUpdatePreferencesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePreferencesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'languageCsv':
          result.languageCsv = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'topicsCsv':
          result.topicsCsv = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserShortDetailsByIdV2VarsSerializer
    implements StructuredSerializer<GGetUserShortDetailsByIdV2Vars> {
  @override
  final Iterable<Type> types = const [
    GGetUserShortDetailsByIdV2Vars,
    _$GGetUserShortDetailsByIdV2Vars
  ];
  @override
  final String wireName = 'GGetUserShortDetailsByIdV2Vars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserShortDetailsByIdV2Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUserShortDetailsByIdV2Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserShortDetailsByIdV2VarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserDetailsByIdV2VarsSerializer
    implements StructuredSerializer<GGetUserDetailsByIdV2Vars> {
  @override
  final Iterable<Type> types = const [
    GGetUserDetailsByIdV2Vars,
    _$GGetUserDetailsByIdV2Vars
  ];
  @override
  final String wireName = 'GGetUserDetailsByIdV2Vars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserDetailsByIdV2Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUserDetailsByIdV2Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserDetailsByIdV2VarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserProfileVarsSerializer
    implements StructuredSerializer<GUpdateUserProfileVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserProfileVars,
    _$GUpdateUserProfileVars
  ];
  @override
  final String wireName = 'GUpdateUserProfileVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserProfileVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.profilePictureMediaId;
    if (value != null) {
      result
        ..add('profilePictureMediaId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twitterHandle;
    if (value != null) {
      result
        ..add('twitterHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagramHandle;
    if (value != null) {
      result
        ..add('instagramHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateUserProfileVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserProfileVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'profilePictureMediaId':
          result.profilePictureMediaId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twitterHandle':
          result.twitterHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagramHandle':
          result.instagramHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserLanguageListVarsSerializer
    implements StructuredSerializer<GGetUserLanguageListVars> {
  @override
  final Iterable<Type> types = const [
    GGetUserLanguageListVars,
    _$GGetUserLanguageListVars
  ];
  @override
  final String wireName = 'GGetUserLanguageListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserLanguageListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUserLanguageListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserLanguageListVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserShortDetailsVarsSerializer
    implements StructuredSerializer<GUserShortDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GUserShortDetailsVars,
    _$GUserShortDetailsVars
  ];
  @override
  final String wireName = 'GUserShortDetailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserShortDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserShortDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserShortDetailsVarsBuilder().build();
  }
}

class _$GUserDetailsVarsSerializer
    implements StructuredSerializer<GUserDetailsVars> {
  @override
  final Iterable<Type> types = const [GUserDetailsVars, _$GUserDetailsVars];
  @override
  final String wireName = 'GUserDetailsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserDetailsVarsBuilder().build();
  }
}

class _$GUpdatePreferencesVars extends GUpdatePreferencesVars {
  @override
  final String languageCsv;
  @override
  final String topicsCsv;

  factory _$GUpdatePreferencesVars(
          [void Function(GUpdatePreferencesVarsBuilder)? updates]) =>
      (new GUpdatePreferencesVarsBuilder()..update(updates))._build();

  _$GUpdatePreferencesVars._(
      {required this.languageCsv, required this.topicsCsv})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        languageCsv, r'GUpdatePreferencesVars', 'languageCsv');
    BuiltValueNullFieldError.checkNotNull(
        topicsCsv, r'GUpdatePreferencesVars', 'topicsCsv');
  }

  @override
  GUpdatePreferencesVars rebuild(
          void Function(GUpdatePreferencesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePreferencesVarsBuilder toBuilder() =>
      new GUpdatePreferencesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePreferencesVars &&
        languageCsv == other.languageCsv &&
        topicsCsv == other.topicsCsv;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, languageCsv.hashCode);
    _$hash = $jc(_$hash, topicsCsv.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdatePreferencesVars')
          ..add('languageCsv', languageCsv)
          ..add('topicsCsv', topicsCsv))
        .toString();
  }
}

class GUpdatePreferencesVarsBuilder
    implements Builder<GUpdatePreferencesVars, GUpdatePreferencesVarsBuilder> {
  _$GUpdatePreferencesVars? _$v;

  String? _languageCsv;
  String? get languageCsv => _$this._languageCsv;
  set languageCsv(String? languageCsv) => _$this._languageCsv = languageCsv;

  String? _topicsCsv;
  String? get topicsCsv => _$this._topicsCsv;
  set topicsCsv(String? topicsCsv) => _$this._topicsCsv = topicsCsv;

  GUpdatePreferencesVarsBuilder();

  GUpdatePreferencesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _languageCsv = $v.languageCsv;
      _topicsCsv = $v.topicsCsv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePreferencesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePreferencesVars;
  }

  @override
  void update(void Function(GUpdatePreferencesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePreferencesVars build() => _build();

  _$GUpdatePreferencesVars _build() {
    final _$result = _$v ??
        new _$GUpdatePreferencesVars._(
            languageCsv: BuiltValueNullFieldError.checkNotNull(
                languageCsv, r'GUpdatePreferencesVars', 'languageCsv'),
            topicsCsv: BuiltValueNullFieldError.checkNotNull(
                topicsCsv, r'GUpdatePreferencesVars', 'topicsCsv'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserShortDetailsByIdV2Vars extends GGetUserShortDetailsByIdV2Vars {
  @override
  final String? userId;

  factory _$GGetUserShortDetailsByIdV2Vars(
          [void Function(GGetUserShortDetailsByIdV2VarsBuilder)? updates]) =>
      (new GGetUserShortDetailsByIdV2VarsBuilder()..update(updates))._build();

  _$GGetUserShortDetailsByIdV2Vars._({this.userId}) : super._();

  @override
  GGetUserShortDetailsByIdV2Vars rebuild(
          void Function(GGetUserShortDetailsByIdV2VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserShortDetailsByIdV2VarsBuilder toBuilder() =>
      new GGetUserShortDetailsByIdV2VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserShortDetailsByIdV2Vars && userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUserShortDetailsByIdV2Vars')
          ..add('userId', userId))
        .toString();
  }
}

class GGetUserShortDetailsByIdV2VarsBuilder
    implements
        Builder<GGetUserShortDetailsByIdV2Vars,
            GGetUserShortDetailsByIdV2VarsBuilder> {
  _$GGetUserShortDetailsByIdV2Vars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GGetUserShortDetailsByIdV2VarsBuilder();

  GGetUserShortDetailsByIdV2VarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserShortDetailsByIdV2Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserShortDetailsByIdV2Vars;
  }

  @override
  void update(void Function(GGetUserShortDetailsByIdV2VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserShortDetailsByIdV2Vars build() => _build();

  _$GGetUserShortDetailsByIdV2Vars _build() {
    final _$result =
        _$v ?? new _$GGetUserShortDetailsByIdV2Vars._(userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserDetailsByIdV2Vars extends GGetUserDetailsByIdV2Vars {
  @override
  final String? userId;

  factory _$GGetUserDetailsByIdV2Vars(
          [void Function(GGetUserDetailsByIdV2VarsBuilder)? updates]) =>
      (new GGetUserDetailsByIdV2VarsBuilder()..update(updates))._build();

  _$GGetUserDetailsByIdV2Vars._({this.userId}) : super._();

  @override
  GGetUserDetailsByIdV2Vars rebuild(
          void Function(GGetUserDetailsByIdV2VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserDetailsByIdV2VarsBuilder toBuilder() =>
      new GGetUserDetailsByIdV2VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserDetailsByIdV2Vars && userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUserDetailsByIdV2Vars')
          ..add('userId', userId))
        .toString();
  }
}

class GGetUserDetailsByIdV2VarsBuilder
    implements
        Builder<GGetUserDetailsByIdV2Vars, GGetUserDetailsByIdV2VarsBuilder> {
  _$GGetUserDetailsByIdV2Vars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GGetUserDetailsByIdV2VarsBuilder();

  GGetUserDetailsByIdV2VarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserDetailsByIdV2Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserDetailsByIdV2Vars;
  }

  @override
  void update(void Function(GGetUserDetailsByIdV2VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserDetailsByIdV2Vars build() => _build();

  _$GGetUserDetailsByIdV2Vars _build() {
    final _$result = _$v ?? new _$GGetUserDetailsByIdV2Vars._(userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserProfileVars extends GUpdateUserProfileVars {
  @override
  final String? profilePictureMediaId;
  @override
  final String? bio;
  @override
  final String? twitterHandle;
  @override
  final String? instagramHandle;

  factory _$GUpdateUserProfileVars(
          [void Function(GUpdateUserProfileVarsBuilder)? updates]) =>
      (new GUpdateUserProfileVarsBuilder()..update(updates))._build();

  _$GUpdateUserProfileVars._(
      {this.profilePictureMediaId,
      this.bio,
      this.twitterHandle,
      this.instagramHandle})
      : super._();

  @override
  GUpdateUserProfileVars rebuild(
          void Function(GUpdateUserProfileVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserProfileVarsBuilder toBuilder() =>
      new GUpdateUserProfileVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserProfileVars &&
        profilePictureMediaId == other.profilePictureMediaId &&
        bio == other.bio &&
        twitterHandle == other.twitterHandle &&
        instagramHandle == other.instagramHandle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profilePictureMediaId.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, twitterHandle.hashCode);
    _$hash = $jc(_$hash, instagramHandle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserProfileVars')
          ..add('profilePictureMediaId', profilePictureMediaId)
          ..add('bio', bio)
          ..add('twitterHandle', twitterHandle)
          ..add('instagramHandle', instagramHandle))
        .toString();
  }
}

class GUpdateUserProfileVarsBuilder
    implements Builder<GUpdateUserProfileVars, GUpdateUserProfileVarsBuilder> {
  _$GUpdateUserProfileVars? _$v;

  String? _profilePictureMediaId;
  String? get profilePictureMediaId => _$this._profilePictureMediaId;
  set profilePictureMediaId(String? profilePictureMediaId) =>
      _$this._profilePictureMediaId = profilePictureMediaId;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _twitterHandle;
  String? get twitterHandle => _$this._twitterHandle;
  set twitterHandle(String? twitterHandle) =>
      _$this._twitterHandle = twitterHandle;

  String? _instagramHandle;
  String? get instagramHandle => _$this._instagramHandle;
  set instagramHandle(String? instagramHandle) =>
      _$this._instagramHandle = instagramHandle;

  GUpdateUserProfileVarsBuilder();

  GUpdateUserProfileVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profilePictureMediaId = $v.profilePictureMediaId;
      _bio = $v.bio;
      _twitterHandle = $v.twitterHandle;
      _instagramHandle = $v.instagramHandle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserProfileVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserProfileVars;
  }

  @override
  void update(void Function(GUpdateUserProfileVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserProfileVars build() => _build();

  _$GUpdateUserProfileVars _build() {
    final _$result = _$v ??
        new _$GUpdateUserProfileVars._(
            profilePictureMediaId: profilePictureMediaId,
            bio: bio,
            twitterHandle: twitterHandle,
            instagramHandle: instagramHandle);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserLanguageListVars extends GGetUserLanguageListVars {
  @override
  final String? userId;

  factory _$GGetUserLanguageListVars(
          [void Function(GGetUserLanguageListVarsBuilder)? updates]) =>
      (new GGetUserLanguageListVarsBuilder()..update(updates))._build();

  _$GGetUserLanguageListVars._({this.userId}) : super._();

  @override
  GGetUserLanguageListVars rebuild(
          void Function(GGetUserLanguageListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserLanguageListVarsBuilder toBuilder() =>
      new GGetUserLanguageListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserLanguageListVars && userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUserLanguageListVars')
          ..add('userId', userId))
        .toString();
  }
}

class GGetUserLanguageListVarsBuilder
    implements
        Builder<GGetUserLanguageListVars, GGetUserLanguageListVarsBuilder> {
  _$GGetUserLanguageListVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GGetUserLanguageListVarsBuilder();

  GGetUserLanguageListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserLanguageListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserLanguageListVars;
  }

  @override
  void update(void Function(GGetUserLanguageListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserLanguageListVars build() => _build();

  _$GGetUserLanguageListVars _build() {
    final _$result = _$v ?? new _$GGetUserLanguageListVars._(userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$GUserShortDetailsVars extends GUserShortDetailsVars {
  factory _$GUserShortDetailsVars(
          [void Function(GUserShortDetailsVarsBuilder)? updates]) =>
      (new GUserShortDetailsVarsBuilder()..update(updates))._build();

  _$GUserShortDetailsVars._() : super._();

  @override
  GUserShortDetailsVars rebuild(
          void Function(GUserShortDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserShortDetailsVarsBuilder toBuilder() =>
      new GUserShortDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserShortDetailsVars;
  }

  @override
  int get hashCode {
    return 727567849;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserShortDetailsVars').toString();
  }
}

class GUserShortDetailsVarsBuilder
    implements Builder<GUserShortDetailsVars, GUserShortDetailsVarsBuilder> {
  _$GUserShortDetailsVars? _$v;

  GUserShortDetailsVarsBuilder();

  @override
  void replace(GUserShortDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserShortDetailsVars;
  }

  @override
  void update(void Function(GUserShortDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserShortDetailsVars build() => _build();

  _$GUserShortDetailsVars _build() {
    final _$result = _$v ?? new _$GUserShortDetailsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GUserDetailsVars extends GUserDetailsVars {
  factory _$GUserDetailsVars(
          [void Function(GUserDetailsVarsBuilder)? updates]) =>
      (new GUserDetailsVarsBuilder()..update(updates))._build();

  _$GUserDetailsVars._() : super._();

  @override
  GUserDetailsVars rebuild(void Function(GUserDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDetailsVarsBuilder toBuilder() =>
      new GUserDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserDetailsVars;
  }

  @override
  int get hashCode {
    return 791070569;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserDetailsVars').toString();
  }
}

class GUserDetailsVarsBuilder
    implements Builder<GUserDetailsVars, GUserDetailsVarsBuilder> {
  _$GUserDetailsVars? _$v;

  GUserDetailsVarsBuilder();

  @override
  void replace(GUserDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserDetailsVars;
  }

  @override
  void update(void Function(GUserDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserDetailsVars build() => _build();

  _$GUserDetailsVars _build() {
    final _$result = _$v ?? new _$GUserDetailsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
