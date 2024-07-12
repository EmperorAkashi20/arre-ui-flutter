// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GlastAppLandingSourceType _$glastAppLandingSourceTypedirect =
    const GlastAppLandingSourceType._('direct');
const GlastAppLandingSourceType _$glastAppLandingSourceTypenotification =
    const GlastAppLandingSourceType._('notification');
const GlastAppLandingSourceType _$glastAppLandingSourceTypeinviteLink =
    const GlastAppLandingSourceType._('inviteLink');
const GlastAppLandingSourceType _$glastAppLandingSourceTypedeepLink =
    const GlastAppLandingSourceType._('deepLink');

GlastAppLandingSourceType _$glastAppLandingSourceTypeValueOf(String name) {
  switch (name) {
    case 'direct':
      return _$glastAppLandingSourceTypedirect;
    case 'notification':
      return _$glastAppLandingSourceTypenotification;
    case 'inviteLink':
      return _$glastAppLandingSourceTypeinviteLink;
    case 'deepLink':
      return _$glastAppLandingSourceTypedeepLink;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GlastAppLandingSourceType> _$glastAppLandingSourceTypeValues =
    new BuiltSet<GlastAppLandingSourceType>(const <GlastAppLandingSourceType>[
  _$glastAppLandingSourceTypedirect,
  _$glastAppLandingSourceTypenotification,
  _$glastAppLandingSourceTypeinviteLink,
  _$glastAppLandingSourceTypedeepLink,
]);

const GschemaName _$gschemaNameTransactionalNotification =
    const GschemaName._('TransactionalNotification');
const GschemaName _$gschemaNameSocialNotification =
    const GschemaName._('SocialNotification');
const GschemaName _$gschemaNameCMSNotification =
    const GschemaName._('CMSNotification');

GschemaName _$gschemaNameValueOf(String name) {
  switch (name) {
    case 'TransactionalNotification':
      return _$gschemaNameTransactionalNotification;
    case 'SocialNotification':
      return _$gschemaNameSocialNotification;
    case 'CMSNotification':
      return _$gschemaNameCMSNotification;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GschemaName> _$gschemaNameValues =
    new BuiltSet<GschemaName>(const <GschemaName>[
  _$gschemaNameTransactionalNotification,
  _$gschemaNameSocialNotification,
  _$gschemaNameCMSNotification,
]);

Serializer<GinputDeviceInfo> _$ginputDeviceInfoSerializer =
    new _$GinputDeviceInfoSerializer();
Serializer<GlastAppLandingSourceType> _$glastAppLandingSourceTypeSerializer =
    new _$GlastAppLandingSourceTypeSerializer();
Serializer<GschemaName> _$gschemaNameSerializer = new _$GschemaNameSerializer();

class _$GinputDeviceInfoSerializer
    implements StructuredSerializer<GinputDeviceInfo> {
  @override
  final Iterable<Type> types = const [GinputDeviceInfo, _$GinputDeviceInfo];
  @override
  final String wireName = 'GinputDeviceInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, GinputDeviceInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fcmToken;
    if (value != null) {
      result
        ..add('fcmToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.operatingSystem;
    if (value != null) {
      result
        ..add('operatingSystem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.operatingSystemVersion;
    if (value != null) {
      result
        ..add('operatingSystemVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.modelName;
    if (value != null) {
      result
        ..add('modelName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.manufacturer;
    if (value != null) {
      result
        ..add('manufacturer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceName;
    if (value != null) {
      result
        ..add('deviceName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceUniqueId;
    if (value != null) {
      result
        ..add('deviceUniqueId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imeiNumber;
    if (value != null) {
      result
        ..add('imeiNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GinputDeviceInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinputDeviceInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fcmToken':
          result.fcmToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'operatingSystem':
          result.operatingSystem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'operatingSystemVersion':
          result.operatingSystemVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'modelName':
          result.modelName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'manufacturer':
          result.manufacturer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceName':
          result.deviceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceUniqueId':
          result.deviceUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imeiNumber':
          result.imeiNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlastAppLandingSourceTypeSerializer
    implements PrimitiveSerializer<GlastAppLandingSourceType> {
  @override
  final Iterable<Type> types = const <Type>[GlastAppLandingSourceType];
  @override
  final String wireName = 'GlastAppLandingSourceType';

  @override
  Object serialize(Serializers serializers, GlastAppLandingSourceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GlastAppLandingSourceType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GlastAppLandingSourceType.valueOf(serialized as String);
}

class _$GschemaNameSerializer implements PrimitiveSerializer<GschemaName> {
  @override
  final Iterable<Type> types = const <Type>[GschemaName];
  @override
  final String wireName = 'GschemaName';

  @override
  Object serialize(Serializers serializers, GschemaName object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GschemaName deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GschemaName.valueOf(serialized as String);
}

class _$GinputDeviceInfo extends GinputDeviceInfo {
  @override
  final String? fcmToken;
  @override
  final String? operatingSystem;
  @override
  final String? operatingSystemVersion;
  @override
  final String? modelName;
  @override
  final String? manufacturer;
  @override
  final String? deviceName;
  @override
  final String? deviceUniqueId;
  @override
  final String? imeiNumber;

  factory _$GinputDeviceInfo(
          [void Function(GinputDeviceInfoBuilder)? updates]) =>
      (new GinputDeviceInfoBuilder()..update(updates))._build();

  _$GinputDeviceInfo._(
      {this.fcmToken,
      this.operatingSystem,
      this.operatingSystemVersion,
      this.modelName,
      this.manufacturer,
      this.deviceName,
      this.deviceUniqueId,
      this.imeiNumber})
      : super._();

  @override
  GinputDeviceInfo rebuild(void Function(GinputDeviceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinputDeviceInfoBuilder toBuilder() =>
      new GinputDeviceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinputDeviceInfo &&
        fcmToken == other.fcmToken &&
        operatingSystem == other.operatingSystem &&
        operatingSystemVersion == other.operatingSystemVersion &&
        modelName == other.modelName &&
        manufacturer == other.manufacturer &&
        deviceName == other.deviceName &&
        deviceUniqueId == other.deviceUniqueId &&
        imeiNumber == other.imeiNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, operatingSystem.hashCode);
    _$hash = $jc(_$hash, operatingSystemVersion.hashCode);
    _$hash = $jc(_$hash, modelName.hashCode);
    _$hash = $jc(_$hash, manufacturer.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, deviceUniqueId.hashCode);
    _$hash = $jc(_$hash, imeiNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GinputDeviceInfo')
          ..add('fcmToken', fcmToken)
          ..add('operatingSystem', operatingSystem)
          ..add('operatingSystemVersion', operatingSystemVersion)
          ..add('modelName', modelName)
          ..add('manufacturer', manufacturer)
          ..add('deviceName', deviceName)
          ..add('deviceUniqueId', deviceUniqueId)
          ..add('imeiNumber', imeiNumber))
        .toString();
  }
}

class GinputDeviceInfoBuilder
    implements Builder<GinputDeviceInfo, GinputDeviceInfoBuilder> {
  _$GinputDeviceInfo? _$v;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  String? _operatingSystem;
  String? get operatingSystem => _$this._operatingSystem;
  set operatingSystem(String? operatingSystem) =>
      _$this._operatingSystem = operatingSystem;

  String? _operatingSystemVersion;
  String? get operatingSystemVersion => _$this._operatingSystemVersion;
  set operatingSystemVersion(String? operatingSystemVersion) =>
      _$this._operatingSystemVersion = operatingSystemVersion;

  String? _modelName;
  String? get modelName => _$this._modelName;
  set modelName(String? modelName) => _$this._modelName = modelName;

  String? _manufacturer;
  String? get manufacturer => _$this._manufacturer;
  set manufacturer(String? manufacturer) => _$this._manufacturer = manufacturer;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _deviceUniqueId;
  String? get deviceUniqueId => _$this._deviceUniqueId;
  set deviceUniqueId(String? deviceUniqueId) =>
      _$this._deviceUniqueId = deviceUniqueId;

  String? _imeiNumber;
  String? get imeiNumber => _$this._imeiNumber;
  set imeiNumber(String? imeiNumber) => _$this._imeiNumber = imeiNumber;

  GinputDeviceInfoBuilder();

  GinputDeviceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmToken = $v.fcmToken;
      _operatingSystem = $v.operatingSystem;
      _operatingSystemVersion = $v.operatingSystemVersion;
      _modelName = $v.modelName;
      _manufacturer = $v.manufacturer;
      _deviceName = $v.deviceName;
      _deviceUniqueId = $v.deviceUniqueId;
      _imeiNumber = $v.imeiNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinputDeviceInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinputDeviceInfo;
  }

  @override
  void update(void Function(GinputDeviceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinputDeviceInfo build() => _build();

  _$GinputDeviceInfo _build() {
    final _$result = _$v ??
        new _$GinputDeviceInfo._(
            fcmToken: fcmToken,
            operatingSystem: operatingSystem,
            operatingSystemVersion: operatingSystemVersion,
            modelName: modelName,
            manufacturer: manufacturer,
            deviceName: deviceName,
            deviceUniqueId: deviceUniqueId,
            imeiNumber: imeiNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
