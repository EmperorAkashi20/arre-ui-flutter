// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_page_queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListTopCreatorsVars> _$gListTopCreatorsVarsSerializer =
    new _$GListTopCreatorsVarsSerializer();
Serializer<GListTopHashtagsVars> _$gListTopHashtagsVarsSerializer =
    new _$GListTopHashtagsVarsSerializer();
Serializer<GListTopPostsByHashTagIdVars>
    _$gListTopPostsByHashTagIdVarsSerializer =
    new _$GListTopPostsByHashTagIdVarsSerializer();

class _$GListTopCreatorsVarsSerializer
    implements StructuredSerializer<GListTopCreatorsVars> {
  @override
  final Iterable<Type> types = const [
    GListTopCreatorsVars,
    _$GListTopCreatorsVars
  ];
  @override
  final String wireName = 'GListTopCreatorsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopCreatorsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GListTopCreatorsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GListTopCreatorsVarsBuilder().build();
  }
}

class _$GListTopHashtagsVarsSerializer
    implements StructuredSerializer<GListTopHashtagsVars> {
  @override
  final Iterable<Type> types = const [
    GListTopHashtagsVars,
    _$GListTopHashtagsVars
  ];
  @override
  final String wireName = 'GListTopHashtagsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopHashtagsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rankGreaterThan',
      serializers.serialize(object.rankGreaterThan,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GListTopHashtagsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopHashtagsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rankGreaterThan':
          result.rankGreaterThan = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopPostsByHashTagIdVarsSerializer
    implements StructuredSerializer<GListTopPostsByHashTagIdVars> {
  @override
  final Iterable<Type> types = const [
    GListTopPostsByHashTagIdVars,
    _$GListTopPostsByHashTagIdVars
  ];
  @override
  final String wireName = 'GListTopPostsByHashTagIdVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopPostsByHashTagIdVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hashTagUniqueIdentifier',
      serializers.serialize(object.hashTagUniqueIdentifier,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GListTopPostsByHashTagIdVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopPostsByHashTagIdVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hashTagUniqueIdentifier':
          result.hashTagUniqueIdentifier = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopCreatorsVars extends GListTopCreatorsVars {
  factory _$GListTopCreatorsVars(
          [void Function(GListTopCreatorsVarsBuilder)? updates]) =>
      (new GListTopCreatorsVarsBuilder()..update(updates))._build();

  _$GListTopCreatorsVars._() : super._();

  @override
  GListTopCreatorsVars rebuild(
          void Function(GListTopCreatorsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopCreatorsVarsBuilder toBuilder() =>
      new GListTopCreatorsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopCreatorsVars;
  }

  @override
  int get hashCode {
    return 954997256;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GListTopCreatorsVars').toString();
  }
}

class GListTopCreatorsVarsBuilder
    implements Builder<GListTopCreatorsVars, GListTopCreatorsVarsBuilder> {
  _$GListTopCreatorsVars? _$v;

  GListTopCreatorsVarsBuilder();

  @override
  void replace(GListTopCreatorsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopCreatorsVars;
  }

  @override
  void update(void Function(GListTopCreatorsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopCreatorsVars build() => _build();

  _$GListTopCreatorsVars _build() {
    final _$result = _$v ?? new _$GListTopCreatorsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GListTopHashtagsVars extends GListTopHashtagsVars {
  @override
  final int rankGreaterThan;

  factory _$GListTopHashtagsVars(
          [void Function(GListTopHashtagsVarsBuilder)? updates]) =>
      (new GListTopHashtagsVarsBuilder()..update(updates))._build();

  _$GListTopHashtagsVars._({required this.rankGreaterThan}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rankGreaterThan, r'GListTopHashtagsVars', 'rankGreaterThan');
  }

  @override
  GListTopHashtagsVars rebuild(
          void Function(GListTopHashtagsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopHashtagsVarsBuilder toBuilder() =>
      new GListTopHashtagsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopHashtagsVars &&
        rankGreaterThan == other.rankGreaterThan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rankGreaterThan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListTopHashtagsVars')
          ..add('rankGreaterThan', rankGreaterThan))
        .toString();
  }
}

class GListTopHashtagsVarsBuilder
    implements Builder<GListTopHashtagsVars, GListTopHashtagsVarsBuilder> {
  _$GListTopHashtagsVars? _$v;

  int? _rankGreaterThan;
  int? get rankGreaterThan => _$this._rankGreaterThan;
  set rankGreaterThan(int? rankGreaterThan) =>
      _$this._rankGreaterThan = rankGreaterThan;

  GListTopHashtagsVarsBuilder();

  GListTopHashtagsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rankGreaterThan = $v.rankGreaterThan;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopHashtagsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopHashtagsVars;
  }

  @override
  void update(void Function(GListTopHashtagsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopHashtagsVars build() => _build();

  _$GListTopHashtagsVars _build() {
    final _$result = _$v ??
        new _$GListTopHashtagsVars._(
            rankGreaterThan: BuiltValueNullFieldError.checkNotNull(
                rankGreaterThan, r'GListTopHashtagsVars', 'rankGreaterThan'));
    replace(_$result);
    return _$result;
  }
}

class _$GListTopPostsByHashTagIdVars extends GListTopPostsByHashTagIdVars {
  @override
  final String hashTagUniqueIdentifier;

  factory _$GListTopPostsByHashTagIdVars(
          [void Function(GListTopPostsByHashTagIdVarsBuilder)? updates]) =>
      (new GListTopPostsByHashTagIdVarsBuilder()..update(updates))._build();

  _$GListTopPostsByHashTagIdVars._({required this.hashTagUniqueIdentifier})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(hashTagUniqueIdentifier,
        r'GListTopPostsByHashTagIdVars', 'hashTagUniqueIdentifier');
  }

  @override
  GListTopPostsByHashTagIdVars rebuild(
          void Function(GListTopPostsByHashTagIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopPostsByHashTagIdVarsBuilder toBuilder() =>
      new GListTopPostsByHashTagIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopPostsByHashTagIdVars &&
        hashTagUniqueIdentifier == other.hashTagUniqueIdentifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hashTagUniqueIdentifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListTopPostsByHashTagIdVars')
          ..add('hashTagUniqueIdentifier', hashTagUniqueIdentifier))
        .toString();
  }
}

class GListTopPostsByHashTagIdVarsBuilder
    implements
        Builder<GListTopPostsByHashTagIdVars,
            GListTopPostsByHashTagIdVarsBuilder> {
  _$GListTopPostsByHashTagIdVars? _$v;

  String? _hashTagUniqueIdentifier;
  String? get hashTagUniqueIdentifier => _$this._hashTagUniqueIdentifier;
  set hashTagUniqueIdentifier(String? hashTagUniqueIdentifier) =>
      _$this._hashTagUniqueIdentifier = hashTagUniqueIdentifier;

  GListTopPostsByHashTagIdVarsBuilder();

  GListTopPostsByHashTagIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hashTagUniqueIdentifier = $v.hashTagUniqueIdentifier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopPostsByHashTagIdVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopPostsByHashTagIdVars;
  }

  @override
  void update(void Function(GListTopPostsByHashTagIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopPostsByHashTagIdVars build() => _build();

  _$GListTopPostsByHashTagIdVars _build() {
    final _$result = _$v ??
        new _$GListTopPostsByHashTagIdVars._(
            hashTagUniqueIdentifier: BuiltValueNullFieldError.checkNotNull(
                hashTagUniqueIdentifier,
                r'GListTopPostsByHashTagIdVars',
                'hashTagUniqueIdentifier'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
