// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_graph_requests.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetIsFollowingUserData> _$gGetIsFollowingUserDataSerializer =
    new _$GGetIsFollowingUserDataSerializer();
Serializer<GGetIsFollowingUserData_response>
    _$gGetIsFollowingUserDataResponseSerializer =
    new _$GGetIsFollowingUserData_responseSerializer();
Serializer<GGetIsFollowingUserData_response_data>
    _$gGetIsFollowingUserDataResponseDataSerializer =
    new _$GGetIsFollowingUserData_response_dataSerializer();
Serializer<GGetListOfFollowersPaginatedData>
    _$gGetListOfFollowersPaginatedDataSerializer =
    new _$GGetListOfFollowersPaginatedDataSerializer();
Serializer<GGetListOfFollowersPaginatedData_response>
    _$gGetListOfFollowersPaginatedDataResponseSerializer =
    new _$GGetListOfFollowersPaginatedData_responseSerializer();
Serializer<GGetListOfFollowersPaginatedData_response_data>
    _$gGetListOfFollowersPaginatedDataResponseDataSerializer =
    new _$GGetListOfFollowersPaginatedData_response_dataSerializer();
Serializer<GGetListOfFollowingPaginatedData>
    _$gGetListOfFollowingPaginatedDataSerializer =
    new _$GGetListOfFollowingPaginatedDataSerializer();
Serializer<GGetListOfFollowingPaginatedData_response>
    _$gGetListOfFollowingPaginatedDataResponseSerializer =
    new _$GGetListOfFollowingPaginatedData_responseSerializer();
Serializer<GGetListOfFollowingPaginatedData_response_data>
    _$gGetListOfFollowingPaginatedDataResponseDataSerializer =
    new _$GGetListOfFollowingPaginatedData_response_dataSerializer();
Serializer<GGetUserFollowCountsData> _$gGetUserFollowCountsDataSerializer =
    new _$GGetUserFollowCountsDataSerializer();
Serializer<GGetUserFollowCountsData_response>
    _$gGetUserFollowCountsDataResponseSerializer =
    new _$GGetUserFollowCountsData_responseSerializer();
Serializer<GGetUserFollowCountsData_response_data>
    _$gGetUserFollowCountsDataResponseDataSerializer =
    new _$GGetUserFollowCountsData_response_dataSerializer();
Serializer<GFollowUserData> _$gFollowUserDataSerializer =
    new _$GFollowUserDataSerializer();
Serializer<GFollowUserData_response> _$gFollowUserDataResponseSerializer =
    new _$GFollowUserData_responseSerializer();
Serializer<GUnFollowUserData> _$gUnFollowUserDataSerializer =
    new _$GUnFollowUserDataSerializer();
Serializer<GUnFollowUserData_response> _$gUnFollowUserDataResponseSerializer =
    new _$GUnFollowUserData_responseSerializer();
Serializer<GUserFollowRelationData> _$gUserFollowRelationDataSerializer =
    new _$GUserFollowRelationDataSerializer();
Serializer<GUserFollowCountsData> _$gUserFollowCountsDataSerializer =
    new _$GUserFollowCountsDataSerializer();

class _$GGetIsFollowingUserDataSerializer
    implements StructuredSerializer<GGetIsFollowingUserData> {
  @override
  final Iterable<Type> types = const [
    GGetIsFollowingUserData,
    _$GGetIsFollowingUserData
  ];
  @override
  final String wireName = 'GGetIsFollowingUserData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetIsFollowingUserData object,
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
            specifiedType: const FullType(GGetIsFollowingUserData_response)));
    }
    return result;
  }

  @override
  GGetIsFollowingUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetIsFollowingUserDataBuilder();

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
                      const FullType(GGetIsFollowingUserData_response))!
              as GGetIsFollowingUserData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetIsFollowingUserData_responseSerializer
    implements StructuredSerializer<GGetIsFollowingUserData_response> {
  @override
  final Iterable<Type> types = const [
    GGetIsFollowingUserData_response,
    _$GGetIsFollowingUserData_response
  ];
  @override
  final String wireName = 'GGetIsFollowingUserData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetIsFollowingUserData_response object,
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
            specifiedType:
                const FullType(GGetIsFollowingUserData_response_data)));
    }
    return result;
  }

  @override
  GGetIsFollowingUserData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetIsFollowingUserData_responseBuilder();

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
                  specifiedType:
                      const FullType(GGetIsFollowingUserData_response_data))!
              as GGetIsFollowingUserData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetIsFollowingUserData_response_dataSerializer
    implements StructuredSerializer<GGetIsFollowingUserData_response_data> {
  @override
  final Iterable<Type> types = const [
    GGetIsFollowingUserData_response_data,
    _$GGetIsFollowingUserData_response_data
  ];
  @override
  final String wireName = 'GGetIsFollowingUserData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetIsFollowingUserData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isFollowingUser',
      serializers.serialize(object.isFollowingUser,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GGetIsFollowingUserData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetIsFollowingUserData_response_dataBuilder();

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
        case 'isFollowingUser':
          result.isFollowingUser = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetListOfFollowersPaginatedDataSerializer
    implements StructuredSerializer<GGetListOfFollowersPaginatedData> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowersPaginatedData,
    _$GGetListOfFollowersPaginatedData
  ];
  @override
  final String wireName = 'GGetListOfFollowersPaginatedData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetListOfFollowersPaginatedData object,
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
                const FullType(GGetListOfFollowersPaginatedData_response)));
    }
    return result;
  }

  @override
  GGetListOfFollowersPaginatedData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowersPaginatedDataBuilder();

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
                  specifiedType: const FullType(
                      GGetListOfFollowersPaginatedData_response))!
              as GGetListOfFollowersPaginatedData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetListOfFollowersPaginatedData_responseSerializer
    implements StructuredSerializer<GGetListOfFollowersPaginatedData_response> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowersPaginatedData_response,
    _$GGetListOfFollowersPaginatedData_response
  ];
  @override
  final String wireName = 'GGetListOfFollowersPaginatedData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetListOfFollowersPaginatedData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GGetListOfFollowersPaginatedData_response_data)
          ])),
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
    return result;
  }

  @override
  GGetListOfFollowersPaginatedData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowersPaginatedData_responseBuilder();

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
                const FullType(GGetListOfFollowersPaginatedData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetListOfFollowersPaginatedData_response_dataSerializer
    implements
        StructuredSerializer<GGetListOfFollowersPaginatedData_response_data> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowersPaginatedData_response_data,
    _$GGetListOfFollowersPaginatedData_response_data
  ];
  @override
  final String wireName = 'GGetListOfFollowersPaginatedData_response_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetListOfFollowersPaginatedData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetListOfFollowersPaginatedData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowersPaginatedData_response_dataBuilder();

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
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetListOfFollowingPaginatedDataSerializer
    implements StructuredSerializer<GGetListOfFollowingPaginatedData> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowingPaginatedData,
    _$GGetListOfFollowingPaginatedData
  ];
  @override
  final String wireName = 'GGetListOfFollowingPaginatedData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetListOfFollowingPaginatedData object,
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
                const FullType(GGetListOfFollowingPaginatedData_response)));
    }
    return result;
  }

  @override
  GGetListOfFollowingPaginatedData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowingPaginatedDataBuilder();

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
                  specifiedType: const FullType(
                      GGetListOfFollowingPaginatedData_response))!
              as GGetListOfFollowingPaginatedData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetListOfFollowingPaginatedData_responseSerializer
    implements StructuredSerializer<GGetListOfFollowingPaginatedData_response> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowingPaginatedData_response,
    _$GGetListOfFollowingPaginatedData_response
  ];
  @override
  final String wireName = 'GGetListOfFollowingPaginatedData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetListOfFollowingPaginatedData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GGetListOfFollowingPaginatedData_response_data)
          ])),
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
    return result;
  }

  @override
  GGetListOfFollowingPaginatedData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowingPaginatedData_responseBuilder();

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
                const FullType(GGetListOfFollowingPaginatedData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetListOfFollowingPaginatedData_response_dataSerializer
    implements
        StructuredSerializer<GGetListOfFollowingPaginatedData_response_data> {
  @override
  final Iterable<Type> types = const [
    GGetListOfFollowingPaginatedData_response_data,
    _$GGetListOfFollowingPaginatedData_response_data
  ];
  @override
  final String wireName = 'GGetListOfFollowingPaginatedData_response_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetListOfFollowingPaginatedData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetListOfFollowingPaginatedData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetListOfFollowingPaginatedData_response_dataBuilder();

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
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserFollowCountsDataSerializer
    implements StructuredSerializer<GGetUserFollowCountsData> {
  @override
  final Iterable<Type> types = const [
    GGetUserFollowCountsData,
    _$GGetUserFollowCountsData
  ];
  @override
  final String wireName = 'GGetUserFollowCountsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserFollowCountsData object,
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
            specifiedType: const FullType(GGetUserFollowCountsData_response)));
    }
    return result;
  }

  @override
  GGetUserFollowCountsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserFollowCountsDataBuilder();

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
                      const FullType(GGetUserFollowCountsData_response))!
              as GGetUserFollowCountsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserFollowCountsData_responseSerializer
    implements StructuredSerializer<GGetUserFollowCountsData_response> {
  @override
  final Iterable<Type> types = const [
    GGetUserFollowCountsData_response,
    _$GGetUserFollowCountsData_response
  ];
  @override
  final String wireName = 'GGetUserFollowCountsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserFollowCountsData_response object,
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
            specifiedType:
                const FullType(GGetUserFollowCountsData_response_data)));
    }
    return result;
  }

  @override
  GGetUserFollowCountsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserFollowCountsData_responseBuilder();

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
                  specifiedType:
                      const FullType(GGetUserFollowCountsData_response_data))!
              as GGetUserFollowCountsData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserFollowCountsData_response_dataSerializer
    implements StructuredSerializer<GGetUserFollowCountsData_response_data> {
  @override
  final Iterable<Type> types = const [
    GGetUserFollowCountsData_response_data,
    _$GGetUserFollowCountsData_response_data
  ];
  @override
  final String wireName = 'GGetUserFollowCountsData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserFollowCountsData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'numberOfFollowers',
      serializers.serialize(object.numberOfFollowers,
          specifiedType: const FullType(int)),
      'numberOfFollowing',
      serializers.serialize(object.numberOfFollowing,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetUserFollowCountsData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserFollowCountsData_response_dataBuilder();

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
        case 'numberOfFollowers':
          result.numberOfFollowers = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfFollowing':
          result.numberOfFollowing = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GFollowUserDataSerializer
    implements StructuredSerializer<GFollowUserData> {
  @override
  final Iterable<Type> types = const [GFollowUserData, _$GFollowUserData];
  @override
  final String wireName = 'GFollowUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFollowUserData object,
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
            specifiedType: const FullType(GFollowUserData_response)));
    }
    return result;
  }

  @override
  GFollowUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFollowUserDataBuilder();

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
                  specifiedType: const FullType(GFollowUserData_response))!
              as GFollowUserData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GFollowUserData_responseSerializer
    implements StructuredSerializer<GFollowUserData_response> {
  @override
  final Iterable<Type> types = const [
    GFollowUserData_response,
    _$GFollowUserData_response
  ];
  @override
  final String wireName = 'GFollowUserData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFollowUserData_response object,
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
  GFollowUserData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFollowUserData_responseBuilder();

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

class _$GUnFollowUserDataSerializer
    implements StructuredSerializer<GUnFollowUserData> {
  @override
  final Iterable<Type> types = const [GUnFollowUserData, _$GUnFollowUserData];
  @override
  final String wireName = 'GUnFollowUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUnFollowUserData object,
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
            specifiedType: const FullType(GUnFollowUserData_response)));
    }
    return result;
  }

  @override
  GUnFollowUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnFollowUserDataBuilder();

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
                  specifiedType: const FullType(GUnFollowUserData_response))!
              as GUnFollowUserData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GUnFollowUserData_responseSerializer
    implements StructuredSerializer<GUnFollowUserData_response> {
  @override
  final Iterable<Type> types = const [
    GUnFollowUserData_response,
    _$GUnFollowUserData_response
  ];
  @override
  final String wireName = 'GUnFollowUserData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUnFollowUserData_response object,
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
  GUnFollowUserData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnFollowUserData_responseBuilder();

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

class _$GUserFollowRelationDataSerializer
    implements StructuredSerializer<GUserFollowRelationData> {
  @override
  final Iterable<Type> types = const [
    GUserFollowRelationData,
    _$GUserFollowRelationData
  ];
  @override
  final String wireName = 'GUserFollowRelationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserFollowRelationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserFollowRelationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserFollowRelationDataBuilder();

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
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserFollowCountsDataSerializer
    implements StructuredSerializer<GUserFollowCountsData> {
  @override
  final Iterable<Type> types = const [
    GUserFollowCountsData,
    _$GUserFollowCountsData
  ];
  @override
  final String wireName = 'GUserFollowCountsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserFollowCountsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'numberOfFollowers',
      serializers.serialize(object.numberOfFollowers,
          specifiedType: const FullType(int)),
      'numberOfFollowing',
      serializers.serialize(object.numberOfFollowing,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GUserFollowCountsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserFollowCountsDataBuilder();

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
        case 'numberOfFollowers':
          result.numberOfFollowers = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfFollowing':
          result.numberOfFollowing = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetIsFollowingUserData extends GGetIsFollowingUserData {
  @override
  final String G__typename;
  @override
  final GGetIsFollowingUserData_response? response;

  factory _$GGetIsFollowingUserData(
          [void Function(GGetIsFollowingUserDataBuilder)? updates]) =>
      (new GGetIsFollowingUserDataBuilder()..update(updates))._build();

  _$GGetIsFollowingUserData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetIsFollowingUserData', 'G__typename');
  }

  @override
  GGetIsFollowingUserData rebuild(
          void Function(GGetIsFollowingUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetIsFollowingUserDataBuilder toBuilder() =>
      new GGetIsFollowingUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetIsFollowingUserData &&
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
    return (newBuiltValueToStringHelper(r'GGetIsFollowingUserData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GGetIsFollowingUserDataBuilder
    implements
        Builder<GGetIsFollowingUserData, GGetIsFollowingUserDataBuilder> {
  _$GGetIsFollowingUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetIsFollowingUserData_responseBuilder? _response;
  GGetIsFollowingUserData_responseBuilder get response =>
      _$this._response ??= new GGetIsFollowingUserData_responseBuilder();
  set response(GGetIsFollowingUserData_responseBuilder? response) =>
      _$this._response = response;

  GGetIsFollowingUserDataBuilder() {
    GGetIsFollowingUserData._initializeBuilder(this);
  }

  GGetIsFollowingUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetIsFollowingUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetIsFollowingUserData;
  }

  @override
  void update(void Function(GGetIsFollowingUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetIsFollowingUserData build() => _build();

  _$GGetIsFollowingUserData _build() {
    _$GGetIsFollowingUserData _$result;
    try {
      _$result = _$v ??
          new _$GGetIsFollowingUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetIsFollowingUserData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetIsFollowingUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetIsFollowingUserData_response
    extends GGetIsFollowingUserData_response {
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
  final GGetIsFollowingUserData_response_data? data;

  factory _$GGetIsFollowingUserData_response(
          [void Function(GGetIsFollowingUserData_responseBuilder)? updates]) =>
      (new GGetIsFollowingUserData_responseBuilder()..update(updates))._build();

  _$GGetIsFollowingUserData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetIsFollowingUserData_response', 'G__typename');
  }

  @override
  GGetIsFollowingUserData_response rebuild(
          void Function(GGetIsFollowingUserData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetIsFollowingUserData_responseBuilder toBuilder() =>
      new GGetIsFollowingUserData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetIsFollowingUserData_response &&
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
    return (newBuiltValueToStringHelper(r'GGetIsFollowingUserData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GGetIsFollowingUserData_responseBuilder
    implements
        Builder<GGetIsFollowingUserData_response,
            GGetIsFollowingUserData_responseBuilder> {
  _$GGetIsFollowingUserData_response? _$v;

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

  GGetIsFollowingUserData_response_dataBuilder? _data;
  GGetIsFollowingUserData_response_dataBuilder get data =>
      _$this._data ??= new GGetIsFollowingUserData_response_dataBuilder();
  set data(GGetIsFollowingUserData_response_dataBuilder? data) =>
      _$this._data = data;

  GGetIsFollowingUserData_responseBuilder() {
    GGetIsFollowingUserData_response._initializeBuilder(this);
  }

  GGetIsFollowingUserData_responseBuilder get _$this {
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
  void replace(GGetIsFollowingUserData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetIsFollowingUserData_response;
  }

  @override
  void update(void Function(GGetIsFollowingUserData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetIsFollowingUserData_response build() => _build();

  _$GGetIsFollowingUserData_response _build() {
    _$GGetIsFollowingUserData_response _$result;
    try {
      _$result = _$v ??
          new _$GGetIsFollowingUserData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetIsFollowingUserData_response', 'G__typename'),
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
            r'GGetIsFollowingUserData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetIsFollowingUserData_response_data
    extends GGetIsFollowingUserData_response_data {
  @override
  final String G__typename;
  @override
  final bool isFollowingUser;

  factory _$GGetIsFollowingUserData_response_data(
          [void Function(GGetIsFollowingUserData_response_dataBuilder)?
              updates]) =>
      (new GGetIsFollowingUserData_response_dataBuilder()..update(updates))
          ._build();

  _$GGetIsFollowingUserData_response_data._(
      {required this.G__typename, required this.isFollowingUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetIsFollowingUserData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(isFollowingUser,
        r'GGetIsFollowingUserData_response_data', 'isFollowingUser');
  }

  @override
  GGetIsFollowingUserData_response_data rebuild(
          void Function(GGetIsFollowingUserData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetIsFollowingUserData_response_dataBuilder toBuilder() =>
      new GGetIsFollowingUserData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetIsFollowingUserData_response_data &&
        G__typename == other.G__typename &&
        isFollowingUser == other.isFollowingUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, isFollowingUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetIsFollowingUserData_response_data')
          ..add('G__typename', G__typename)
          ..add('isFollowingUser', isFollowingUser))
        .toString();
  }
}

class GGetIsFollowingUserData_response_dataBuilder
    implements
        Builder<GGetIsFollowingUserData_response_data,
            GGetIsFollowingUserData_response_dataBuilder> {
  _$GGetIsFollowingUserData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isFollowingUser;
  bool? get isFollowingUser => _$this._isFollowingUser;
  set isFollowingUser(bool? isFollowingUser) =>
      _$this._isFollowingUser = isFollowingUser;

  GGetIsFollowingUserData_response_dataBuilder() {
    GGetIsFollowingUserData_response_data._initializeBuilder(this);
  }

  GGetIsFollowingUserData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isFollowingUser = $v.isFollowingUser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetIsFollowingUserData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetIsFollowingUserData_response_data;
  }

  @override
  void update(
      void Function(GGetIsFollowingUserData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetIsFollowingUserData_response_data build() => _build();

  _$GGetIsFollowingUserData_response_data _build() {
    final _$result = _$v ??
        new _$GGetIsFollowingUserData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GGetIsFollowingUserData_response_data', 'G__typename'),
            isFollowingUser: BuiltValueNullFieldError.checkNotNull(
                isFollowingUser,
                r'GGetIsFollowingUserData_response_data',
                'isFollowingUser'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowersPaginatedData
    extends GGetListOfFollowersPaginatedData {
  @override
  final String G__typename;
  @override
  final GGetListOfFollowersPaginatedData_response? response;

  factory _$GGetListOfFollowersPaginatedData(
          [void Function(GGetListOfFollowersPaginatedDataBuilder)? updates]) =>
      (new GGetListOfFollowersPaginatedDataBuilder()..update(updates))._build();

  _$GGetListOfFollowersPaginatedData._(
      {required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetListOfFollowersPaginatedData', 'G__typename');
  }

  @override
  GGetListOfFollowersPaginatedData rebuild(
          void Function(GGetListOfFollowersPaginatedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowersPaginatedDataBuilder toBuilder() =>
      new GGetListOfFollowersPaginatedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetListOfFollowersPaginatedData &&
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
    return (newBuiltValueToStringHelper(r'GGetListOfFollowersPaginatedData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GGetListOfFollowersPaginatedDataBuilder
    implements
        Builder<GGetListOfFollowersPaginatedData,
            GGetListOfFollowersPaginatedDataBuilder> {
  _$GGetListOfFollowersPaginatedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetListOfFollowersPaginatedData_responseBuilder? _response;
  GGetListOfFollowersPaginatedData_responseBuilder get response =>
      _$this._response ??=
          new GGetListOfFollowersPaginatedData_responseBuilder();
  set response(GGetListOfFollowersPaginatedData_responseBuilder? response) =>
      _$this._response = response;

  GGetListOfFollowersPaginatedDataBuilder() {
    GGetListOfFollowersPaginatedData._initializeBuilder(this);
  }

  GGetListOfFollowersPaginatedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetListOfFollowersPaginatedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowersPaginatedData;
  }

  @override
  void update(void Function(GGetListOfFollowersPaginatedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowersPaginatedData build() => _build();

  _$GGetListOfFollowersPaginatedData _build() {
    _$GGetListOfFollowersPaginatedData _$result;
    try {
      _$result = _$v ??
          new _$GGetListOfFollowersPaginatedData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetListOfFollowersPaginatedData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetListOfFollowersPaginatedData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowersPaginatedData_response
    extends GGetListOfFollowersPaginatedData_response {
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
  final BuiltList<GGetListOfFollowersPaginatedData_response_data> data;

  factory _$GGetListOfFollowersPaginatedData_response(
          [void Function(GGetListOfFollowersPaginatedData_responseBuilder)?
              updates]) =>
      (new GGetListOfFollowersPaginatedData_responseBuilder()..update(updates))
          ._build();

  _$GGetListOfFollowersPaginatedData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetListOfFollowersPaginatedData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GGetListOfFollowersPaginatedData_response', 'data');
  }

  @override
  GGetListOfFollowersPaginatedData_response rebuild(
          void Function(GGetListOfFollowersPaginatedData_responseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowersPaginatedData_responseBuilder toBuilder() =>
      new GGetListOfFollowersPaginatedData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetListOfFollowersPaginatedData_response &&
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
            r'GGetListOfFollowersPaginatedData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GGetListOfFollowersPaginatedData_responseBuilder
    implements
        Builder<GGetListOfFollowersPaginatedData_response,
            GGetListOfFollowersPaginatedData_responseBuilder> {
  _$GGetListOfFollowersPaginatedData_response? _$v;

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

  ListBuilder<GGetListOfFollowersPaginatedData_response_data>? _data;
  ListBuilder<GGetListOfFollowersPaginatedData_response_data> get data =>
      _$this._data ??=
          new ListBuilder<GGetListOfFollowersPaginatedData_response_data>();
  set data(ListBuilder<GGetListOfFollowersPaginatedData_response_data>? data) =>
      _$this._data = data;

  GGetListOfFollowersPaginatedData_responseBuilder() {
    GGetListOfFollowersPaginatedData_response._initializeBuilder(this);
  }

  GGetListOfFollowersPaginatedData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetListOfFollowersPaginatedData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowersPaginatedData_response;
  }

  @override
  void update(
      void Function(GGetListOfFollowersPaginatedData_responseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowersPaginatedData_response build() => _build();

  _$GGetListOfFollowersPaginatedData_response _build() {
    _$GGetListOfFollowersPaginatedData_response _$result;
    try {
      _$result = _$v ??
          new _$GGetListOfFollowersPaginatedData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetListOfFollowersPaginatedData_response', 'G__typename'),
              error: error,
              message: message,
              statusCode: statusCode,
              errorCodeForClient: errorCodeForClient,
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetListOfFollowersPaginatedData_response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowersPaginatedData_response_data
    extends GGetListOfFollowersPaginatedData_response_data {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String createdOn;

  factory _$GGetListOfFollowersPaginatedData_response_data(
          [void Function(GGetListOfFollowersPaginatedData_response_dataBuilder)?
              updates]) =>
      (new GGetListOfFollowersPaginatedData_response_dataBuilder()
            ..update(updates))
          ._build();

  _$GGetListOfFollowersPaginatedData_response_data._(
      {required this.G__typename,
      required this.userId,
      required this.createdOn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetListOfFollowersPaginatedData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetListOfFollowersPaginatedData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(createdOn,
        r'GGetListOfFollowersPaginatedData_response_data', 'createdOn');
  }

  @override
  GGetListOfFollowersPaginatedData_response_data rebuild(
          void Function(GGetListOfFollowersPaginatedData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowersPaginatedData_response_dataBuilder toBuilder() =>
      new GGetListOfFollowersPaginatedData_response_dataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetListOfFollowersPaginatedData_response_data &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        createdOn == other.createdOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetListOfFollowersPaginatedData_response_data')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('createdOn', createdOn))
        .toString();
  }
}

class GGetListOfFollowersPaginatedData_response_dataBuilder
    implements
        Builder<GGetListOfFollowersPaginatedData_response_data,
            GGetListOfFollowersPaginatedData_response_dataBuilder> {
  _$GGetListOfFollowersPaginatedData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  GGetListOfFollowersPaginatedData_response_dataBuilder() {
    GGetListOfFollowersPaginatedData_response_data._initializeBuilder(this);
  }

  GGetListOfFollowersPaginatedData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _createdOn = $v.createdOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetListOfFollowersPaginatedData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowersPaginatedData_response_data;
  }

  @override
  void update(
      void Function(GGetListOfFollowersPaginatedData_response_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowersPaginatedData_response_data build() => _build();

  _$GGetListOfFollowersPaginatedData_response_data _build() {
    final _$result = _$v ??
        new _$GGetListOfFollowersPaginatedData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GGetListOfFollowersPaginatedData_response_data',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(userId,
                r'GGetListOfFollowersPaginatedData_response_data', 'userId'),
            createdOn: BuiltValueNullFieldError.checkNotNull(
                createdOn,
                r'GGetListOfFollowersPaginatedData_response_data',
                'createdOn'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowingPaginatedData
    extends GGetListOfFollowingPaginatedData {
  @override
  final String G__typename;
  @override
  final GGetListOfFollowingPaginatedData_response? response;

  factory _$GGetListOfFollowingPaginatedData(
          [void Function(GGetListOfFollowingPaginatedDataBuilder)? updates]) =>
      (new GGetListOfFollowingPaginatedDataBuilder()..update(updates))._build();

  _$GGetListOfFollowingPaginatedData._(
      {required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetListOfFollowingPaginatedData', 'G__typename');
  }

  @override
  GGetListOfFollowingPaginatedData rebuild(
          void Function(GGetListOfFollowingPaginatedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowingPaginatedDataBuilder toBuilder() =>
      new GGetListOfFollowingPaginatedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetListOfFollowingPaginatedData &&
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
    return (newBuiltValueToStringHelper(r'GGetListOfFollowingPaginatedData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GGetListOfFollowingPaginatedDataBuilder
    implements
        Builder<GGetListOfFollowingPaginatedData,
            GGetListOfFollowingPaginatedDataBuilder> {
  _$GGetListOfFollowingPaginatedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetListOfFollowingPaginatedData_responseBuilder? _response;
  GGetListOfFollowingPaginatedData_responseBuilder get response =>
      _$this._response ??=
          new GGetListOfFollowingPaginatedData_responseBuilder();
  set response(GGetListOfFollowingPaginatedData_responseBuilder? response) =>
      _$this._response = response;

  GGetListOfFollowingPaginatedDataBuilder() {
    GGetListOfFollowingPaginatedData._initializeBuilder(this);
  }

  GGetListOfFollowingPaginatedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetListOfFollowingPaginatedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowingPaginatedData;
  }

  @override
  void update(void Function(GGetListOfFollowingPaginatedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowingPaginatedData build() => _build();

  _$GGetListOfFollowingPaginatedData _build() {
    _$GGetListOfFollowingPaginatedData _$result;
    try {
      _$result = _$v ??
          new _$GGetListOfFollowingPaginatedData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetListOfFollowingPaginatedData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetListOfFollowingPaginatedData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowingPaginatedData_response
    extends GGetListOfFollowingPaginatedData_response {
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
  final BuiltList<GGetListOfFollowingPaginatedData_response_data> data;

  factory _$GGetListOfFollowingPaginatedData_response(
          [void Function(GGetListOfFollowingPaginatedData_responseBuilder)?
              updates]) =>
      (new GGetListOfFollowingPaginatedData_responseBuilder()..update(updates))
          ._build();

  _$GGetListOfFollowingPaginatedData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetListOfFollowingPaginatedData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GGetListOfFollowingPaginatedData_response', 'data');
  }

  @override
  GGetListOfFollowingPaginatedData_response rebuild(
          void Function(GGetListOfFollowingPaginatedData_responseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowingPaginatedData_responseBuilder toBuilder() =>
      new GGetListOfFollowingPaginatedData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetListOfFollowingPaginatedData_response &&
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
            r'GGetListOfFollowingPaginatedData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GGetListOfFollowingPaginatedData_responseBuilder
    implements
        Builder<GGetListOfFollowingPaginatedData_response,
            GGetListOfFollowingPaginatedData_responseBuilder> {
  _$GGetListOfFollowingPaginatedData_response? _$v;

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

  ListBuilder<GGetListOfFollowingPaginatedData_response_data>? _data;
  ListBuilder<GGetListOfFollowingPaginatedData_response_data> get data =>
      _$this._data ??=
          new ListBuilder<GGetListOfFollowingPaginatedData_response_data>();
  set data(ListBuilder<GGetListOfFollowingPaginatedData_response_data>? data) =>
      _$this._data = data;

  GGetListOfFollowingPaginatedData_responseBuilder() {
    GGetListOfFollowingPaginatedData_response._initializeBuilder(this);
  }

  GGetListOfFollowingPaginatedData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetListOfFollowingPaginatedData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowingPaginatedData_response;
  }

  @override
  void update(
      void Function(GGetListOfFollowingPaginatedData_responseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowingPaginatedData_response build() => _build();

  _$GGetListOfFollowingPaginatedData_response _build() {
    _$GGetListOfFollowingPaginatedData_response _$result;
    try {
      _$result = _$v ??
          new _$GGetListOfFollowingPaginatedData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetListOfFollowingPaginatedData_response', 'G__typename'),
              error: error,
              message: message,
              statusCode: statusCode,
              errorCodeForClient: errorCodeForClient,
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetListOfFollowingPaginatedData_response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetListOfFollowingPaginatedData_response_data
    extends GGetListOfFollowingPaginatedData_response_data {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String createdOn;

  factory _$GGetListOfFollowingPaginatedData_response_data(
          [void Function(GGetListOfFollowingPaginatedData_response_dataBuilder)?
              updates]) =>
      (new GGetListOfFollowingPaginatedData_response_dataBuilder()
            ..update(updates))
          ._build();

  _$GGetListOfFollowingPaginatedData_response_data._(
      {required this.G__typename,
      required this.userId,
      required this.createdOn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetListOfFollowingPaginatedData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetListOfFollowingPaginatedData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(createdOn,
        r'GGetListOfFollowingPaginatedData_response_data', 'createdOn');
  }

  @override
  GGetListOfFollowingPaginatedData_response_data rebuild(
          void Function(GGetListOfFollowingPaginatedData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetListOfFollowingPaginatedData_response_dataBuilder toBuilder() =>
      new GGetListOfFollowingPaginatedData_response_dataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetListOfFollowingPaginatedData_response_data &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        createdOn == other.createdOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetListOfFollowingPaginatedData_response_data')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('createdOn', createdOn))
        .toString();
  }
}

class GGetListOfFollowingPaginatedData_response_dataBuilder
    implements
        Builder<GGetListOfFollowingPaginatedData_response_data,
            GGetListOfFollowingPaginatedData_response_dataBuilder> {
  _$GGetListOfFollowingPaginatedData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  GGetListOfFollowingPaginatedData_response_dataBuilder() {
    GGetListOfFollowingPaginatedData_response_data._initializeBuilder(this);
  }

  GGetListOfFollowingPaginatedData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _createdOn = $v.createdOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetListOfFollowingPaginatedData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetListOfFollowingPaginatedData_response_data;
  }

  @override
  void update(
      void Function(GGetListOfFollowingPaginatedData_response_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetListOfFollowingPaginatedData_response_data build() => _build();

  _$GGetListOfFollowingPaginatedData_response_data _build() {
    final _$result = _$v ??
        new _$GGetListOfFollowingPaginatedData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GGetListOfFollowingPaginatedData_response_data',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(userId,
                r'GGetListOfFollowingPaginatedData_response_data', 'userId'),
            createdOn: BuiltValueNullFieldError.checkNotNull(
                createdOn,
                r'GGetListOfFollowingPaginatedData_response_data',
                'createdOn'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserFollowCountsData extends GGetUserFollowCountsData {
  @override
  final String G__typename;
  @override
  final GGetUserFollowCountsData_response? response;

  factory _$GGetUserFollowCountsData(
          [void Function(GGetUserFollowCountsDataBuilder)? updates]) =>
      (new GGetUserFollowCountsDataBuilder()..update(updates))._build();

  _$GGetUserFollowCountsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserFollowCountsData', 'G__typename');
  }

  @override
  GGetUserFollowCountsData rebuild(
          void Function(GGetUserFollowCountsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserFollowCountsDataBuilder toBuilder() =>
      new GGetUserFollowCountsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserFollowCountsData &&
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
    return (newBuiltValueToStringHelper(r'GGetUserFollowCountsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GGetUserFollowCountsDataBuilder
    implements
        Builder<GGetUserFollowCountsData, GGetUserFollowCountsDataBuilder> {
  _$GGetUserFollowCountsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserFollowCountsData_responseBuilder? _response;
  GGetUserFollowCountsData_responseBuilder get response =>
      _$this._response ??= new GGetUserFollowCountsData_responseBuilder();
  set response(GGetUserFollowCountsData_responseBuilder? response) =>
      _$this._response = response;

  GGetUserFollowCountsDataBuilder() {
    GGetUserFollowCountsData._initializeBuilder(this);
  }

  GGetUserFollowCountsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserFollowCountsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserFollowCountsData;
  }

  @override
  void update(void Function(GGetUserFollowCountsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserFollowCountsData build() => _build();

  _$GGetUserFollowCountsData _build() {
    _$GGetUserFollowCountsData _$result;
    try {
      _$result = _$v ??
          new _$GGetUserFollowCountsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetUserFollowCountsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetUserFollowCountsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserFollowCountsData_response
    extends GGetUserFollowCountsData_response {
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
  final GGetUserFollowCountsData_response_data? data;

  factory _$GGetUserFollowCountsData_response(
          [void Function(GGetUserFollowCountsData_responseBuilder)? updates]) =>
      (new GGetUserFollowCountsData_responseBuilder()..update(updates))
          ._build();

  _$GGetUserFollowCountsData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserFollowCountsData_response', 'G__typename');
  }

  @override
  GGetUserFollowCountsData_response rebuild(
          void Function(GGetUserFollowCountsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserFollowCountsData_responseBuilder toBuilder() =>
      new GGetUserFollowCountsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserFollowCountsData_response &&
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
    return (newBuiltValueToStringHelper(r'GGetUserFollowCountsData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GGetUserFollowCountsData_responseBuilder
    implements
        Builder<GGetUserFollowCountsData_response,
            GGetUserFollowCountsData_responseBuilder> {
  _$GGetUserFollowCountsData_response? _$v;

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

  GGetUserFollowCountsData_response_dataBuilder? _data;
  GGetUserFollowCountsData_response_dataBuilder get data =>
      _$this._data ??= new GGetUserFollowCountsData_response_dataBuilder();
  set data(GGetUserFollowCountsData_response_dataBuilder? data) =>
      _$this._data = data;

  GGetUserFollowCountsData_responseBuilder() {
    GGetUserFollowCountsData_response._initializeBuilder(this);
  }

  GGetUserFollowCountsData_responseBuilder get _$this {
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
  void replace(GGetUserFollowCountsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserFollowCountsData_response;
  }

  @override
  void update(
      void Function(GGetUserFollowCountsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserFollowCountsData_response build() => _build();

  _$GGetUserFollowCountsData_response _build() {
    _$GGetUserFollowCountsData_response _$result;
    try {
      _$result = _$v ??
          new _$GGetUserFollowCountsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetUserFollowCountsData_response', 'G__typename'),
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
            r'GGetUserFollowCountsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserFollowCountsData_response_data
    extends GGetUserFollowCountsData_response_data {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final int numberOfFollowers;
  @override
  final int numberOfFollowing;

  factory _$GGetUserFollowCountsData_response_data(
          [void Function(GGetUserFollowCountsData_response_dataBuilder)?
              updates]) =>
      (new GGetUserFollowCountsData_response_dataBuilder()..update(updates))
          ._build();

  _$GGetUserFollowCountsData_response_data._(
      {required this.G__typename,
      required this.userId,
      required this.numberOfFollowers,
      required this.numberOfFollowing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserFollowCountsData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetUserFollowCountsData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(numberOfFollowers,
        r'GGetUserFollowCountsData_response_data', 'numberOfFollowers');
    BuiltValueNullFieldError.checkNotNull(numberOfFollowing,
        r'GGetUserFollowCountsData_response_data', 'numberOfFollowing');
  }

  @override
  GGetUserFollowCountsData_response_data rebuild(
          void Function(GGetUserFollowCountsData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserFollowCountsData_response_dataBuilder toBuilder() =>
      new GGetUserFollowCountsData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserFollowCountsData_response_data &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        numberOfFollowers == other.numberOfFollowers &&
        numberOfFollowing == other.numberOfFollowing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, numberOfFollowers.hashCode);
    _$hash = $jc(_$hash, numberOfFollowing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetUserFollowCountsData_response_data')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('numberOfFollowers', numberOfFollowers)
          ..add('numberOfFollowing', numberOfFollowing))
        .toString();
  }
}

class GGetUserFollowCountsData_response_dataBuilder
    implements
        Builder<GGetUserFollowCountsData_response_data,
            GGetUserFollowCountsData_response_dataBuilder> {
  _$GGetUserFollowCountsData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _numberOfFollowers;
  int? get numberOfFollowers => _$this._numberOfFollowers;
  set numberOfFollowers(int? numberOfFollowers) =>
      _$this._numberOfFollowers = numberOfFollowers;

  int? _numberOfFollowing;
  int? get numberOfFollowing => _$this._numberOfFollowing;
  set numberOfFollowing(int? numberOfFollowing) =>
      _$this._numberOfFollowing = numberOfFollowing;

  GGetUserFollowCountsData_response_dataBuilder() {
    GGetUserFollowCountsData_response_data._initializeBuilder(this);
  }

  GGetUserFollowCountsData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _numberOfFollowers = $v.numberOfFollowers;
      _numberOfFollowing = $v.numberOfFollowing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserFollowCountsData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserFollowCountsData_response_data;
  }

  @override
  void update(
      void Function(GGetUserFollowCountsData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserFollowCountsData_response_data build() => _build();

  _$GGetUserFollowCountsData_response_data _build() {
    final _$result = _$v ??
        new _$GGetUserFollowCountsData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GGetUserFollowCountsData_response_data', 'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GGetUserFollowCountsData_response_data', 'userId'),
            numberOfFollowers: BuiltValueNullFieldError.checkNotNull(
                numberOfFollowers,
                r'GGetUserFollowCountsData_response_data',
                'numberOfFollowers'),
            numberOfFollowing: BuiltValueNullFieldError.checkNotNull(
                numberOfFollowing,
                r'GGetUserFollowCountsData_response_data',
                'numberOfFollowing'));
    replace(_$result);
    return _$result;
  }
}

class _$GFollowUserData extends GFollowUserData {
  @override
  final String G__typename;
  @override
  final GFollowUserData_response? response;

  factory _$GFollowUserData([void Function(GFollowUserDataBuilder)? updates]) =>
      (new GFollowUserDataBuilder()..update(updates))._build();

  _$GFollowUserData._({required this.G__typename, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFollowUserData', 'G__typename');
  }

  @override
  GFollowUserData rebuild(void Function(GFollowUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFollowUserDataBuilder toBuilder() =>
      new GFollowUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFollowUserData &&
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
    return (newBuiltValueToStringHelper(r'GFollowUserData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GFollowUserDataBuilder
    implements Builder<GFollowUserData, GFollowUserDataBuilder> {
  _$GFollowUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFollowUserData_responseBuilder? _response;
  GFollowUserData_responseBuilder get response =>
      _$this._response ??= new GFollowUserData_responseBuilder();
  set response(GFollowUserData_responseBuilder? response) =>
      _$this._response = response;

  GFollowUserDataBuilder() {
    GFollowUserData._initializeBuilder(this);
  }

  GFollowUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFollowUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFollowUserData;
  }

  @override
  void update(void Function(GFollowUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFollowUserData build() => _build();

  _$GFollowUserData _build() {
    _$GFollowUserData _$result;
    try {
      _$result = _$v ??
          new _$GFollowUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFollowUserData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFollowUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFollowUserData_response extends GFollowUserData_response {
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

  factory _$GFollowUserData_response(
          [void Function(GFollowUserData_responseBuilder)? updates]) =>
      (new GFollowUserData_responseBuilder()..update(updates))._build();

  _$GFollowUserData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFollowUserData_response', 'G__typename');
  }

  @override
  GFollowUserData_response rebuild(
          void Function(GFollowUserData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFollowUserData_responseBuilder toBuilder() =>
      new GFollowUserData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFollowUserData_response &&
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
    return (newBuiltValueToStringHelper(r'GFollowUserData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GFollowUserData_responseBuilder
    implements
        Builder<GFollowUserData_response, GFollowUserData_responseBuilder> {
  _$GFollowUserData_response? _$v;

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

  GFollowUserData_responseBuilder() {
    GFollowUserData_response._initializeBuilder(this);
  }

  GFollowUserData_responseBuilder get _$this {
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
  void replace(GFollowUserData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFollowUserData_response;
  }

  @override
  void update(void Function(GFollowUserData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFollowUserData_response build() => _build();

  _$GFollowUserData_response _build() {
    final _$result = _$v ??
        new _$GFollowUserData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GFollowUserData_response', 'G__typename'),
            error: error,
            message: message,
            statusCode: statusCode,
            errorCodeForClient: errorCodeForClient,
            data: data);
    replace(_$result);
    return _$result;
  }
}

class _$GUnFollowUserData extends GUnFollowUserData {
  @override
  final String G__typename;
  @override
  final GUnFollowUserData_response? response;

  factory _$GUnFollowUserData(
          [void Function(GUnFollowUserDataBuilder)? updates]) =>
      (new GUnFollowUserDataBuilder()..update(updates))._build();

  _$GUnFollowUserData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUnFollowUserData', 'G__typename');
  }

  @override
  GUnFollowUserData rebuild(void Function(GUnFollowUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnFollowUserDataBuilder toBuilder() =>
      new GUnFollowUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUnFollowUserData &&
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
    return (newBuiltValueToStringHelper(r'GUnFollowUserData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GUnFollowUserDataBuilder
    implements Builder<GUnFollowUserData, GUnFollowUserDataBuilder> {
  _$GUnFollowUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUnFollowUserData_responseBuilder? _response;
  GUnFollowUserData_responseBuilder get response =>
      _$this._response ??= new GUnFollowUserData_responseBuilder();
  set response(GUnFollowUserData_responseBuilder? response) =>
      _$this._response = response;

  GUnFollowUserDataBuilder() {
    GUnFollowUserData._initializeBuilder(this);
  }

  GUnFollowUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUnFollowUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnFollowUserData;
  }

  @override
  void update(void Function(GUnFollowUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnFollowUserData build() => _build();

  _$GUnFollowUserData _build() {
    _$GUnFollowUserData _$result;
    try {
      _$result = _$v ??
          new _$GUnFollowUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUnFollowUserData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUnFollowUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUnFollowUserData_response extends GUnFollowUserData_response {
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

  factory _$GUnFollowUserData_response(
          [void Function(GUnFollowUserData_responseBuilder)? updates]) =>
      (new GUnFollowUserData_responseBuilder()..update(updates))._build();

  _$GUnFollowUserData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUnFollowUserData_response', 'G__typename');
  }

  @override
  GUnFollowUserData_response rebuild(
          void Function(GUnFollowUserData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnFollowUserData_responseBuilder toBuilder() =>
      new GUnFollowUserData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUnFollowUserData_response &&
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
    return (newBuiltValueToStringHelper(r'GUnFollowUserData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GUnFollowUserData_responseBuilder
    implements
        Builder<GUnFollowUserData_response, GUnFollowUserData_responseBuilder> {
  _$GUnFollowUserData_response? _$v;

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

  GUnFollowUserData_responseBuilder() {
    GUnFollowUserData_response._initializeBuilder(this);
  }

  GUnFollowUserData_responseBuilder get _$this {
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
  void replace(GUnFollowUserData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnFollowUserData_response;
  }

  @override
  void update(void Function(GUnFollowUserData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnFollowUserData_response build() => _build();

  _$GUnFollowUserData_response _build() {
    final _$result = _$v ??
        new _$GUnFollowUserData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUnFollowUserData_response', 'G__typename'),
            error: error,
            message: message,
            statusCode: statusCode,
            errorCodeForClient: errorCodeForClient,
            data: data);
    replace(_$result);
    return _$result;
  }
}

class _$GUserFollowRelationData extends GUserFollowRelationData {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String createdOn;

  factory _$GUserFollowRelationData(
          [void Function(GUserFollowRelationDataBuilder)? updates]) =>
      (new GUserFollowRelationDataBuilder()..update(updates))._build();

  _$GUserFollowRelationData._(
      {required this.G__typename,
      required this.userId,
      required this.createdOn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserFollowRelationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GUserFollowRelationData', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        createdOn, r'GUserFollowRelationData', 'createdOn');
  }

  @override
  GUserFollowRelationData rebuild(
          void Function(GUserFollowRelationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFollowRelationDataBuilder toBuilder() =>
      new GUserFollowRelationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFollowRelationData &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        createdOn == other.createdOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserFollowRelationData')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('createdOn', createdOn))
        .toString();
  }
}

class GUserFollowRelationDataBuilder
    implements
        Builder<GUserFollowRelationData, GUserFollowRelationDataBuilder> {
  _$GUserFollowRelationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  GUserFollowRelationDataBuilder() {
    GUserFollowRelationData._initializeBuilder(this);
  }

  GUserFollowRelationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _createdOn = $v.createdOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserFollowRelationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFollowRelationData;
  }

  @override
  void update(void Function(GUserFollowRelationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFollowRelationData build() => _build();

  _$GUserFollowRelationData _build() {
    final _$result = _$v ??
        new _$GUserFollowRelationData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserFollowRelationData', 'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GUserFollowRelationData', 'userId'),
            createdOn: BuiltValueNullFieldError.checkNotNull(
                createdOn, r'GUserFollowRelationData', 'createdOn'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserFollowCountsData extends GUserFollowCountsData {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final int numberOfFollowers;
  @override
  final int numberOfFollowing;

  factory _$GUserFollowCountsData(
          [void Function(GUserFollowCountsDataBuilder)? updates]) =>
      (new GUserFollowCountsDataBuilder()..update(updates))._build();

  _$GUserFollowCountsData._(
      {required this.G__typename,
      required this.userId,
      required this.numberOfFollowers,
      required this.numberOfFollowing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserFollowCountsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GUserFollowCountsData', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        numberOfFollowers, r'GUserFollowCountsData', 'numberOfFollowers');
    BuiltValueNullFieldError.checkNotNull(
        numberOfFollowing, r'GUserFollowCountsData', 'numberOfFollowing');
  }

  @override
  GUserFollowCountsData rebuild(
          void Function(GUserFollowCountsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFollowCountsDataBuilder toBuilder() =>
      new GUserFollowCountsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFollowCountsData &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        numberOfFollowers == other.numberOfFollowers &&
        numberOfFollowing == other.numberOfFollowing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, numberOfFollowers.hashCode);
    _$hash = $jc(_$hash, numberOfFollowing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserFollowCountsData')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('numberOfFollowers', numberOfFollowers)
          ..add('numberOfFollowing', numberOfFollowing))
        .toString();
  }
}

class GUserFollowCountsDataBuilder
    implements Builder<GUserFollowCountsData, GUserFollowCountsDataBuilder> {
  _$GUserFollowCountsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _numberOfFollowers;
  int? get numberOfFollowers => _$this._numberOfFollowers;
  set numberOfFollowers(int? numberOfFollowers) =>
      _$this._numberOfFollowers = numberOfFollowers;

  int? _numberOfFollowing;
  int? get numberOfFollowing => _$this._numberOfFollowing;
  set numberOfFollowing(int? numberOfFollowing) =>
      _$this._numberOfFollowing = numberOfFollowing;

  GUserFollowCountsDataBuilder() {
    GUserFollowCountsData._initializeBuilder(this);
  }

  GUserFollowCountsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _numberOfFollowers = $v.numberOfFollowers;
      _numberOfFollowing = $v.numberOfFollowing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserFollowCountsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFollowCountsData;
  }

  @override
  void update(void Function(GUserFollowCountsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFollowCountsData build() => _build();

  _$GUserFollowCountsData _build() {
    final _$result = _$v ??
        new _$GUserFollowCountsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserFollowCountsData', 'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GUserFollowCountsData', 'userId'),
            numberOfFollowers: BuiltValueNullFieldError.checkNotNull(
                numberOfFollowers,
                r'GUserFollowCountsData',
                'numberOfFollowers'),
            numberOfFollowing: BuiltValueNullFieldError.checkNotNull(
                numberOfFollowing,
                r'GUserFollowCountsData',
                'numberOfFollowing'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
