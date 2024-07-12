// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserInviteVars> _$gUserInviteVarsSerializer =
    new _$GUserInviteVarsSerializer();
Serializer<GInvitedUsersVars> _$gInvitedUsersVarsSerializer =
    new _$GInvitedUsersVarsSerializer();
Serializer<GRequestMoreInvitesVars> _$gRequestMoreInvitesVarsSerializer =
    new _$GRequestMoreInvitesVarsSerializer();

class _$GUserInviteVarsSerializer
    implements StructuredSerializer<GUserInviteVars> {
  @override
  final Iterable<Type> types = const [GUserInviteVars, _$GUserInviteVars];
  @override
  final String wireName = 'GUserInviteVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserInviteVars object,
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
  GUserInviteVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserInviteVarsBuilder();

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

class _$GInvitedUsersVarsSerializer
    implements StructuredSerializer<GInvitedUsersVars> {
  @override
  final Iterable<Type> types = const [GInvitedUsersVars, _$GInvitedUsersVars];
  @override
  final String wireName = 'GInvitedUsersVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GInvitedUsersVars object,
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
  GInvitedUsersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInvitedUsersVarsBuilder();

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
        case 'after':
          result.after = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestMoreInvitesVarsSerializer
    implements StructuredSerializer<GRequestMoreInvitesVars> {
  @override
  final Iterable<Type> types = const [
    GRequestMoreInvitesVars,
    _$GRequestMoreInvitesVars
  ];
  @override
  final String wireName = 'GRequestMoreInvitesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRequestMoreInvitesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GRequestMoreInvitesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GRequestMoreInvitesVarsBuilder().build();
  }
}

class _$GUserInviteVars extends GUserInviteVars {
  @override
  final String? userId;

  factory _$GUserInviteVars([void Function(GUserInviteVarsBuilder)? updates]) =>
      (new GUserInviteVarsBuilder()..update(updates))._build();

  _$GUserInviteVars._({this.userId}) : super._();

  @override
  GUserInviteVars rebuild(void Function(GUserInviteVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserInviteVarsBuilder toBuilder() =>
      new GUserInviteVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserInviteVars && userId == other.userId;
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
    return (newBuiltValueToStringHelper(r'GUserInviteVars')
          ..add('userId', userId))
        .toString();
  }
}

class GUserInviteVarsBuilder
    implements Builder<GUserInviteVars, GUserInviteVarsBuilder> {
  _$GUserInviteVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GUserInviteVarsBuilder();

  GUserInviteVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserInviteVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserInviteVars;
  }

  @override
  void update(void Function(GUserInviteVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserInviteVars build() => _build();

  _$GUserInviteVars _build() {
    final _$result = _$v ?? new _$GUserInviteVars._(userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$GInvitedUsersVars extends GInvitedUsersVars {
  @override
  final String? userId;
  @override
  final String? after;

  factory _$GInvitedUsersVars(
          [void Function(GInvitedUsersVarsBuilder)? updates]) =>
      (new GInvitedUsersVarsBuilder()..update(updates))._build();

  _$GInvitedUsersVars._({this.userId, this.after}) : super._();

  @override
  GInvitedUsersVars rebuild(void Function(GInvitedUsersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInvitedUsersVarsBuilder toBuilder() =>
      new GInvitedUsersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInvitedUsersVars &&
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
    return (newBuiltValueToStringHelper(r'GInvitedUsersVars')
          ..add('userId', userId)
          ..add('after', after))
        .toString();
  }
}

class GInvitedUsersVarsBuilder
    implements Builder<GInvitedUsersVars, GInvitedUsersVarsBuilder> {
  _$GInvitedUsersVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  GInvitedUsersVarsBuilder();

  GInvitedUsersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _after = $v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInvitedUsersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInvitedUsersVars;
  }

  @override
  void update(void Function(GInvitedUsersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInvitedUsersVars build() => _build();

  _$GInvitedUsersVars _build() {
    final _$result =
        _$v ?? new _$GInvitedUsersVars._(userId: userId, after: after);
    replace(_$result);
    return _$result;
  }
}

class _$GRequestMoreInvitesVars extends GRequestMoreInvitesVars {
  factory _$GRequestMoreInvitesVars(
          [void Function(GRequestMoreInvitesVarsBuilder)? updates]) =>
      (new GRequestMoreInvitesVarsBuilder()..update(updates))._build();

  _$GRequestMoreInvitesVars._() : super._();

  @override
  GRequestMoreInvitesVars rebuild(
          void Function(GRequestMoreInvitesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestMoreInvitesVarsBuilder toBuilder() =>
      new GRequestMoreInvitesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRequestMoreInvitesVars;
  }

  @override
  int get hashCode {
    return 693432763;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GRequestMoreInvitesVars').toString();
  }
}

class GRequestMoreInvitesVarsBuilder
    implements
        Builder<GRequestMoreInvitesVars, GRequestMoreInvitesVarsBuilder> {
  _$GRequestMoreInvitesVars? _$v;

  GRequestMoreInvitesVarsBuilder();

  @override
  void replace(GRequestMoreInvitesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRequestMoreInvitesVars;
  }

  @override
  void update(void Function(GRequestMoreInvitesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRequestMoreInvitesVars build() => _build();

  _$GRequestMoreInvitesVars _build() {
    final _$result = _$v ?? new _$GRequestMoreInvitesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
