// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_queries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNotificationData> _$gNotificationDataSerializer =
    new _$GNotificationDataSerializer();
Serializer<GNotificationData_response> _$gNotificationDataResponseSerializer =
    new _$GNotificationData_responseSerializer();
Serializer<GNotificationData_response_data>
    _$gNotificationDataResponseDataSerializer =
    new _$GNotificationData_response_dataSerializer();
Serializer<GMarkNotificationAsSeenData>
    _$gMarkNotificationAsSeenDataSerializer =
    new _$GMarkNotificationAsSeenDataSerializer();
Serializer<GMarkNotificationAsSeenData_response>
    _$gMarkNotificationAsSeenDataResponseSerializer =
    new _$GMarkNotificationAsSeenData_responseSerializer();
Serializer<GSaveUserDeviceInformationData>
    _$gSaveUserDeviceInformationDataSerializer =
    new _$GSaveUserDeviceInformationDataSerializer();
Serializer<GSaveUserDeviceInformationData_response>
    _$gSaveUserDeviceInformationDataResponseSerializer =
    new _$GSaveUserDeviceInformationData_responseSerializer();

class _$GNotificationDataSerializer
    implements StructuredSerializer<GNotificationData> {
  @override
  final Iterable<Type> types = const [GNotificationData, _$GNotificationData];
  @override
  final String wireName = 'GNotificationData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNotificationData object,
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
            specifiedType: const FullType(GNotificationData_response)));
    }
    return result;
  }

  @override
  GNotificationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationDataBuilder();

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
                  specifiedType: const FullType(GNotificationData_response))!
              as GNotificationData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationData_responseSerializer
    implements StructuredSerializer<GNotificationData_response> {
  @override
  final Iterable<Type> types = const [
    GNotificationData_response,
    _$GNotificationData_response
  ];
  @override
  final String wireName = 'GNotificationData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationData_response object,
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
              const FullType.nullable(GNotificationData_response_data)
            ])));
    }
    return result;
  }

  @override
  GNotificationData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationData_responseBuilder();

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
                const FullType.nullable(GNotificationData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationData_response_dataSerializer
    implements StructuredSerializer<GNotificationData_response_data> {
  @override
  final Iterable<Type> types = const [
    GNotificationData_response_data,
    _$GNotificationData_response_data
  ];
  @override
  final String wireName = 'GNotificationData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.notificationId;
    if (value != null) {
      result
        ..add('notificationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.actionType;
    if (value != null) {
      result
        ..add('actionType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.senderId;
    if (value != null) {
      result
        ..add('senderId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.receiverId;
    if (value != null) {
      result
        ..add('receiverId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.entityType;
    if (value != null) {
      result
        ..add('entityType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.entityId;
    if (value != null) {
      result
        ..add('entityId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationTitle;
    if (value != null) {
      result
        ..add('notificationTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationBody;
    if (value != null) {
      result
        ..add('notificationBody')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ctaText;
    if (value != null) {
      result
        ..add('ctaText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediaId;
    if (value != null) {
      result
        ..add('mediaId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.redirectUrl;
    if (value != null) {
      result
        ..add('redirectUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationPersistenceType;
    if (value != null) {
      result
        ..add('notificationPersistenceType')
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
    value = object.seenByUser;
    if (value != null) {
      result
        ..add('seenByUser')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GNotificationData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationData_response_dataBuilder();

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
        case 'notificationId':
          result.notificationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'senderId':
          result.senderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'receiverId':
          result.receiverId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'entityType':
          result.entityType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'entityId':
          result.entityId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notificationTitle':
          result.notificationTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notificationBody':
          result.notificationBody = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ctaText':
          result.ctaText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'redirectUrl':
          result.redirectUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notificationPersistenceType':
          result.notificationPersistenceType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seenByUser':
          result.seenByUser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMarkNotificationAsSeenDataSerializer
    implements StructuredSerializer<GMarkNotificationAsSeenData> {
  @override
  final Iterable<Type> types = const [
    GMarkNotificationAsSeenData,
    _$GMarkNotificationAsSeenData
  ];
  @override
  final String wireName = 'GMarkNotificationAsSeenData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMarkNotificationAsSeenData object,
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
                const FullType(GMarkNotificationAsSeenData_response)));
    }
    return result;
  }

  @override
  GMarkNotificationAsSeenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkNotificationAsSeenDataBuilder();

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
                      const FullType(GMarkNotificationAsSeenData_response))!
              as GMarkNotificationAsSeenData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GMarkNotificationAsSeenData_responseSerializer
    implements StructuredSerializer<GMarkNotificationAsSeenData_response> {
  @override
  final Iterable<Type> types = const [
    GMarkNotificationAsSeenData_response,
    _$GMarkNotificationAsSeenData_response
  ];
  @override
  final String wireName = 'GMarkNotificationAsSeenData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMarkNotificationAsSeenData_response object,
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
  GMarkNotificationAsSeenData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkNotificationAsSeenData_responseBuilder();

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

class _$GSaveUserDeviceInformationDataSerializer
    implements StructuredSerializer<GSaveUserDeviceInformationData> {
  @override
  final Iterable<Type> types = const [
    GSaveUserDeviceInformationData,
    _$GSaveUserDeviceInformationData
  ];
  @override
  final String wireName = 'GSaveUserDeviceInformationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveUserDeviceInformationData object,
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
                const FullType(GSaveUserDeviceInformationData_response)));
    }
    return result;
  }

  @override
  GSaveUserDeviceInformationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveUserDeviceInformationDataBuilder();

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
                      const FullType(GSaveUserDeviceInformationData_response))!
              as GSaveUserDeviceInformationData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveUserDeviceInformationData_responseSerializer
    implements StructuredSerializer<GSaveUserDeviceInformationData_response> {
  @override
  final Iterable<Type> types = const [
    GSaveUserDeviceInformationData_response,
    _$GSaveUserDeviceInformationData_response
  ];
  @override
  final String wireName = 'GSaveUserDeviceInformationData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveUserDeviceInformationData_response object,
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
  GSaveUserDeviceInformationData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveUserDeviceInformationData_responseBuilder();

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

class _$GNotificationData extends GNotificationData {
  @override
  final String G__typename;
  @override
  final GNotificationData_response? response;

  factory _$GNotificationData(
          [void Function(GNotificationDataBuilder)? updates]) =>
      (new GNotificationDataBuilder()..update(updates))._build();

  _$GNotificationData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationData', 'G__typename');
  }

  @override
  GNotificationData rebuild(void Function(GNotificationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationDataBuilder toBuilder() =>
      new GNotificationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationData &&
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
    return (newBuiltValueToStringHelper(r'GNotificationData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GNotificationDataBuilder
    implements Builder<GNotificationData, GNotificationDataBuilder> {
  _$GNotificationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNotificationData_responseBuilder? _response;
  GNotificationData_responseBuilder get response =>
      _$this._response ??= new GNotificationData_responseBuilder();
  set response(GNotificationData_responseBuilder? response) =>
      _$this._response = response;

  GNotificationDataBuilder() {
    GNotificationData._initializeBuilder(this);
  }

  GNotificationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationData;
  }

  @override
  void update(void Function(GNotificationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationData build() => _build();

  _$GNotificationData _build() {
    _$GNotificationData _$result;
    try {
      _$result = _$v ??
          new _$GNotificationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GNotificationData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationData_response extends GNotificationData_response {
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
  final BuiltList<GNotificationData_response_data?>? data;

  factory _$GNotificationData_response(
          [void Function(GNotificationData_responseBuilder)? updates]) =>
      (new GNotificationData_responseBuilder()..update(updates))._build();

  _$GNotificationData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationData_response', 'G__typename');
  }

  @override
  GNotificationData_response rebuild(
          void Function(GNotificationData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationData_responseBuilder toBuilder() =>
      new GNotificationData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationData_response &&
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
    return (newBuiltValueToStringHelper(r'GNotificationData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GNotificationData_responseBuilder
    implements
        Builder<GNotificationData_response, GNotificationData_responseBuilder> {
  _$GNotificationData_response? _$v;

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

  ListBuilder<GNotificationData_response_data?>? _data;
  ListBuilder<GNotificationData_response_data?> get data =>
      _$this._data ??= new ListBuilder<GNotificationData_response_data?>();
  set data(ListBuilder<GNotificationData_response_data?>? data) =>
      _$this._data = data;

  GNotificationData_responseBuilder() {
    GNotificationData_response._initializeBuilder(this);
  }

  GNotificationData_responseBuilder get _$this {
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
  void replace(GNotificationData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationData_response;
  }

  @override
  void update(void Function(GNotificationData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationData_response build() => _build();

  _$GNotificationData_response _build() {
    _$GNotificationData_response _$result;
    try {
      _$result = _$v ??
          new _$GNotificationData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GNotificationData_response', 'G__typename'),
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
            r'GNotificationData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationData_response_data
    extends GNotificationData_response_data {
  @override
  final String G__typename;
  @override
  final String? notificationId;
  @override
  final String? actionType;
  @override
  final String? senderId;
  @override
  final String? receiverId;
  @override
  final String? entityType;
  @override
  final String? entityId;
  @override
  final String? notificationTitle;
  @override
  final String? notificationBody;
  @override
  final String? ctaText;
  @override
  final String? mediaId;
  @override
  final String? redirectUrl;
  @override
  final String? notificationPersistenceType;
  @override
  final String? createdOn;
  @override
  final bool? seenByUser;

  factory _$GNotificationData_response_data(
          [void Function(GNotificationData_response_dataBuilder)? updates]) =>
      (new GNotificationData_response_dataBuilder()..update(updates))._build();

  _$GNotificationData_response_data._(
      {required this.G__typename,
      this.notificationId,
      this.actionType,
      this.senderId,
      this.receiverId,
      this.entityType,
      this.entityId,
      this.notificationTitle,
      this.notificationBody,
      this.ctaText,
      this.mediaId,
      this.redirectUrl,
      this.notificationPersistenceType,
      this.createdOn,
      this.seenByUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationData_response_data', 'G__typename');
  }

  @override
  GNotificationData_response_data rebuild(
          void Function(GNotificationData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationData_response_dataBuilder toBuilder() =>
      new GNotificationData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationData_response_data &&
        G__typename == other.G__typename &&
        notificationId == other.notificationId &&
        actionType == other.actionType &&
        senderId == other.senderId &&
        receiverId == other.receiverId &&
        entityType == other.entityType &&
        entityId == other.entityId &&
        notificationTitle == other.notificationTitle &&
        notificationBody == other.notificationBody &&
        ctaText == other.ctaText &&
        mediaId == other.mediaId &&
        redirectUrl == other.redirectUrl &&
        notificationPersistenceType == other.notificationPersistenceType &&
        createdOn == other.createdOn &&
        seenByUser == other.seenByUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, notificationId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, senderId.hashCode);
    _$hash = $jc(_$hash, receiverId.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, notificationTitle.hashCode);
    _$hash = $jc(_$hash, notificationBody.hashCode);
    _$hash = $jc(_$hash, ctaText.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, redirectUrl.hashCode);
    _$hash = $jc(_$hash, notificationPersistenceType.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, seenByUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationData_response_data')
          ..add('G__typename', G__typename)
          ..add('notificationId', notificationId)
          ..add('actionType', actionType)
          ..add('senderId', senderId)
          ..add('receiverId', receiverId)
          ..add('entityType', entityType)
          ..add('entityId', entityId)
          ..add('notificationTitle', notificationTitle)
          ..add('notificationBody', notificationBody)
          ..add('ctaText', ctaText)
          ..add('mediaId', mediaId)
          ..add('redirectUrl', redirectUrl)
          ..add('notificationPersistenceType', notificationPersistenceType)
          ..add('createdOn', createdOn)
          ..add('seenByUser', seenByUser))
        .toString();
  }
}

class GNotificationData_response_dataBuilder
    implements
        Builder<GNotificationData_response_data,
            GNotificationData_response_dataBuilder> {
  _$GNotificationData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _notificationId;
  String? get notificationId => _$this._notificationId;
  set notificationId(String? notificationId) =>
      _$this._notificationId = notificationId;

  String? _actionType;
  String? get actionType => _$this._actionType;
  set actionType(String? actionType) => _$this._actionType = actionType;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  String? _receiverId;
  String? get receiverId => _$this._receiverId;
  set receiverId(String? receiverId) => _$this._receiverId = receiverId;

  String? _entityType;
  String? get entityType => _$this._entityType;
  set entityType(String? entityType) => _$this._entityType = entityType;

  String? _entityId;
  String? get entityId => _$this._entityId;
  set entityId(String? entityId) => _$this._entityId = entityId;

  String? _notificationTitle;
  String? get notificationTitle => _$this._notificationTitle;
  set notificationTitle(String? notificationTitle) =>
      _$this._notificationTitle = notificationTitle;

  String? _notificationBody;
  String? get notificationBody => _$this._notificationBody;
  set notificationBody(String? notificationBody) =>
      _$this._notificationBody = notificationBody;

  String? _ctaText;
  String? get ctaText => _$this._ctaText;
  set ctaText(String? ctaText) => _$this._ctaText = ctaText;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  String? _redirectUrl;
  String? get redirectUrl => _$this._redirectUrl;
  set redirectUrl(String? redirectUrl) => _$this._redirectUrl = redirectUrl;

  String? _notificationPersistenceType;
  String? get notificationPersistenceType =>
      _$this._notificationPersistenceType;
  set notificationPersistenceType(String? notificationPersistenceType) =>
      _$this._notificationPersistenceType = notificationPersistenceType;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  bool? _seenByUser;
  bool? get seenByUser => _$this._seenByUser;
  set seenByUser(bool? seenByUser) => _$this._seenByUser = seenByUser;

  GNotificationData_response_dataBuilder() {
    GNotificationData_response_data._initializeBuilder(this);
  }

  GNotificationData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _notificationId = $v.notificationId;
      _actionType = $v.actionType;
      _senderId = $v.senderId;
      _receiverId = $v.receiverId;
      _entityType = $v.entityType;
      _entityId = $v.entityId;
      _notificationTitle = $v.notificationTitle;
      _notificationBody = $v.notificationBody;
      _ctaText = $v.ctaText;
      _mediaId = $v.mediaId;
      _redirectUrl = $v.redirectUrl;
      _notificationPersistenceType = $v.notificationPersistenceType;
      _createdOn = $v.createdOn;
      _seenByUser = $v.seenByUser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationData_response_data;
  }

  @override
  void update(void Function(GNotificationData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationData_response_data build() => _build();

  _$GNotificationData_response_data _build() {
    final _$result = _$v ??
        new _$GNotificationData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GNotificationData_response_data', 'G__typename'),
            notificationId: notificationId,
            actionType: actionType,
            senderId: senderId,
            receiverId: receiverId,
            entityType: entityType,
            entityId: entityId,
            notificationTitle: notificationTitle,
            notificationBody: notificationBody,
            ctaText: ctaText,
            mediaId: mediaId,
            redirectUrl: redirectUrl,
            notificationPersistenceType: notificationPersistenceType,
            createdOn: createdOn,
            seenByUser: seenByUser);
    replace(_$result);
    return _$result;
  }
}

class _$GMarkNotificationAsSeenData extends GMarkNotificationAsSeenData {
  @override
  final String G__typename;
  @override
  final GMarkNotificationAsSeenData_response? response;

  factory _$GMarkNotificationAsSeenData(
          [void Function(GMarkNotificationAsSeenDataBuilder)? updates]) =>
      (new GMarkNotificationAsSeenDataBuilder()..update(updates))._build();

  _$GMarkNotificationAsSeenData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMarkNotificationAsSeenData', 'G__typename');
  }

  @override
  GMarkNotificationAsSeenData rebuild(
          void Function(GMarkNotificationAsSeenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkNotificationAsSeenDataBuilder toBuilder() =>
      new GMarkNotificationAsSeenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarkNotificationAsSeenData &&
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
    return (newBuiltValueToStringHelper(r'GMarkNotificationAsSeenData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GMarkNotificationAsSeenDataBuilder
    implements
        Builder<GMarkNotificationAsSeenData,
            GMarkNotificationAsSeenDataBuilder> {
  _$GMarkNotificationAsSeenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMarkNotificationAsSeenData_responseBuilder? _response;
  GMarkNotificationAsSeenData_responseBuilder get response =>
      _$this._response ??= new GMarkNotificationAsSeenData_responseBuilder();
  set response(GMarkNotificationAsSeenData_responseBuilder? response) =>
      _$this._response = response;

  GMarkNotificationAsSeenDataBuilder() {
    GMarkNotificationAsSeenData._initializeBuilder(this);
  }

  GMarkNotificationAsSeenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarkNotificationAsSeenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkNotificationAsSeenData;
  }

  @override
  void update(void Function(GMarkNotificationAsSeenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkNotificationAsSeenData build() => _build();

  _$GMarkNotificationAsSeenData _build() {
    _$GMarkNotificationAsSeenData _$result;
    try {
      _$result = _$v ??
          new _$GMarkNotificationAsSeenData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMarkNotificationAsSeenData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMarkNotificationAsSeenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMarkNotificationAsSeenData_response
    extends GMarkNotificationAsSeenData_response {
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

  factory _$GMarkNotificationAsSeenData_response(
          [void Function(GMarkNotificationAsSeenData_responseBuilder)?
              updates]) =>
      (new GMarkNotificationAsSeenData_responseBuilder()..update(updates))
          ._build();

  _$GMarkNotificationAsSeenData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMarkNotificationAsSeenData_response', 'G__typename');
  }

  @override
  GMarkNotificationAsSeenData_response rebuild(
          void Function(GMarkNotificationAsSeenData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkNotificationAsSeenData_responseBuilder toBuilder() =>
      new GMarkNotificationAsSeenData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarkNotificationAsSeenData_response &&
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
    return (newBuiltValueToStringHelper(r'GMarkNotificationAsSeenData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GMarkNotificationAsSeenData_responseBuilder
    implements
        Builder<GMarkNotificationAsSeenData_response,
            GMarkNotificationAsSeenData_responseBuilder> {
  _$GMarkNotificationAsSeenData_response? _$v;

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

  GMarkNotificationAsSeenData_responseBuilder() {
    GMarkNotificationAsSeenData_response._initializeBuilder(this);
  }

  GMarkNotificationAsSeenData_responseBuilder get _$this {
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
  void replace(GMarkNotificationAsSeenData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkNotificationAsSeenData_response;
  }

  @override
  void update(
      void Function(GMarkNotificationAsSeenData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkNotificationAsSeenData_response build() => _build();

  _$GMarkNotificationAsSeenData_response _build() {
    final _$result = _$v ??
        new _$GMarkNotificationAsSeenData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMarkNotificationAsSeenData_response', 'G__typename'),
            error: error,
            message: message,
            statusCode: statusCode,
            errorCodeForClient: errorCodeForClient,
            data: data);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveUserDeviceInformationData extends GSaveUserDeviceInformationData {
  @override
  final String G__typename;
  @override
  final GSaveUserDeviceInformationData_response? response;

  factory _$GSaveUserDeviceInformationData(
          [void Function(GSaveUserDeviceInformationDataBuilder)? updates]) =>
      (new GSaveUserDeviceInformationDataBuilder()..update(updates))._build();

  _$GSaveUserDeviceInformationData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveUserDeviceInformationData', 'G__typename');
  }

  @override
  GSaveUserDeviceInformationData rebuild(
          void Function(GSaveUserDeviceInformationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveUserDeviceInformationDataBuilder toBuilder() =>
      new GSaveUserDeviceInformationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveUserDeviceInformationData &&
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
    return (newBuiltValueToStringHelper(r'GSaveUserDeviceInformationData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GSaveUserDeviceInformationDataBuilder
    implements
        Builder<GSaveUserDeviceInformationData,
            GSaveUserDeviceInformationDataBuilder> {
  _$GSaveUserDeviceInformationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSaveUserDeviceInformationData_responseBuilder? _response;
  GSaveUserDeviceInformationData_responseBuilder get response =>
      _$this._response ??= new GSaveUserDeviceInformationData_responseBuilder();
  set response(GSaveUserDeviceInformationData_responseBuilder? response) =>
      _$this._response = response;

  GSaveUserDeviceInformationDataBuilder() {
    GSaveUserDeviceInformationData._initializeBuilder(this);
  }

  GSaveUserDeviceInformationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveUserDeviceInformationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveUserDeviceInformationData;
  }

  @override
  void update(void Function(GSaveUserDeviceInformationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveUserDeviceInformationData build() => _build();

  _$GSaveUserDeviceInformationData _build() {
    _$GSaveUserDeviceInformationData _$result;
    try {
      _$result = _$v ??
          new _$GSaveUserDeviceInformationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSaveUserDeviceInformationData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveUserDeviceInformationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveUserDeviceInformationData_response
    extends GSaveUserDeviceInformationData_response {
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

  factory _$GSaveUserDeviceInformationData_response(
          [void Function(GSaveUserDeviceInformationData_responseBuilder)?
              updates]) =>
      (new GSaveUserDeviceInformationData_responseBuilder()..update(updates))
          ._build();

  _$GSaveUserDeviceInformationData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveUserDeviceInformationData_response', 'G__typename');
  }

  @override
  GSaveUserDeviceInformationData_response rebuild(
          void Function(GSaveUserDeviceInformationData_responseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveUserDeviceInformationData_responseBuilder toBuilder() =>
      new GSaveUserDeviceInformationData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveUserDeviceInformationData_response &&
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
            r'GSaveUserDeviceInformationData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GSaveUserDeviceInformationData_responseBuilder
    implements
        Builder<GSaveUserDeviceInformationData_response,
            GSaveUserDeviceInformationData_responseBuilder> {
  _$GSaveUserDeviceInformationData_response? _$v;

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

  GSaveUserDeviceInformationData_responseBuilder() {
    GSaveUserDeviceInformationData_response._initializeBuilder(this);
  }

  GSaveUserDeviceInformationData_responseBuilder get _$this {
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
  void replace(GSaveUserDeviceInformationData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveUserDeviceInformationData_response;
  }

  @override
  void update(
      void Function(GSaveUserDeviceInformationData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveUserDeviceInformationData_response build() => _build();

  _$GSaveUserDeviceInformationData_response _build() {
    final _$result = _$v ??
        new _$GSaveUserDeviceInformationData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSaveUserDeviceInformationData_response', 'G__typename'),
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
