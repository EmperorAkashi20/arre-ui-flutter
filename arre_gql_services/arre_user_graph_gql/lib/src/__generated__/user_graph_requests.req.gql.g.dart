// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_graph_requests.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetIsFollowingUserReq> _$gGetIsFollowingUserReqSerializer =
    new _$GGetIsFollowingUserReqSerializer();
Serializer<GGetListOfFollowersPaginatedReq>
    _$gGetListOfFollowersPaginatedReqSerializer =
    new _$GGetListOfFollowersPaginatedReqSerializer();
Serializer<GGetListOfFollowingPaginatedReq>
    _$gGetListOfFollowingPaginatedReqSerializer =
    new _$GGetListOfFollowingPaginatedReqSerializer();
Serializer<GGetUserFollowCountsReq> _$gGetUserFollowCountsReqSerializer =
    new _$GGetUserFollowCountsReqSerializer();
Serializer<GFollowUserReq> _$gFollowUserReqSerializer =
    new _$GFollowUserReqSerializer();
Serializer<GUnFollowUserReq> _$gUnFollowUserReqSerializer =
    new _$GUnFollowUserReqSerializer();
Serializer<GUserFollowRelationReq> _$gUserFollowRelationReqSerializer =
    new _$GUserFollowRelationReqSerializer();
Serializer<GUserFollowCountsReq> _$gUserFollowCountsReqSerializer =
    new _$GUserFollowCountsReqSerializer();

class _$GGetIsFollowingUserReqSerializer
    implements StructuredSerializer<GGetIsFollowingUserReq> {
  @override
  final Iterable<Type> types = const [
    GGetIsFollowingUserReq,
    _$GGetIsFollowingUserReq
  ];
  @override
  final String wireName = 'GGetIsFollowingUserReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetIsFollowingUserReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetIsFollowingUserVars)),
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
            specifiedType: const FullType(_i2.GGetIsFollowingUserData)));
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
  GGetIsFollowingUserReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetIsFollowingUserReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetIsFollowingUserVars))!
              as _i3.GGetIsFollowingUserVars);
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
                  specifiedType: const FullType(_i2.GGetIsFollowingUserData))!
              as _i2.GGetIsFollowingUserData);
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

class _$GGetListOfFollowersPaginatedReqSerializer
    implements StructuredSerializer<GGetListOfFollowersPaginatedReq> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowersPaginatedReq,
    _$GGetListOfFollowersPaginatedReq
  ];
  @override
  final String wireName = 'GGetListOfFollowersPaginatedReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetListOfFollowersPaginatedReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetListOfFollowersPaginatedVars)),
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
            specifiedType:
                const FullType(_i2.GGetListOfFollowersPaginatedData)));
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
  GGetListOfFollowersPaginatedReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowersPaginatedReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GGetListOfFollowersPaginatedVars))!
              as _i3.GGetListOfFollowersPaginatedVars);
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
                      const FullType(_i2.GGetListOfFollowersPaginatedData))!
              as _i2.GGetListOfFollowersPaginatedData);
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

class _$GGetListOfFollowingPaginatedReqSerializer
    implements StructuredSerializer<GGetListOfFollowingPaginatedReq> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowingPaginatedReq,
    _$GGetListOfFollowingPaginatedReq
  ];
  @override
  final String wireName = 'GGetListOfFollowingPaginatedReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetListOfFollowingPaginatedReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetListOfFollowingPaginatedVars)),
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
            specifiedType:
                const FullType(_i2.GGetListOfFollowingPaginatedData)));
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
  GGetListOfFollowingPaginatedReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowingPaginatedReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GGetListOfFollowingPaginatedVars))!
              as _i3.GGetListOfFollowingPaginatedVars);
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
                      const FullType(_i2.GGetListOfFollowingPaginatedData))!
              as _i2.GGetListOfFollowingPaginatedData);
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

class _$GGetUserFollowCountsReqSerializer
    implements StructuredSerializer<GGetUserFollowCountsReq> {
  @override
  final Iterable<Type> types = const [
    GGetUserFollowCountsReq,
    _$GGetUserFollowCountsReq
  ];
  @override
  final String wireName = 'GGetUserFollowCountsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserFollowCountsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetUserFollowCountsVars)),
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
            specifiedType: const FullType(_i2.GGetUserFollowCountsData)));
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
  GGetUserFollowCountsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserFollowCountsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetUserFollowCountsVars))!
              as _i3.GGetUserFollowCountsVars);
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
                  specifiedType: const FullType(_i2.GGetUserFollowCountsData))!
              as _i2.GGetUserFollowCountsData);
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

class _$GFollowUserReqSerializer
    implements StructuredSerializer<GFollowUserReq> {
  @override
  final Iterable<Type> types = const [GFollowUserReq, _$GFollowUserReq];
  @override
  final String wireName = 'GFollowUserReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFollowUserReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GFollowUserVars)),
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
            specifiedType: const FullType(_i2.GFollowUserData)));
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
  GFollowUserReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFollowUserReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GFollowUserVars))!
              as _i3.GFollowUserVars);
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
                  specifiedType: const FullType(_i2.GFollowUserData))!
              as _i2.GFollowUserData);
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

class _$GUnFollowUserReqSerializer
    implements StructuredSerializer<GUnFollowUserReq> {
  @override
  final Iterable<Type> types = const [GUnFollowUserReq, _$GUnFollowUserReq];
  @override
  final String wireName = 'GUnFollowUserReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUnFollowUserReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUnFollowUserVars)),
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
            specifiedType: const FullType(_i2.GUnFollowUserData)));
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
  GUnFollowUserReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnFollowUserReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUnFollowUserVars))!
              as _i3.GUnFollowUserVars);
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
                  specifiedType: const FullType(_i2.GUnFollowUserData))!
              as _i2.GUnFollowUserData);
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

class _$GUserFollowRelationReqSerializer
    implements StructuredSerializer<GUserFollowRelationReq> {
  @override
  final Iterable<Type> types = const [
    GUserFollowRelationReq,
    _$GUserFollowRelationReq
  ];
  @override
  final String wireName = 'GUserFollowRelationReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserFollowRelationReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUserFollowRelationVars)),
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
  GUserFollowRelationReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserFollowRelationReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUserFollowRelationVars))!
              as _i3.GUserFollowRelationVars);
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

class _$GUserFollowCountsReqSerializer
    implements StructuredSerializer<GUserFollowCountsReq> {
  @override
  final Iterable<Type> types = const [
    GUserFollowCountsReq,
    _$GUserFollowCountsReq
  ];
  @override
  final String wireName = 'GUserFollowCountsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserFollowCountsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUserFollowCountsVars)),
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
  GUserFollowCountsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserFollowCountsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUserFollowCountsVars))!
              as _i3.GUserFollowCountsVars);
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

class _$GGetIsFollowingUserReq extends GGetIsFollowingUserReq {
  @override
  final _i3.GGetIsFollowingUserVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGetIsFollowingUserData? Function(
      _i2.GGetIsFollowingUserData?, _i2.GGetIsFollowingUserData?)? updateResult;
  @override
  final _i2.GGetIsFollowingUserData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGetIsFollowingUserReq(
          [void Function(GGetIsFollowingUserReqBuilder)? updates]) =>
      (new GGetIsFollowingUserReqBuilder()..update(updates))._build();

  _$GGetIsFollowingUserReq._(
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
        vars, r'GGetIsFollowingUserReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GGetIsFollowingUserReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GGetIsFollowingUserReq', 'executeOnListen');
  }

  @override
  GGetIsFollowingUserReq rebuild(
          void Function(GGetIsFollowingUserReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetIsFollowingUserReqBuilder toBuilder() =>
      new GGetIsFollowingUserReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGetIsFollowingUserReq &&
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
    return (newBuiltValueToStringHelper(r'GGetIsFollowingUserReq')
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

class GGetIsFollowingUserReqBuilder
    implements Builder<GGetIsFollowingUserReq, GGetIsFollowingUserReqBuilder> {
  _$GGetIsFollowingUserReq? _$v;

  _i3.GGetIsFollowingUserVarsBuilder? _vars;
  _i3.GGetIsFollowingUserVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetIsFollowingUserVarsBuilder();
  set vars(_i3.GGetIsFollowingUserVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGetIsFollowingUserData? Function(
          _i2.GGetIsFollowingUserData?, _i2.GGetIsFollowingUserData?)?
      _updateResult;
  _i2.GGetIsFollowingUserData? Function(
          _i2.GGetIsFollowingUserData?, _i2.GGetIsFollowingUserData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGetIsFollowingUserData? Function(
                  _i2.GGetIsFollowingUserData?, _i2.GGetIsFollowingUserData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGetIsFollowingUserDataBuilder? _optimisticResponse;
  _i2.GGetIsFollowingUserDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GGetIsFollowingUserDataBuilder();
  set optimisticResponse(
          _i2.GGetIsFollowingUserDataBuilder? optimisticResponse) =>
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

  GGetIsFollowingUserReqBuilder() {
    GGetIsFollowingUserReq._initializeBuilder(this);
  }

  GGetIsFollowingUserReqBuilder get _$this {
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
  void replace(GGetIsFollowingUserReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetIsFollowingUserReq;
  }

  @override
  void update(void Function(GGetIsFollowingUserReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetIsFollowingUserReq build() => _build();

  _$GGetIsFollowingUserReq _build() {
    _$GGetIsFollowingUserReq _$result;
    try {
      _$result = _$v ??
          new _$GGetIsFollowingUserReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetIsFollowingUserReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GGetIsFollowingUserReq',
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
            r'GGetIsFollowingUserReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowersPaginatedReq
    extends GGetListOfFollowersPaginatedReq {
  @override
  final _i3.GGetListOfFollowersPaginatedVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGetListOfFollowersPaginatedData? Function(
      _i2.GGetListOfFollowersPaginatedData?,
      _i2.GGetListOfFollowersPaginatedData?)? updateResult;
  @override
  final _i2.GGetListOfFollowersPaginatedData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGetListOfFollowersPaginatedReq(
          [void Function(GGetListOfFollowersPaginatedReqBuilder)? updates]) =>
      (new GGetListOfFollowersPaginatedReqBuilder()..update(updates))._build();

  _$GGetListOfFollowersPaginatedReq._(
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
        vars, r'GGetListOfFollowersPaginatedReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GGetListOfFollowersPaginatedReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GGetListOfFollowersPaginatedReq', 'executeOnListen');
  }

  @override
  GGetListOfFollowersPaginatedReq rebuild(
          void Function(GGetListOfFollowersPaginatedReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowersPaginatedReqBuilder toBuilder() =>
      new GGetListOfFollowersPaginatedReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGetListOfFollowersPaginatedReq &&
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
    return (newBuiltValueToStringHelper(r'GGetListOfFollowersPaginatedReq')
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

class GGetListOfFollowersPaginatedReqBuilder
    implements
        Builder<GGetListOfFollowersPaginatedReq,
            GGetListOfFollowersPaginatedReqBuilder> {
  _$GGetListOfFollowersPaginatedReq? _$v;

  _i3.GGetListOfFollowersPaginatedVarsBuilder? _vars;
  _i3.GGetListOfFollowersPaginatedVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetListOfFollowersPaginatedVarsBuilder();
  set vars(_i3.GGetListOfFollowersPaginatedVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGetListOfFollowersPaginatedData? Function(
      _i2.GGetListOfFollowersPaginatedData?,
      _i2.GGetListOfFollowersPaginatedData?)? _updateResult;
  _i2.GGetListOfFollowersPaginatedData? Function(
          _i2.GGetListOfFollowersPaginatedData?,
          _i2.GGetListOfFollowersPaginatedData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGetListOfFollowersPaginatedData? Function(
                  _i2.GGetListOfFollowersPaginatedData?,
                  _i2.GGetListOfFollowersPaginatedData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGetListOfFollowersPaginatedDataBuilder? _optimisticResponse;
  _i2.GGetListOfFollowersPaginatedDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GGetListOfFollowersPaginatedDataBuilder();
  set optimisticResponse(
          _i2.GGetListOfFollowersPaginatedDataBuilder? optimisticResponse) =>
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

  GGetListOfFollowersPaginatedReqBuilder() {
    GGetListOfFollowersPaginatedReq._initializeBuilder(this);
  }

  GGetListOfFollowersPaginatedReqBuilder get _$this {
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
  void replace(GGetListOfFollowersPaginatedReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowersPaginatedReq;
  }

  @override
  void update(void Function(GGetListOfFollowersPaginatedReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowersPaginatedReq build() => _build();

  _$GGetListOfFollowersPaginatedReq _build() {
    _$GGetListOfFollowersPaginatedReq _$result;
    try {
      _$result = _$v ??
          new _$GGetListOfFollowersPaginatedReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetListOfFollowersPaginatedReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GGetListOfFollowersPaginatedReq',
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
            r'GGetListOfFollowersPaginatedReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowingPaginatedReq
    extends GGetListOfFollowingPaginatedReq {
  @override
  final _i3.GGetListOfFollowingPaginatedVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGetListOfFollowingPaginatedData? Function(
      _i2.GGetListOfFollowingPaginatedData?,
      _i2.GGetListOfFollowingPaginatedData?)? updateResult;
  @override
  final _i2.GGetListOfFollowingPaginatedData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGetListOfFollowingPaginatedReq(
          [void Function(GGetListOfFollowingPaginatedReqBuilder)? updates]) =>
      (new GGetListOfFollowingPaginatedReqBuilder()..update(updates))._build();

  _$GGetListOfFollowingPaginatedReq._(
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
        vars, r'GGetListOfFollowingPaginatedReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GGetListOfFollowingPaginatedReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GGetListOfFollowingPaginatedReq', 'executeOnListen');
  }

  @override
  GGetListOfFollowingPaginatedReq rebuild(
          void Function(GGetListOfFollowingPaginatedReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowingPaginatedReqBuilder toBuilder() =>
      new GGetListOfFollowingPaginatedReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGetListOfFollowingPaginatedReq &&
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
    return (newBuiltValueToStringHelper(r'GGetListOfFollowingPaginatedReq')
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

class GGetListOfFollowingPaginatedReqBuilder
    implements
        Builder<GGetListOfFollowingPaginatedReq,
            GGetListOfFollowingPaginatedReqBuilder> {
  _$GGetListOfFollowingPaginatedReq? _$v;

  _i3.GGetListOfFollowingPaginatedVarsBuilder? _vars;
  _i3.GGetListOfFollowingPaginatedVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetListOfFollowingPaginatedVarsBuilder();
  set vars(_i3.GGetListOfFollowingPaginatedVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGetListOfFollowingPaginatedData? Function(
      _i2.GGetListOfFollowingPaginatedData?,
      _i2.GGetListOfFollowingPaginatedData?)? _updateResult;
  _i2.GGetListOfFollowingPaginatedData? Function(
          _i2.GGetListOfFollowingPaginatedData?,
          _i2.GGetListOfFollowingPaginatedData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGetListOfFollowingPaginatedData? Function(
                  _i2.GGetListOfFollowingPaginatedData?,
                  _i2.GGetListOfFollowingPaginatedData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGetListOfFollowingPaginatedDataBuilder? _optimisticResponse;
  _i2.GGetListOfFollowingPaginatedDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GGetListOfFollowingPaginatedDataBuilder();
  set optimisticResponse(
          _i2.GGetListOfFollowingPaginatedDataBuilder? optimisticResponse) =>
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

  GGetListOfFollowingPaginatedReqBuilder() {
    GGetListOfFollowingPaginatedReq._initializeBuilder(this);
  }

  GGetListOfFollowingPaginatedReqBuilder get _$this {
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
  void replace(GGetListOfFollowingPaginatedReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowingPaginatedReq;
  }

  @override
  void update(void Function(GGetListOfFollowingPaginatedReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowingPaginatedReq build() => _build();

  _$GGetListOfFollowingPaginatedReq _build() {
    _$GGetListOfFollowingPaginatedReq _$result;
    try {
      _$result = _$v ??
          new _$GGetListOfFollowingPaginatedReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetListOfFollowingPaginatedReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GGetListOfFollowingPaginatedReq',
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
            r'GGetListOfFollowingPaginatedReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserFollowCountsReq extends GGetUserFollowCountsReq {
  @override
  final _i3.GGetUserFollowCountsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGetUserFollowCountsData? Function(
          _i2.GGetUserFollowCountsData?, _i2.GGetUserFollowCountsData?)?
      updateResult;
  @override
  final _i2.GGetUserFollowCountsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGetUserFollowCountsReq(
          [void Function(GGetUserFollowCountsReqBuilder)? updates]) =>
      (new GGetUserFollowCountsReqBuilder()..update(updates))._build();

  _$GGetUserFollowCountsReq._(
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
        vars, r'GGetUserFollowCountsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GGetUserFollowCountsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GGetUserFollowCountsReq', 'executeOnListen');
  }

  @override
  GGetUserFollowCountsReq rebuild(
          void Function(GGetUserFollowCountsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserFollowCountsReqBuilder toBuilder() =>
      new GGetUserFollowCountsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGetUserFollowCountsReq &&
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
    return (newBuiltValueToStringHelper(r'GGetUserFollowCountsReq')
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

class GGetUserFollowCountsReqBuilder
    implements
        Builder<GGetUserFollowCountsReq, GGetUserFollowCountsReqBuilder> {
  _$GGetUserFollowCountsReq? _$v;

  _i3.GGetUserFollowCountsVarsBuilder? _vars;
  _i3.GGetUserFollowCountsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetUserFollowCountsVarsBuilder();
  set vars(_i3.GGetUserFollowCountsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGetUserFollowCountsData? Function(
          _i2.GGetUserFollowCountsData?, _i2.GGetUserFollowCountsData?)?
      _updateResult;
  _i2.GGetUserFollowCountsData? Function(
          _i2.GGetUserFollowCountsData?, _i2.GGetUserFollowCountsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGetUserFollowCountsData? Function(
                  _i2.GGetUserFollowCountsData?, _i2.GGetUserFollowCountsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGetUserFollowCountsDataBuilder? _optimisticResponse;
  _i2.GGetUserFollowCountsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GGetUserFollowCountsDataBuilder();
  set optimisticResponse(
          _i2.GGetUserFollowCountsDataBuilder? optimisticResponse) =>
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

  GGetUserFollowCountsReqBuilder() {
    GGetUserFollowCountsReq._initializeBuilder(this);
  }

  GGetUserFollowCountsReqBuilder get _$this {
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
  void replace(GGetUserFollowCountsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserFollowCountsReq;
  }

  @override
  void update(void Function(GGetUserFollowCountsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserFollowCountsReq build() => _build();

  _$GGetUserFollowCountsReq _build() {
    _$GGetUserFollowCountsReq _$result;
    try {
      _$result = _$v ??
          new _$GGetUserFollowCountsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetUserFollowCountsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GGetUserFollowCountsReq',
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
            r'GGetUserFollowCountsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFollowUserReq extends GFollowUserReq {
  @override
  final _i3.GFollowUserVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GFollowUserData? Function(
      _i2.GFollowUserData?, _i2.GFollowUserData?)? updateResult;
  @override
  final _i2.GFollowUserData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GFollowUserReq([void Function(GFollowUserReqBuilder)? updates]) =>
      (new GFollowUserReqBuilder()..update(updates))._build();

  _$GFollowUserReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GFollowUserReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GFollowUserReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GFollowUserReq', 'executeOnListen');
  }

  @override
  GFollowUserReq rebuild(void Function(GFollowUserReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFollowUserReqBuilder toBuilder() =>
      new GFollowUserReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GFollowUserReq &&
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
    return (newBuiltValueToStringHelper(r'GFollowUserReq')
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

class GFollowUserReqBuilder
    implements Builder<GFollowUserReq, GFollowUserReqBuilder> {
  _$GFollowUserReq? _$v;

  _i3.GFollowUserVarsBuilder? _vars;
  _i3.GFollowUserVarsBuilder get vars =>
      _$this._vars ??= new _i3.GFollowUserVarsBuilder();
  set vars(_i3.GFollowUserVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GFollowUserData? Function(_i2.GFollowUserData?, _i2.GFollowUserData?)?
      _updateResult;
  _i2.GFollowUserData? Function(_i2.GFollowUserData?, _i2.GFollowUserData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GFollowUserData? Function(
                  _i2.GFollowUserData?, _i2.GFollowUserData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GFollowUserDataBuilder? _optimisticResponse;
  _i2.GFollowUserDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GFollowUserDataBuilder();
  set optimisticResponse(_i2.GFollowUserDataBuilder? optimisticResponse) =>
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

  GFollowUserReqBuilder() {
    GFollowUserReq._initializeBuilder(this);
  }

  GFollowUserReqBuilder get _$this {
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
  void replace(GFollowUserReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFollowUserReq;
  }

  @override
  void update(void Function(GFollowUserReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFollowUserReq build() => _build();

  _$GFollowUserReq _build() {
    _$GFollowUserReq _$result;
    try {
      _$result = _$v ??
          new _$GFollowUserReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GFollowUserReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GFollowUserReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFollowUserReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUnFollowUserReq extends GUnFollowUserReq {
  @override
  final _i3.GUnFollowUserVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GUnFollowUserData? Function(
      _i2.GUnFollowUserData?, _i2.GUnFollowUserData?)? updateResult;
  @override
  final _i2.GUnFollowUserData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GUnFollowUserReq(
          [void Function(GUnFollowUserReqBuilder)? updates]) =>
      (new GUnFollowUserReqBuilder()..update(updates))._build();

  _$GUnFollowUserReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GUnFollowUserReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GUnFollowUserReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GUnFollowUserReq', 'executeOnListen');
  }

  @override
  GUnFollowUserReq rebuild(void Function(GUnFollowUserReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnFollowUserReqBuilder toBuilder() =>
      new GUnFollowUserReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GUnFollowUserReq &&
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
    return (newBuiltValueToStringHelper(r'GUnFollowUserReq')
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

class GUnFollowUserReqBuilder
    implements Builder<GUnFollowUserReq, GUnFollowUserReqBuilder> {
  _$GUnFollowUserReq? _$v;

  _i3.GUnFollowUserVarsBuilder? _vars;
  _i3.GUnFollowUserVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUnFollowUserVarsBuilder();
  set vars(_i3.GUnFollowUserVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GUnFollowUserData? Function(
      _i2.GUnFollowUserData?, _i2.GUnFollowUserData?)? _updateResult;
  _i2.GUnFollowUserData? Function(
          _i2.GUnFollowUserData?, _i2.GUnFollowUserData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GUnFollowUserData? Function(
                  _i2.GUnFollowUserData?, _i2.GUnFollowUserData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GUnFollowUserDataBuilder? _optimisticResponse;
  _i2.GUnFollowUserDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GUnFollowUserDataBuilder();
  set optimisticResponse(_i2.GUnFollowUserDataBuilder? optimisticResponse) =>
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

  GUnFollowUserReqBuilder() {
    GUnFollowUserReq._initializeBuilder(this);
  }

  GUnFollowUserReqBuilder get _$this {
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
  void replace(GUnFollowUserReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnFollowUserReq;
  }

  @override
  void update(void Function(GUnFollowUserReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnFollowUserReq build() => _build();

  _$GUnFollowUserReq _build() {
    _$GUnFollowUserReq _$result;
    try {
      _$result = _$v ??
          new _$GUnFollowUserReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GUnFollowUserReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GUnFollowUserReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUnFollowUserReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserFollowRelationReq extends GUserFollowRelationReq {
  @override
  final _i3.GUserFollowRelationVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GUserFollowRelationReq(
          [void Function(GUserFollowRelationReqBuilder)? updates]) =>
      (new GUserFollowRelationReqBuilder()..update(updates))._build();

  _$GUserFollowRelationReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GUserFollowRelationReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GUserFollowRelationReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GUserFollowRelationReq', 'idFields');
  }

  @override
  GUserFollowRelationReq rebuild(
          void Function(GUserFollowRelationReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFollowRelationReqBuilder toBuilder() =>
      new GUserFollowRelationReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFollowRelationReq &&
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
    return (newBuiltValueToStringHelper(r'GUserFollowRelationReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GUserFollowRelationReqBuilder
    implements Builder<GUserFollowRelationReq, GUserFollowRelationReqBuilder> {
  _$GUserFollowRelationReq? _$v;

  _i3.GUserFollowRelationVarsBuilder? _vars;
  _i3.GUserFollowRelationVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUserFollowRelationVarsBuilder();
  set vars(_i3.GUserFollowRelationVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GUserFollowRelationReqBuilder() {
    GUserFollowRelationReq._initializeBuilder(this);
  }

  GUserFollowRelationReqBuilder get _$this {
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
  void replace(GUserFollowRelationReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFollowRelationReq;
  }

  @override
  void update(void Function(GUserFollowRelationReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFollowRelationReq build() => _build();

  _$GUserFollowRelationReq _build() {
    _$GUserFollowRelationReq _$result;
    try {
      _$result = _$v ??
          new _$GUserFollowRelationReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GUserFollowRelationReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GUserFollowRelationReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserFollowRelationReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserFollowCountsReq extends GUserFollowCountsReq {
  @override
  final _i3.GUserFollowCountsVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GUserFollowCountsReq(
          [void Function(GUserFollowCountsReqBuilder)? updates]) =>
      (new GUserFollowCountsReqBuilder()..update(updates))._build();

  _$GUserFollowCountsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GUserFollowCountsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GUserFollowCountsReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GUserFollowCountsReq', 'idFields');
  }

  @override
  GUserFollowCountsReq rebuild(
          void Function(GUserFollowCountsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFollowCountsReqBuilder toBuilder() =>
      new GUserFollowCountsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFollowCountsReq &&
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
    return (newBuiltValueToStringHelper(r'GUserFollowCountsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GUserFollowCountsReqBuilder
    implements Builder<GUserFollowCountsReq, GUserFollowCountsReqBuilder> {
  _$GUserFollowCountsReq? _$v;

  _i3.GUserFollowCountsVarsBuilder? _vars;
  _i3.GUserFollowCountsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUserFollowCountsVarsBuilder();
  set vars(_i3.GUserFollowCountsVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GUserFollowCountsReqBuilder() {
    GUserFollowCountsReq._initializeBuilder(this);
  }

  GUserFollowCountsReqBuilder get _$this {
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
  void replace(GUserFollowCountsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFollowCountsReq;
  }

  @override
  void update(void Function(GUserFollowCountsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFollowCountsReq build() => _build();

  _$GUserFollowCountsReq _build() {
    _$GUserFollowCountsReq _$result;
    try {
      _$result = _$v ??
          new _$GUserFollowCountsReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GUserFollowCountsReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GUserFollowCountsReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserFollowCountsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
