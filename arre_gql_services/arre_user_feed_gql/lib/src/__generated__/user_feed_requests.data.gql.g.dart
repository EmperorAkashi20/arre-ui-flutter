// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_feed_requests.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPopularFeedsData> _$gPopularFeedsDataSerializer =
    new _$GPopularFeedsDataSerializer();
Serializer<GPopularFeedsData_response> _$gPopularFeedsDataResponseSerializer =
    new _$GPopularFeedsData_responseSerializer();
Serializer<GUserPostRelationsData> _$gUserPostRelationsDataSerializer =
    new _$GUserPostRelationsDataSerializer();
Serializer<GUserPostRelationsData_response>
    _$gUserPostRelationsDataResponseSerializer =
    new _$GUserPostRelationsData_responseSerializer();
Serializer<GUserPostRelationsData_response_data>
    _$gUserPostRelationsDataResponseDataSerializer =
    new _$GUserPostRelationsData_response_dataSerializer();

class _$GPopularFeedsDataSerializer
    implements StructuredSerializer<GPopularFeedsData> {
  @override
  final Iterable<Type> types = const [GPopularFeedsData, _$GPopularFeedsData];
  @override
  final String wireName = 'GPopularFeedsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPopularFeedsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPopularFeedsData_response)));
    }
    return result;
  }

  @override
  GPopularFeedsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPopularFeedsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPopularFeedsData_response))!
              as GPopularFeedsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GPopularFeedsData_responseSerializer
    implements StructuredSerializer<GPopularFeedsData_response> {
  @override
  final Iterable<Type> types = const [
    GPopularFeedsData_response,
    _$GPopularFeedsData_response
  ];
  @override
  final String wireName = 'GPopularFeedsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPopularFeedsData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.errorCodeForClient;
    if (value != null) {
      result
        ..add('errorCodeForClient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statusCode;
    if (value != null) {
      result
        ..add('statusCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GPopularFeedsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPopularFeedsData_responseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserPostRelationsDataSerializer
    implements StructuredSerializer<GUserPostRelationsData> {
  @override
  final Iterable<Type> types = const [
    GUserPostRelationsData,
    _$GUserPostRelationsData
  ];
  @override
  final String wireName = 'GUserPostRelationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserPostRelationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserPostRelationsData_response)));
    }
    return result;
  }

  @override
  GUserPostRelationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserPostRelationsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserPostRelationsData_response))!
              as GUserPostRelationsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserPostRelationsData_responseSerializer
    implements StructuredSerializer<GUserPostRelationsData_response> {
  @override
  final Iterable<Type> types = const [
    GUserPostRelationsData_response,
    _$GUserPostRelationsData_response
  ];
  @override
  final String wireName = 'GUserPostRelationsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserPostRelationsData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUserPostRelationsData_response_data)));
    }
    return result;
  }

  @override
  GUserPostRelationsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserPostRelationsData_responseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserPostRelationsData_response_data))!
              as GUserPostRelationsData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserPostRelationsData_response_dataSerializer
    implements StructuredSerializer<GUserPostRelationsData_response_data> {
  @override
  final Iterable<Type> types = const [
    GUserPostRelationsData_response_data,
    _$GUserPostRelationsData_response_data
  ];
  @override
  final String wireName = 'GUserPostRelationsData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserPostRelationsData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.audioPlayedTime;
    if (value != null) {
      result
        ..add('audioPlayedTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.bookmarkedPost;
    if (value != null) {
      result
        ..add('bookmarkedPost')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.commentInteracted;
    if (value != null) {
      result
        ..add('commentInteracted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isFollowingCreator;
    if (value != null) {
      result
        ..add('isFollowingCreator')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isRepod;
    if (value != null) {
      result
        ..add('isRepod')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.postLikeByUser;
    if (value != null) {
      result
        ..add('postLikeByUser')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.playedAudioByte;
    if (value != null) {
      result
        ..add('playedAudioByte')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUserPostRelationsData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserPostRelationsData_response_dataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'audioPlayedTime':
          result.audioPlayedTime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'bookmarkedPost':
          result.bookmarkedPost = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'commentInteracted':
          result.commentInteracted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFollowingCreator':
          result.isFollowingCreator = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isRepod':
          result.isRepod = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'postLikeByUser':
          result.postLikeByUser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'playedAudioByte':
          result.playedAudioByte = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPopularFeedsData extends GPopularFeedsData {
  @override
  final String G__typename;
  @override
  final GPopularFeedsData_response? response;

  factory _$GPopularFeedsData(
          [void Function(GPopularFeedsDataBuilder)? updates]) =>
      (new GPopularFeedsDataBuilder()..update(updates))._build();

  _$GPopularFeedsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPopularFeedsData', 'G__typename');
  }

  @override
  GPopularFeedsData rebuild(void Function(GPopularFeedsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPopularFeedsDataBuilder toBuilder() =>
      new GPopularFeedsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPopularFeedsData &&
        G__typename == other.G__typename &&
        response == other.response;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPopularFeedsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GPopularFeedsDataBuilder
    implements Builder<GPopularFeedsData, GPopularFeedsDataBuilder> {
  _$GPopularFeedsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPopularFeedsData_responseBuilder? _response;
  GPopularFeedsData_responseBuilder get response =>
      _$this._response ??= new GPopularFeedsData_responseBuilder();
  set response(GPopularFeedsData_responseBuilder? response) =>
      _$this._response = response;

  GPopularFeedsDataBuilder() {
    GPopularFeedsData._initializeBuilder(this);
  }

  GPopularFeedsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPopularFeedsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPopularFeedsData;
  }

  @override
  void update(void Function(GPopularFeedsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPopularFeedsData build() => _build();

  _$GPopularFeedsData _build() {
    _$GPopularFeedsData _$result;
    try {
      _$result = _$v ??
          new _$GPopularFeedsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPopularFeedsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPopularFeedsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPopularFeedsData_response extends GPopularFeedsData_response {
  @override
  final String G__typename;
  @override
  final String? errorCodeForClient;
  @override
  final bool? error;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final BuiltList<String?>? data;

  factory _$GPopularFeedsData_response(
          [void Function(GPopularFeedsData_responseBuilder)? updates]) =>
      (new GPopularFeedsData_responseBuilder()..update(updates))._build();

  _$GPopularFeedsData_response._(
      {required this.G__typename,
      this.errorCodeForClient,
      this.error,
      this.message,
      this.statusCode,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPopularFeedsData_response', 'G__typename');
  }

  @override
  GPopularFeedsData_response rebuild(
          void Function(GPopularFeedsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPopularFeedsData_responseBuilder toBuilder() =>
      new GPopularFeedsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPopularFeedsData_response &&
        G__typename == other.G__typename &&
        errorCodeForClient == other.errorCodeForClient &&
        error == other.error &&
        message == other.message &&
        statusCode == other.statusCode &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPopularFeedsData_response')
          ..add('G__typename', G__typename)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class GPopularFeedsData_responseBuilder
    implements
        Builder<GPopularFeedsData_response, GPopularFeedsData_responseBuilder> {
  _$GPopularFeedsData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  ListBuilder<String?>? _data;
  ListBuilder<String?> get data => _$this._data ??= new ListBuilder<String?>();
  set data(ListBuilder<String?>? data) => _$this._data = data;

  GPopularFeedsData_responseBuilder() {
    GPopularFeedsData_response._initializeBuilder(this);
  }

  GPopularFeedsData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _errorCodeForClient = $v.errorCodeForClient;
      _error = $v.error;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPopularFeedsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPopularFeedsData_response;
  }

  @override
  void update(void Function(GPopularFeedsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPopularFeedsData_response build() => _build();

  _$GPopularFeedsData_response _build() {
    _$GPopularFeedsData_response _$result;
    try {
      _$result = _$v ??
          new _$GPopularFeedsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPopularFeedsData_response', 'G__typename'),
              errorCodeForClient: errorCodeForClient,
              error: error,
              message: message,
              statusCode: statusCode,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPopularFeedsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserPostRelationsData extends GUserPostRelationsData {
  @override
  final String G__typename;
  @override
  final GUserPostRelationsData_response? response;

  factory _$GUserPostRelationsData(
          [void Function(GUserPostRelationsDataBuilder)? updates]) =>
      (new GUserPostRelationsDataBuilder()..update(updates))._build();

  _$GUserPostRelationsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserPostRelationsData', 'G__typename');
  }

  @override
  GUserPostRelationsData rebuild(
          void Function(GUserPostRelationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserPostRelationsDataBuilder toBuilder() =>
      new GUserPostRelationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserPostRelationsData &&
        G__typename == other.G__typename &&
        response == other.response;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserPostRelationsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GUserPostRelationsDataBuilder
    implements Builder<GUserPostRelationsData, GUserPostRelationsDataBuilder> {
  _$GUserPostRelationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserPostRelationsData_responseBuilder? _response;
  GUserPostRelationsData_responseBuilder get response =>
      _$this._response ??= new GUserPostRelationsData_responseBuilder();
  set response(GUserPostRelationsData_responseBuilder? response) =>
      _$this._response = response;

  GUserPostRelationsDataBuilder() {
    GUserPostRelationsData._initializeBuilder(this);
  }

  GUserPostRelationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserPostRelationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserPostRelationsData;
  }

  @override
  void update(void Function(GUserPostRelationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserPostRelationsData build() => _build();

  _$GUserPostRelationsData _build() {
    _$GUserPostRelationsData _$result;
    try {
      _$result = _$v ??
          new _$GUserPostRelationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserPostRelationsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserPostRelationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserPostRelationsData_response
    extends GUserPostRelationsData_response {
  @override
  final String G__typename;
  @override
  final GUserPostRelationsData_response_data? data;

  factory _$GUserPostRelationsData_response(
          [void Function(GUserPostRelationsData_responseBuilder)? updates]) =>
      (new GUserPostRelationsData_responseBuilder()..update(updates))._build();

  _$GUserPostRelationsData_response._({required this.G__typename, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserPostRelationsData_response', 'G__typename');
  }

  @override
  GUserPostRelationsData_response rebuild(
          void Function(GUserPostRelationsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserPostRelationsData_responseBuilder toBuilder() =>
      new GUserPostRelationsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserPostRelationsData_response &&
        G__typename == other.G__typename &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserPostRelationsData_response')
          ..add('G__typename', G__typename)
          ..add('data', data))
        .toString();
  }
}

class GUserPostRelationsData_responseBuilder
    implements
        Builder<GUserPostRelationsData_response,
            GUserPostRelationsData_responseBuilder> {
  _$GUserPostRelationsData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserPostRelationsData_response_dataBuilder? _data;
  GUserPostRelationsData_response_dataBuilder get data =>
      _$this._data ??= new GUserPostRelationsData_response_dataBuilder();
  set data(GUserPostRelationsData_response_dataBuilder? data) =>
      _$this._data = data;

  GUserPostRelationsData_responseBuilder() {
    GUserPostRelationsData_response._initializeBuilder(this);
  }

  GUserPostRelationsData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserPostRelationsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserPostRelationsData_response;
  }

  @override
  void update(void Function(GUserPostRelationsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserPostRelationsData_response build() => _build();

  _$GUserPostRelationsData_response _build() {
    _$GUserPostRelationsData_response _$result;
    try {
      _$result = _$v ??
          new _$GUserPostRelationsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserPostRelationsData_response', 'G__typename'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserPostRelationsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserPostRelationsData_response_data
    extends GUserPostRelationsData_response_data {
  @override
  final String G__typename;
  @override
  final BuiltList<String?>? audioPlayedTime;
  @override
  final bool? bookmarkedPost;
  @override
  final bool? commentInteracted;
  @override
  final bool? isFollowingCreator;
  @override
  final bool? isRepod;
  @override
  final bool? postLikeByUser;
  @override
  final bool? playedAudioByte;

  factory _$GUserPostRelationsData_response_data(
          [void Function(GUserPostRelationsData_response_dataBuilder)?
              updates]) =>
      (new GUserPostRelationsData_response_dataBuilder()..update(updates))
          ._build();

  _$GUserPostRelationsData_response_data._(
      {required this.G__typename,
      this.audioPlayedTime,
      this.bookmarkedPost,
      this.commentInteracted,
      this.isFollowingCreator,
      this.isRepod,
      this.postLikeByUser,
      this.playedAudioByte})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserPostRelationsData_response_data', 'G__typename');
  }

  @override
  GUserPostRelationsData_response_data rebuild(
          void Function(GUserPostRelationsData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserPostRelationsData_response_dataBuilder toBuilder() =>
      new GUserPostRelationsData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserPostRelationsData_response_data &&
        G__typename == other.G__typename &&
        audioPlayedTime == other.audioPlayedTime &&
        bookmarkedPost == other.bookmarkedPost &&
        commentInteracted == other.commentInteracted &&
        isFollowingCreator == other.isFollowingCreator &&
        isRepod == other.isRepod &&
        postLikeByUser == other.postLikeByUser &&
        playedAudioByte == other.playedAudioByte;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, audioPlayedTime.hashCode);
    _$hash = $jc(_$hash, bookmarkedPost.hashCode);
    _$hash = $jc(_$hash, commentInteracted.hashCode);
    _$hash = $jc(_$hash, isFollowingCreator.hashCode);
    _$hash = $jc(_$hash, isRepod.hashCode);
    _$hash = $jc(_$hash, postLikeByUser.hashCode);
    _$hash = $jc(_$hash, playedAudioByte.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserPostRelationsData_response_data')
          ..add('G__typename', G__typename)
          ..add('audioPlayedTime', audioPlayedTime)
          ..add('bookmarkedPost', bookmarkedPost)
          ..add('commentInteracted', commentInteracted)
          ..add('isFollowingCreator', isFollowingCreator)
          ..add('isRepod', isRepod)
          ..add('postLikeByUser', postLikeByUser)
          ..add('playedAudioByte', playedAudioByte))
        .toString();
  }
}

class GUserPostRelationsData_response_dataBuilder
    implements
        Builder<GUserPostRelationsData_response_data,
            GUserPostRelationsData_response_dataBuilder> {
  _$GUserPostRelationsData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String?>? _audioPlayedTime;
  ListBuilder<String?> get audioPlayedTime =>
      _$this._audioPlayedTime ??= new ListBuilder<String?>();
  set audioPlayedTime(ListBuilder<String?>? audioPlayedTime) =>
      _$this._audioPlayedTime = audioPlayedTime;

  bool? _bookmarkedPost;
  bool? get bookmarkedPost => _$this._bookmarkedPost;
  set bookmarkedPost(bool? bookmarkedPost) =>
      _$this._bookmarkedPost = bookmarkedPost;

  bool? _commentInteracted;
  bool? get commentInteracted => _$this._commentInteracted;
  set commentInteracted(bool? commentInteracted) =>
      _$this._commentInteracted = commentInteracted;

  bool? _isFollowingCreator;
  bool? get isFollowingCreator => _$this._isFollowingCreator;
  set isFollowingCreator(bool? isFollowingCreator) =>
      _$this._isFollowingCreator = isFollowingCreator;

  bool? _isRepod;
  bool? get isRepod => _$this._isRepod;
  set isRepod(bool? isRepod) => _$this._isRepod = isRepod;

  bool? _postLikeByUser;
  bool? get postLikeByUser => _$this._postLikeByUser;
  set postLikeByUser(bool? postLikeByUser) =>
      _$this._postLikeByUser = postLikeByUser;

  bool? _playedAudioByte;
  bool? get playedAudioByte => _$this._playedAudioByte;
  set playedAudioByte(bool? playedAudioByte) =>
      _$this._playedAudioByte = playedAudioByte;

  GUserPostRelationsData_response_dataBuilder() {
    GUserPostRelationsData_response_data._initializeBuilder(this);
  }

  GUserPostRelationsData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _audioPlayedTime = $v.audioPlayedTime?.toBuilder();
      _bookmarkedPost = $v.bookmarkedPost;
      _commentInteracted = $v.commentInteracted;
      _isFollowingCreator = $v.isFollowingCreator;
      _isRepod = $v.isRepod;
      _postLikeByUser = $v.postLikeByUser;
      _playedAudioByte = $v.playedAudioByte;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserPostRelationsData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserPostRelationsData_response_data;
  }

  @override
  void update(
      void Function(GUserPostRelationsData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserPostRelationsData_response_data build() => _build();

  _$GUserPostRelationsData_response_data _build() {
    _$GUserPostRelationsData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GUserPostRelationsData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserPostRelationsData_response_data', 'G__typename'),
              audioPlayedTime: _audioPlayedTime?.build(),
              bookmarkedPost: bookmarkedPost,
              commentInteracted: commentInteracted,
              isFollowingCreator: isFollowingCreator,
              isRepod: isRepod,
              postLikeByUser: postLikeByUser,
              playedAudioByte: playedAudioByte);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'audioPlayedTime';
        _audioPlayedTime?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserPostRelationsData_response_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
