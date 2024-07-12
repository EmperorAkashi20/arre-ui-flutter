// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_feed_requests.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPopularFeedsVars> _$gPopularFeedsVarsSerializer =
    new _$GPopularFeedsVarsSerializer();
Serializer<GUserPostRelationsVars> _$gUserPostRelationsVarsSerializer =
    new _$GUserPostRelationsVarsSerializer();

class _$GPopularFeedsVarsSerializer
    implements StructuredSerializer<GPopularFeedsVars> {
  @override
  final Iterable<Type> types = const [GPopularFeedsVars, _$GPopularFeedsVars];
  @override
  final String wireName = 'GPopularFeedsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPopularFeedsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'pageNo',
      serializers.serialize(object.pageNo, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GPopularFeedsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPopularFeedsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pageNo':
          result.pageNo = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserPostRelationsVarsSerializer
    implements StructuredSerializer<GUserPostRelationsVars> {
  @override
  final Iterable<Type> types = const [
    GUserPostRelationsVars,
    _$GUserPostRelationsVars
  ];
  @override
  final String wireName = 'GUserPostRelationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserPostRelationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserPostRelationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserPostRelationsVarsBuilder();

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

class _$GPopularFeedsVars extends GPopularFeedsVars {
  @override
  final int pageNo;

  factory _$GPopularFeedsVars(
          [void Function(GPopularFeedsVarsBuilder)? updates]) =>
      (new GPopularFeedsVarsBuilder()..update(updates))._build();

  _$GPopularFeedsVars._({required this.pageNo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        pageNo, r'GPopularFeedsVars', 'pageNo');
  }

  @override
  GPopularFeedsVars rebuild(void Function(GPopularFeedsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPopularFeedsVarsBuilder toBuilder() =>
      new GPopularFeedsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPopularFeedsVars && pageNo == other.pageNo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageNo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPopularFeedsVars')
          ..add('pageNo', pageNo))
        .toString();
  }
}

class GPopularFeedsVarsBuilder
    implements Builder<GPopularFeedsVars, GPopularFeedsVarsBuilder> {
  _$GPopularFeedsVars? _$v;

  int? _pageNo;
  int? get pageNo => _$this._pageNo;
  set pageNo(int? pageNo) => _$this._pageNo = pageNo;

  GPopularFeedsVarsBuilder();

  GPopularFeedsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageNo = $v.pageNo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPopularFeedsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPopularFeedsVars;
  }

  @override
  void update(void Function(GPopularFeedsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPopularFeedsVars build() => _build();

  _$GPopularFeedsVars _build() {
    final _$result = _$v ??
        new _$GPopularFeedsVars._(
            pageNo: BuiltValueNullFieldError.checkNotNull(
                pageNo, r'GPopularFeedsVars', 'pageNo'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserPostRelationsVars extends GUserPostRelationsVars {
  @override
  final String postId;

  factory _$GUserPostRelationsVars(
          [void Function(GUserPostRelationsVarsBuilder)? updates]) =>
      (new GUserPostRelationsVarsBuilder()..update(updates))._build();

  _$GUserPostRelationsVars._({required this.postId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GUserPostRelationsVars', 'postId');
  }

  @override
  GUserPostRelationsVars rebuild(
          void Function(GUserPostRelationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserPostRelationsVarsBuilder toBuilder() =>
      new GUserPostRelationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserPostRelationsVars && postId == other.postId;
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
    return (newBuiltValueToStringHelper(r'GUserPostRelationsVars')
          ..add('postId', postId))
        .toString();
  }
}

class GUserPostRelationsVarsBuilder
    implements Builder<GUserPostRelationsVars, GUserPostRelationsVarsBuilder> {
  _$GUserPostRelationsVars? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  GUserPostRelationsVarsBuilder();

  GUserPostRelationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserPostRelationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserPostRelationsVars;
  }

  @override
  void update(void Function(GUserPostRelationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserPostRelationsVars build() => _build();

  _$GUserPostRelationsVars _build() {
    final _$result = _$v ??
        new _$GUserPostRelationsVars._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GUserPostRelationsVars', 'postId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
