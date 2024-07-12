// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserInviteData> _$gUserInviteDataSerializer =
    new _$GUserInviteDataSerializer();
Serializer<GUserInviteData_response> _$gUserInviteDataResponseSerializer =
    new _$GUserInviteData_responseSerializer();
Serializer<GUserInviteData_response_data>
    _$gUserInviteDataResponseDataSerializer =
    new _$GUserInviteData_response_dataSerializer();
Serializer<GInvitedUsersData> _$gInvitedUsersDataSerializer =
    new _$GInvitedUsersDataSerializer();
Serializer<GInvitedUsersData_response> _$gInvitedUsersDataResponseSerializer =
    new _$GInvitedUsersData_responseSerializer();
Serializer<GInvitedUsersData_response_data>
    _$gInvitedUsersDataResponseDataSerializer =
    new _$GInvitedUsersData_response_dataSerializer();
Serializer<GRequestMoreInvitesData> _$gRequestMoreInvitesDataSerializer =
    new _$GRequestMoreInvitesDataSerializer();
Serializer<GRequestMoreInvitesData_response>
    _$gRequestMoreInvitesDataResponseSerializer =
    new _$GRequestMoreInvitesData_responseSerializer();

class _$GUserInviteDataSerializer
    implements StructuredSerializer<GUserInviteData> {
  @override
  final Iterable<Type> types = const [GUserInviteData, _$GUserInviteData];
  @override
  final String wireName = 'GUserInviteData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserInviteData object,
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
            specifiedType: const FullType(GUserInviteData_response)));
    }
    return result;
  }

  @override
  GUserInviteData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserInviteDataBuilder();

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
                  specifiedType: const FullType(GUserInviteData_response))!
              as GUserInviteData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserInviteData_responseSerializer
    implements StructuredSerializer<GUserInviteData_response> {
  @override
  final Iterable<Type> types = const [
    GUserInviteData_response,
    _$GUserInviteData_response
  ];
  @override
  final String wireName = 'GUserInviteData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserInviteData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
    value = object.errorCodeForClient;
    if (value != null) {
      result
        ..add('errorCodeForClient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserInviteData_response_data)));
    }
    return result;
  }

  @override
  GUserInviteData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserInviteData_responseBuilder();

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
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserInviteData_response_data))!
              as GUserInviteData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserInviteData_response_dataSerializer
    implements StructuredSerializer<GUserInviteData_response_data> {
  @override
  final Iterable<Type> types = const [
    GUserInviteData_response_data,
    _$GUserInviteData_response_data
  ];
  @override
  final String wireName = 'GUserInviteData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserInviteData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.uniqueDeepLink;
    if (value != null) {
      result
        ..add('uniqueDeepLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberOfInvitesLeft;
    if (value != null) {
      result
        ..add('numberOfInvitesLeft')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isInviteRequested;
    if (value != null) {
      result
        ..add('isInviteRequested')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUserInviteData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserInviteData_response_dataBuilder();

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
        case 'uniqueDeepLink':
          result.uniqueDeepLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numberOfInvitesLeft':
          result.numberOfInvitesLeft = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isInviteRequested':
          result.isInviteRequested = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GInvitedUsersDataSerializer
    implements StructuredSerializer<GInvitedUsersData> {
  @override
  final Iterable<Type> types = const [GInvitedUsersData, _$GInvitedUsersData];
  @override
  final String wireName = 'GInvitedUsersData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GInvitedUsersData object,
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
            specifiedType: const FullType(GInvitedUsersData_response)));
    }
    return result;
  }

  @override
  GInvitedUsersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInvitedUsersDataBuilder();

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
                  specifiedType: const FullType(GInvitedUsersData_response))!
              as GInvitedUsersData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GInvitedUsersData_responseSerializer
    implements StructuredSerializer<GInvitedUsersData_response> {
  @override
  final Iterable<Type> types = const [
    GInvitedUsersData_response,
    _$GInvitedUsersData_response
  ];
  @override
  final String wireName = 'GInvitedUsersData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInvitedUsersData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
    value = object.errorCodeForClient;
    if (value != null) {
      result
        ..add('errorCodeForClient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GInvitedUsersData_response_data)
            ])));
    }
    return result;
  }

  @override
  GInvitedUsersData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInvitedUsersData_responseBuilder();

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
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GInvitedUsersData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GInvitedUsersData_response_dataSerializer
    implements StructuredSerializer<GInvitedUsersData_response_data> {
  @override
  final Iterable<Type> types = const [
    GInvitedUsersData_response_data,
    _$GInvitedUsersData_response_data
  ];
  @override
  final String wireName = 'GInvitedUsersData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInvitedUsersData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.inviteeUserId;
    if (value != null) {
      result
        ..add('inviteeUserId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdOn;
    if (value != null) {
      result
        ..add('createdOn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GInvitedUsersData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInvitedUsersData_response_dataBuilder();

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
        case 'inviteeUserId':
          result.inviteeUserId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestMoreInvitesDataSerializer
    implements StructuredSerializer<GRequestMoreInvitesData> {
  @override
  final Iterable<Type> types = const [
    GRequestMoreInvitesData,
    _$GRequestMoreInvitesData
  ];
  @override
  final String wireName = 'GRequestMoreInvitesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRequestMoreInvitesData object,
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
            specifiedType: const FullType(GRequestMoreInvitesData_response)));
    }
    return result;
  }

  @override
  GRequestMoreInvitesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRequestMoreInvitesDataBuilder();

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
                      const FullType(GRequestMoreInvitesData_response))!
              as GRequestMoreInvitesData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestMoreInvitesData_responseSerializer
    implements StructuredSerializer<GRequestMoreInvitesData_response> {
  @override
  final Iterable<Type> types = const [
    GRequestMoreInvitesData_response,
    _$GRequestMoreInvitesData_response
  ];
  @override
  final String wireName = 'GRequestMoreInvitesData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRequestMoreInvitesData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
    value = object.errorCodeForClient;
    if (value != null) {
      result
        ..add('errorCodeForClient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRequestMoreInvitesData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRequestMoreInvitesData_responseBuilder();

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
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserInviteData extends GUserInviteData {
  @override
  final String G__typename;
  @override
  final GUserInviteData_response? response;

  factory _$GUserInviteData([void Function(GUserInviteDataBuilder)? updates]) =>
      (new GUserInviteDataBuilder()..update(updates))._build();

  _$GUserInviteData._({required this.G__typename, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserInviteData', 'G__typename');
  }

  @override
  GUserInviteData rebuild(void Function(GUserInviteDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserInviteDataBuilder toBuilder() =>
      new GUserInviteDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserInviteData &&
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
    return (newBuiltValueToStringHelper(r'GUserInviteData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GUserInviteDataBuilder
    implements Builder<GUserInviteData, GUserInviteDataBuilder> {
  _$GUserInviteData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserInviteData_responseBuilder? _response;
  GUserInviteData_responseBuilder get response =>
      _$this._response ??= new GUserInviteData_responseBuilder();
  set response(GUserInviteData_responseBuilder? response) =>
      _$this._response = response;

  GUserInviteDataBuilder() {
    GUserInviteData._initializeBuilder(this);
  }

  GUserInviteDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserInviteData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserInviteData;
  }

  @override
  void update(void Function(GUserInviteDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserInviteData build() => _build();

  _$GUserInviteData _build() {
    _$GUserInviteData _$result;
    try {
      _$result = _$v ??
          new _$GUserInviteData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserInviteData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserInviteData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserInviteData_response extends GUserInviteData_response {
  @override
  final String G__typename;
  @override
  final bool? error;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final String? errorCodeForClient;
  @override
  final GUserInviteData_response_data? data;

  factory _$GUserInviteData_response(
          [void Function(GUserInviteData_responseBuilder)? updates]) =>
      (new GUserInviteData_responseBuilder()..update(updates))._build();

  _$GUserInviteData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserInviteData_response', 'G__typename');
  }

  @override
  GUserInviteData_response rebuild(
          void Function(GUserInviteData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserInviteData_responseBuilder toBuilder() =>
      new GUserInviteData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserInviteData_response &&
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
    return (newBuiltValueToStringHelper(r'GUserInviteData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GUserInviteData_responseBuilder
    implements
        Builder<GUserInviteData_response, GUserInviteData_responseBuilder> {
  _$GUserInviteData_response? _$v;

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

  GUserInviteData_response_dataBuilder? _data;
  GUserInviteData_response_dataBuilder get data =>
      _$this._data ??= new GUserInviteData_response_dataBuilder();
  set data(GUserInviteData_response_dataBuilder? data) => _$this._data = data;

  GUserInviteData_responseBuilder() {
    GUserInviteData_response._initializeBuilder(this);
  }

  GUserInviteData_responseBuilder get _$this {
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
  void replace(GUserInviteData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserInviteData_response;
  }

  @override
  void update(void Function(GUserInviteData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserInviteData_response build() => _build();

  _$GUserInviteData_response _build() {
    _$GUserInviteData_response _$result;
    try {
      _$result = _$v ??
          new _$GUserInviteData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserInviteData_response', 'G__typename'),
              error: error,
              message: message,
              statusCode: statusCode,
              errorCodeForClient: errorCodeForClient,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserInviteData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserInviteData_response_data extends GUserInviteData_response_data {
  @override
  final String G__typename;
  @override
  final String? uniqueDeepLink;
  @override
  final String? numberOfInvitesLeft;
  @override
  final bool? isInviteRequested;

  factory _$GUserInviteData_response_data(
          [void Function(GUserInviteData_response_dataBuilder)? updates]) =>
      (new GUserInviteData_response_dataBuilder()..update(updates))._build();

  _$GUserInviteData_response_data._(
      {required this.G__typename,
      this.uniqueDeepLink,
      this.numberOfInvitesLeft,
      this.isInviteRequested})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserInviteData_response_data', 'G__typename');
  }

  @override
  GUserInviteData_response_data rebuild(
          void Function(GUserInviteData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserInviteData_response_dataBuilder toBuilder() =>
      new GUserInviteData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserInviteData_response_data &&
        G__typename == other.G__typename &&
        uniqueDeepLink == other.uniqueDeepLink &&
        numberOfInvitesLeft == other.numberOfInvitesLeft &&
        isInviteRequested == other.isInviteRequested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, uniqueDeepLink.hashCode);
    _$hash = $jc(_$hash, numberOfInvitesLeft.hashCode);
    _$hash = $jc(_$hash, isInviteRequested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserInviteData_response_data')
          ..add('G__typename', G__typename)
          ..add('uniqueDeepLink', uniqueDeepLink)
          ..add('numberOfInvitesLeft', numberOfInvitesLeft)
          ..add('isInviteRequested', isInviteRequested))
        .toString();
  }
}

class GUserInviteData_response_dataBuilder
    implements
        Builder<GUserInviteData_response_data,
            GUserInviteData_response_dataBuilder> {
  _$GUserInviteData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _uniqueDeepLink;
  String? get uniqueDeepLink => _$this._uniqueDeepLink;
  set uniqueDeepLink(String? uniqueDeepLink) =>
      _$this._uniqueDeepLink = uniqueDeepLink;

  String? _numberOfInvitesLeft;
  String? get numberOfInvitesLeft => _$this._numberOfInvitesLeft;
  set numberOfInvitesLeft(String? numberOfInvitesLeft) =>
      _$this._numberOfInvitesLeft = numberOfInvitesLeft;

  bool? _isInviteRequested;
  bool? get isInviteRequested => _$this._isInviteRequested;
  set isInviteRequested(bool? isInviteRequested) =>
      _$this._isInviteRequested = isInviteRequested;

  GUserInviteData_response_dataBuilder() {
    GUserInviteData_response_data._initializeBuilder(this);
  }

  GUserInviteData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _uniqueDeepLink = $v.uniqueDeepLink;
      _numberOfInvitesLeft = $v.numberOfInvitesLeft;
      _isInviteRequested = $v.isInviteRequested;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserInviteData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserInviteData_response_data;
  }

  @override
  void update(void Function(GUserInviteData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserInviteData_response_data build() => _build();

  _$GUserInviteData_response_data _build() {
    final _$result = _$v ??
        new _$GUserInviteData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserInviteData_response_data', 'G__typename'),
            uniqueDeepLink: uniqueDeepLink,
            numberOfInvitesLeft: numberOfInvitesLeft,
            isInviteRequested: isInviteRequested);
    replace(_$result);
    return _$result;
  }
}

class _$GInvitedUsersData extends GInvitedUsersData {
  @override
  final String G__typename;
  @override
  final GInvitedUsersData_response? response;

  factory _$GInvitedUsersData(
          [void Function(GInvitedUsersDataBuilder)? updates]) =>
      (new GInvitedUsersDataBuilder()..update(updates))._build();

  _$GInvitedUsersData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GInvitedUsersData', 'G__typename');
  }

  @override
  GInvitedUsersData rebuild(void Function(GInvitedUsersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInvitedUsersDataBuilder toBuilder() =>
      new GInvitedUsersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInvitedUsersData &&
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
    return (newBuiltValueToStringHelper(r'GInvitedUsersData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GInvitedUsersDataBuilder
    implements Builder<GInvitedUsersData, GInvitedUsersDataBuilder> {
  _$GInvitedUsersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GInvitedUsersData_responseBuilder? _response;
  GInvitedUsersData_responseBuilder get response =>
      _$this._response ??= new GInvitedUsersData_responseBuilder();
  set response(GInvitedUsersData_responseBuilder? response) =>
      _$this._response = response;

  GInvitedUsersDataBuilder() {
    GInvitedUsersData._initializeBuilder(this);
  }

  GInvitedUsersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInvitedUsersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInvitedUsersData;
  }

  @override
  void update(void Function(GInvitedUsersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInvitedUsersData build() => _build();

  _$GInvitedUsersData _build() {
    _$GInvitedUsersData _$result;
    try {
      _$result = _$v ??
          new _$GInvitedUsersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GInvitedUsersData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GInvitedUsersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GInvitedUsersData_response extends GInvitedUsersData_response {
  @override
  final String G__typename;
  @override
  final bool? error;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final String? errorCodeForClient;
  @override
  final BuiltList<GInvitedUsersData_response_data?>? data;

  factory _$GInvitedUsersData_response(
          [void Function(GInvitedUsersData_responseBuilder)? updates]) =>
      (new GInvitedUsersData_responseBuilder()..update(updates))._build();

  _$GInvitedUsersData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GInvitedUsersData_response', 'G__typename');
  }

  @override
  GInvitedUsersData_response rebuild(
          void Function(GInvitedUsersData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInvitedUsersData_responseBuilder toBuilder() =>
      new GInvitedUsersData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInvitedUsersData_response &&
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
    return (newBuiltValueToStringHelper(r'GInvitedUsersData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GInvitedUsersData_responseBuilder
    implements
        Builder<GInvitedUsersData_response, GInvitedUsersData_responseBuilder> {
  _$GInvitedUsersData_response? _$v;

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

  ListBuilder<GInvitedUsersData_response_data?>? _data;
  ListBuilder<GInvitedUsersData_response_data?> get data =>
      _$this._data ??= new ListBuilder<GInvitedUsersData_response_data?>();
  set data(ListBuilder<GInvitedUsersData_response_data?>? data) =>
      _$this._data = data;

  GInvitedUsersData_responseBuilder() {
    GInvitedUsersData_response._initializeBuilder(this);
  }

  GInvitedUsersData_responseBuilder get _$this {
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
  void replace(GInvitedUsersData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInvitedUsersData_response;
  }

  @override
  void update(void Function(GInvitedUsersData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInvitedUsersData_response build() => _build();

  _$GInvitedUsersData_response _build() {
    _$GInvitedUsersData_response _$result;
    try {
      _$result = _$v ??
          new _$GInvitedUsersData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GInvitedUsersData_response', 'G__typename'),
              error: error,
              message: message,
              statusCode: statusCode,
              errorCodeForClient: errorCodeForClient,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GInvitedUsersData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GInvitedUsersData_response_data
    extends GInvitedUsersData_response_data {
  @override
  final String G__typename;
  @override
  final String? inviteeUserId;
  @override
  final String? createdOn;

  factory _$GInvitedUsersData_response_data(
          [void Function(GInvitedUsersData_response_dataBuilder)? updates]) =>
      (new GInvitedUsersData_response_dataBuilder()..update(updates))._build();

  _$GInvitedUsersData_response_data._(
      {required this.G__typename, this.inviteeUserId, this.createdOn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GInvitedUsersData_response_data', 'G__typename');
  }

  @override
  GInvitedUsersData_response_data rebuild(
          void Function(GInvitedUsersData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInvitedUsersData_response_dataBuilder toBuilder() =>
      new GInvitedUsersData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInvitedUsersData_response_data &&
        G__typename == other.G__typename &&
        inviteeUserId == other.inviteeUserId &&
        createdOn == other.createdOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, inviteeUserId.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInvitedUsersData_response_data')
          ..add('G__typename', G__typename)
          ..add('inviteeUserId', inviteeUserId)
          ..add('createdOn', createdOn))
        .toString();
  }
}

class GInvitedUsersData_response_dataBuilder
    implements
        Builder<GInvitedUsersData_response_data,
            GInvitedUsersData_response_dataBuilder> {
  _$GInvitedUsersData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _inviteeUserId;
  String? get inviteeUserId => _$this._inviteeUserId;
  set inviteeUserId(String? inviteeUserId) =>
      _$this._inviteeUserId = inviteeUserId;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  GInvitedUsersData_response_dataBuilder() {
    GInvitedUsersData_response_data._initializeBuilder(this);
  }

  GInvitedUsersData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _inviteeUserId = $v.inviteeUserId;
      _createdOn = $v.createdOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInvitedUsersData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInvitedUsersData_response_data;
  }

  @override
  void update(void Function(GInvitedUsersData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInvitedUsersData_response_data build() => _build();

  _$GInvitedUsersData_response_data _build() {
    final _$result = _$v ??
        new _$GInvitedUsersData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GInvitedUsersData_response_data', 'G__typename'),
            inviteeUserId: inviteeUserId,
            createdOn: createdOn);
    replace(_$result);
    return _$result;
  }
}

class _$GRequestMoreInvitesData extends GRequestMoreInvitesData {
  @override
  final String G__typename;
  @override
  final GRequestMoreInvitesData_response? response;

  factory _$GRequestMoreInvitesData(
          [void Function(GRequestMoreInvitesDataBuilder)? updates]) =>
      (new GRequestMoreInvitesDataBuilder()..update(updates))._build();

  _$GRequestMoreInvitesData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRequestMoreInvitesData', 'G__typename');
  }

  @override
  GRequestMoreInvitesData rebuild(
          void Function(GRequestMoreInvitesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestMoreInvitesDataBuilder toBuilder() =>
      new GRequestMoreInvitesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRequestMoreInvitesData &&
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
    return (newBuiltValueToStringHelper(r'GRequestMoreInvitesData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GRequestMoreInvitesDataBuilder
    implements
        Builder<GRequestMoreInvitesData, GRequestMoreInvitesDataBuilder> {
  _$GRequestMoreInvitesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRequestMoreInvitesData_responseBuilder? _response;
  GRequestMoreInvitesData_responseBuilder get response =>
      _$this._response ??= new GRequestMoreInvitesData_responseBuilder();
  set response(GRequestMoreInvitesData_responseBuilder? response) =>
      _$this._response = response;

  GRequestMoreInvitesDataBuilder() {
    GRequestMoreInvitesData._initializeBuilder(this);
  }

  GRequestMoreInvitesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRequestMoreInvitesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRequestMoreInvitesData;
  }

  @override
  void update(void Function(GRequestMoreInvitesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRequestMoreInvitesData build() => _build();

  _$GRequestMoreInvitesData _build() {
    _$GRequestMoreInvitesData _$result;
    try {
      _$result = _$v ??
          new _$GRequestMoreInvitesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRequestMoreInvitesData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRequestMoreInvitesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRequestMoreInvitesData_response
    extends GRequestMoreInvitesData_response {
  @override
  final String G__typename;
  @override
  final bool? error;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final String? errorCodeForClient;
  @override
  final String? data;

  factory _$GRequestMoreInvitesData_response(
          [void Function(GRequestMoreInvitesData_responseBuilder)? updates]) =>
      (new GRequestMoreInvitesData_responseBuilder()..update(updates))._build();

  _$GRequestMoreInvitesData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRequestMoreInvitesData_response', 'G__typename');
  }

  @override
  GRequestMoreInvitesData_response rebuild(
          void Function(GRequestMoreInvitesData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestMoreInvitesData_responseBuilder toBuilder() =>
      new GRequestMoreInvitesData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRequestMoreInvitesData_response &&
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
    return (newBuiltValueToStringHelper(r'GRequestMoreInvitesData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GRequestMoreInvitesData_responseBuilder
    implements
        Builder<GRequestMoreInvitesData_response,
            GRequestMoreInvitesData_responseBuilder> {
  _$GRequestMoreInvitesData_response? _$v;

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

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  GRequestMoreInvitesData_responseBuilder() {
    GRequestMoreInvitesData_response._initializeBuilder(this);
  }

  GRequestMoreInvitesData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRequestMoreInvitesData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRequestMoreInvitesData_response;
  }

  @override
  void update(void Function(GRequestMoreInvitesData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRequestMoreInvitesData_response build() => _build();

  _$GRequestMoreInvitesData_response _build() {
    final _$result = _$v ??
        new _$GRequestMoreInvitesData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GRequestMoreInvitesData_response', 'G__typename'),
            error: error,
            message: message,
            statusCode: statusCode,
            errorCodeForClient: errorCodeForClient,
            data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
