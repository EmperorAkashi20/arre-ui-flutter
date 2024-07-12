// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_manage_schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GPostStatus _$gPostStatuspublished = const GPostStatus._('published');
const GPostStatus _$gPostStatusunpublished = const GPostStatus._('unpublished');

GPostStatus _$gPostStatusValueOf(String name) {
  switch (name) {
    case 'published':
      return _$gPostStatuspublished;
    case 'unpublished':
      return _$gPostStatusunpublished;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GPostStatus> _$gPostStatusValues =
    new BuiltSet<GPostStatus>(const <GPostStatus>[
  _$gPostStatuspublished,
  _$gPostStatusunpublished,
]);

const GPostVisibility _$gPostVisibilityprivate =
    const GPostVisibility._('private');
const GPostVisibility _$gPostVisibilitypublic =
    const GPostVisibility._('public');
const GPostVisibility _$gPostVisibilitywomenOnly =
    const GPostVisibility._('womenOnly');

GPostVisibility _$gPostVisibilityValueOf(String name) {
  switch (name) {
    case 'private':
      return _$gPostVisibilityprivate;
    case 'public':
      return _$gPostVisibilitypublic;
    case 'womenOnly':
      return _$gPostVisibilitywomenOnly;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GPostVisibility> _$gPostVisibilityValues =
    new BuiltSet<GPostVisibility>(const <GPostVisibility>[
  _$gPostVisibilityprivate,
  _$gPostVisibilitypublic,
  _$gPostVisibilitywomenOnly,
]);

Serializer<GPostStatus> _$gPostStatusSerializer = new _$GPostStatusSerializer();
Serializer<GPostVisibility> _$gPostVisibilitySerializer =
    new _$GPostVisibilitySerializer();
Serializer<GlastEvaluatedKeyForReplyComments>
    _$glastEvaluatedKeyForReplyCommentsSerializer =
    new _$GlastEvaluatedKeyForReplyCommentsSerializer();
Serializer<GlastEvaluatedKeyForVoicepodComments>
    _$glastEvaluatedKeyForVoicepodCommentsSerializer =
    new _$GlastEvaluatedKeyForVoicepodCommentsSerializer();
Serializer<GlastEvaluatedKeyForVoicepods>
    _$glastEvaluatedKeyForVoicepodsSerializer =
    new _$GlastEvaluatedKeyForVoicepodsSerializer();

class _$GPostStatusSerializer implements PrimitiveSerializer<GPostStatus> {
  @override
  final Iterable<Type> types = const <Type>[GPostStatus];
  @override
  final String wireName = 'GPostStatus';

  @override
  Object serialize(Serializers serializers, GPostStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GPostStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GPostStatus.valueOf(serialized as String);
}

class _$GPostVisibilitySerializer
    implements PrimitiveSerializer<GPostVisibility> {
  @override
  final Iterable<Type> types = const <Type>[GPostVisibility];
  @override
  final String wireName = 'GPostVisibility';

  @override
  Object serialize(Serializers serializers, GPostVisibility object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GPostVisibility deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GPostVisibility.valueOf(serialized as String);
}

class _$GlastEvaluatedKeyForReplyCommentsSerializer
    implements StructuredSerializer<GlastEvaluatedKeyForReplyComments> {
  @override
  final Iterable<Type> types = const [
    GlastEvaluatedKeyForReplyComments,
    _$GlastEvaluatedKeyForReplyComments
  ];
  @override
  final String wireName = 'GlastEvaluatedKeyForReplyComments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlastEvaluatedKeyForReplyComments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commentId;
    if (value != null) {
      result
        ..add('commentId')
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GlastEvaluatedKeyForReplyComments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlastEvaluatedKeyForReplyCommentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyId':
          result.replyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlastEvaluatedKeyForVoicepodCommentsSerializer
    implements StructuredSerializer<GlastEvaluatedKeyForVoicepodComments> {
  @override
  final Iterable<Type> types = const [
    GlastEvaluatedKeyForVoicepodComments,
    _$GlastEvaluatedKeyForVoicepodComments
  ];
  @override
  final String wireName = 'GlastEvaluatedKeyForVoicepodComments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlastEvaluatedKeyForVoicepodComments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commentId;
    if (value != null) {
      result
        ..add('commentId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GlastEvaluatedKeyForVoicepodComments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlastEvaluatedKeyForVoicepodCommentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlastEvaluatedKeyForVoicepodsSerializer
    implements StructuredSerializer<GlastEvaluatedKeyForVoicepods> {
  @override
  final Iterable<Type> types = const [
    GlastEvaluatedKeyForVoicepods,
    _$GlastEvaluatedKeyForVoicepods
  ];
  @override
  final String wireName = 'GlastEvaluatedKeyForVoicepods';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlastEvaluatedKeyForVoicepods object,
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
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GlastEvaluatedKeyForVoicepods deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlastEvaluatedKeyForVoicepodsBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlastEvaluatedKeyForReplyComments
    extends GlastEvaluatedKeyForReplyComments {
  @override
  final String? createdAt;
  @override
  final String? commentId;
  @override
  final String? replyId;
  @override
  final String? status;

  factory _$GlastEvaluatedKeyForReplyComments(
          [void Function(GlastEvaluatedKeyForReplyCommentsBuilder)? updates]) =>
      (new GlastEvaluatedKeyForReplyCommentsBuilder()..update(updates))
          ._build();

  _$GlastEvaluatedKeyForReplyComments._(
      {this.createdAt, this.commentId, this.replyId, this.status})
      : super._();

  @override
  GlastEvaluatedKeyForReplyComments rebuild(
          void Function(GlastEvaluatedKeyForReplyCommentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlastEvaluatedKeyForReplyCommentsBuilder toBuilder() =>
      new GlastEvaluatedKeyForReplyCommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlastEvaluatedKeyForReplyComments &&
        createdAt == other.createdAt &&
        commentId == other.commentId &&
        replyId == other.replyId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, commentId.hashCode);
    _$hash = $jc(_$hash, replyId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlastEvaluatedKeyForReplyComments')
          ..add('createdAt', createdAt)
          ..add('commentId', commentId)
          ..add('replyId', replyId)
          ..add('status', status))
        .toString();
  }
}

class GlastEvaluatedKeyForReplyCommentsBuilder
    implements
        Builder<GlastEvaluatedKeyForReplyComments,
            GlastEvaluatedKeyForReplyCommentsBuilder> {
  _$GlastEvaluatedKeyForReplyComments? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  String? _replyId;
  String? get replyId => _$this._replyId;
  set replyId(String? replyId) => _$this._replyId = replyId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GlastEvaluatedKeyForReplyCommentsBuilder();

  GlastEvaluatedKeyForReplyCommentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _commentId = $v.commentId;
      _replyId = $v.replyId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlastEvaluatedKeyForReplyComments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlastEvaluatedKeyForReplyComments;
  }

  @override
  void update(
      void Function(GlastEvaluatedKeyForReplyCommentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlastEvaluatedKeyForReplyComments build() => _build();

  _$GlastEvaluatedKeyForReplyComments _build() {
    final _$result = _$v ??
        new _$GlastEvaluatedKeyForReplyComments._(
            createdAt: createdAt,
            commentId: commentId,
            replyId: replyId,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GlastEvaluatedKeyForVoicepodComments
    extends GlastEvaluatedKeyForVoicepodComments {
  @override
  final String? createdAt;
  @override
  final String? postId;
  @override
  final String? commentId;
  @override
  final String? status;

  factory _$GlastEvaluatedKeyForVoicepodComments(
          [void Function(GlastEvaluatedKeyForVoicepodCommentsBuilder)?
              updates]) =>
      (new GlastEvaluatedKeyForVoicepodCommentsBuilder()..update(updates))
          ._build();

  _$GlastEvaluatedKeyForVoicepodComments._(
      {this.createdAt, this.postId, this.commentId, this.status})
      : super._();

  @override
  GlastEvaluatedKeyForVoicepodComments rebuild(
          void Function(GlastEvaluatedKeyForVoicepodCommentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlastEvaluatedKeyForVoicepodCommentsBuilder toBuilder() =>
      new GlastEvaluatedKeyForVoicepodCommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlastEvaluatedKeyForVoicepodComments &&
        createdAt == other.createdAt &&
        postId == other.postId &&
        commentId == other.commentId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, commentId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlastEvaluatedKeyForVoicepodComments')
          ..add('createdAt', createdAt)
          ..add('postId', postId)
          ..add('commentId', commentId)
          ..add('status', status))
        .toString();
  }
}

class GlastEvaluatedKeyForVoicepodCommentsBuilder
    implements
        Builder<GlastEvaluatedKeyForVoicepodComments,
            GlastEvaluatedKeyForVoicepodCommentsBuilder> {
  _$GlastEvaluatedKeyForVoicepodComments? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GlastEvaluatedKeyForVoicepodCommentsBuilder();

  GlastEvaluatedKeyForVoicepodCommentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _postId = $v.postId;
      _commentId = $v.commentId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlastEvaluatedKeyForVoicepodComments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlastEvaluatedKeyForVoicepodComments;
  }

  @override
  void update(
      void Function(GlastEvaluatedKeyForVoicepodCommentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlastEvaluatedKeyForVoicepodComments build() => _build();

  _$GlastEvaluatedKeyForVoicepodComments _build() {
    final _$result = _$v ??
        new _$GlastEvaluatedKeyForVoicepodComments._(
            createdAt: createdAt,
            postId: postId,
            commentId: commentId,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GlastEvaluatedKeyForVoicepods extends GlastEvaluatedKeyForVoicepods {
  @override
  final String? postId;
  @override
  final String? userId;
  @override
  final String? createdAt;

  factory _$GlastEvaluatedKeyForVoicepods(
          [void Function(GlastEvaluatedKeyForVoicepodsBuilder)? updates]) =>
      (new GlastEvaluatedKeyForVoicepodsBuilder()..update(updates))._build();

  _$GlastEvaluatedKeyForVoicepods._({this.postId, this.userId, this.createdAt})
      : super._();

  @override
  GlastEvaluatedKeyForVoicepods rebuild(
          void Function(GlastEvaluatedKeyForVoicepodsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlastEvaluatedKeyForVoicepodsBuilder toBuilder() =>
      new GlastEvaluatedKeyForVoicepodsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlastEvaluatedKeyForVoicepods &&
        postId == other.postId &&
        userId == other.userId &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlastEvaluatedKeyForVoicepods')
          ..add('postId', postId)
          ..add('userId', userId)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GlastEvaluatedKeyForVoicepodsBuilder
    implements
        Builder<GlastEvaluatedKeyForVoicepods,
            GlastEvaluatedKeyForVoicepodsBuilder> {
  _$GlastEvaluatedKeyForVoicepods? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GlastEvaluatedKeyForVoicepodsBuilder();

  GlastEvaluatedKeyForVoicepodsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _userId = $v.userId;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlastEvaluatedKeyForVoicepods other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlastEvaluatedKeyForVoicepods;
  }

  @override
  void update(void Function(GlastEvaluatedKeyForVoicepodsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlastEvaluatedKeyForVoicepods build() => _build();

  _$GlastEvaluatedKeyForVoicepods _build() {
    final _$result = _$v ??
        new _$GlastEvaluatedKeyForVoicepods._(
            postId: postId, userId: userId, createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
