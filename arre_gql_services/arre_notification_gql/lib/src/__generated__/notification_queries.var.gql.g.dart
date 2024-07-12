// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNotificationVars> _$gNotificationVarsSerializer =
    new _$GNotificationVarsSerializer();
Serializer<GMarkNotificationAsSeenVars>
    _$gMarkNotificationAsSeenVarsSerializer =
    new _$GMarkNotificationAsSeenVarsSerializer();
Serializer<GSaveUserDeviceInformationVars>
    _$gSaveUserDeviceInformationVarsSerializer =
    new _$GSaveUserDeviceInformationVarsSerializer();

class _$GNotificationVarsSerializer
    implements StructuredSerializer<GNotificationVars> {
  @override
  final Iterable<Type> types = const [GNotificationVars, _$GNotificationVars];
  @override
  final String wireName = 'GNotificationVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNotificationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.after;
    if (value != null) {
      result
        ..add('after')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.schemaName;
    if (value != null) {
      result
        ..add('schemaName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GNotificationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'after':
          result.after = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'schemaName':
          result.schemaName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMarkNotificationAsSeenVarsSerializer
    implements StructuredSerializer<GMarkNotificationAsSeenVars> {
  @override
  final Iterable<Type> types = const [
    GMarkNotificationAsSeenVars,
    _$GMarkNotificationAsSeenVars
  ];
  @override
  final String wireName = 'GMarkNotificationAsSeenVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMarkNotificationAsSeenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.notificationIds;
    if (value != null) {
      result
        ..add('notificationIds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.schemaName;
    if (value != null) {
      result
        ..add('schemaName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GMarkNotificationAsSeenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkNotificationAsSeenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'notificationIds':
          result.notificationIds = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'schemaName':
          result.schemaName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveUserDeviceInformationVarsSerializer
    implements StructuredSerializer<GSaveUserDeviceInformationVars> {
  @override
  final Iterable<Type> types = const [
    GSaveUserDeviceInformationVars,
    _$GSaveUserDeviceInformationVars
  ];
  @override
  final String wireName = 'GSaveUserDeviceInformationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveUserDeviceInformationVars object,
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
    value = object.inputDeviceInfo;
    if (value != null) {
      result
        ..add('inputDeviceInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GinputDeviceInfo)));
    }
    value = object.lastAppLandingSource;
    if (value != null) {
      result
        ..add('lastAppLandingSource')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GlastAppLandingSourceType)));
    }
    value = object.lastAppLandingLink;
    if (value != null) {
      result
        ..add('lastAppLandingLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appVersion;
    if (value != null) {
      result
        ..add('appVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.buildNumber;
    if (value != null) {
      result
        ..add('buildNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSaveUserDeviceInformationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveUserDeviceInformationVarsBuilder();

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
        case 'inputDeviceInfo':
          result.inputDeviceInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GinputDeviceInfo))!
              as _i2.GinputDeviceInfo);
          break;
        case 'lastAppLandingSource':
          result.lastAppLandingSource = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GlastAppLandingSourceType))
              as _i2.GlastAppLandingSourceType?;
          break;
        case 'lastAppLandingLink':
          result.lastAppLandingLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appVersion':
          result.appVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'buildNumber':
          result.buildNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationVars extends GNotificationVars {
  @override
  final String? after;
  @override
  final String? schemaName;

  factory _$GNotificationVars(
          [void Function(GNotificationVarsBuilder)? updates]) =>
      (new GNotificationVarsBuilder()..update(updates))._build();

  _$GNotificationVars._({this.after, this.schemaName}) : super._();

  @override
  GNotificationVars rebuild(void Function(GNotificationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationVarsBuilder toBuilder() =>
      new GNotificationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationVars &&
        after == other.after &&
        schemaName == other.schemaName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jc(_$hash, schemaName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationVars')
          ..add('after', after)
          ..add('schemaName', schemaName))
        .toString();
  }
}

class GNotificationVarsBuilder
    implements Builder<GNotificationVars, GNotificationVarsBuilder> {
  _$GNotificationVars? _$v;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  String? _schemaName;
  String? get schemaName => _$this._schemaName;
  set schemaName(String? schemaName) => _$this._schemaName = schemaName;

  GNotificationVarsBuilder();

  GNotificationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _after = $v.after;
      _schemaName = $v.schemaName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationVars;
  }

  @override
  void update(void Function(GNotificationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationVars build() => _build();

  _$GNotificationVars _build() {
    final _$result =
        _$v ?? new _$GNotificationVars._(after: after, schemaName: schemaName);
    replace(_$result);
    return _$result;
  }
}

class _$GMarkNotificationAsSeenVars extends GMarkNotificationAsSeenVars {
  @override
  final String? notificationIds;
  @override
  final String? schemaName;

  factory _$GMarkNotificationAsSeenVars(
          [void Function(GMarkNotificationAsSeenVarsBuilder)? updates]) =>
      (new GMarkNotificationAsSeenVarsBuilder()..update(updates))._build();

  _$GMarkNotificationAsSeenVars._({this.notificationIds, this.schemaName})
      : super._();

  @override
  GMarkNotificationAsSeenVars rebuild(
          void Function(GMarkNotificationAsSeenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkNotificationAsSeenVarsBuilder toBuilder() =>
      new GMarkNotificationAsSeenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarkNotificationAsSeenVars &&
        notificationIds == other.notificationIds &&
        schemaName == other.schemaName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notificationIds.hashCode);
    _$hash = $jc(_$hash, schemaName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMarkNotificationAsSeenVars')
          ..add('notificationIds', notificationIds)
          ..add('schemaName', schemaName))
        .toString();
  }
}

class GMarkNotificationAsSeenVarsBuilder
    implements
        Builder<GMarkNotificationAsSeenVars,
            GMarkNotificationAsSeenVarsBuilder> {
  _$GMarkNotificationAsSeenVars? _$v;

  String? _notificationIds;
  String? get notificationIds => _$this._notificationIds;
  set notificationIds(String? notificationIds) =>
      _$this._notificationIds = notificationIds;

  String? _schemaName;
  String? get schemaName => _$this._schemaName;
  set schemaName(String? schemaName) => _$this._schemaName = schemaName;

  GMarkNotificationAsSeenVarsBuilder();

  GMarkNotificationAsSeenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationIds = $v.notificationIds;
      _schemaName = $v.schemaName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarkNotificationAsSeenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkNotificationAsSeenVars;
  }

  @override
  void update(void Function(GMarkNotificationAsSeenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkNotificationAsSeenVars build() => _build();

  _$GMarkNotificationAsSeenVars _build() {
    final _$result = _$v ??
        new _$GMarkNotificationAsSeenVars._(
            notificationIds: notificationIds, schemaName: schemaName);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveUserDeviceInformationVars extends GSaveUserDeviceInformationVars {
  @override
  final String? userId;
  @override
  final _i2.GinputDeviceInfo? inputDeviceInfo;
  @override
  final _i2.GlastAppLandingSourceType? lastAppLandingSource;
  @override
  final String? lastAppLandingLink;
  @override
  final String? appVersion;
  @override
  final String? buildNumber;

  factory _$GSaveUserDeviceInformationVars(
          [void Function(GSaveUserDeviceInformationVarsBuilder)? updates]) =>
      (new GSaveUserDeviceInformationVarsBuilder()..update(updates))._build();

  _$GSaveUserDeviceInformationVars._(
      {this.userId,
      this.inputDeviceInfo,
      this.lastAppLandingSource,
      this.lastAppLandingLink,
      this.appVersion,
      this.buildNumber})
      : super._();

  @override
  GSaveUserDeviceInformationVars rebuild(
          void Function(GSaveUserDeviceInformationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveUserDeviceInformationVarsBuilder toBuilder() =>
      new GSaveUserDeviceInformationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveUserDeviceInformationVars &&
        userId == other.userId &&
        inputDeviceInfo == other.inputDeviceInfo &&
        lastAppLandingSource == other.lastAppLandingSource &&
        lastAppLandingLink == other.lastAppLandingLink &&
        appVersion == other.appVersion &&
        buildNumber == other.buildNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, inputDeviceInfo.hashCode);
    _$hash = $jc(_$hash, lastAppLandingSource.hashCode);
    _$hash = $jc(_$hash, lastAppLandingLink.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, buildNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveUserDeviceInformationVars')
          ..add('userId', userId)
          ..add('inputDeviceInfo', inputDeviceInfo)
          ..add('lastAppLandingSource', lastAppLandingSource)
          ..add('lastAppLandingLink', lastAppLandingLink)
          ..add('appVersion', appVersion)
          ..add('buildNumber', buildNumber))
        .toString();
  }
}

class GSaveUserDeviceInformationVarsBuilder
    implements
        Builder<GSaveUserDeviceInformationVars,
            GSaveUserDeviceInformationVarsBuilder> {
  _$GSaveUserDeviceInformationVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  _i2.GinputDeviceInfoBuilder? _inputDeviceInfo;
  _i2.GinputDeviceInfoBuilder get inputDeviceInfo =>
      _$this._inputDeviceInfo ??= new _i2.GinputDeviceInfoBuilder();
  set inputDeviceInfo(_i2.GinputDeviceInfoBuilder? inputDeviceInfo) =>
      _$this._inputDeviceInfo = inputDeviceInfo;

  _i2.GlastAppLandingSourceType? _lastAppLandingSource;
  _i2.GlastAppLandingSourceType? get lastAppLandingSource =>
      _$this._lastAppLandingSource;
  set lastAppLandingSource(
          _i2.GlastAppLandingSourceType? lastAppLandingSource) =>
      _$this._lastAppLandingSource = lastAppLandingSource;

  String? _lastAppLandingLink;
  String? get lastAppLandingLink => _$this._lastAppLandingLink;
  set lastAppLandingLink(String? lastAppLandingLink) =>
      _$this._lastAppLandingLink = lastAppLandingLink;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  String? _buildNumber;
  String? get buildNumber => _$this._buildNumber;
  set buildNumber(String? buildNumber) => _$this._buildNumber = buildNumber;

  GSaveUserDeviceInformationVarsBuilder();

  GSaveUserDeviceInformationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _inputDeviceInfo = $v.inputDeviceInfo?.toBuilder();
      _lastAppLandingSource = $v.lastAppLandingSource;
      _lastAppLandingLink = $v.lastAppLandingLink;
      _appVersion = $v.appVersion;
      _buildNumber = $v.buildNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveUserDeviceInformationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveUserDeviceInformationVars;
  }

  @override
  void update(void Function(GSaveUserDeviceInformationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveUserDeviceInformationVars build() => _build();

  _$GSaveUserDeviceInformationVars _build() {
    _$GSaveUserDeviceInformationVars _$result;
    try {
      _$result = _$v ??
          new _$GSaveUserDeviceInformationVars._(
              userId: userId,
              inputDeviceInfo: _inputDeviceInfo?.build(),
              lastAppLandingSource: lastAppLandingSource,
              lastAppLandingLink: lastAppLandingLink,
              appVersion: appVersion,
              buildNumber: buildNumber);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputDeviceInfo';
        _inputDeviceInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveUserDeviceInformationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
