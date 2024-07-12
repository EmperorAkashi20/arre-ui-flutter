// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_graph_requests.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetIsFollowingUserVars> _$gGetIsFollowingUserVarsSerializer =
    new _$GGetIsFollowingUserVarsSerializer();
Serializer<GGetListOfFollowersPaginatedVars>
    _$gGetListOfFollowersPaginatedVarsSerializer =
    new _$GGetListOfFollowersPaginatedVarsSerializer();
Serializer<GGetListOfFollowingPaginatedVars>
    _$gGetListOfFollowingPaginatedVarsSerializer =
    new _$GGetListOfFollowingPaginatedVarsSerializer();
Serializer<GGetUserFollowCountsVars> _$gGetUserFollowCountsVarsSerializer =
    new _$GGetUserFollowCountsVarsSerializer();
Serializer<GFollowUserVars> _$gFollowUserVarsSerializer =
    new _$GFollowUserVarsSerializer();
Serializer<GUnFollowUserVars> _$gUnFollowUserVarsSerializer =
    new _$GUnFollowUserVarsSerializer();
Serializer<GUserFollowRelationVars> _$gUserFollowRelationVarsSerializer =
    new _$GUserFollowRelationVarsSerializer();
Serializer<GUserFollowCountsVars> _$gUserFollowCountsVarsSerializer =
    new _$GUserFollowCountsVarsSerializer();

class _$GGetIsFollowingUserVarsSerializer
    implements StructuredSerializer<GGetIsFollowingUserVars> {
  @override
  final Iterable<Type> types = const [
    GGetIsFollowingUserVars,
    _$GGetIsFollowingUserVars
  ];
  @override
  final String wireName = 'GGetIsFollowingUserVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetIsFollowingUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetIsFollowingUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetIsFollowingUserVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GGetListOfFollowersPaginatedVarsSerializer
    implements StructuredSerializer<GGetListOfFollowersPaginatedVars> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowersPaginatedVars,
    _$GGetListOfFollowersPaginatedVars
  ];
  @override
  final String wireName = 'GGetListOfFollowersPaginatedVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetListOfFollowersPaginatedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.after;
    if (value != null) {
      result
        ..add('after')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetListOfFollowersPaginatedVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowersPaginatedVarsBuilder();

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
        case 'after':
          result.after = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetListOfFollowingPaginatedVarsSerializer
    implements StructuredSerializer<GGetListOfFollowingPaginatedVars> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowingPaginatedVars,
    _$GGetListOfFollowingPaginatedVars
  ];
  @override
  final String wireName = 'GGetListOfFollowingPaginatedVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetListOfFollowingPaginatedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.after;
    if (value != null) {
      result
        ..add('after')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetListOfFollowingPaginatedVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowingPaginatedVarsBuilder();

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
        case 'after':
          result.after = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserFollowCountsVarsSerializer
    implements StructuredSerializer<GGetUserFollowCountsVars> {
  @override
  final Iterable<Type> types = const [
    GGetUserFollowCountsVars,
    _$GGetUserFollowCountsVars
  ];
  @override
  final String wireName = 'GGetUserFollowCountsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserFollowCountsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetUserFollowCountsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserFollowCountsVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GFollowUserVarsSerializer
    implements StructuredSerializer<GFollowUserVars> {
  @override
  final Iterable<Type> types = const [GFollowUserVars, _$GFollowUserVars];
  @override
  final String wireName = 'GFollowUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFollowUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFollowUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFollowUserVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GUnFollowUserVarsSerializer
    implements StructuredSerializer<GUnFollowUserVars> {
  @override
  final Iterable<Type> types = const [GUnFollowUserVars, _$GUnFollowUserVars];
  @override
  final String wireName = 'GUnFollowUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUnFollowUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUnFollowUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnFollowUserVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GUserFollowRelationVarsSerializer
    implements StructuredSerializer<GUserFollowRelationVars> {
  @override
  final Iterable<Type> types = const [
    GUserFollowRelationVars,
    _$GUserFollowRelationVars
  ];
  @override
  final String wireName = 'GUserFollowRelationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserFollowRelationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserFollowRelationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserFollowRelationVarsBuilder().build();
  }
}

class _$GUserFollowCountsVarsSerializer
    implements StructuredSerializer<GUserFollowCountsVars> {
  @override
  final Iterable<Type> types = const [
    GUserFollowCountsVars,
    _$GUserFollowCountsVars
  ];
  @override
  final String wireName = 'GUserFollowCountsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserFollowCountsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserFollowCountsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserFollowCountsVarsBuilder().build();
  }
}

class _$GGetIsFollowingUserVars extends GGetIsFollowingUserVars {
  @override
  final String userId;

  factory _$GGetIsFollowingUserVars(
          [void Function(GGetIsFollowingUserVarsBuilder)? updates]) =>
      (new GGetIsFollowingUserVarsBuilder()..update(updates))._build();

  _$GGetIsFollowingUserVars._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetIsFollowingUserVars', 'userId');
  }

  @override
  GGetIsFollowingUserVars rebuild(
          void Function(GGetIsFollowingUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetIsFollowingUserVarsBuilder toBuilder() =>
      new GGetIsFollowingUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetIsFollowingUserVars && userId == other.userId;
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
    return (newBuiltValueToStringHelper(r'GGetIsFollowingUserVars')
          ..add('userId', userId))
        .toString();
  }
}

class GGetIsFollowingUserVarsBuilder
    implements
        Builder<GGetIsFollowingUserVars, GGetIsFollowingUserVarsBuilder> {
  _$GGetIsFollowingUserVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GGetIsFollowingUserVarsBuilder();

  GGetIsFollowingUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetIsFollowingUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetIsFollowingUserVars;
  }

  @override
  void update(void Function(GGetIsFollowingUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetIsFollowingUserVars build() => _build();

  _$GGetIsFollowingUserVars _build() {
    final _$result = _$v ??
        new _$GGetIsFollowingUserVars._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GGetIsFollowingUserVars', 'userId'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowersPaginatedVars
    extends GGetListOfFollowersPaginatedVars {
  @override
  final String userId;
  @override
  final String? after;

  factory _$GGetListOfFollowersPaginatedVars(
          [void Function(GGetListOfFollowersPaginatedVarsBuilder)? updates]) =>
      (new GGetListOfFollowersPaginatedVarsBuilder()..update(updates))._build();

  _$GGetListOfFollowersPaginatedVars._({required this.userId, this.after})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetListOfFollowersPaginatedVars', 'userId');
  }

  @override
  GGetListOfFollowersPaginatedVars rebuild(
          void Function(GGetListOfFollowersPaginatedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowersPaginatedVarsBuilder toBuilder() =>
      new GGetListOfFollowersPaginatedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetListOfFollowersPaginatedVars &&
        userId == other.userId &&
        after == other.after;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetListOfFollowersPaginatedVars')
          ..add('userId', userId)
          ..add('after', after))
        .toString();
  }
}

class GGetListOfFollowersPaginatedVarsBuilder
    implements
        Builder<GGetListOfFollowersPaginatedVars,
            GGetListOfFollowersPaginatedVarsBuilder> {
  _$GGetListOfFollowersPaginatedVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  GGetListOfFollowersPaginatedVarsBuilder();

  GGetListOfFollowersPaginatedVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _after = $v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetListOfFollowersPaginatedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowersPaginatedVars;
  }

  @override
  void update(void Function(GGetListOfFollowersPaginatedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowersPaginatedVars build() => _build();

  _$GGetListOfFollowersPaginatedVars _build() {
    final _$result = _$v ??
        new _$GGetListOfFollowersPaginatedVars._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GGetListOfFollowersPaginatedVars', 'userId'),
            after: after);
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowingPaginatedVars
    extends GGetListOfFollowingPaginatedVars {
  @override
  final String userId;
  @override
  final String? after;

  factory _$GGetListOfFollowingPaginatedVars(
          [void Function(GGetListOfFollowingPaginatedVarsBuilder)? updates]) =>
      (new GGetListOfFollowingPaginatedVarsBuilder()..update(updates))._build();

  _$GGetListOfFollowingPaginatedVars._({required this.userId, this.after})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetListOfFollowingPaginatedVars', 'userId');
  }

  @override
  GGetListOfFollowingPaginatedVars rebuild(
          void Function(GGetListOfFollowingPaginatedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowingPaginatedVarsBuilder toBuilder() =>
      new GGetListOfFollowingPaginatedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetListOfFollowingPaginatedVars &&
        userId == other.userId &&
        after == other.after;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetListOfFollowingPaginatedVars')
          ..add('userId', userId)
          ..add('after', after))
        .toString();
  }
}

class GGetListOfFollowingPaginatedVarsBuilder
    implements
        Builder<GGetListOfFollowingPaginatedVars,
            GGetListOfFollowingPaginatedVarsBuilder> {
  _$GGetListOfFollowingPaginatedVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  GGetListOfFollowingPaginatedVarsBuilder();

  GGetListOfFollowingPaginatedVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _after = $v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetListOfFollowingPaginatedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowingPaginatedVars;
  }

  @override
  void update(void Function(GGetListOfFollowingPaginatedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowingPaginatedVars build() => _build();

  _$GGetListOfFollowingPaginatedVars _build() {
    final _$result = _$v ??
        new _$GGetListOfFollowingPaginatedVars._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GGetListOfFollowingPaginatedVars', 'userId'),
            after: after);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserFollowCountsVars extends GGetUserFollowCountsVars {
  @override
  final String userId;

  factory _$GGetUserFollowCountsVars(
          [void Function(GGetUserFollowCountsVarsBuilder)? updates]) =>
      (new GGetUserFollowCountsVarsBuilder()..update(updates))._build();

  _$GGetUserFollowCountsVars._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetUserFollowCountsVars', 'userId');
  }

  @override
  GGetUserFollowCountsVars rebuild(
          void Function(GGetUserFollowCountsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserFollowCountsVarsBuilder toBuilder() =>
      new GGetUserFollowCountsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserFollowCountsVars && userId == other.userId;
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
    return (newBuiltValueToStringHelper(r'GGetUserFollowCountsVars')
          ..add('userId', userId))
        .toString();
  }
}

class GGetUserFollowCountsVarsBuilder
    implements
        Builder<GGetUserFollowCountsVars, GGetUserFollowCountsVarsBuilder> {
  _$GGetUserFollowCountsVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GGetUserFollowCountsVarsBuilder();

  GGetUserFollowCountsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserFollowCountsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserFollowCountsVars;
  }

  @override
  void update(void Function(GGetUserFollowCountsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserFollowCountsVars build() => _build();

  _$GGetUserFollowCountsVars _build() {
    final _$result = _$v ??
        new _$GGetUserFollowCountsVars._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GGetUserFollowCountsVars', 'userId'));
    replace(_$result);
    return _$result;
  }
}

class _$GFollowUserVars extends GFollowUserVars {
  @override
  final String userId;

  factory _$GFollowUserVars([void Function(GFollowUserVarsBuilder)? updates]) =>
      (new GFollowUserVarsBuilder()..update(updates))._build();

  _$GFollowUserVars._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, r'GFollowUserVars', 'userId');
  }

  @override
  GFollowUserVars rebuild(void Function(GFollowUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFollowUserVarsBuilder toBuilder() =>
      new GFollowUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFollowUserVars && userId == other.userId;
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
    return (newBuiltValueToStringHelper(r'GFollowUserVars')
          ..add('userId', userId))
        .toString();
  }
}

class GFollowUserVarsBuilder
    implements Builder<GFollowUserVars, GFollowUserVarsBuilder> {
  _$GFollowUserVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GFollowUserVarsBuilder();

  GFollowUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFollowUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFollowUserVars;
  }

  @override
  void update(void Function(GFollowUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFollowUserVars build() => _build();

  _$GFollowUserVars _build() {
    final _$result = _$v ??
        new _$GFollowUserVars._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GFollowUserVars', 'userId'));
    replace(_$result);
    return _$result;
  }
}

class _$GUnFollowUserVars extends GUnFollowUserVars {
  @override
  final String userId;

  factory _$GUnFollowUserVars(
          [void Function(GUnFollowUserVarsBuilder)? updates]) =>
      (new GUnFollowUserVarsBuilder()..update(updates))._build();

  _$GUnFollowUserVars._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GUnFollowUserVars', 'userId');
  }

  @override
  GUnFollowUserVars rebuild(void Function(GUnFollowUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnFollowUserVarsBuilder toBuilder() =>
      new GUnFollowUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUnFollowUserVars && userId == other.userId;
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
    return (newBuiltValueToStringHelper(r'GUnFollowUserVars')
          ..add('userId', userId))
        .toString();
  }
}

class GUnFollowUserVarsBuilder
    implements Builder<GUnFollowUserVars, GUnFollowUserVarsBuilder> {
  _$GUnFollowUserVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GUnFollowUserVarsBuilder();

  GUnFollowUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUnFollowUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnFollowUserVars;
  }

  @override
  void update(void Function(GUnFollowUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnFollowUserVars build() => _build();

  _$GUnFollowUserVars _build() {
    final _$result = _$v ??
        new _$GUnFollowUserVars._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GUnFollowUserVars', 'userId'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserFollowRelationVars extends GUserFollowRelationVars {
  factory _$GUserFollowRelationVars(
          [void Function(GUserFollowRelationVarsBuilder)? updates]) =>
      (new GUserFollowRelationVarsBuilder()..update(updates))._build();

  _$GUserFollowRelationVars._() : super._();

  @override
  GUserFollowRelationVars rebuild(
          void Function(GUserFollowRelationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFollowRelationVarsBuilder toBuilder() =>
      new GUserFollowRelationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFollowRelationVars;
  }

  @override
  int get hashCode {
    return 1019087063;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserFollowRelationVars').toString();
  }
}

class GUserFollowRelationVarsBuilder
    implements
        Builder<GUserFollowRelationVars, GUserFollowRelationVarsBuilder> {
  _$GUserFollowRelationVars? _$v;

  GUserFollowRelationVarsBuilder();

  @override
  void replace(GUserFollowRelationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFollowRelationVars;
  }

  @override
  void update(void Function(GUserFollowRelationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFollowRelationVars build() => _build();

  _$GUserFollowRelationVars _build() {
    final _$result = _$v ?? new _$GUserFollowRelationVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GUserFollowCountsVars extends GUserFollowCountsVars {
  factory _$GUserFollowCountsVars(
          [void Function(GUserFollowCountsVarsBuilder)? updates]) =>
      (new GUserFollowCountsVarsBuilder()..update(updates))._build();

  _$GUserFollowCountsVars._() : super._();

  @override
  GUserFollowCountsVars rebuild(
          void Function(GUserFollowCountsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFollowCountsVarsBuilder toBuilder() =>
      new GUserFollowCountsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFollowCountsVars;
  }

  @override
  int get hashCode {
    return 467987519;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserFollowCountsVars').toString();
  }
}

class GUserFollowCountsVarsBuilder
    implements Builder<GUserFollowCountsVars, GUserFollowCountsVarsBuilder> {
  _$GUserFollowCountsVars? _$v;

  GUserFollowCountsVarsBuilder();

  @override
  void replace(GUserFollowCountsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFollowCountsVars;
  }

  @override
  void update(void Function(GUserFollowCountsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFollowCountsVars build() => _build();

  _$GUserFollowCountsVars _build() {
    final _$result = _$v ?? new _$GUserFollowCountsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
