// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_requests.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPlaylistDetailsReq> _$gPlaylistDetailsReqSerializer =
    new _$GPlaylistDetailsReqSerializer();
Serializer<GPlaylistByUserIdReq> _$gPlaylistByUserIdReqSerializer =
    new _$GPlaylistByUserIdReqSerializer();
Serializer<GCreatePlaylistReq> _$gCreatePlaylistReqSerializer =
    new _$GCreatePlaylistReqSerializer();
Serializer<GEditPlaylistReq> _$gEditPlaylistReqSerializer =
    new _$GEditPlaylistReqSerializer();
Serializer<GDeletePlaylistReq> _$gDeletePlaylistReqSerializer =
    new _$GDeletePlaylistReqSerializer();
Serializer<GAddPostToPlaylistReq> _$gAddPostToPlaylistReqSerializer =
    new _$GAddPostToPlaylistReqSerializer();
Serializer<GSavePostToDefaultPlaylistReq>
    _$gSavePostToDefaultPlaylistReqSerializer =
    new _$GSavePostToDefaultPlaylistReqSerializer();
Serializer<GRemovePostFromPlaylistReq> _$gRemovePostFromPlaylistReqSerializer =
    new _$GRemovePostFromPlaylistReqSerializer();
Serializer<GPlaylistReq> _$gPlaylistReqSerializer =
    new _$GPlaylistReqSerializer();

class _$GPlaylistDetailsReqSerializer
    implements StructuredSerializer<GPlaylistDetailsReq> {
  @override
  final Iterable<Type> types = const [
    GPlaylistDetailsReq,
    _$GPlaylistDetailsReq
  ];
  @override
  final String wireName = 'GPlaylistDetailsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistDetailsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GPlaylistDetailsVars)),
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
            specifiedType: const FullType(_i2.GPlaylistDetailsData)));
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
  GPlaylistDetailsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistDetailsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GPlaylistDetailsVars))!
              as _i3.GPlaylistDetailsVars);
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
                  specifiedType: const FullType(_i2.GPlaylistDetailsData))!
              as _i2.GPlaylistDetailsData);
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

class _$GPlaylistByUserIdReqSerializer
    implements StructuredSerializer<GPlaylistByUserIdReq> {
  @override
  final Iterable<Type> types = const [
    GPlaylistByUserIdReq,
    _$GPlaylistByUserIdReq
  ];
  @override
  final String wireName = 'GPlaylistByUserIdReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistByUserIdReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GPlaylistByUserIdVars)),
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
            specifiedType: const FullType(_i2.GPlaylistByUserIdData)));
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
  GPlaylistByUserIdReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistByUserIdReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GPlaylistByUserIdVars))!
              as _i3.GPlaylistByUserIdVars);
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
                  specifiedType: const FullType(_i2.GPlaylistByUserIdData))!
              as _i2.GPlaylistByUserIdData);
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

class _$GCreatePlaylistReqSerializer
    implements StructuredSerializer<GCreatePlaylistReq> {
  @override
  final Iterable<Type> types = const [GCreatePlaylistReq, _$GCreatePlaylistReq];
  @override
  final String wireName = 'GCreatePlaylistReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePlaylistReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GCreatePlaylistVars)),
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
            specifiedType: const FullType(_i2.GCreatePlaylistData)));
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
  GCreatePlaylistReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePlaylistReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GCreatePlaylistVars))!
              as _i3.GCreatePlaylistVars);
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
                  specifiedType: const FullType(_i2.GCreatePlaylistData))!
              as _i2.GCreatePlaylistData);
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

class _$GEditPlaylistReqSerializer
    implements StructuredSerializer<GEditPlaylistReq> {
  @override
  final Iterable<Type> types = const [GEditPlaylistReq, _$GEditPlaylistReq];
  @override
  final String wireName = 'GEditPlaylistReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GEditPlaylistReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GEditPlaylistVars)),
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
            specifiedType: const FullType(_i2.GEditPlaylistData)));
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
  GEditPlaylistReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEditPlaylistReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GEditPlaylistVars))!
              as _i3.GEditPlaylistVars);
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
                  specifiedType: const FullType(_i2.GEditPlaylistData))!
              as _i2.GEditPlaylistData);
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

class _$GDeletePlaylistReqSerializer
    implements StructuredSerializer<GDeletePlaylistReq> {
  @override
  final Iterable<Type> types = const [GDeletePlaylistReq, _$GDeletePlaylistReq];
  @override
  final String wireName = 'GDeletePlaylistReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeletePlaylistReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GDeletePlaylistVars)),
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
            specifiedType: const FullType(_i2.GDeletePlaylistData)));
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
  GDeletePlaylistReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletePlaylistReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GDeletePlaylistVars))!
              as _i3.GDeletePlaylistVars);
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
                  specifiedType: const FullType(_i2.GDeletePlaylistData))!
              as _i2.GDeletePlaylistData);
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

class _$GAddPostToPlaylistReqSerializer
    implements StructuredSerializer<GAddPostToPlaylistReq> {
  @override
  final Iterable<Type> types = const [
    GAddPostToPlaylistReq,
    _$GAddPostToPlaylistReq
  ];
  @override
  final String wireName = 'GAddPostToPlaylistReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddPostToPlaylistReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GAddPostToPlaylistVars)),
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
            specifiedType: const FullType(_i2.GAddPostToPlaylistData)));
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
  GAddPostToPlaylistReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddPostToPlaylistReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GAddPostToPlaylistVars))!
              as _i3.GAddPostToPlaylistVars);
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
                  specifiedType: const FullType(_i2.GAddPostToPlaylistData))!
              as _i2.GAddPostToPlaylistData);
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

class _$GSavePostToDefaultPlaylistReqSerializer
    implements StructuredSerializer<GSavePostToDefaultPlaylistReq> {
  @override
  final Iterable<Type> types = const [
    GSavePostToDefaultPlaylistReq,
    _$GSavePostToDefaultPlaylistReq
  ];
  @override
  final String wireName = 'GSavePostToDefaultPlaylistReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSavePostToDefaultPlaylistReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GSavePostToDefaultPlaylistVars)),
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
            specifiedType: const FullType(_i2.GSavePostToDefaultPlaylistData)));
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
  GSavePostToDefaultPlaylistReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSavePostToDefaultPlaylistReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GSavePostToDefaultPlaylistVars))!
              as _i3.GSavePostToDefaultPlaylistVars);
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
                      const FullType(_i2.GSavePostToDefaultPlaylistData))!
              as _i2.GSavePostToDefaultPlaylistData);
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

class _$GRemovePostFromPlaylistReqSerializer
    implements StructuredSerializer<GRemovePostFromPlaylistReq> {
  @override
  final Iterable<Type> types = const [
    GRemovePostFromPlaylistReq,
    _$GRemovePostFromPlaylistReq
  ];
  @override
  final String wireName = 'GRemovePostFromPlaylistReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemovePostFromPlaylistReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GRemovePostFromPlaylistVars)),
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
            specifiedType: const FullType(_i2.GRemovePostFromPlaylistData)));
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
  GRemovePostFromPlaylistReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemovePostFromPlaylistReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GRemovePostFromPlaylistVars))!
              as _i3.GRemovePostFromPlaylistVars);
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
                      const FullType(_i2.GRemovePostFromPlaylistData))!
              as _i2.GRemovePostFromPlaylistData);
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

class _$GPlaylistReqSerializer implements StructuredSerializer<GPlaylistReq> {
  @override
  final Iterable<Type> types = const [GPlaylistReq, _$GPlaylistReq];
  @override
  final String wireName = 'GPlaylistReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPlaylistReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GPlaylistVars)),
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
  GPlaylistReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GPlaylistVars))!
              as _i3.GPlaylistVars);
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

class _$GPlaylistDetailsReq extends GPlaylistDetailsReq {
  @override
  final _i3.GPlaylistDetailsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GPlaylistDetailsData? Function(
      _i2.GPlaylistDetailsData?, _i2.GPlaylistDetailsData?)? updateResult;
  @override
  final _i2.GPlaylistDetailsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GPlaylistDetailsReq(
          [void Function(GPlaylistDetailsReqBuilder)? updates]) =>
      (new GPlaylistDetailsReqBuilder()..update(updates))._build();

  _$GPlaylistDetailsReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GPlaylistDetailsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GPlaylistDetailsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GPlaylistDetailsReq', 'executeOnListen');
  }

  @override
  GPlaylistDetailsReq rebuild(
          void Function(GPlaylistDetailsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistDetailsReqBuilder toBuilder() =>
      new GPlaylistDetailsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GPlaylistDetailsReq &&
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
    return (newBuiltValueToStringHelper(r'GPlaylistDetailsReq')
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

class GPlaylistDetailsReqBuilder
    implements Builder<GPlaylistDetailsReq, GPlaylistDetailsReqBuilder> {
  _$GPlaylistDetailsReq? _$v;

  _i3.GPlaylistDetailsVarsBuilder? _vars;
  _i3.GPlaylistDetailsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GPlaylistDetailsVarsBuilder();
  set vars(_i3.GPlaylistDetailsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GPlaylistDetailsData? Function(
      _i2.GPlaylistDetailsData?, _i2.GPlaylistDetailsData?)? _updateResult;
  _i2.GPlaylistDetailsData? Function(
          _i2.GPlaylistDetailsData?, _i2.GPlaylistDetailsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GPlaylistDetailsData? Function(
                  _i2.GPlaylistDetailsData?, _i2.GPlaylistDetailsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GPlaylistDetailsDataBuilder? _optimisticResponse;
  _i2.GPlaylistDetailsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GPlaylistDetailsDataBuilder();
  set optimisticResponse(_i2.GPlaylistDetailsDataBuilder? optimisticResponse) =>
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

  GPlaylistDetailsReqBuilder() {
    GPlaylistDetailsReq._initializeBuilder(this);
  }

  GPlaylistDetailsReqBuilder get _$this {
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
  void replace(GPlaylistDetailsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistDetailsReq;
  }

  @override
  void update(void Function(GPlaylistDetailsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistDetailsReq build() => _build();

  _$GPlaylistDetailsReq _build() {
    _$GPlaylistDetailsReq _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistDetailsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GPlaylistDetailsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GPlaylistDetailsReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistDetailsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistByUserIdReq extends GPlaylistByUserIdReq {
  @override
  final _i3.GPlaylistByUserIdVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GPlaylistByUserIdData? Function(
      _i2.GPlaylistByUserIdData?, _i2.GPlaylistByUserIdData?)? updateResult;
  @override
  final _i2.GPlaylistByUserIdData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GPlaylistByUserIdReq(
          [void Function(GPlaylistByUserIdReqBuilder)? updates]) =>
      (new GPlaylistByUserIdReqBuilder()..update(updates))._build();

  _$GPlaylistByUserIdReq._(
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
        vars, r'GPlaylistByUserIdReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GPlaylistByUserIdReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GPlaylistByUserIdReq', 'executeOnListen');
  }

  @override
  GPlaylistByUserIdReq rebuild(
          void Function(GPlaylistByUserIdReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistByUserIdReqBuilder toBuilder() =>
      new GPlaylistByUserIdReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GPlaylistByUserIdReq &&
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
    return (newBuiltValueToStringHelper(r'GPlaylistByUserIdReq')
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

class GPlaylistByUserIdReqBuilder
    implements Builder<GPlaylistByUserIdReq, GPlaylistByUserIdReqBuilder> {
  _$GPlaylistByUserIdReq? _$v;

  _i3.GPlaylistByUserIdVarsBuilder? _vars;
  _i3.GPlaylistByUserIdVarsBuilder get vars =>
      _$this._vars ??= new _i3.GPlaylistByUserIdVarsBuilder();
  set vars(_i3.GPlaylistByUserIdVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GPlaylistByUserIdData? Function(
      _i2.GPlaylistByUserIdData?, _i2.GPlaylistByUserIdData?)? _updateResult;
  _i2.GPlaylistByUserIdData? Function(
          _i2.GPlaylistByUserIdData?, _i2.GPlaylistByUserIdData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GPlaylistByUserIdData? Function(
                  _i2.GPlaylistByUserIdData?, _i2.GPlaylistByUserIdData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GPlaylistByUserIdDataBuilder? _optimisticResponse;
  _i2.GPlaylistByUserIdDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GPlaylistByUserIdDataBuilder();
  set optimisticResponse(
          _i2.GPlaylistByUserIdDataBuilder? optimisticResponse) =>
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

  GPlaylistByUserIdReqBuilder() {
    GPlaylistByUserIdReq._initializeBuilder(this);
  }

  GPlaylistByUserIdReqBuilder get _$this {
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
  void replace(GPlaylistByUserIdReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistByUserIdReq;
  }

  @override
  void update(void Function(GPlaylistByUserIdReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistByUserIdReq build() => _build();

  _$GPlaylistByUserIdReq _build() {
    _$GPlaylistByUserIdReq _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistByUserIdReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GPlaylistByUserIdReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GPlaylistByUserIdReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistByUserIdReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePlaylistReq extends GCreatePlaylistReq {
  @override
  final _i3.GCreatePlaylistVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GCreatePlaylistData? Function(
      _i2.GCreatePlaylistData?, _i2.GCreatePlaylistData?)? updateResult;
  @override
  final _i2.GCreatePlaylistData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GCreatePlaylistReq(
          [void Function(GCreatePlaylistReqBuilder)? updates]) =>
      (new GCreatePlaylistReqBuilder()..update(updates))._build();

  _$GCreatePlaylistReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GCreatePlaylistReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GCreatePlaylistReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GCreatePlaylistReq', 'executeOnListen');
  }

  @override
  GCreatePlaylistReq rebuild(
          void Function(GCreatePlaylistReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePlaylistReqBuilder toBuilder() =>
      new GCreatePlaylistReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GCreatePlaylistReq &&
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
    return (newBuiltValueToStringHelper(r'GCreatePlaylistReq')
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

class GCreatePlaylistReqBuilder
    implements Builder<GCreatePlaylistReq, GCreatePlaylistReqBuilder> {
  _$GCreatePlaylistReq? _$v;

  _i3.GCreatePlaylistVarsBuilder? _vars;
  _i3.GCreatePlaylistVarsBuilder get vars =>
      _$this._vars ??= new _i3.GCreatePlaylistVarsBuilder();
  set vars(_i3.GCreatePlaylistVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GCreatePlaylistData? Function(
      _i2.GCreatePlaylistData?, _i2.GCreatePlaylistData?)? _updateResult;
  _i2.GCreatePlaylistData? Function(
          _i2.GCreatePlaylistData?, _i2.GCreatePlaylistData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GCreatePlaylistData? Function(
                  _i2.GCreatePlaylistData?, _i2.GCreatePlaylistData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GCreatePlaylistDataBuilder? _optimisticResponse;
  _i2.GCreatePlaylistDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GCreatePlaylistDataBuilder();
  set optimisticResponse(_i2.GCreatePlaylistDataBuilder? optimisticResponse) =>
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

  GCreatePlaylistReqBuilder() {
    GCreatePlaylistReq._initializeBuilder(this);
  }

  GCreatePlaylistReqBuilder get _$this {
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
  void replace(GCreatePlaylistReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePlaylistReq;
  }

  @override
  void update(void Function(GCreatePlaylistReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePlaylistReq build() => _build();

  _$GCreatePlaylistReq _build() {
    _$GCreatePlaylistReq _$result;
    try {
      _$result = _$v ??
          new _$GCreatePlaylistReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GCreatePlaylistReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GCreatePlaylistReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePlaylistReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GEditPlaylistReq extends GEditPlaylistReq {
  @override
  final _i3.GEditPlaylistVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GEditPlaylistData? Function(
      _i2.GEditPlaylistData?, _i2.GEditPlaylistData?)? updateResult;
  @override
  final _i2.GEditPlaylistData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GEditPlaylistReq(
          [void Function(GEditPlaylistReqBuilder)? updates]) =>
      (new GEditPlaylistReqBuilder()..update(updates))._build();

  _$GEditPlaylistReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GEditPlaylistReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GEditPlaylistReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GEditPlaylistReq', 'executeOnListen');
  }

  @override
  GEditPlaylistReq rebuild(void Function(GEditPlaylistReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEditPlaylistReqBuilder toBuilder() =>
      new GEditPlaylistReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GEditPlaylistReq &&
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
    return (newBuiltValueToStringHelper(r'GEditPlaylistReq')
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

class GEditPlaylistReqBuilder
    implements Builder<GEditPlaylistReq, GEditPlaylistReqBuilder> {
  _$GEditPlaylistReq? _$v;

  _i3.GEditPlaylistVarsBuilder? _vars;
  _i3.GEditPlaylistVarsBuilder get vars =>
      _$this._vars ??= new _i3.GEditPlaylistVarsBuilder();
  set vars(_i3.GEditPlaylistVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GEditPlaylistData? Function(
      _i2.GEditPlaylistData?, _i2.GEditPlaylistData?)? _updateResult;
  _i2.GEditPlaylistData? Function(
          _i2.GEditPlaylistData?, _i2.GEditPlaylistData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GEditPlaylistData? Function(
                  _i2.GEditPlaylistData?, _i2.GEditPlaylistData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GEditPlaylistDataBuilder? _optimisticResponse;
  _i2.GEditPlaylistDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GEditPlaylistDataBuilder();
  set optimisticResponse(_i2.GEditPlaylistDataBuilder? optimisticResponse) =>
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

  GEditPlaylistReqBuilder() {
    GEditPlaylistReq._initializeBuilder(this);
  }

  GEditPlaylistReqBuilder get _$this {
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
  void replace(GEditPlaylistReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEditPlaylistReq;
  }

  @override
  void update(void Function(GEditPlaylistReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEditPlaylistReq build() => _build();

  _$GEditPlaylistReq _build() {
    _$GEditPlaylistReq _$result;
    try {
      _$result = _$v ??
          new _$GEditPlaylistReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GEditPlaylistReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GEditPlaylistReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GEditPlaylistReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeletePlaylistReq extends GDeletePlaylistReq {
  @override
  final _i3.GDeletePlaylistVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GDeletePlaylistData? Function(
      _i2.GDeletePlaylistData?, _i2.GDeletePlaylistData?)? updateResult;
  @override
  final _i2.GDeletePlaylistData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GDeletePlaylistReq(
          [void Function(GDeletePlaylistReqBuilder)? updates]) =>
      (new GDeletePlaylistReqBuilder()..update(updates))._build();

  _$GDeletePlaylistReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GDeletePlaylistReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GDeletePlaylistReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GDeletePlaylistReq', 'executeOnListen');
  }

  @override
  GDeletePlaylistReq rebuild(
          void Function(GDeletePlaylistReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletePlaylistReqBuilder toBuilder() =>
      new GDeletePlaylistReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GDeletePlaylistReq &&
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
    return (newBuiltValueToStringHelper(r'GDeletePlaylistReq')
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

class GDeletePlaylistReqBuilder
    implements Builder<GDeletePlaylistReq, GDeletePlaylistReqBuilder> {
  _$GDeletePlaylistReq? _$v;

  _i3.GDeletePlaylistVarsBuilder? _vars;
  _i3.GDeletePlaylistVarsBuilder get vars =>
      _$this._vars ??= new _i3.GDeletePlaylistVarsBuilder();
  set vars(_i3.GDeletePlaylistVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GDeletePlaylistData? Function(
      _i2.GDeletePlaylistData?, _i2.GDeletePlaylistData?)? _updateResult;
  _i2.GDeletePlaylistData? Function(
          _i2.GDeletePlaylistData?, _i2.GDeletePlaylistData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GDeletePlaylistData? Function(
                  _i2.GDeletePlaylistData?, _i2.GDeletePlaylistData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GDeletePlaylistDataBuilder? _optimisticResponse;
  _i2.GDeletePlaylistDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GDeletePlaylistDataBuilder();
  set optimisticResponse(_i2.GDeletePlaylistDataBuilder? optimisticResponse) =>
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

  GDeletePlaylistReqBuilder() {
    GDeletePlaylistReq._initializeBuilder(this);
  }

  GDeletePlaylistReqBuilder get _$this {
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
  void replace(GDeletePlaylistReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletePlaylistReq;
  }

  @override
  void update(void Function(GDeletePlaylistReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeletePlaylistReq build() => _build();

  _$GDeletePlaylistReq _build() {
    _$GDeletePlaylistReq _$result;
    try {
      _$result = _$v ??
          new _$GDeletePlaylistReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GDeletePlaylistReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GDeletePlaylistReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeletePlaylistReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddPostToPlaylistReq extends GAddPostToPlaylistReq {
  @override
  final _i3.GAddPostToPlaylistVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GAddPostToPlaylistData? Function(
      _i2.GAddPostToPlaylistData?, _i2.GAddPostToPlaylistData?)? updateResult;
  @override
  final _i2.GAddPostToPlaylistData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GAddPostToPlaylistReq(
          [void Function(GAddPostToPlaylistReqBuilder)? updates]) =>
      (new GAddPostToPlaylistReqBuilder()..update(updates))._build();

  _$GAddPostToPlaylistReq._(
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
        vars, r'GAddPostToPlaylistReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GAddPostToPlaylistReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GAddPostToPlaylistReq', 'executeOnListen');
  }

  @override
  GAddPostToPlaylistReq rebuild(
          void Function(GAddPostToPlaylistReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddPostToPlaylistReqBuilder toBuilder() =>
      new GAddPostToPlaylistReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GAddPostToPlaylistReq &&
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
    return (newBuiltValueToStringHelper(r'GAddPostToPlaylistReq')
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

class GAddPostToPlaylistReqBuilder
    implements Builder<GAddPostToPlaylistReq, GAddPostToPlaylistReqBuilder> {
  _$GAddPostToPlaylistReq? _$v;

  _i3.GAddPostToPlaylistVarsBuilder? _vars;
  _i3.GAddPostToPlaylistVarsBuilder get vars =>
      _$this._vars ??= new _i3.GAddPostToPlaylistVarsBuilder();
  set vars(_i3.GAddPostToPlaylistVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GAddPostToPlaylistData? Function(
      _i2.GAddPostToPlaylistData?, _i2.GAddPostToPlaylistData?)? _updateResult;
  _i2.GAddPostToPlaylistData? Function(
          _i2.GAddPostToPlaylistData?, _i2.GAddPostToPlaylistData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GAddPostToPlaylistData? Function(
                  _i2.GAddPostToPlaylistData?, _i2.GAddPostToPlaylistData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GAddPostToPlaylistDataBuilder? _optimisticResponse;
  _i2.GAddPostToPlaylistDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GAddPostToPlaylistDataBuilder();
  set optimisticResponse(
          _i2.GAddPostToPlaylistDataBuilder? optimisticResponse) =>
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

  GAddPostToPlaylistReqBuilder() {
    GAddPostToPlaylistReq._initializeBuilder(this);
  }

  GAddPostToPlaylistReqBuilder get _$this {
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
  void replace(GAddPostToPlaylistReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddPostToPlaylistReq;
  }

  @override
  void update(void Function(GAddPostToPlaylistReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddPostToPlaylistReq build() => _build();

  _$GAddPostToPlaylistReq _build() {
    _$GAddPostToPlaylistReq _$result;
    try {
      _$result = _$v ??
          new _$GAddPostToPlaylistReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GAddPostToPlaylistReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GAddPostToPlaylistReq',
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
            r'GAddPostToPlaylistReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSavePostToDefaultPlaylistReq extends GSavePostToDefaultPlaylistReq {
  @override
  final _i3.GSavePostToDefaultPlaylistVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GSavePostToDefaultPlaylistData? Function(
      _i2.GSavePostToDefaultPlaylistData?,
      _i2.GSavePostToDefaultPlaylistData?)? updateResult;
  @override
  final _i2.GSavePostToDefaultPlaylistData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GSavePostToDefaultPlaylistReq(
          [void Function(GSavePostToDefaultPlaylistReqBuilder)? updates]) =>
      (new GSavePostToDefaultPlaylistReqBuilder()..update(updates))._build();

  _$GSavePostToDefaultPlaylistReq._(
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
        vars, r'GSavePostToDefaultPlaylistReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GSavePostToDefaultPlaylistReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GSavePostToDefaultPlaylistReq', 'executeOnListen');
  }

  @override
  GSavePostToDefaultPlaylistReq rebuild(
          void Function(GSavePostToDefaultPlaylistReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSavePostToDefaultPlaylistReqBuilder toBuilder() =>
      new GSavePostToDefaultPlaylistReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GSavePostToDefaultPlaylistReq &&
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
    return (newBuiltValueToStringHelper(r'GSavePostToDefaultPlaylistReq')
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

class GSavePostToDefaultPlaylistReqBuilder
    implements
        Builder<GSavePostToDefaultPlaylistReq,
            GSavePostToDefaultPlaylistReqBuilder> {
  _$GSavePostToDefaultPlaylistReq? _$v;

  _i3.GSavePostToDefaultPlaylistVarsBuilder? _vars;
  _i3.GSavePostToDefaultPlaylistVarsBuilder get vars =>
      _$this._vars ??= new _i3.GSavePostToDefaultPlaylistVarsBuilder();
  set vars(_i3.GSavePostToDefaultPlaylistVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GSavePostToDefaultPlaylistData? Function(
      _i2.GSavePostToDefaultPlaylistData?,
      _i2.GSavePostToDefaultPlaylistData?)? _updateResult;
  _i2.GSavePostToDefaultPlaylistData? Function(
          _i2.GSavePostToDefaultPlaylistData?,
          _i2.GSavePostToDefaultPlaylistData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GSavePostToDefaultPlaylistData? Function(
                  _i2.GSavePostToDefaultPlaylistData?,
                  _i2.GSavePostToDefaultPlaylistData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GSavePostToDefaultPlaylistDataBuilder? _optimisticResponse;
  _i2.GSavePostToDefaultPlaylistDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GSavePostToDefaultPlaylistDataBuilder();
  set optimisticResponse(
          _i2.GSavePostToDefaultPlaylistDataBuilder? optimisticResponse) =>
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

  GSavePostToDefaultPlaylistReqBuilder() {
    GSavePostToDefaultPlaylistReq._initializeBuilder(this);
  }

  GSavePostToDefaultPlaylistReqBuilder get _$this {
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
  void replace(GSavePostToDefaultPlaylistReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSavePostToDefaultPlaylistReq;
  }

  @override
  void update(void Function(GSavePostToDefaultPlaylistReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSavePostToDefaultPlaylistReq build() => _build();

  _$GSavePostToDefaultPlaylistReq _build() {
    _$GSavePostToDefaultPlaylistReq _$result;
    try {
      _$result = _$v ??
          new _$GSavePostToDefaultPlaylistReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GSavePostToDefaultPlaylistReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GSavePostToDefaultPlaylistReq',
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
            r'GSavePostToDefaultPlaylistReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemovePostFromPlaylistReq extends GRemovePostFromPlaylistReq {
  @override
  final _i3.GRemovePostFromPlaylistVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GRemovePostFromPlaylistData? Function(
          _i2.GRemovePostFromPlaylistData?, _i2.GRemovePostFromPlaylistData?)?
      updateResult;
  @override
  final _i2.GRemovePostFromPlaylistData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GRemovePostFromPlaylistReq(
          [void Function(GRemovePostFromPlaylistReqBuilder)? updates]) =>
      (new GRemovePostFromPlaylistReqBuilder()..update(updates))._build();

  _$GRemovePostFromPlaylistReq._(
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
        vars, r'GRemovePostFromPlaylistReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GRemovePostFromPlaylistReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GRemovePostFromPlaylistReq', 'executeOnListen');
  }

  @override
  GRemovePostFromPlaylistReq rebuild(
          void Function(GRemovePostFromPlaylistReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemovePostFromPlaylistReqBuilder toBuilder() =>
      new GRemovePostFromPlaylistReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GRemovePostFromPlaylistReq &&
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
    return (newBuiltValueToStringHelper(r'GRemovePostFromPlaylistReq')
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

class GRemovePostFromPlaylistReqBuilder
    implements
        Builder<GRemovePostFromPlaylistReq, GRemovePostFromPlaylistReqBuilder> {
  _$GRemovePostFromPlaylistReq? _$v;

  _i3.GRemovePostFromPlaylistVarsBuilder? _vars;
  _i3.GRemovePostFromPlaylistVarsBuilder get vars =>
      _$this._vars ??= new _i3.GRemovePostFromPlaylistVarsBuilder();
  set vars(_i3.GRemovePostFromPlaylistVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GRemovePostFromPlaylistData? Function(
          _i2.GRemovePostFromPlaylistData?, _i2.GRemovePostFromPlaylistData?)?
      _updateResult;
  _i2.GRemovePostFromPlaylistData? Function(
          _i2.GRemovePostFromPlaylistData?, _i2.GRemovePostFromPlaylistData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GRemovePostFromPlaylistData? Function(
                  _i2.GRemovePostFromPlaylistData?,
                  _i2.GRemovePostFromPlaylistData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GRemovePostFromPlaylistDataBuilder? _optimisticResponse;
  _i2.GRemovePostFromPlaylistDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GRemovePostFromPlaylistDataBuilder();
  set optimisticResponse(
          _i2.GRemovePostFromPlaylistDataBuilder? optimisticResponse) =>
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

  GRemovePostFromPlaylistReqBuilder() {
    GRemovePostFromPlaylistReq._initializeBuilder(this);
  }

  GRemovePostFromPlaylistReqBuilder get _$this {
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
  void replace(GRemovePostFromPlaylistReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemovePostFromPlaylistReq;
  }

  @override
  void update(void Function(GRemovePostFromPlaylistReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemovePostFromPlaylistReq build() => _build();

  _$GRemovePostFromPlaylistReq _build() {
    _$GRemovePostFromPlaylistReq _$result;
    try {
      _$result = _$v ??
          new _$GRemovePostFromPlaylistReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GRemovePostFromPlaylistReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GRemovePostFromPlaylistReq',
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
            r'GRemovePostFromPlaylistReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistReq extends GPlaylistReq {
  @override
  final _i3.GPlaylistVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GPlaylistReq([void Function(GPlaylistReqBuilder)? updates]) =>
      (new GPlaylistReqBuilder()..update(updates))._build();

  _$GPlaylistReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GPlaylistReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GPlaylistReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GPlaylistReq', 'idFields');
  }

  @override
  GPlaylistReq rebuild(void Function(GPlaylistReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistReqBuilder toBuilder() => new GPlaylistReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistReq &&
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
    return (newBuiltValueToStringHelper(r'GPlaylistReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GPlaylistReqBuilder
    implements Builder<GPlaylistReq, GPlaylistReqBuilder> {
  _$GPlaylistReq? _$v;

  _i3.GPlaylistVarsBuilder? _vars;
  _i3.GPlaylistVarsBuilder get vars =>
      _$this._vars ??= new _i3.GPlaylistVarsBuilder();
  set vars(_i3.GPlaylistVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GPlaylistReqBuilder() {
    GPlaylistReq._initializeBuilder(this);
  }

  GPlaylistReqBuilder get _$this {
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
  void replace(GPlaylistReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistReq;
  }

  @override
  void update(void Function(GPlaylistReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistReq build() => _build();

  _$GPlaylistReq _build() {
    _$GPlaylistReq _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GPlaylistReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GPlaylistReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
