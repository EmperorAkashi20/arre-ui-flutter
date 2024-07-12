// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_queries.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNotificationReq> _$gNotificationReqSerializer =
    new _$GNotificationReqSerializer();
Serializer<GMarkNotificationAsSeenReq> _$gMarkNotificationAsSeenReqSerializer =
    new _$GMarkNotificationAsSeenReqSerializer();
Serializer<GSaveUserDeviceInformationReq>
    _$gSaveUserDeviceInformationReqSerializer =
    new _$GSaveUserDeviceInformationReqSerializer();

class _$GNotificationReqSerializer
    implements StructuredSerializer<GNotificationReq> {
  @override
  final Iterable<Type> types = const [GNotificationReq, _$GNotificationReq];
  @override
  final String wireName = 'GNotificationReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNotificationReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GNotificationVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GNotificationData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GNotificationReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GNotificationVars))!
              as _i3.GNotificationVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GNotificationData))!
              as _i2.GNotificationData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GMarkNotificationAsSeenReqSerializer
    implements StructuredSerializer<GMarkNotificationAsSeenReq> {
  @override
  final Iterable<Type> types = const [
    GMarkNotificationAsSeenReq,
    _$GMarkNotificationAsSeenReq
  ];
  @override
  final String wireName = 'GMarkNotificationAsSeenReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMarkNotificationAsSeenReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GMarkNotificationAsSeenVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMarkNotificationAsSeenData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GMarkNotificationAsSeenReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkNotificationAsSeenReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GMarkNotificationAsSeenVars))!
              as _i3.GMarkNotificationAsSeenVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GMarkNotificationAsSeenData))!
              as _i2.GMarkNotificationAsSeenData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveUserDeviceInformationReqSerializer
    implements StructuredSerializer<GSaveUserDeviceInformationReq> {
  @override
  final Iterable<Type> types = const [
    GSaveUserDeviceInformationReq,
    _$GSaveUserDeviceInformationReq
  ];
  @override
  final String wireName = 'GSaveUserDeviceInformationReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveUserDeviceInformationReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GSaveUserDeviceInformationVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GSaveUserDeviceInformationData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GSaveUserDeviceInformationReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveUserDeviceInformationReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GSaveUserDeviceInformationVars))!
              as _i3.GSaveUserDeviceInformationVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GSaveUserDeviceInformationData))!
              as _i2.GSaveUserDeviceInformationData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationReq extends GNotificationReq {
  @override
  final _i3.GNotificationVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GNotificationData? Function(
      _i2.GNotificationData?, _i2.GNotificationData?)? updateResult;
  @override
  final _i2.GNotificationData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GNotificationReq(
          [void Function(GNotificationReqBuilder)? updates]) =>
      (new GNotificationReqBuilder()..update(updates))._build();

  _$GNotificationReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GNotificationReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GNotificationReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GNotificationReq', 'executeOnListen');
  }

  @override
  GNotificationReq rebuild(void Function(GNotificationReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationReqBuilder toBuilder() =>
      new GNotificationReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GNotificationReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GNotificationReqBuilder
    implements Builder<GNotificationReq, GNotificationReqBuilder> {
  _$GNotificationReq? _$v;

  _i3.GNotificationVarsBuilder? _vars;
  _i3.GNotificationVarsBuilder get vars =>
      _$this._vars ??= new _i3.GNotificationVarsBuilder();
  set vars(_i3.GNotificationVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GNotificationData? Function(
      _i2.GNotificationData?, _i2.GNotificationData?)? _updateResult;
  _i2.GNotificationData? Function(
          _i2.GNotificationData?, _i2.GNotificationData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GNotificationData? Function(
                  _i2.GNotificationData?, _i2.GNotificationData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GNotificationDataBuilder? _optimisticResponse;
  _i2.GNotificationDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GNotificationDataBuilder();
  set optimisticResponse(_i2.GNotificationDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GNotificationReqBuilder() {
    GNotificationReq._initializeBuilder(this);
  }

  GNotificationReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationReq;
  }

  @override
  void update(void Function(GNotificationReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationReq build() => _build();

  _$GNotificationReq _build() {
    _$GNotificationReq _$result;
    try {
      _$result = _$v ??
          new _$GNotificationReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GNotificationReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GNotificationReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMarkNotificationAsSeenReq extends GMarkNotificationAsSeenReq {
  @override
  final _i3.GMarkNotificationAsSeenVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GMarkNotificationAsSeenData? Function(
          _i2.GMarkNotificationAsSeenData?, _i2.GMarkNotificationAsSeenData?)?
      updateResult;
  @override
  final _i2.GMarkNotificationAsSeenData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GMarkNotificationAsSeenReq(
          [void Function(GMarkNotificationAsSeenReqBuilder)? updates]) =>
      (new GMarkNotificationAsSeenReqBuilder()..update(updates))._build();

  _$GMarkNotificationAsSeenReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GMarkNotificationAsSeenReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GMarkNotificationAsSeenReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GMarkNotificationAsSeenReq', 'executeOnListen');
  }

  @override
  GMarkNotificationAsSeenReq rebuild(
          void Function(GMarkNotificationAsSeenReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkNotificationAsSeenReqBuilder toBuilder() =>
      new GMarkNotificationAsSeenReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GMarkNotificationAsSeenReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMarkNotificationAsSeenReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GMarkNotificationAsSeenReqBuilder
    implements
        Builder<GMarkNotificationAsSeenReq, GMarkNotificationAsSeenReqBuilder> {
  _$GMarkNotificationAsSeenReq? _$v;

  _i3.GMarkNotificationAsSeenVarsBuilder? _vars;
  _i3.GMarkNotificationAsSeenVarsBuilder get vars =>
      _$this._vars ??= new _i3.GMarkNotificationAsSeenVarsBuilder();
  set vars(_i3.GMarkNotificationAsSeenVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GMarkNotificationAsSeenData? Function(
          _i2.GMarkNotificationAsSeenData?, _i2.GMarkNotificationAsSeenData?)?
      _updateResult;
  _i2.GMarkNotificationAsSeenData? Function(
          _i2.GMarkNotificationAsSeenData?, _i2.GMarkNotificationAsSeenData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GMarkNotificationAsSeenData? Function(
                  _i2.GMarkNotificationAsSeenData?,
                  _i2.GMarkNotificationAsSeenData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GMarkNotificationAsSeenDataBuilder? _optimisticResponse;
  _i2.GMarkNotificationAsSeenDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GMarkNotificationAsSeenDataBuilder();
  set optimisticResponse(
          _i2.GMarkNotificationAsSeenDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GMarkNotificationAsSeenReqBuilder() {
    GMarkNotificationAsSeenReq._initializeBuilder(this);
  }

  GMarkNotificationAsSeenReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarkNotificationAsSeenReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkNotificationAsSeenReq;
  }

  @override
  void update(void Function(GMarkNotificationAsSeenReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkNotificationAsSeenReq build() => _build();

  _$GMarkNotificationAsSeenReq _build() {
    _$GMarkNotificationAsSeenReq _$result;
    try {
      _$result = _$v ??
          new _$GMarkNotificationAsSeenReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GMarkNotificationAsSeenReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GMarkNotificationAsSeenReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMarkNotificationAsSeenReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveUserDeviceInformationReq extends GSaveUserDeviceInformationReq {
  @override
  final _i3.GSaveUserDeviceInformationVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GSaveUserDeviceInformationData? Function(
      _i2.GSaveUserDeviceInformationData?,
      _i2.GSaveUserDeviceInformationData?)? updateResult;
  @override
  final _i2.GSaveUserDeviceInformationData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GSaveUserDeviceInformationReq(
          [void Function(GSaveUserDeviceInformationReqBuilder)? updates]) =>
      (new GSaveUserDeviceInformationReqBuilder()..update(updates))._build();

  _$GSaveUserDeviceInformationReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GSaveUserDeviceInformationReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GSaveUserDeviceInformationReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GSaveUserDeviceInformationReq', 'executeOnListen');
  }

  @override
  GSaveUserDeviceInformationReq rebuild(
          void Function(GSaveUserDeviceInformationReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveUserDeviceInformationReqBuilder toBuilder() =>
      new GSaveUserDeviceInformationReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GSaveUserDeviceInformationReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveUserDeviceInformationReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GSaveUserDeviceInformationReqBuilder
    implements
        Builder<GSaveUserDeviceInformationReq,
            GSaveUserDeviceInformationReqBuilder> {
  _$GSaveUserDeviceInformationReq? _$v;

  _i3.GSaveUserDeviceInformationVarsBuilder? _vars;
  _i3.GSaveUserDeviceInformationVarsBuilder get vars =>
      _$this._vars ??= new _i3.GSaveUserDeviceInformationVarsBuilder();
  set vars(_i3.GSaveUserDeviceInformationVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GSaveUserDeviceInformationData? Function(
      _i2.GSaveUserDeviceInformationData?,
      _i2.GSaveUserDeviceInformationData?)? _updateResult;
  _i2.GSaveUserDeviceInformationData? Function(
          _i2.GSaveUserDeviceInformationData?,
          _i2.GSaveUserDeviceInformationData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GSaveUserDeviceInformationData? Function(
                  _i2.GSaveUserDeviceInformationData?,
                  _i2.GSaveUserDeviceInformationData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GSaveUserDeviceInformationDataBuilder? _optimisticResponse;
  _i2.GSaveUserDeviceInformationDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GSaveUserDeviceInformationDataBuilder();
  set optimisticResponse(
          _i2.GSaveUserDeviceInformationDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GSaveUserDeviceInformationReqBuilder() {
    GSaveUserDeviceInformationReq._initializeBuilder(this);
  }

  GSaveUserDeviceInformationReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveUserDeviceInformationReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveUserDeviceInformationReq;
  }

  @override
  void update(void Function(GSaveUserDeviceInformationReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveUserDeviceInformationReq build() => _build();

  _$GSaveUserDeviceInformationReq _build() {
    _$GSaveUserDeviceInformationReq _$result;
    try {
      _$result = _$v ??
          new _$GSaveUserDeviceInformationReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GSaveUserDeviceInformationReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GSaveUserDeviceInformationReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveUserDeviceInformationReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
