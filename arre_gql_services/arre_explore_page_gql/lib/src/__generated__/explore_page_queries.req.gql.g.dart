// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_page_queries.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListTopCreatorsReq> _$gListTopCreatorsReqSerializer =
    new _$GListTopCreatorsReqSerializer();
Serializer<GListTopHashtagsReq> _$gListTopHashtagsReqSerializer =
    new _$GListTopHashtagsReqSerializer();
Serializer<GListTopPostsByHashTagIdReq>
    _$gListTopPostsByHashTagIdReqSerializer =
    new _$GListTopPostsByHashTagIdReqSerializer();

class _$GListTopCreatorsReqSerializer
    implements StructuredSerializer<GListTopCreatorsReq> {
  @override
  final Iterable<Type> types = const [
    GListTopCreatorsReq,
    _$GListTopCreatorsReq
  ];
  @override
  final String wireName = 'GListTopCreatorsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopCreatorsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GListTopCreatorsVars)),
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
            specifiedType: const FullType(_i2.GListTopCreatorsData)));
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
  GListTopCreatorsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopCreatorsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GListTopCreatorsVars))!
              as _i3.GListTopCreatorsVars);
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
                  specifiedType: const FullType(_i2.GListTopCreatorsData))!
              as _i2.GListTopCreatorsData);
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

class _$GListTopHashtagsReqSerializer
    implements StructuredSerializer<GListTopHashtagsReq> {
  @override
  final Iterable<Type> types = const [
    GListTopHashtagsReq,
    _$GListTopHashtagsReq
  ];
  @override
  final String wireName = 'GListTopHashtagsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopHashtagsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GListTopHashtagsVars)),
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
            specifiedType: const FullType(_i2.GListTopHashtagsData)));
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
  GListTopHashtagsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopHashtagsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GListTopHashtagsVars))!
              as _i3.GListTopHashtagsVars);
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
                  specifiedType: const FullType(_i2.GListTopHashtagsData))!
              as _i2.GListTopHashtagsData);
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

class _$GListTopPostsByHashTagIdReqSerializer
    implements StructuredSerializer<GListTopPostsByHashTagIdReq> {
  @override
  final Iterable<Type> types = const [
    GListTopPostsByHashTagIdReq,
    _$GListTopPostsByHashTagIdReq
  ];
  @override
  final String wireName = 'GListTopPostsByHashTagIdReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListTopPostsByHashTagIdReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GListTopPostsByHashTagIdVars)),
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
            specifiedType: const FullType(_i2.GListTopPostsByHashTagIdData)));
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
  GListTopPostsByHashTagIdReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListTopPostsByHashTagIdReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GListTopPostsByHashTagIdVars))!
              as _i3.GListTopPostsByHashTagIdVars);
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
                      const FullType(_i2.GListTopPostsByHashTagIdData))!
              as _i2.GListTopPostsByHashTagIdData);
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

class _$GListTopCreatorsReq extends GListTopCreatorsReq {
  @override
  final _i3.GListTopCreatorsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GListTopCreatorsData? Function(
      _i2.GListTopCreatorsData?, _i2.GListTopCreatorsData?)? updateResult;
  @override
  final _i2.GListTopCreatorsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GListTopCreatorsReq(
          [void Function(GListTopCreatorsReqBuilder)? updates]) =>
      (new GListTopCreatorsReqBuilder()..update(updates))._build();

  _$GListTopCreatorsReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GListTopCreatorsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GListTopCreatorsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GListTopCreatorsReq', 'executeOnListen');
  }

  @override
  GListTopCreatorsReq rebuild(
          void Function(GListTopCreatorsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopCreatorsReqBuilder toBuilder() =>
      new GListTopCreatorsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GListTopCreatorsReq &&
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
    return (newBuiltValueToStringHelper(r'GListTopCreatorsReq')
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

class GListTopCreatorsReqBuilder
    implements Builder<GListTopCreatorsReq, GListTopCreatorsReqBuilder> {
  _$GListTopCreatorsReq? _$v;

  _i3.GListTopCreatorsVarsBuilder? _vars;
  _i3.GListTopCreatorsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GListTopCreatorsVarsBuilder();
  set vars(_i3.GListTopCreatorsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GListTopCreatorsData? Function(
      _i2.GListTopCreatorsData?, _i2.GListTopCreatorsData?)? _updateResult;
  _i2.GListTopCreatorsData? Function(
          _i2.GListTopCreatorsData?, _i2.GListTopCreatorsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GListTopCreatorsData? Function(
                  _i2.GListTopCreatorsData?, _i2.GListTopCreatorsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GListTopCreatorsDataBuilder? _optimisticResponse;
  _i2.GListTopCreatorsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GListTopCreatorsDataBuilder();
  set optimisticResponse(_i2.GListTopCreatorsDataBuilder? optimisticResponse) =>
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

  GListTopCreatorsReqBuilder() {
    GListTopCreatorsReq._initializeBuilder(this);
  }

  GListTopCreatorsReqBuilder get _$this {
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
  void replace(GListTopCreatorsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopCreatorsReq;
  }

  @override
  void update(void Function(GListTopCreatorsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopCreatorsReq build() => _build();

  _$GListTopCreatorsReq _build() {
    _$GListTopCreatorsReq _$result;
    try {
      _$result = _$v ??
          new _$GListTopCreatorsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GListTopCreatorsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GListTopCreatorsReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListTopCreatorsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListTopHashtagsReq extends GListTopHashtagsReq {
  @override
  final _i3.GListTopHashtagsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GListTopHashtagsData? Function(
      _i2.GListTopHashtagsData?, _i2.GListTopHashtagsData?)? updateResult;
  @override
  final _i2.GListTopHashtagsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GListTopHashtagsReq(
          [void Function(GListTopHashtagsReqBuilder)? updates]) =>
      (new GListTopHashtagsReqBuilder()..update(updates))._build();

  _$GListTopHashtagsReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GListTopHashtagsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GListTopHashtagsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GListTopHashtagsReq', 'executeOnListen');
  }

  @override
  GListTopHashtagsReq rebuild(
          void Function(GListTopHashtagsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopHashtagsReqBuilder toBuilder() =>
      new GListTopHashtagsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GListTopHashtagsReq &&
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
    return (newBuiltValueToStringHelper(r'GListTopHashtagsReq')
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

class GListTopHashtagsReqBuilder
    implements Builder<GListTopHashtagsReq, GListTopHashtagsReqBuilder> {
  _$GListTopHashtagsReq? _$v;

  _i3.GListTopHashtagsVarsBuilder? _vars;
  _i3.GListTopHashtagsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GListTopHashtagsVarsBuilder();
  set vars(_i3.GListTopHashtagsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GListTopHashtagsData? Function(
      _i2.GListTopHashtagsData?, _i2.GListTopHashtagsData?)? _updateResult;
  _i2.GListTopHashtagsData? Function(
          _i2.GListTopHashtagsData?, _i2.GListTopHashtagsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GListTopHashtagsData? Function(
                  _i2.GListTopHashtagsData?, _i2.GListTopHashtagsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GListTopHashtagsDataBuilder? _optimisticResponse;
  _i2.GListTopHashtagsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GListTopHashtagsDataBuilder();
  set optimisticResponse(_i2.GListTopHashtagsDataBuilder? optimisticResponse) =>
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

  GListTopHashtagsReqBuilder() {
    GListTopHashtagsReq._initializeBuilder(this);
  }

  GListTopHashtagsReqBuilder get _$this {
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
  void replace(GListTopHashtagsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopHashtagsReq;
  }

  @override
  void update(void Function(GListTopHashtagsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopHashtagsReq build() => _build();

  _$GListTopHashtagsReq _build() {
    _$GListTopHashtagsReq _$result;
    try {
      _$result = _$v ??
          new _$GListTopHashtagsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GListTopHashtagsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GListTopHashtagsReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListTopHashtagsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListTopPostsByHashTagIdReq extends GListTopPostsByHashTagIdReq {
  @override
  final _i3.GListTopPostsByHashTagIdVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GListTopPostsByHashTagIdData? Function(
          _i2.GListTopPostsByHashTagIdData?, _i2.GListTopPostsByHashTagIdData?)?
      updateResult;
  @override
  final _i2.GListTopPostsByHashTagIdData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GListTopPostsByHashTagIdReq(
          [void Function(GListTopPostsByHashTagIdReqBuilder)? updates]) =>
      (new GListTopPostsByHashTagIdReqBuilder()..update(updates))._build();

  _$GListTopPostsByHashTagIdReq._(
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
        vars, r'GListTopPostsByHashTagIdReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GListTopPostsByHashTagIdReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GListTopPostsByHashTagIdReq', 'executeOnListen');
  }

  @override
  GListTopPostsByHashTagIdReq rebuild(
          void Function(GListTopPostsByHashTagIdReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListTopPostsByHashTagIdReqBuilder toBuilder() =>
      new GListTopPostsByHashTagIdReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GListTopPostsByHashTagIdReq &&
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
    return (newBuiltValueToStringHelper(r'GListTopPostsByHashTagIdReq')
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

class GListTopPostsByHashTagIdReqBuilder
    implements
        Builder<GListTopPostsByHashTagIdReq,
            GListTopPostsByHashTagIdReqBuilder> {
  _$GListTopPostsByHashTagIdReq? _$v;

  _i3.GListTopPostsByHashTagIdVarsBuilder? _vars;
  _i3.GListTopPostsByHashTagIdVarsBuilder get vars =>
      _$this._vars ??= new _i3.GListTopPostsByHashTagIdVarsBuilder();
  set vars(_i3.GListTopPostsByHashTagIdVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GListTopPostsByHashTagIdData? Function(
          _i2.GListTopPostsByHashTagIdData?, _i2.GListTopPostsByHashTagIdData?)?
      _updateResult;
  _i2.GListTopPostsByHashTagIdData? Function(
          _i2.GListTopPostsByHashTagIdData?, _i2.GListTopPostsByHashTagIdData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GListTopPostsByHashTagIdData? Function(
                  _i2.GListTopPostsByHashTagIdData?,
                  _i2.GListTopPostsByHashTagIdData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GListTopPostsByHashTagIdDataBuilder? _optimisticResponse;
  _i2.GListTopPostsByHashTagIdDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GListTopPostsByHashTagIdDataBuilder();
  set optimisticResponse(
          _i2.GListTopPostsByHashTagIdDataBuilder? optimisticResponse) =>
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

  GListTopPostsByHashTagIdReqBuilder() {
    GListTopPostsByHashTagIdReq._initializeBuilder(this);
  }

  GListTopPostsByHashTagIdReqBuilder get _$this {
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
  void replace(GListTopPostsByHashTagIdReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListTopPostsByHashTagIdReq;
  }

  @override
  void update(void Function(GListTopPostsByHashTagIdReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListTopPostsByHashTagIdReq build() => _build();

  _$GListTopPostsByHashTagIdReq _build() {
    _$GListTopPostsByHashTagIdReq _$result;
    try {
      _$result = _$v ??
          new _$GListTopPostsByHashTagIdReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GListTopPostsByHashTagIdReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GListTopPostsByHashTagIdReq',
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
            r'GListTopPostsByHashTagIdReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
