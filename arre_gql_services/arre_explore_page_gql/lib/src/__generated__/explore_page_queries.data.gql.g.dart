// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_page_queries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListTopCreatorsData> _$gListTopCreatorsDataSerializer =
    new _$GListTopCreatorsDataSerializer();
Serializer<GListTopCreatorsData_response>
    _$gListTopCreatorsDataResponseSerializer =
    new _$GListTopCreatorsData_responseSerializer();
Serializer<GListTopCreatorsData_response_data>
    _$gListTopCreatorsDataResponseDataSerializer =
    new _$GListTopCreatorsData_response_dataSerializer();
Serializer<GListTopHashtagsData> _$gListTopHashtagsDataSerializer =
    new _$GListTopHashtagsDataSerializer();
Serializer<GListTopHashtagsData_response>
    _$gListTopHashtagsDataResponseSerializer =
    new _$GListTopHashtagsData_responseSerializer();
Serializer<GListTopHashtagsData_response_data>
    _$gListTopHashtagsDataResponseDataSerializer =
    new _$GListTopHashtagsData_response_dataSerializer();
Serializer<GListTopPostsByHashTagIdData>
    _$gListTopPostsByHashTagIdDataSerializer =
    new _$GListTopPostsByHashTagIdDataSerializer();
Serializer<GListTopPostsByHashTagIdData_response>
    _$gListTopPostsByHashTagIdDataResponseSerializer =
    new _$GListTopPostsByHashTagIdData_responseSerializer();
Serializer<GListTopPostsByHashTagIdData_response_data>
    _$gListTopPostsByHashTagIdDataResponseDataSerializer =
    new _$GListTopPostsByHashTagIdData_response_dataSerializer();

class _$GListTopCreatorsDataSerializer
    implements StructuredSerializer<GListTopCreatorsData> {
  @override
  final Iterable<Type> types = const [
    GListTopCreatorsData,
    _$GListTopCreatorsData
  ];
  @override
  final String wireName = 'GListTopCreatorsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopCreatorsData object,
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
            specifiedType: const FullType(GListTopCreatorsData_response)));
    }
    return result;
  }

  @override
  GListTopCreatorsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopCreatorsDataBuilder();

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
                  specifiedType: const FullType(GListTopCreatorsData_response))!
              as GListTopCreatorsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopCreatorsData_responseSerializer
    implements StructuredSerializer<GListTopCreatorsData_response> {
  @override
  final Iterable<Type> types = const [
    GListTopCreatorsData_response,
    _$GListTopCreatorsData_response
  ];
  @override
  final String wireName = 'GListTopCreatorsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopCreatorsData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GListTopCreatorsData_response_data)
            ])));
    }
    return result;
  }

  @override
  GListTopCreatorsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopCreatorsData_responseBuilder();

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
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GListTopCreatorsData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopCreatorsData_response_dataSerializer
    implements StructuredSerializer<GListTopCreatorsData_response_data> {
  @override
  final Iterable<Type> types = const [
    GListTopCreatorsData_response_data,
    _$GListTopCreatorsData_response_data
  ];
  @override
  final String wireName = 'GListTopCreatorsData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopCreatorsData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'mediaId',
      serializers.serialize(object.mediaId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GListTopCreatorsData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopCreatorsData_response_dataBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopHashtagsDataSerializer
    implements StructuredSerializer<GListTopHashtagsData> {
  @override
  final Iterable<Type> types = const [
    GListTopHashtagsData,
    _$GListTopHashtagsData
  ];
  @override
  final String wireName = 'GListTopHashtagsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopHashtagsData object,
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
            specifiedType: const FullType(GListTopHashtagsData_response)));
    }
    return result;
  }

  @override
  GListTopHashtagsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopHashtagsDataBuilder();

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
                  specifiedType: const FullType(GListTopHashtagsData_response))!
              as GListTopHashtagsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopHashtagsData_responseSerializer
    implements StructuredSerializer<GListTopHashtagsData_response> {
  @override
  final Iterable<Type> types = const [
    GListTopHashtagsData_response,
    _$GListTopHashtagsData_response
  ];
  @override
  final String wireName = 'GListTopHashtagsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopHashtagsData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GListTopHashtagsData_response_data)
            ])));
    }
    return result;
  }

  @override
  GListTopHashtagsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopHashtagsData_responseBuilder();

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
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GListTopHashtagsData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopHashtagsData_response_dataSerializer
    implements StructuredSerializer<GListTopHashtagsData_response_data> {
  @override
  final Iterable<Type> types = const [
    GListTopHashtagsData_response_data,
    _$GListTopHashtagsData_response_data
  ];
  @override
  final String wireName = 'GListTopHashtagsData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopHashtagsData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hashTagName',
      serializers.serialize(object.hashTagName,
          specifiedType: const FullType(String)),
      'hashTagUniqueIdentifier',
      serializers.serialize(object.hashTagUniqueIdentifier,
          specifiedType: const FullType(String)),
      'hashTagDescription',
      serializers.serialize(object.hashTagDescription,
          specifiedType: const FullType(String)),
      'mediaId',
      serializers.serialize(object.mediaId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GListTopHashtagsData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopHashtagsData_response_dataBuilder();

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
        case 'hashTagName':
          result.hashTagName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hashTagUniqueIdentifier':
          result.hashTagUniqueIdentifier = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hashTagDescription':
          result.hashTagDescription = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopPostsByHashTagIdDataSerializer
    implements StructuredSerializer<GListTopPostsByHashTagIdData> {
  @override
  final Iterable<Type> types = const [
    GListTopPostsByHashTagIdData,
    _$GListTopPostsByHashTagIdData
  ];
  @override
  final String wireName = 'GListTopPostsByHashTagIdData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopPostsByHashTagIdData object,
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
            specifiedType:
                const FullType(GListTopPostsByHashTagIdData_response)));
    }
    return result;
  }

  @override
  GListTopPostsByHashTagIdData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopPostsByHashTagIdDataBuilder();

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
                      const FullType(GListTopPostsByHashTagIdData_response))!
              as GListTopPostsByHashTagIdData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopPostsByHashTagIdData_responseSerializer
    implements StructuredSerializer<GListTopPostsByHashTagIdData_response> {
  @override
  final Iterable<Type> types = const [
    GListTopPostsByHashTagIdData_response,
    _$GListTopPostsByHashTagIdData_response
  ];
  @override
  final String wireName = 'GListTopPostsByHashTagIdData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopPostsByHashTagIdData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GListTopPostsByHashTagIdData_response_data)
            ])));
    }
    return result;
  }

  @override
  GListTopPostsByHashTagIdData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopPostsByHashTagIdData_responseBuilder();

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
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GListTopPostsByHashTagIdData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopPostsByHashTagIdData_response_dataSerializer
    implements
        StructuredSerializer<GListTopPostsByHashTagIdData_response_data> {
  @override
  final Iterable<Type> types = const [
    GListTopPostsByHashTagIdData_response_data,
    _$GListTopPostsByHashTagIdData_response_data
  ];
  @override
  final String wireName = 'GListTopPostsByHashTagIdData_response_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GListTopPostsByHashTagIdData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'voicepodId',
      serializers.serialize(object.voicepodId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GListTopPostsByHashTagIdData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopPostsByHashTagIdData_response_dataBuilder();

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
        case 'voicepodId':
          result.voicepodId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GListTopCreatorsData extends GListTopCreatorsData {
  @override
  final String G__typename;
  @override
  final GListTopCreatorsData_response? response;

  factory _$GListTopCreatorsData(
          [void Function(GListTopCreatorsDataBuilder)? updates]) =>
      (new GListTopCreatorsDataBuilder()..update(updates))._build();

  _$GListTopCreatorsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListTopCreatorsData', 'G__typename');
  }

  @override
  GListTopCreatorsData rebuild(
          void Function(GListTopCreatorsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopCreatorsDataBuilder toBuilder() =>
      new GListTopCreatorsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopCreatorsData &&
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
    return (newBuiltValueToStringHelper(r'GListTopCreatorsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GListTopCreatorsDataBuilder
    implements Builder<GListTopCreatorsData, GListTopCreatorsDataBuilder> {
  _$GListTopCreatorsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GListTopCreatorsData_responseBuilder? _response;
  GListTopCreatorsData_responseBuilder get response =>
      _$this._response ??= new GListTopCreatorsData_responseBuilder();
  set response(GListTopCreatorsData_responseBuilder? response) =>
      _$this._response = response;

  GListTopCreatorsDataBuilder() {
    GListTopCreatorsData._initializeBuilder(this);
  }

  GListTopCreatorsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopCreatorsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopCreatorsData;
  }

  @override
  void update(void Function(GListTopCreatorsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopCreatorsData build() => _build();

  _$GListTopCreatorsData _build() {
    _$GListTopCreatorsData _$result;
    try {
      _$result = _$v ??
          new _$GListTopCreatorsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GListTopCreatorsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListTopCreatorsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListTopCreatorsData_response extends GListTopCreatorsData_response {
  @override
  final String G__typename;
  @override
  final bool error;
  @override
  final String message;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final BuiltList<GListTopCreatorsData_response_data?>? data;

  factory _$GListTopCreatorsData_response(
          [void Function(GListTopCreatorsData_responseBuilder)? updates]) =>
      (new GListTopCreatorsData_responseBuilder()..update(updates))._build();

  _$GListTopCreatorsData_response._(
      {required this.G__typename,
      required this.error,
      required this.message,
      required this.statusCode,
      required this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListTopCreatorsData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GListTopCreatorsData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GListTopCreatorsData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GListTopCreatorsData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GListTopCreatorsData_response', 'errorCodeForClient');
  }

  @override
  GListTopCreatorsData_response rebuild(
          void Function(GListTopCreatorsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopCreatorsData_responseBuilder toBuilder() =>
      new GListTopCreatorsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopCreatorsData_response &&
        G__typename == other.G__typename &&
        error == other.error &&
        message == other.message &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListTopCreatorsData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GListTopCreatorsData_responseBuilder
    implements
        Builder<GListTopCreatorsData_response,
            GListTopCreatorsData_responseBuilder> {
  _$GListTopCreatorsData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  ListBuilder<GListTopCreatorsData_response_data?>? _data;
  ListBuilder<GListTopCreatorsData_response_data?> get data =>
      _$this._data ??= new ListBuilder<GListTopCreatorsData_response_data?>();
  set data(ListBuilder<GListTopCreatorsData_response_data?>? data) =>
      _$this._data = data;

  GListTopCreatorsData_responseBuilder() {
    GListTopCreatorsData_response._initializeBuilder(this);
  }

  GListTopCreatorsData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopCreatorsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopCreatorsData_response;
  }

  @override
  void update(void Function(GListTopCreatorsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopCreatorsData_response build() => _build();

  _$GListTopCreatorsData_response _build() {
    _$GListTopCreatorsData_response _$result;
    try {
      _$result = _$v ??
          new _$GListTopCreatorsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GListTopCreatorsData_response', 'G__typename'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GListTopCreatorsData_response', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GListTopCreatorsData_response', 'message'),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'GListTopCreatorsData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GListTopCreatorsData_response',
                  'errorCodeForClient'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListTopCreatorsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListTopCreatorsData_response_data
    extends GListTopCreatorsData_response_data {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String mediaId;

  factory _$GListTopCreatorsData_response_data(
          [void Function(GListTopCreatorsData_response_dataBuilder)?
              updates]) =>
      (new GListTopCreatorsData_response_dataBuilder()..update(updates))
          ._build();

  _$GListTopCreatorsData_response_data._(
      {required this.G__typename, required this.userId, required this.mediaId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListTopCreatorsData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GListTopCreatorsData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        mediaId, r'GListTopCreatorsData_response_data', 'mediaId');
  }

  @override
  GListTopCreatorsData_response_data rebuild(
          void Function(GListTopCreatorsData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopCreatorsData_response_dataBuilder toBuilder() =>
      new GListTopCreatorsData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopCreatorsData_response_data &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        mediaId == other.mediaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListTopCreatorsData_response_data')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('mediaId', mediaId))
        .toString();
  }
}

class GListTopCreatorsData_response_dataBuilder
    implements
        Builder<GListTopCreatorsData_response_data,
            GListTopCreatorsData_response_dataBuilder> {
  _$GListTopCreatorsData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  GListTopCreatorsData_response_dataBuilder() {
    GListTopCreatorsData_response_data._initializeBuilder(this);
  }

  GListTopCreatorsData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _mediaId = $v.mediaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopCreatorsData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopCreatorsData_response_data;
  }

  @override
  void update(
      void Function(GListTopCreatorsData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopCreatorsData_response_data build() => _build();

  _$GListTopCreatorsData_response_data _build() {
    final _$result = _$v ??
        new _$GListTopCreatorsData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GListTopCreatorsData_response_data', 'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GListTopCreatorsData_response_data', 'userId'),
            mediaId: BuiltValueNullFieldError.checkNotNull(
                mediaId, r'GListTopCreatorsData_response_data', 'mediaId'));
    replace(_$result);
    return _$result;
  }
}

class _$GListTopHashtagsData extends GListTopHashtagsData {
  @override
  final String G__typename;
  @override
  final GListTopHashtagsData_response? response;

  factory _$GListTopHashtagsData(
          [void Function(GListTopHashtagsDataBuilder)? updates]) =>
      (new GListTopHashtagsDataBuilder()..update(updates))._build();

  _$GListTopHashtagsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListTopHashtagsData', 'G__typename');
  }

  @override
  GListTopHashtagsData rebuild(
          void Function(GListTopHashtagsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopHashtagsDataBuilder toBuilder() =>
      new GListTopHashtagsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopHashtagsData &&
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
    return (newBuiltValueToStringHelper(r'GListTopHashtagsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GListTopHashtagsDataBuilder
    implements Builder<GListTopHashtagsData, GListTopHashtagsDataBuilder> {
  _$GListTopHashtagsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GListTopHashtagsData_responseBuilder? _response;
  GListTopHashtagsData_responseBuilder get response =>
      _$this._response ??= new GListTopHashtagsData_responseBuilder();
  set response(GListTopHashtagsData_responseBuilder? response) =>
      _$this._response = response;

  GListTopHashtagsDataBuilder() {
    GListTopHashtagsData._initializeBuilder(this);
  }

  GListTopHashtagsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopHashtagsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopHashtagsData;
  }

  @override
  void update(void Function(GListTopHashtagsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopHashtagsData build() => _build();

  _$GListTopHashtagsData _build() {
    _$GListTopHashtagsData _$result;
    try {
      _$result = _$v ??
          new _$GListTopHashtagsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GListTopHashtagsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListTopHashtagsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListTopHashtagsData_response extends GListTopHashtagsData_response {
  @override
  final String G__typename;
  @override
  final bool error;
  @override
  final String message;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final BuiltList<GListTopHashtagsData_response_data?>? data;

  factory _$GListTopHashtagsData_response(
          [void Function(GListTopHashtagsData_responseBuilder)? updates]) =>
      (new GListTopHashtagsData_responseBuilder()..update(updates))._build();

  _$GListTopHashtagsData_response._(
      {required this.G__typename,
      required this.error,
      required this.message,
      required this.statusCode,
      required this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListTopHashtagsData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GListTopHashtagsData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GListTopHashtagsData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GListTopHashtagsData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GListTopHashtagsData_response', 'errorCodeForClient');
  }

  @override
  GListTopHashtagsData_response rebuild(
          void Function(GListTopHashtagsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopHashtagsData_responseBuilder toBuilder() =>
      new GListTopHashtagsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopHashtagsData_response &&
        G__typename == other.G__typename &&
        error == other.error &&
        message == other.message &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListTopHashtagsData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GListTopHashtagsData_responseBuilder
    implements
        Builder<GListTopHashtagsData_response,
            GListTopHashtagsData_responseBuilder> {
  _$GListTopHashtagsData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  ListBuilder<GListTopHashtagsData_response_data?>? _data;
  ListBuilder<GListTopHashtagsData_response_data?> get data =>
      _$this._data ??= new ListBuilder<GListTopHashtagsData_response_data?>();
  set data(ListBuilder<GListTopHashtagsData_response_data?>? data) =>
      _$this._data = data;

  GListTopHashtagsData_responseBuilder() {
    GListTopHashtagsData_response._initializeBuilder(this);
  }

  GListTopHashtagsData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopHashtagsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopHashtagsData_response;
  }

  @override
  void update(void Function(GListTopHashtagsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopHashtagsData_response build() => _build();

  _$GListTopHashtagsData_response _build() {
    _$GListTopHashtagsData_response _$result;
    try {
      _$result = _$v ??
          new _$GListTopHashtagsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GListTopHashtagsData_response', 'G__typename'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GListTopHashtagsData_response', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GListTopHashtagsData_response', 'message'),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'GListTopHashtagsData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GListTopHashtagsData_response',
                  'errorCodeForClient'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListTopHashtagsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListTopHashtagsData_response_data
    extends GListTopHashtagsData_response_data {
  @override
  final String G__typename;
  @override
  final String hashTagName;
  @override
  final String hashTagUniqueIdentifier;
  @override
  final String hashTagDescription;
  @override
  final String mediaId;

  factory _$GListTopHashtagsData_response_data(
          [void Function(GListTopHashtagsData_response_dataBuilder)?
              updates]) =>
      (new GListTopHashtagsData_response_dataBuilder()..update(updates))
          ._build();

  _$GListTopHashtagsData_response_data._(
      {required this.G__typename,
      required this.hashTagName,
      required this.hashTagUniqueIdentifier,
      required this.hashTagDescription,
      required this.mediaId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListTopHashtagsData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        hashTagName, r'GListTopHashtagsData_response_data', 'hashTagName');
    BuiltValueNullFieldError.checkNotNull(hashTagUniqueIdentifier,
        r'GListTopHashtagsData_response_data', 'hashTagUniqueIdentifier');
    BuiltValueNullFieldError.checkNotNull(hashTagDescription,
        r'GListTopHashtagsData_response_data', 'hashTagDescription');
    BuiltValueNullFieldError.checkNotNull(
        mediaId, r'GListTopHashtagsData_response_data', 'mediaId');
  }

  @override
  GListTopHashtagsData_response_data rebuild(
          void Function(GListTopHashtagsData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopHashtagsData_response_dataBuilder toBuilder() =>
      new GListTopHashtagsData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopHashtagsData_response_data &&
        G__typename == other.G__typename &&
        hashTagName == other.hashTagName &&
        hashTagUniqueIdentifier == other.hashTagUniqueIdentifier &&
        hashTagDescription == other.hashTagDescription &&
        mediaId == other.mediaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, hashTagName.hashCode);
    _$hash = $jc(_$hash, hashTagUniqueIdentifier.hashCode);
    _$hash = $jc(_$hash, hashTagDescription.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListTopHashtagsData_response_data')
          ..add('G__typename', G__typename)
          ..add('hashTagName', hashTagName)
          ..add('hashTagUniqueIdentifier', hashTagUniqueIdentifier)
          ..add('hashTagDescription', hashTagDescription)
          ..add('mediaId', mediaId))
        .toString();
  }
}

class GListTopHashtagsData_response_dataBuilder
    implements
        Builder<GListTopHashtagsData_response_data,
            GListTopHashtagsData_response_dataBuilder> {
  _$GListTopHashtagsData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _hashTagName;
  String? get hashTagName => _$this._hashTagName;
  set hashTagName(String? hashTagName) => _$this._hashTagName = hashTagName;

  String? _hashTagUniqueIdentifier;
  String? get hashTagUniqueIdentifier => _$this._hashTagUniqueIdentifier;
  set hashTagUniqueIdentifier(String? hashTagUniqueIdentifier) =>
      _$this._hashTagUniqueIdentifier = hashTagUniqueIdentifier;

  String? _hashTagDescription;
  String? get hashTagDescription => _$this._hashTagDescription;
  set hashTagDescription(String? hashTagDescription) =>
      _$this._hashTagDescription = hashTagDescription;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  GListTopHashtagsData_response_dataBuilder() {
    GListTopHashtagsData_response_data._initializeBuilder(this);
  }

  GListTopHashtagsData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _hashTagName = $v.hashTagName;
      _hashTagUniqueIdentifier = $v.hashTagUniqueIdentifier;
      _hashTagDescription = $v.hashTagDescription;
      _mediaId = $v.mediaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopHashtagsData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopHashtagsData_response_data;
  }

  @override
  void update(
      void Function(GListTopHashtagsData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopHashtagsData_response_data build() => _build();

  _$GListTopHashtagsData_response_data _build() {
    final _$result = _$v ??
        new _$GListTopHashtagsData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GListTopHashtagsData_response_data', 'G__typename'),
            hashTagName: BuiltValueNullFieldError.checkNotNull(hashTagName,
                r'GListTopHashtagsData_response_data', 'hashTagName'),
            hashTagUniqueIdentifier: BuiltValueNullFieldError.checkNotNull(
                hashTagUniqueIdentifier,
                r'GListTopHashtagsData_response_data',
                'hashTagUniqueIdentifier'),
            hashTagDescription: BuiltValueNullFieldError.checkNotNull(
                hashTagDescription,
                r'GListTopHashtagsData_response_data',
                'hashTagDescription'),
            mediaId: BuiltValueNullFieldError.checkNotNull(
                mediaId, r'GListTopHashtagsData_response_data', 'mediaId'));
    replace(_$result);
    return _$result;
  }
}

class _$GListTopPostsByHashTagIdData extends GListTopPostsByHashTagIdData {
  @override
  final String G__typename;
  @override
  final GListTopPostsByHashTagIdData_response? response;

  factory _$GListTopPostsByHashTagIdData(
          [void Function(GListTopPostsByHashTagIdDataBuilder)? updates]) =>
      (new GListTopPostsByHashTagIdDataBuilder()..update(updates))._build();

  _$GListTopPostsByHashTagIdData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListTopPostsByHashTagIdData', 'G__typename');
  }

  @override
  GListTopPostsByHashTagIdData rebuild(
          void Function(GListTopPostsByHashTagIdDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopPostsByHashTagIdDataBuilder toBuilder() =>
      new GListTopPostsByHashTagIdDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopPostsByHashTagIdData &&
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
    return (newBuiltValueToStringHelper(r'GListTopPostsByHashTagIdData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GListTopPostsByHashTagIdDataBuilder
    implements
        Builder<GListTopPostsByHashTagIdData,
            GListTopPostsByHashTagIdDataBuilder> {
  _$GListTopPostsByHashTagIdData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GListTopPostsByHashTagIdData_responseBuilder? _response;
  GListTopPostsByHashTagIdData_responseBuilder get response =>
      _$this._response ??= new GListTopPostsByHashTagIdData_responseBuilder();
  set response(GListTopPostsByHashTagIdData_responseBuilder? response) =>
      _$this._response = response;

  GListTopPostsByHashTagIdDataBuilder() {
    GListTopPostsByHashTagIdData._initializeBuilder(this);
  }

  GListTopPostsByHashTagIdDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopPostsByHashTagIdData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopPostsByHashTagIdData;
  }

  @override
  void update(void Function(GListTopPostsByHashTagIdDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopPostsByHashTagIdData build() => _build();

  _$GListTopPostsByHashTagIdData _build() {
    _$GListTopPostsByHashTagIdData _$result;
    try {
      _$result = _$v ??
          new _$GListTopPostsByHashTagIdData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GListTopPostsByHashTagIdData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListTopPostsByHashTagIdData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListTopPostsByHashTagIdData_response
    extends GListTopPostsByHashTagIdData_response {
  @override
  final String G__typename;
  @override
  final bool error;
  @override
  final String message;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final BuiltList<GListTopPostsByHashTagIdData_response_data?>? data;

  factory _$GListTopPostsByHashTagIdData_response(
          [void Function(GListTopPostsByHashTagIdData_responseBuilder)?
              updates]) =>
      (new GListTopPostsByHashTagIdData_responseBuilder()..update(updates))
          ._build();

  _$GListTopPostsByHashTagIdData_response._(
      {required this.G__typename,
      required this.error,
      required this.message,
      required this.statusCode,
      required this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListTopPostsByHashTagIdData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GListTopPostsByHashTagIdData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GListTopPostsByHashTagIdData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GListTopPostsByHashTagIdData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GListTopPostsByHashTagIdData_response', 'errorCodeForClient');
  }

  @override
  GListTopPostsByHashTagIdData_response rebuild(
          void Function(GListTopPostsByHashTagIdData_responseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopPostsByHashTagIdData_responseBuilder toBuilder() =>
      new GListTopPostsByHashTagIdData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopPostsByHashTagIdData_response &&
        G__typename == other.G__typename &&
        error == other.error &&
        message == other.message &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GListTopPostsByHashTagIdData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GListTopPostsByHashTagIdData_responseBuilder
    implements
        Builder<GListTopPostsByHashTagIdData_response,
            GListTopPostsByHashTagIdData_responseBuilder> {
  _$GListTopPostsByHashTagIdData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  ListBuilder<GListTopPostsByHashTagIdData_response_data?>? _data;
  ListBuilder<GListTopPostsByHashTagIdData_response_data?> get data =>
      _$this._data ??=
          new ListBuilder<GListTopPostsByHashTagIdData_response_data?>();
  set data(ListBuilder<GListTopPostsByHashTagIdData_response_data?>? data) =>
      _$this._data = data;

  GListTopPostsByHashTagIdData_responseBuilder() {
    GListTopPostsByHashTagIdData_response._initializeBuilder(this);
  }

  GListTopPostsByHashTagIdData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopPostsByHashTagIdData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopPostsByHashTagIdData_response;
  }

  @override
  void update(
      void Function(GListTopPostsByHashTagIdData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopPostsByHashTagIdData_response build() => _build();

  _$GListTopPostsByHashTagIdData_response _build() {
    _$GListTopPostsByHashTagIdData_response _$result;
    try {
      _$result = _$v ??
          new _$GListTopPostsByHashTagIdData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GListTopPostsByHashTagIdData_response', 'G__typename'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GListTopPostsByHashTagIdData_response', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GListTopPostsByHashTagIdData_response', 'message'),
              statusCode: BuiltValueNullFieldError.checkNotNull(statusCode,
                  r'GListTopPostsByHashTagIdData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GListTopPostsByHashTagIdData_response',
                  'errorCodeForClient'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListTopPostsByHashTagIdData_response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListTopPostsByHashTagIdData_response_data
    extends GListTopPostsByHashTagIdData_response_data {
  @override
  final String G__typename;
  @override
  final String voicepodId;

  factory _$GListTopPostsByHashTagIdData_response_data(
          [void Function(GListTopPostsByHashTagIdData_response_dataBuilder)?
              updates]) =>
      (new GListTopPostsByHashTagIdData_response_dataBuilder()..update(updates))
          ._build();

  _$GListTopPostsByHashTagIdData_response_data._(
      {required this.G__typename, required this.voicepodId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GListTopPostsByHashTagIdData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(voicepodId,
        r'GListTopPostsByHashTagIdData_response_data', 'voicepodId');
  }

  @override
  GListTopPostsByHashTagIdData_response_data rebuild(
          void Function(GListTopPostsByHashTagIdData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopPostsByHashTagIdData_response_dataBuilder toBuilder() =>
      new GListTopPostsByHashTagIdData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListTopPostsByHashTagIdData_response_data &&
        G__typename == other.G__typename &&
        voicepodId == other.voicepodId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, voicepodId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GListTopPostsByHashTagIdData_response_data')
          ..add('G__typename', G__typename)
          ..add('voicepodId', voicepodId))
        .toString();
  }
}

class GListTopPostsByHashTagIdData_response_dataBuilder
    implements
        Builder<GListTopPostsByHashTagIdData_response_data,
            GListTopPostsByHashTagIdData_response_dataBuilder> {
  _$GListTopPostsByHashTagIdData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _voicepodId;
  String? get voicepodId => _$this._voicepodId;
  set voicepodId(String? voicepodId) => _$this._voicepodId = voicepodId;

  GListTopPostsByHashTagIdData_response_dataBuilder() {
    GListTopPostsByHashTagIdData_response_data._initializeBuilder(this);
  }

  GListTopPostsByHashTagIdData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _voicepodId = $v.voicepodId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListTopPostsByHashTagIdData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopPostsByHashTagIdData_response_data;
  }

  @override
  void update(
      void Function(GListTopPostsByHashTagIdData_response_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopPostsByHashTagIdData_response_data build() => _build();

  _$GListTopPostsByHashTagIdData_response_data _build() {
    final _$result = _$v ??
        new _$GListTopPostsByHashTagIdData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GListTopPostsByHashTagIdData_response_data', 'G__typename'),
            voicepodId: BuiltValueNullFieldError.checkNotNull(voicepodId,
                r'GListTopPostsByHashTagIdData_response_data', 'voicepodId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
