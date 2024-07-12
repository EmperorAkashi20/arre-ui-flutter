// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdatePreferencesReq> _$gUpdatePreferencesReqSerializer =
    new _$GUpdatePreferencesReqSerializer();
Serializer<GGetUserShortDetailsByIdV2Req>
    _$gGetUserShortDetailsByIdV2ReqSerializer =
    new _$GGetUserShortDetailsByIdV2ReqSerializer();
Serializer<GGetUserDetailsByIdV2Req> _$gGetUserDetailsByIdV2ReqSerializer =
    new _$GGetUserDetailsByIdV2ReqSerializer();
Serializer<GUpdateUserProfileReq> _$gUpdateUserProfileReqSerializer =
    new _$GUpdateUserProfileReqSerializer();
Serializer<GGetUserLanguageListReq> _$gGetUserLanguageListReqSerializer =
    new _$GGetUserLanguageListReqSerializer();
Serializer<GUserShortDetailsReq> _$gUserShortDetailsReqSerializer =
    new _$GUserShortDetailsReqSerializer();
Serializer<GUserDetailsReq> _$gUserDetailsReqSerializer =
    new _$GUserDetailsReqSerializer();

class _$GUpdatePreferencesReqSerializer
    implements StructuredSerializer<GUpdatePreferencesReq> {
  @override
  final Iterable<Type> types = const [
    GUpdatePreferencesReq,
    _$GUpdatePreferencesReq
  ];
  @override
  final String wireName = 'GUpdatePreferencesReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdatePreferencesReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUpdatePreferencesVars)),
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
            specifiedType: const FullType(_i2.GUpdatePreferencesData)));
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
  GUpdatePreferencesReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePreferencesReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUpdatePreferencesVars))!
              as _i3.GUpdatePreferencesVars);
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
                  specifiedType: const FullType(_i2.GUpdatePreferencesData))!
              as _i2.GUpdatePreferencesData);
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

class _$GGetUserShortDetailsByIdV2ReqSerializer
    implements StructuredSerializer<GGetUserShortDetailsByIdV2Req> {
  @override
  final Iterable<Type> types = const [
    GGetUserShortDetailsByIdV2Req,
    _$GGetUserShortDetailsByIdV2Req
  ];
  @override
  final String wireName = 'GGetUserShortDetailsByIdV2Req';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserShortDetailsByIdV2Req object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetUserShortDetailsByIdV2Vars)),
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
            specifiedType: const FullType(_i2.GGetUserShortDetailsByIdV2Data)));
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
  GGetUserShortDetailsByIdV2Req deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserShortDetailsByIdV2ReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GGetUserShortDetailsByIdV2Vars))!
              as _i3.GGetUserShortDetailsByIdV2Vars);
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
                      const FullType(_i2.GGetUserShortDetailsByIdV2Data))!
              as _i2.GGetUserShortDetailsByIdV2Data);
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

class _$GGetUserDetailsByIdV2ReqSerializer
    implements StructuredSerializer<GGetUserDetailsByIdV2Req> {
  @override
  final Iterable<Type> types = const [
    GGetUserDetailsByIdV2Req,
    _$GGetUserDetailsByIdV2Req
  ];
  @override
  final String wireName = 'GGetUserDetailsByIdV2Req';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserDetailsByIdV2Req object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetUserDetailsByIdV2Vars)),
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
            specifiedType: const FullType(_i2.GGetUserDetailsByIdV2Data)));
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
  GGetUserDetailsByIdV2Req deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserDetailsByIdV2ReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetUserDetailsByIdV2Vars))!
              as _i3.GGetUserDetailsByIdV2Vars);
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
                  specifiedType: const FullType(_i2.GGetUserDetailsByIdV2Data))!
              as _i2.GGetUserDetailsByIdV2Data);
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

class _$GUpdateUserProfileReqSerializer
    implements StructuredSerializer<GUpdateUserProfileReq> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserProfileReq,
    _$GUpdateUserProfileReq
  ];
  @override
  final String wireName = 'GUpdateUserProfileReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserProfileReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUpdateUserProfileVars)),
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
            specifiedType: const FullType(_i2.GUpdateUserProfileData)));
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
  GUpdateUserProfileReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserProfileReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUpdateUserProfileVars))!
              as _i3.GUpdateUserProfileVars);
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
                  specifiedType: const FullType(_i2.GUpdateUserProfileData))!
              as _i2.GUpdateUserProfileData);
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

class _$GGetUserLanguageListReqSerializer
    implements StructuredSerializer<GGetUserLanguageListReq> {
  @override
  final Iterable<Type> types = const [
    GGetUserLanguageListReq,
    _$GGetUserLanguageListReq
  ];
  @override
  final String wireName = 'GGetUserLanguageListReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserLanguageListReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetUserLanguageListVars)),
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
            specifiedType: const FullType(_i2.GGetUserLanguageListData)));
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
  GGetUserLanguageListReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserLanguageListReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetUserLanguageListVars))!
              as _i3.GGetUserLanguageListVars);
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
                  specifiedType: const FullType(_i2.GGetUserLanguageListData))!
              as _i2.GGetUserLanguageListData);
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

class _$GUserShortDetailsReqSerializer
    implements StructuredSerializer<GUserShortDetailsReq> {
  @override
  final Iterable<Type> types = const [
    GUserShortDetailsReq,
    _$GUserShortDetailsReq
  ];
  @override
  final String wireName = 'GUserShortDetailsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserShortDetailsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUserShortDetailsVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserShortDetailsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserShortDetailsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUserShortDetailsVars))!
              as _i3.GUserShortDetailsVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserDetailsReqSerializer
    implements StructuredSerializer<GUserDetailsReq> {
  @override
  final Iterable<Type> types = const [GUserDetailsReq, _$GUserDetailsReq];
  @override
  final String wireName = 'GUserDetailsReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserDetailsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUserDetailsVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserDetailsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserDetailsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUserDetailsVars))!
              as _i3.GUserDetailsVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePreferencesReq extends GUpdatePreferencesReq {
  @override
  final _i3.GUpdatePreferencesVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GUpdatePreferencesData? Function(
      _i2.GUpdatePreferencesData?, _i2.GUpdatePreferencesData?)? updateResult;
  @override
  final _i2.GUpdatePreferencesData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GUpdatePreferencesReq(
          [void Function(GUpdatePreferencesReqBuilder)? updates]) =>
      (new GUpdatePreferencesReqBuilder()..update(updates))._build();

  _$GUpdatePreferencesReq._(
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
        vars, r'GUpdatePreferencesReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GUpdatePreferencesReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GUpdatePreferencesReq', 'executeOnListen');
  }

  @override
  GUpdatePreferencesReq rebuild(
          void Function(GUpdatePreferencesReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePreferencesReqBuilder toBuilder() =>
      new GUpdatePreferencesReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GUpdatePreferencesReq &&
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
    return (newBuiltValueToStringHelper(r'GUpdatePreferencesReq')
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

class GUpdatePreferencesReqBuilder
    implements Builder<GUpdatePreferencesReq, GUpdatePreferencesReqBuilder> {
  _$GUpdatePreferencesReq? _$v;

  _i3.GUpdatePreferencesVarsBuilder? _vars;
  _i3.GUpdatePreferencesVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUpdatePreferencesVarsBuilder();
  set vars(_i3.GUpdatePreferencesVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GUpdatePreferencesData? Function(
      _i2.GUpdatePreferencesData?, _i2.GUpdatePreferencesData?)? _updateResult;
  _i2.GUpdatePreferencesData? Function(
          _i2.GUpdatePreferencesData?, _i2.GUpdatePreferencesData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GUpdatePreferencesData? Function(
                  _i2.GUpdatePreferencesData?, _i2.GUpdatePreferencesData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GUpdatePreferencesDataBuilder? _optimisticResponse;
  _i2.GUpdatePreferencesDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GUpdatePreferencesDataBuilder();
  set optimisticResponse(
          _i2.GUpdatePreferencesDataBuilder? optimisticResponse) =>
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

  GUpdatePreferencesReqBuilder() {
    GUpdatePreferencesReq._initializeBuilder(this);
  }

  GUpdatePreferencesReqBuilder get _$this {
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
  void replace(GUpdatePreferencesReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePreferencesReq;
  }

  @override
  void update(void Function(GUpdatePreferencesReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePreferencesReq build() => _build();

  _$GUpdatePreferencesReq _build() {
    _$GUpdatePreferencesReq _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePreferencesReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GUpdatePreferencesReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GUpdatePreferencesReq',
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
            r'GUpdatePreferencesReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserShortDetailsByIdV2Req extends GGetUserShortDetailsByIdV2Req {
  @override
  final _i3.GGetUserShortDetailsByIdV2Vars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGetUserShortDetailsByIdV2Data? Function(
      _i2.GGetUserShortDetailsByIdV2Data?,
      _i2.GGetUserShortDetailsByIdV2Data?)? updateResult;
  @override
  final _i2.GGetUserShortDetailsByIdV2Data? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGetUserShortDetailsByIdV2Req(
          [void Function(GGetUserShortDetailsByIdV2ReqBuilder)? updates]) =>
      (new GGetUserShortDetailsByIdV2ReqBuilder()..update(updates))._build();

  _$GGetUserShortDetailsByIdV2Req._(
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
        vars, r'GGetUserShortDetailsByIdV2Req', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GGetUserShortDetailsByIdV2Req', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GGetUserShortDetailsByIdV2Req', 'executeOnListen');
  }

  @override
  GGetUserShortDetailsByIdV2Req rebuild(
          void Function(GGetUserShortDetailsByIdV2ReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserShortDetailsByIdV2ReqBuilder toBuilder() =>
      new GGetUserShortDetailsByIdV2ReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGetUserShortDetailsByIdV2Req &&
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
    return (newBuiltValueToStringHelper(r'GGetUserShortDetailsByIdV2Req')
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

class GGetUserShortDetailsByIdV2ReqBuilder
    implements
        Builder<GGetUserShortDetailsByIdV2Req,
            GGetUserShortDetailsByIdV2ReqBuilder> {
  _$GGetUserShortDetailsByIdV2Req? _$v;

  _i3.GGetUserShortDetailsByIdV2VarsBuilder? _vars;
  _i3.GGetUserShortDetailsByIdV2VarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetUserShortDetailsByIdV2VarsBuilder();
  set vars(_i3.GGetUserShortDetailsByIdV2VarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGetUserShortDetailsByIdV2Data? Function(
      _i2.GGetUserShortDetailsByIdV2Data?,
      _i2.GGetUserShortDetailsByIdV2Data?)? _updateResult;
  _i2.GGetUserShortDetailsByIdV2Data? Function(
          _i2.GGetUserShortDetailsByIdV2Data?,
          _i2.GGetUserShortDetailsByIdV2Data?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGetUserShortDetailsByIdV2Data? Function(
                  _i2.GGetUserShortDetailsByIdV2Data?,
                  _i2.GGetUserShortDetailsByIdV2Data?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGetUserShortDetailsByIdV2DataBuilder? _optimisticResponse;
  _i2.GGetUserShortDetailsByIdV2DataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GGetUserShortDetailsByIdV2DataBuilder();
  set optimisticResponse(
          _i2.GGetUserShortDetailsByIdV2DataBuilder? optimisticResponse) =>
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

  GGetUserShortDetailsByIdV2ReqBuilder() {
    GGetUserShortDetailsByIdV2Req._initializeBuilder(this);
  }

  GGetUserShortDetailsByIdV2ReqBuilder get _$this {
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
  void replace(GGetUserShortDetailsByIdV2Req other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserShortDetailsByIdV2Req;
  }

  @override
  void update(void Function(GGetUserShortDetailsByIdV2ReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserShortDetailsByIdV2Req build() => _build();

  _$GGetUserShortDetailsByIdV2Req _build() {
    _$GGetUserShortDetailsByIdV2Req _$result;
    try {
      _$result = _$v ??
          new _$GGetUserShortDetailsByIdV2Req._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetUserShortDetailsByIdV2Req', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GGetUserShortDetailsByIdV2Req',
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
            r'GGetUserShortDetailsByIdV2Req', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserDetailsByIdV2Req extends GGetUserDetailsByIdV2Req {
  @override
  final _i3.GGetUserDetailsByIdV2Vars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGetUserDetailsByIdV2Data? Function(
          _i2.GGetUserDetailsByIdV2Data?, _i2.GGetUserDetailsByIdV2Data?)?
      updateResult;
  @override
  final _i2.GGetUserDetailsByIdV2Data? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGetUserDetailsByIdV2Req(
          [void Function(GGetUserDetailsByIdV2ReqBuilder)? updates]) =>
      (new GGetUserDetailsByIdV2ReqBuilder()..update(updates))._build();

  _$GGetUserDetailsByIdV2Req._(
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
        vars, r'GGetUserDetailsByIdV2Req', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GGetUserDetailsByIdV2Req', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GGetUserDetailsByIdV2Req', 'executeOnListen');
  }

  @override
  GGetUserDetailsByIdV2Req rebuild(
          void Function(GGetUserDetailsByIdV2ReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserDetailsByIdV2ReqBuilder toBuilder() =>
      new GGetUserDetailsByIdV2ReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGetUserDetailsByIdV2Req &&
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
    return (newBuiltValueToStringHelper(r'GGetUserDetailsByIdV2Req')
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

class GGetUserDetailsByIdV2ReqBuilder
    implements
        Builder<GGetUserDetailsByIdV2Req, GGetUserDetailsByIdV2ReqBuilder> {
  _$GGetUserDetailsByIdV2Req? _$v;

  _i3.GGetUserDetailsByIdV2VarsBuilder? _vars;
  _i3.GGetUserDetailsByIdV2VarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetUserDetailsByIdV2VarsBuilder();
  set vars(_i3.GGetUserDetailsByIdV2VarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGetUserDetailsByIdV2Data? Function(
          _i2.GGetUserDetailsByIdV2Data?, _i2.GGetUserDetailsByIdV2Data?)?
      _updateResult;
  _i2.GGetUserDetailsByIdV2Data? Function(
          _i2.GGetUserDetailsByIdV2Data?, _i2.GGetUserDetailsByIdV2Data?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGetUserDetailsByIdV2Data? Function(
                  _i2.GGetUserDetailsByIdV2Data?,
                  _i2.GGetUserDetailsByIdV2Data?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGetUserDetailsByIdV2DataBuilder? _optimisticResponse;
  _i2.GGetUserDetailsByIdV2DataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GGetUserDetailsByIdV2DataBuilder();
  set optimisticResponse(
          _i2.GGetUserDetailsByIdV2DataBuilder? optimisticResponse) =>
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

  GGetUserDetailsByIdV2ReqBuilder() {
    GGetUserDetailsByIdV2Req._initializeBuilder(this);
  }

  GGetUserDetailsByIdV2ReqBuilder get _$this {
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
  void replace(GGetUserDetailsByIdV2Req other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserDetailsByIdV2Req;
  }

  @override
  void update(void Function(GGetUserDetailsByIdV2ReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserDetailsByIdV2Req build() => _build();

  _$GGetUserDetailsByIdV2Req _build() {
    _$GGetUserDetailsByIdV2Req _$result;
    try {
      _$result = _$v ??
          new _$GGetUserDetailsByIdV2Req._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetUserDetailsByIdV2Req', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GGetUserDetailsByIdV2Req',
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
            r'GGetUserDetailsByIdV2Req', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserProfileReq extends GUpdateUserProfileReq {
  @override
  final _i3.GUpdateUserProfileVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GUpdateUserProfileData? Function(
      _i2.GUpdateUserProfileData?, _i2.GUpdateUserProfileData?)? updateResult;
  @override
  final _i2.GUpdateUserProfileData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GUpdateUserProfileReq(
          [void Function(GUpdateUserProfileReqBuilder)? updates]) =>
      (new GUpdateUserProfileReqBuilder()..update(updates))._build();

  _$GUpdateUserProfileReq._(
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
        vars, r'GUpdateUserProfileReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GUpdateUserProfileReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GUpdateUserProfileReq', 'executeOnListen');
  }

  @override
  GUpdateUserProfileReq rebuild(
          void Function(GUpdateUserProfileReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserProfileReqBuilder toBuilder() =>
      new GUpdateUserProfileReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GUpdateUserProfileReq &&
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
    return (newBuiltValueToStringHelper(r'GUpdateUserProfileReq')
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

class GUpdateUserProfileReqBuilder
    implements Builder<GUpdateUserProfileReq, GUpdateUserProfileReqBuilder> {
  _$GUpdateUserProfileReq? _$v;

  _i3.GUpdateUserProfileVarsBuilder? _vars;
  _i3.GUpdateUserProfileVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUpdateUserProfileVarsBuilder();
  set vars(_i3.GUpdateUserProfileVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GUpdateUserProfileData? Function(
      _i2.GUpdateUserProfileData?, _i2.GUpdateUserProfileData?)? _updateResult;
  _i2.GUpdateUserProfileData? Function(
          _i2.GUpdateUserProfileData?, _i2.GUpdateUserProfileData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GUpdateUserProfileData? Function(
                  _i2.GUpdateUserProfileData?, _i2.GUpdateUserProfileData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GUpdateUserProfileDataBuilder? _optimisticResponse;
  _i2.GUpdateUserProfileDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GUpdateUserProfileDataBuilder();
  set optimisticResponse(
          _i2.GUpdateUserProfileDataBuilder? optimisticResponse) =>
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

  GUpdateUserProfileReqBuilder() {
    GUpdateUserProfileReq._initializeBuilder(this);
  }

  GUpdateUserProfileReqBuilder get _$this {
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
  void replace(GUpdateUserProfileReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserProfileReq;
  }

  @override
  void update(void Function(GUpdateUserProfileReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserProfileReq build() => _build();

  _$GUpdateUserProfileReq _build() {
    _$GUpdateUserProfileReq _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserProfileReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GUpdateUserProfileReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GUpdateUserProfileReq',
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
            r'GUpdateUserProfileReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserLanguageListReq extends GGetUserLanguageListReq {
  @override
  final _i3.GGetUserLanguageListVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGetUserLanguageListData? Function(
          _i2.GGetUserLanguageListData?, _i2.GGetUserLanguageListData?)?
      updateResult;
  @override
  final _i2.GGetUserLanguageListData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGetUserLanguageListReq(
          [void Function(GGetUserLanguageListReqBuilder)? updates]) =>
      (new GGetUserLanguageListReqBuilder()..update(updates))._build();

  _$GGetUserLanguageListReq._(
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
        vars, r'GGetUserLanguageListReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GGetUserLanguageListReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GGetUserLanguageListReq', 'executeOnListen');
  }

  @override
  GGetUserLanguageListReq rebuild(
          void Function(GGetUserLanguageListReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserLanguageListReqBuilder toBuilder() =>
      new GGetUserLanguageListReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGetUserLanguageListReq &&
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
    return (newBuiltValueToStringHelper(r'GGetUserLanguageListReq')
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

class GGetUserLanguageListReqBuilder
    implements
        Builder<GGetUserLanguageListReq, GGetUserLanguageListReqBuilder> {
  _$GGetUserLanguageListReq? _$v;

  _i3.GGetUserLanguageListVarsBuilder? _vars;
  _i3.GGetUserLanguageListVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetUserLanguageListVarsBuilder();
  set vars(_i3.GGetUserLanguageListVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGetUserLanguageListData? Function(
          _i2.GGetUserLanguageListData?, _i2.GGetUserLanguageListData?)?
      _updateResult;
  _i2.GGetUserLanguageListData? Function(
          _i2.GGetUserLanguageListData?, _i2.GGetUserLanguageListData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGetUserLanguageListData? Function(
                  _i2.GGetUserLanguageListData?, _i2.GGetUserLanguageListData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGetUserLanguageListDataBuilder? _optimisticResponse;
  _i2.GGetUserLanguageListDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GGetUserLanguageListDataBuilder();
  set optimisticResponse(
          _i2.GGetUserLanguageListDataBuilder? optimisticResponse) =>
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

  GGetUserLanguageListReqBuilder() {
    GGetUserLanguageListReq._initializeBuilder(this);
  }

  GGetUserLanguageListReqBuilder get _$this {
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
  void replace(GGetUserLanguageListReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserLanguageListReq;
  }

  @override
  void update(void Function(GGetUserLanguageListReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserLanguageListReq build() => _build();

  _$GGetUserLanguageListReq _build() {
    _$GGetUserLanguageListReq _$result;
    try {
      _$result = _$v ??
          new _$GGetUserLanguageListReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetUserLanguageListReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GGetUserLanguageListReq',
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
            r'GGetUserLanguageListReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserShortDetailsReq extends GUserShortDetailsReq {
  @override
  final _i3.GUserShortDetailsVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GUserShortDetailsReq(
          [void Function(GUserShortDetailsReqBuilder)? updates]) =>
      (new GUserShortDetailsReqBuilder()..update(updates))._build();

  _$GUserShortDetailsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GUserShortDetailsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GUserShortDetailsReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GUserShortDetailsReq', 'idFields');
  }

  @override
  GUserShortDetailsReq rebuild(
          void Function(GUserShortDetailsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserShortDetailsReqBuilder toBuilder() =>
      new GUserShortDetailsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserShortDetailsReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserShortDetailsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GUserShortDetailsReqBuilder
    implements Builder<GUserShortDetailsReq, GUserShortDetailsReqBuilder> {
  _$GUserShortDetailsReq? _$v;

  _i3.GUserShortDetailsVarsBuilder? _vars;
  _i3.GUserShortDetailsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUserShortDetailsVarsBuilder();
  set vars(_i3.GUserShortDetailsVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GUserShortDetailsReqBuilder() {
    GUserShortDetailsReq._initializeBuilder(this);
  }

  GUserShortDetailsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserShortDetailsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserShortDetailsReq;
  }

  @override
  void update(void Function(GUserShortDetailsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserShortDetailsReq build() => _build();

  _$GUserShortDetailsReq _build() {
    _$GUserShortDetailsReq _$result;
    try {
      _$result = _$v ??
          new _$GUserShortDetailsReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GUserShortDetailsReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GUserShortDetailsReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserShortDetailsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserDetailsReq extends GUserDetailsReq {
  @override
  final _i3.GUserDetailsVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GUserDetailsReq([void Function(GUserDetailsReqBuilder)? updates]) =>
      (new GUserDetailsReqBuilder()..update(updates))._build();

  _$GUserDetailsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GUserDetailsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GUserDetailsReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GUserDetailsReq', 'idFields');
  }

  @override
  GUserDetailsReq rebuild(void Function(GUserDetailsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDetailsReqBuilder toBuilder() =>
      new GUserDetailsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserDetailsReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserDetailsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GUserDetailsReqBuilder
    implements Builder<GUserDetailsReq, GUserDetailsReqBuilder> {
  _$GUserDetailsReq? _$v;

  _i3.GUserDetailsVarsBuilder? _vars;
  _i3.GUserDetailsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUserDetailsVarsBuilder();
  set vars(_i3.GUserDetailsVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GUserDetailsReqBuilder() {
    GUserDetailsReq._initializeBuilder(this);
  }

  GUserDetailsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserDetailsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserDetailsReq;
  }

  @override
  void update(void Function(GUserDetailsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserDetailsReq build() => _build();

  _$GUserDetailsReq _build() {
    _$GUserDetailsReq _$result;
    try {
      _$result = _$v ??
          new _$GUserDetailsReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GUserDetailsReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GUserDetailsReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserDetailsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
