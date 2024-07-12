// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_requests.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPlaylistDetailsData> _$gPlaylistDetailsDataSerializer =
    new _$GPlaylistDetailsDataSerializer();
Serializer<GPlaylistDetailsData_response>
    _$gPlaylistDetailsDataResponseSerializer =
    new _$GPlaylistDetailsData_responseSerializer();
Serializer<GPlaylistDetailsData_response_data>
    _$gPlaylistDetailsDataResponseDataSerializer =
    new _$GPlaylistDetailsData_response_dataSerializer();
Serializer<GPlaylistByUserIdData> _$gPlaylistByUserIdDataSerializer =
    new _$GPlaylistByUserIdDataSerializer();
Serializer<GPlaylistByUserIdData_response>
    _$gPlaylistByUserIdDataResponseSerializer =
    new _$GPlaylistByUserIdData_responseSerializer();
Serializer<GPlaylistByUserIdData_response_data>
    _$gPlaylistByUserIdDataResponseDataSerializer =
    new _$GPlaylistByUserIdData_response_dataSerializer();
Serializer<GCreatePlaylistData> _$gCreatePlaylistDataSerializer =
    new _$GCreatePlaylistDataSerializer();
Serializer<GCreatePlaylistData_response>
    _$gCreatePlaylistDataResponseSerializer =
    new _$GCreatePlaylistData_responseSerializer();
Serializer<GCreatePlaylistData_response_data>
    _$gCreatePlaylistDataResponseDataSerializer =
    new _$GCreatePlaylistData_response_dataSerializer();
Serializer<GEditPlaylistData> _$gEditPlaylistDataSerializer =
    new _$GEditPlaylistDataSerializer();
Serializer<GEditPlaylistData_response> _$gEditPlaylistDataResponseSerializer =
    new _$GEditPlaylistData_responseSerializer();
Serializer<GEditPlaylistData_response_data>
    _$gEditPlaylistDataResponseDataSerializer =
    new _$GEditPlaylistData_response_dataSerializer();
Serializer<GDeletePlaylistData> _$gDeletePlaylistDataSerializer =
    new _$GDeletePlaylistDataSerializer();
Serializer<GDeletePlaylistData_response>
    _$gDeletePlaylistDataResponseSerializer =
    new _$GDeletePlaylistData_responseSerializer();
Serializer<GAddPostToPlaylistData> _$gAddPostToPlaylistDataSerializer =
    new _$GAddPostToPlaylistDataSerializer();
Serializer<GAddPostToPlaylistData_response>
    _$gAddPostToPlaylistDataResponseSerializer =
    new _$GAddPostToPlaylistData_responseSerializer();
Serializer<GAddPostToPlaylistData_response_data>
    _$gAddPostToPlaylistDataResponseDataSerializer =
    new _$GAddPostToPlaylistData_response_dataSerializer();
Serializer<GSavePostToDefaultPlaylistData>
    _$gSavePostToDefaultPlaylistDataSerializer =
    new _$GSavePostToDefaultPlaylistDataSerializer();
Serializer<GSavePostToDefaultPlaylistData_response>
    _$gSavePostToDefaultPlaylistDataResponseSerializer =
    new _$GSavePostToDefaultPlaylistData_responseSerializer();
Serializer<GSavePostToDefaultPlaylistData_response_data>
    _$gSavePostToDefaultPlaylistDataResponseDataSerializer =
    new _$GSavePostToDefaultPlaylistData_response_dataSerializer();
Serializer<GRemovePostFromPlaylistData>
    _$gRemovePostFromPlaylistDataSerializer =
    new _$GRemovePostFromPlaylistDataSerializer();
Serializer<GRemovePostFromPlaylistData_response>
    _$gRemovePostFromPlaylistDataResponseSerializer =
    new _$GRemovePostFromPlaylistData_responseSerializer();
Serializer<GRemovePostFromPlaylistData_response_data>
    _$gRemovePostFromPlaylistDataResponseDataSerializer =
    new _$GRemovePostFromPlaylistData_response_dataSerializer();
Serializer<GPlaylistData> _$gPlaylistDataSerializer =
    new _$GPlaylistDataSerializer();

class _$GPlaylistDetailsDataSerializer
    implements StructuredSerializer<GPlaylistDetailsData> {
  @override
  final Iterable<Type> types = const [
    GPlaylistDetailsData,
    _$GPlaylistDetailsData
  ];
  @override
  final String wireName = 'GPlaylistDetailsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistDetailsData object,
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
            specifiedType: const FullType(GPlaylistDetailsData_response)));
    }
    return result;
  }

  @override
  GPlaylistDetailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistDetailsDataBuilder();

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
                  specifiedType: const FullType(GPlaylistDetailsData_response))!
              as GPlaylistDetailsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GPlaylistDetailsData_responseSerializer
    implements StructuredSerializer<GPlaylistDetailsData_response> {
  @override
  final Iterable<Type> types = const [
    GPlaylistDetailsData_response,
    _$GPlaylistDetailsData_response
  ];
  @override
  final String wireName = 'GPlaylistDetailsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistDetailsData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPlaylistDetailsData_response_data)));
    }
    return result;
  }

  @override
  GPlaylistDetailsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistDetailsData_responseBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GPlaylistDetailsData_response_data))!
              as GPlaylistDetailsData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GPlaylistDetailsData_response_dataSerializer
    implements StructuredSerializer<GPlaylistDetailsData_response_data> {
  @override
  final Iterable<Type> types = const [
    GPlaylistDetailsData_response_data,
    _$GPlaylistDetailsData_response_data
  ];
  @override
  final String wireName = 'GPlaylistDetailsData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistDetailsData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(_i2.GprivacyType)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'listOfPosts',
      serializers.serialize(object.listOfPosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'shareLink',
      serializers.serialize(object.shareLink,
          specifiedType: const FullType(String)),
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'creatorOfPlaylist',
      serializers.serialize(object.creatorOfPlaylist,
          specifiedType: const FullType(String)),
      'totalDuration',
      serializers.serialize(object.totalDuration,
          specifiedType: const FullType(int)),
      'numberOfPosts',
      serializers.serialize(object.numberOfPosts,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPlaylistDetailsData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistDetailsData_response_dataBuilder();

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
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GprivacyType))!
              as _i2.GprivacyType;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'listOfPosts':
          result.listOfPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'shareLink':
          result.shareLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'creatorOfPlaylist':
          result.creatorOfPlaylist = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'totalDuration':
          result.totalDuration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfPosts':
          result.numberOfPosts = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GPlaylistByUserIdDataSerializer
    implements StructuredSerializer<GPlaylistByUserIdData> {
  @override
  final Iterable<Type> types = const [
    GPlaylistByUserIdData,
    _$GPlaylistByUserIdData
  ];
  @override
  final String wireName = 'GPlaylistByUserIdData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistByUserIdData object,
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
            specifiedType: const FullType(GPlaylistByUserIdData_response)));
    }
    return result;
  }

  @override
  GPlaylistByUserIdData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistByUserIdDataBuilder();

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
                      const FullType(GPlaylistByUserIdData_response))!
              as GPlaylistByUserIdData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GPlaylistByUserIdData_responseSerializer
    implements StructuredSerializer<GPlaylistByUserIdData_response> {
  @override
  final Iterable<Type> types = const [
    GPlaylistByUserIdData_response,
    _$GPlaylistByUserIdData_response
  ];
  @override
  final String wireName = 'GPlaylistByUserIdData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistByUserIdData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GPlaylistByUserIdData_response_data)
            ])));
    }
    return result;
  }

  @override
  GPlaylistByUserIdData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistByUserIdData_responseBuilder();

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
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GPlaylistByUserIdData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPlaylistByUserIdData_response_dataSerializer
    implements StructuredSerializer<GPlaylistByUserIdData_response_data> {
  @override
  final Iterable<Type> types = const [
    GPlaylistByUserIdData_response_data,
    _$GPlaylistByUserIdData_response_data
  ];
  @override
  final String wireName = 'GPlaylistByUserIdData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPlaylistByUserIdData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(_i2.GprivacyType)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'listOfPosts',
      serializers.serialize(object.listOfPosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'shareLink',
      serializers.serialize(object.shareLink,
          specifiedType: const FullType(String)),
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'creatorOfPlaylist',
      serializers.serialize(object.creatorOfPlaylist,
          specifiedType: const FullType(String)),
      'totalDuration',
      serializers.serialize(object.totalDuration,
          specifiedType: const FullType(int)),
      'numberOfPosts',
      serializers.serialize(object.numberOfPosts,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPlaylistByUserIdData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistByUserIdData_response_dataBuilder();

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
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GprivacyType))!
              as _i2.GprivacyType;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'listOfPosts':
          result.listOfPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'shareLink':
          result.shareLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'creatorOfPlaylist':
          result.creatorOfPlaylist = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'totalDuration':
          result.totalDuration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfPosts':
          result.numberOfPosts = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePlaylistDataSerializer
    implements StructuredSerializer<GCreatePlaylistData> {
  @override
  final Iterable<Type> types = const [
    GCreatePlaylistData,
    _$GCreatePlaylistData
  ];
  @override
  final String wireName = 'GCreatePlaylistData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePlaylistData object,
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
            specifiedType: const FullType(GCreatePlaylistData_response)));
    }
    return result;
  }

  @override
  GCreatePlaylistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePlaylistDataBuilder();

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
                  specifiedType: const FullType(GCreatePlaylistData_response))!
              as GCreatePlaylistData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePlaylistData_responseSerializer
    implements StructuredSerializer<GCreatePlaylistData_response> {
  @override
  final Iterable<Type> types = const [
    GCreatePlaylistData_response,
    _$GCreatePlaylistData_response
  ];
  @override
  final String wireName = 'GCreatePlaylistData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePlaylistData_response object,
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
            specifiedType: const FullType(GCreatePlaylistData_response_data)));
    }
    return result;
  }

  @override
  GCreatePlaylistData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePlaylistData_responseBuilder();

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
                      const FullType(GCreatePlaylistData_response_data))!
              as GCreatePlaylistData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePlaylistData_response_dataSerializer
    implements StructuredSerializer<GCreatePlaylistData_response_data> {
  @override
  final Iterable<Type> types = const [
    GCreatePlaylistData_response_data,
    _$GCreatePlaylistData_response_data
  ];
  @override
  final String wireName = 'GCreatePlaylistData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePlaylistData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(_i2.GprivacyType)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'listOfPosts',
      serializers.serialize(object.listOfPosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'shareLink',
      serializers.serialize(object.shareLink,
          specifiedType: const FullType(String)),
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'creatorOfPlaylist',
      serializers.serialize(object.creatorOfPlaylist,
          specifiedType: const FullType(String)),
      'totalDuration',
      serializers.serialize(object.totalDuration,
          specifiedType: const FullType(int)),
      'numberOfPosts',
      serializers.serialize(object.numberOfPosts,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreatePlaylistData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePlaylistData_response_dataBuilder();

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
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GprivacyType))!
              as _i2.GprivacyType;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'listOfPosts':
          result.listOfPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'shareLink':
          result.shareLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'creatorOfPlaylist':
          result.creatorOfPlaylist = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'totalDuration':
          result.totalDuration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfPosts':
          result.numberOfPosts = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GEditPlaylistDataSerializer
    implements StructuredSerializer<GEditPlaylistData> {
  @override
  final Iterable<Type> types = const [GEditPlaylistData, _$GEditPlaylistData];
  @override
  final String wireName = 'GEditPlaylistData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GEditPlaylistData object,
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
            specifiedType: const FullType(GEditPlaylistData_response)));
    }
    return result;
  }

  @override
  GEditPlaylistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEditPlaylistDataBuilder();

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
                  specifiedType: const FullType(GEditPlaylistData_response))!
              as GEditPlaylistData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GEditPlaylistData_responseSerializer
    implements StructuredSerializer<GEditPlaylistData_response> {
  @override
  final Iterable<Type> types = const [
    GEditPlaylistData_response,
    _$GEditPlaylistData_response
  ];
  @override
  final String wireName = 'GEditPlaylistData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEditPlaylistData_response object,
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
            specifiedType: const FullType(GEditPlaylistData_response_data)));
    }
    return result;
  }

  @override
  GEditPlaylistData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEditPlaylistData_responseBuilder();

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
                      const FullType(GEditPlaylistData_response_data))!
              as GEditPlaylistData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GEditPlaylistData_response_dataSerializer
    implements StructuredSerializer<GEditPlaylistData_response_data> {
  @override
  final Iterable<Type> types = const [
    GEditPlaylistData_response_data,
    _$GEditPlaylistData_response_data
  ];
  @override
  final String wireName = 'GEditPlaylistData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEditPlaylistData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(_i2.GprivacyType)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'listOfPosts',
      serializers.serialize(object.listOfPosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'shareLink',
      serializers.serialize(object.shareLink,
          specifiedType: const FullType(String)),
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'creatorOfPlaylist',
      serializers.serialize(object.creatorOfPlaylist,
          specifiedType: const FullType(String)),
      'totalDuration',
      serializers.serialize(object.totalDuration,
          specifiedType: const FullType(int)),
      'numberOfPosts',
      serializers.serialize(object.numberOfPosts,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GEditPlaylistData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEditPlaylistData_response_dataBuilder();

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
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GprivacyType))!
              as _i2.GprivacyType;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'listOfPosts':
          result.listOfPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'shareLink':
          result.shareLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'creatorOfPlaylist':
          result.creatorOfPlaylist = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'totalDuration':
          result.totalDuration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfPosts':
          result.numberOfPosts = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeletePlaylistDataSerializer
    implements StructuredSerializer<GDeletePlaylistData> {
  @override
  final Iterable<Type> types = const [
    GDeletePlaylistData,
    _$GDeletePlaylistData
  ];
  @override
  final String wireName = 'GDeletePlaylistData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeletePlaylistData object,
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
            specifiedType: const FullType(GDeletePlaylistData_response)));
    }
    return result;
  }

  @override
  GDeletePlaylistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletePlaylistDataBuilder();

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
                  specifiedType: const FullType(GDeletePlaylistData_response))!
              as GDeletePlaylistData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeletePlaylistData_responseSerializer
    implements StructuredSerializer<GDeletePlaylistData_response> {
  @override
  final Iterable<Type> types = const [
    GDeletePlaylistData_response,
    _$GDeletePlaylistData_response
  ];
  @override
  final String wireName = 'GDeletePlaylistData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeletePlaylistData_response object,
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
  GDeletePlaylistData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletePlaylistData_responseBuilder();

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

class _$GAddPostToPlaylistDataSerializer
    implements StructuredSerializer<GAddPostToPlaylistData> {
  @override
  final Iterable<Type> types = const [
    GAddPostToPlaylistData,
    _$GAddPostToPlaylistData
  ];
  @override
  final String wireName = 'GAddPostToPlaylistData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddPostToPlaylistData object,
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
            specifiedType: const FullType(GAddPostToPlaylistData_response)));
    }
    return result;
  }

  @override
  GAddPostToPlaylistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddPostToPlaylistDataBuilder();

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
                      const FullType(GAddPostToPlaylistData_response))!
              as GAddPostToPlaylistData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddPostToPlaylistData_responseSerializer
    implements StructuredSerializer<GAddPostToPlaylistData_response> {
  @override
  final Iterable<Type> types = const [
    GAddPostToPlaylistData_response,
    _$GAddPostToPlaylistData_response
  ];
  @override
  final String wireName = 'GAddPostToPlaylistData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddPostToPlaylistData_response object,
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
                const FullType(GAddPostToPlaylistData_response_data)));
    }
    return result;
  }

  @override
  GAddPostToPlaylistData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddPostToPlaylistData_responseBuilder();

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
                      const FullType(GAddPostToPlaylistData_response_data))!
              as GAddPostToPlaylistData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddPostToPlaylistData_response_dataSerializer
    implements StructuredSerializer<GAddPostToPlaylistData_response_data> {
  @override
  final Iterable<Type> types = const [
    GAddPostToPlaylistData_response_data,
    _$GAddPostToPlaylistData_response_data
  ];
  @override
  final String wireName = 'GAddPostToPlaylistData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddPostToPlaylistData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(_i2.GprivacyType)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'listOfPosts',
      serializers.serialize(object.listOfPosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'shareLink',
      serializers.serialize(object.shareLink,
          specifiedType: const FullType(String)),
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'creatorOfPlaylist',
      serializers.serialize(object.creatorOfPlaylist,
          specifiedType: const FullType(String)),
      'totalDuration',
      serializers.serialize(object.totalDuration,
          specifiedType: const FullType(int)),
      'numberOfPosts',
      serializers.serialize(object.numberOfPosts,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAddPostToPlaylistData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddPostToPlaylistData_response_dataBuilder();

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
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GprivacyType))!
              as _i2.GprivacyType;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'listOfPosts':
          result.listOfPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'shareLink':
          result.shareLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'creatorOfPlaylist':
          result.creatorOfPlaylist = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'totalDuration':
          result.totalDuration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfPosts':
          result.numberOfPosts = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GSavePostToDefaultPlaylistDataSerializer
    implements StructuredSerializer<GSavePostToDefaultPlaylistData> {
  @override
  final Iterable<Type> types = const [
    GSavePostToDefaultPlaylistData,
    _$GSavePostToDefaultPlaylistData
  ];
  @override
  final String wireName = 'GSavePostToDefaultPlaylistData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSavePostToDefaultPlaylistData object,
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
                const FullType(GSavePostToDefaultPlaylistData_response)));
    }
    return result;
  }

  @override
  GSavePostToDefaultPlaylistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSavePostToDefaultPlaylistDataBuilder();

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
                      const FullType(GSavePostToDefaultPlaylistData_response))!
              as GSavePostToDefaultPlaylistData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GSavePostToDefaultPlaylistData_responseSerializer
    implements StructuredSerializer<GSavePostToDefaultPlaylistData_response> {
  @override
  final Iterable<Type> types = const [
    GSavePostToDefaultPlaylistData_response,
    _$GSavePostToDefaultPlaylistData_response
  ];
  @override
  final String wireName = 'GSavePostToDefaultPlaylistData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSavePostToDefaultPlaylistData_response object,
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
                const FullType(GSavePostToDefaultPlaylistData_response_data)));
    }
    return result;
  }

  @override
  GSavePostToDefaultPlaylistData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSavePostToDefaultPlaylistData_responseBuilder();

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
                  specifiedType: const FullType(
                      GSavePostToDefaultPlaylistData_response_data))!
              as GSavePostToDefaultPlaylistData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GSavePostToDefaultPlaylistData_response_dataSerializer
    implements
        StructuredSerializer<GSavePostToDefaultPlaylistData_response_data> {
  @override
  final Iterable<Type> types = const [
    GSavePostToDefaultPlaylistData_response_data,
    _$GSavePostToDefaultPlaylistData_response_data
  ];
  @override
  final String wireName = 'GSavePostToDefaultPlaylistData_response_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSavePostToDefaultPlaylistData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(_i2.GprivacyType)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'listOfPosts',
      serializers.serialize(object.listOfPosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'shareLink',
      serializers.serialize(object.shareLink,
          specifiedType: const FullType(String)),
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'creatorOfPlaylist',
      serializers.serialize(object.creatorOfPlaylist,
          specifiedType: const FullType(String)),
      'totalDuration',
      serializers.serialize(object.totalDuration,
          specifiedType: const FullType(int)),
      'numberOfPosts',
      serializers.serialize(object.numberOfPosts,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSavePostToDefaultPlaylistData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSavePostToDefaultPlaylistData_response_dataBuilder();

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
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GprivacyType))!
              as _i2.GprivacyType;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'listOfPosts':
          result.listOfPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'shareLink':
          result.shareLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'creatorOfPlaylist':
          result.creatorOfPlaylist = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'totalDuration':
          result.totalDuration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfPosts':
          result.numberOfPosts = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemovePostFromPlaylistDataSerializer
    implements StructuredSerializer<GRemovePostFromPlaylistData> {
  @override
  final Iterable<Type> types = const [
    GRemovePostFromPlaylistData,
    _$GRemovePostFromPlaylistData
  ];
  @override
  final String wireName = 'GRemovePostFromPlaylistData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemovePostFromPlaylistData object,
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
                const FullType(GRemovePostFromPlaylistData_response)));
    }
    return result;
  }

  @override
  GRemovePostFromPlaylistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemovePostFromPlaylistDataBuilder();

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
                      const FullType(GRemovePostFromPlaylistData_response))!
              as GRemovePostFromPlaylistData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemovePostFromPlaylistData_responseSerializer
    implements StructuredSerializer<GRemovePostFromPlaylistData_response> {
  @override
  final Iterable<Type> types = const [
    GRemovePostFromPlaylistData_response,
    _$GRemovePostFromPlaylistData_response
  ];
  @override
  final String wireName = 'GRemovePostFromPlaylistData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemovePostFromPlaylistData_response object,
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
                const FullType(GRemovePostFromPlaylistData_response_data)));
    }
    return result;
  }

  @override
  GRemovePostFromPlaylistData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemovePostFromPlaylistData_responseBuilder();

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
                  specifiedType: const FullType(
                      GRemovePostFromPlaylistData_response_data))!
              as GRemovePostFromPlaylistData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemovePostFromPlaylistData_response_dataSerializer
    implements StructuredSerializer<GRemovePostFromPlaylistData_response_data> {
  @override
  final Iterable<Type> types = const [
    GRemovePostFromPlaylistData_response_data,
    _$GRemovePostFromPlaylistData_response_data
  ];
  @override
  final String wireName = 'GRemovePostFromPlaylistData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemovePostFromPlaylistData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(_i2.GprivacyType)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'listOfPosts',
      serializers.serialize(object.listOfPosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'shareLink',
      serializers.serialize(object.shareLink,
          specifiedType: const FullType(String)),
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'creatorOfPlaylist',
      serializers.serialize(object.creatorOfPlaylist,
          specifiedType: const FullType(String)),
      'totalDuration',
      serializers.serialize(object.totalDuration,
          specifiedType: const FullType(int)),
      'numberOfPosts',
      serializers.serialize(object.numberOfPosts,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRemovePostFromPlaylistData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemovePostFromPlaylistData_response_dataBuilder();

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
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GprivacyType))!
              as _i2.GprivacyType;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'listOfPosts':
          result.listOfPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'shareLink':
          result.shareLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'creatorOfPlaylist':
          result.creatorOfPlaylist = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'totalDuration':
          result.totalDuration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfPosts':
          result.numberOfPosts = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GPlaylistDataSerializer implements StructuredSerializer<GPlaylistData> {
  @override
  final Iterable<Type> types = const [GPlaylistData, _$GPlaylistData];
  @override
  final String wireName = 'GPlaylistData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPlaylistData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(_i2.GprivacyType)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'listOfPosts',
      serializers.serialize(object.listOfPosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'shareLink',
      serializers.serialize(object.shareLink,
          specifiedType: const FullType(String)),
      'playlistId',
      serializers.serialize(object.playlistId,
          specifiedType: const FullType(String)),
      'creatorOfPlaylist',
      serializers.serialize(object.creatorOfPlaylist,
          specifiedType: const FullType(String)),
      'totalDuration',
      serializers.serialize(object.totalDuration,
          specifiedType: const FullType(int)),
      'numberOfPosts',
      serializers.serialize(object.numberOfPosts,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPlaylistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPlaylistDataBuilder();

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
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GprivacyType))!
              as _i2.GprivacyType;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'listOfPosts':
          result.listOfPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'shareLink':
          result.shareLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'playlistId':
          result.playlistId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'creatorOfPlaylist':
          result.creatorOfPlaylist = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'totalDuration':
          result.totalDuration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'numberOfPosts':
          result.numberOfPosts = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GPlaylistDetailsData extends GPlaylistDetailsData {
  @override
  final String G__typename;
  @override
  final GPlaylistDetailsData_response? response;

  factory _$GPlaylistDetailsData(
          [void Function(GPlaylistDetailsDataBuilder)? updates]) =>
      (new GPlaylistDetailsDataBuilder()..update(updates))._build();

  _$GPlaylistDetailsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPlaylistDetailsData', 'G__typename');
  }

  @override
  GPlaylistDetailsData rebuild(
          void Function(GPlaylistDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistDetailsDataBuilder toBuilder() =>
      new GPlaylistDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistDetailsData &&
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
    return (newBuiltValueToStringHelper(r'GPlaylistDetailsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GPlaylistDetailsDataBuilder
    implements Builder<GPlaylistDetailsData, GPlaylistDetailsDataBuilder> {
  _$GPlaylistDetailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPlaylistDetailsData_responseBuilder? _response;
  GPlaylistDetailsData_responseBuilder get response =>
      _$this._response ??= new GPlaylistDetailsData_responseBuilder();
  set response(GPlaylistDetailsData_responseBuilder? response) =>
      _$this._response = response;

  GPlaylistDetailsDataBuilder() {
    GPlaylistDetailsData._initializeBuilder(this);
  }

  GPlaylistDetailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPlaylistDetailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistDetailsData;
  }

  @override
  void update(void Function(GPlaylistDetailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistDetailsData build() => _build();

  _$GPlaylistDetailsData _build() {
    _$GPlaylistDetailsData _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistDetailsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPlaylistDetailsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistDetailsData_response extends GPlaylistDetailsData_response {
  @override
  final String G__typename;
  @override
  final String? message;
  @override
  final bool? error;
  @override
  final GPlaylistDetailsData_response_data? data;

  factory _$GPlaylistDetailsData_response(
          [void Function(GPlaylistDetailsData_responseBuilder)? updates]) =>
      (new GPlaylistDetailsData_responseBuilder()..update(updates))._build();

  _$GPlaylistDetailsData_response._(
      {required this.G__typename, this.message, this.error, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPlaylistDetailsData_response', 'G__typename');
  }

  @override
  GPlaylistDetailsData_response rebuild(
          void Function(GPlaylistDetailsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistDetailsData_responseBuilder toBuilder() =>
      new GPlaylistDetailsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistDetailsData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPlaylistDetailsData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class GPlaylistDetailsData_responseBuilder
    implements
        Builder<GPlaylistDetailsData_response,
            GPlaylistDetailsData_responseBuilder> {
  _$GPlaylistDetailsData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  GPlaylistDetailsData_response_dataBuilder? _data;
  GPlaylistDetailsData_response_dataBuilder get data =>
      _$this._data ??= new GPlaylistDetailsData_response_dataBuilder();
  set data(GPlaylistDetailsData_response_dataBuilder? data) =>
      _$this._data = data;

  GPlaylistDetailsData_responseBuilder() {
    GPlaylistDetailsData_response._initializeBuilder(this);
  }

  GPlaylistDetailsData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPlaylistDetailsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistDetailsData_response;
  }

  @override
  void update(void Function(GPlaylistDetailsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistDetailsData_response build() => _build();

  _$GPlaylistDetailsData_response _build() {
    _$GPlaylistDetailsData_response _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistDetailsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPlaylistDetailsData_response', 'G__typename'),
              message: message,
              error: error,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistDetailsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistDetailsData_response_data
    extends GPlaylistDetailsData_response_data {
  @override
  final String G__typename;
  @override
  final _i2.GprivacyType privacy;
  @override
  final String userId;
  @override
  final BuiltList<String> listOfPosts;
  @override
  final String? coverImage;
  @override
  final String createdOn;
  @override
  final String title;
  @override
  final String shareLink;
  @override
  final String playlistId;
  @override
  final String creatorOfPlaylist;
  @override
  final int totalDuration;
  @override
  final int numberOfPosts;

  factory _$GPlaylistDetailsData_response_data(
          [void Function(GPlaylistDetailsData_response_dataBuilder)?
              updates]) =>
      (new GPlaylistDetailsData_response_dataBuilder()..update(updates))
          ._build();

  _$GPlaylistDetailsData_response_data._(
      {required this.G__typename,
      required this.privacy,
      required this.userId,
      required this.listOfPosts,
      this.coverImage,
      required this.createdOn,
      required this.title,
      required this.shareLink,
      required this.playlistId,
      required this.creatorOfPlaylist,
      required this.totalDuration,
      required this.numberOfPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPlaylistDetailsData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        privacy, r'GPlaylistDetailsData_response_data', 'privacy');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GPlaylistDetailsData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        listOfPosts, r'GPlaylistDetailsData_response_data', 'listOfPosts');
    BuiltValueNullFieldError.checkNotNull(
        createdOn, r'GPlaylistDetailsData_response_data', 'createdOn');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GPlaylistDetailsData_response_data', 'title');
    BuiltValueNullFieldError.checkNotNull(
        shareLink, r'GPlaylistDetailsData_response_data', 'shareLink');
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GPlaylistDetailsData_response_data', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist,
        r'GPlaylistDetailsData_response_data', 'creatorOfPlaylist');
    BuiltValueNullFieldError.checkNotNull(
        totalDuration, r'GPlaylistDetailsData_response_data', 'totalDuration');
    BuiltValueNullFieldError.checkNotNull(
        numberOfPosts, r'GPlaylistDetailsData_response_data', 'numberOfPosts');
  }

  @override
  GPlaylistDetailsData_response_data rebuild(
          void Function(GPlaylistDetailsData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistDetailsData_response_dataBuilder toBuilder() =>
      new GPlaylistDetailsData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistDetailsData_response_data &&
        G__typename == other.G__typename &&
        privacy == other.privacy &&
        userId == other.userId &&
        listOfPosts == other.listOfPosts &&
        coverImage == other.coverImage &&
        createdOn == other.createdOn &&
        title == other.title &&
        shareLink == other.shareLink &&
        playlistId == other.playlistId &&
        creatorOfPlaylist == other.creatorOfPlaylist &&
        totalDuration == other.totalDuration &&
        numberOfPosts == other.numberOfPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, listOfPosts.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shareLink.hashCode);
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, creatorOfPlaylist.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, numberOfPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPlaylistDetailsData_response_data')
          ..add('G__typename', G__typename)
          ..add('privacy', privacy)
          ..add('userId', userId)
          ..add('listOfPosts', listOfPosts)
          ..add('coverImage', coverImage)
          ..add('createdOn', createdOn)
          ..add('title', title)
          ..add('shareLink', shareLink)
          ..add('playlistId', playlistId)
          ..add('creatorOfPlaylist', creatorOfPlaylist)
          ..add('totalDuration', totalDuration)
          ..add('numberOfPosts', numberOfPosts))
        .toString();
  }
}

class GPlaylistDetailsData_response_dataBuilder
    implements
        Builder<GPlaylistDetailsData_response_data,
            GPlaylistDetailsData_response_dataBuilder> {
  _$GPlaylistDetailsData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GprivacyType? _privacy;
  _i2.GprivacyType? get privacy => _$this._privacy;
  set privacy(_i2.GprivacyType? privacy) => _$this._privacy = privacy;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<String>? _listOfPosts;
  ListBuilder<String> get listOfPosts =>
      _$this._listOfPosts ??= new ListBuilder<String>();
  set listOfPosts(ListBuilder<String>? listOfPosts) =>
      _$this._listOfPosts = listOfPosts;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shareLink;
  String? get shareLink => _$this._shareLink;
  set shareLink(String? shareLink) => _$this._shareLink = shareLink;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _creatorOfPlaylist;
  String? get creatorOfPlaylist => _$this._creatorOfPlaylist;
  set creatorOfPlaylist(String? creatorOfPlaylist) =>
      _$this._creatorOfPlaylist = creatorOfPlaylist;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  int? _numberOfPosts;
  int? get numberOfPosts => _$this._numberOfPosts;
  set numberOfPosts(int? numberOfPosts) =>
      _$this._numberOfPosts = numberOfPosts;

  GPlaylistDetailsData_response_dataBuilder() {
    GPlaylistDetailsData_response_data._initializeBuilder(this);
  }

  GPlaylistDetailsData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _privacy = $v.privacy;
      _userId = $v.userId;
      _listOfPosts = $v.listOfPosts.toBuilder();
      _coverImage = $v.coverImage;
      _createdOn = $v.createdOn;
      _title = $v.title;
      _shareLink = $v.shareLink;
      _playlistId = $v.playlistId;
      _creatorOfPlaylist = $v.creatorOfPlaylist;
      _totalDuration = $v.totalDuration;
      _numberOfPosts = $v.numberOfPosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPlaylistDetailsData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistDetailsData_response_data;
  }

  @override
  void update(
      void Function(GPlaylistDetailsData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistDetailsData_response_data build() => _build();

  _$GPlaylistDetailsData_response_data _build() {
    _$GPlaylistDetailsData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistDetailsData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPlaylistDetailsData_response_data', 'G__typename'),
              privacy: BuiltValueNullFieldError.checkNotNull(
                  privacy, r'GPlaylistDetailsData_response_data', 'privacy'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GPlaylistDetailsData_response_data', 'userId'),
              listOfPosts: listOfPosts.build(),
              coverImage: coverImage,
              createdOn: BuiltValueNullFieldError.checkNotNull(
                  createdOn, r'GPlaylistDetailsData_response_data', 'createdOn'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GPlaylistDetailsData_response_data', 'title'),
              shareLink: BuiltValueNullFieldError.checkNotNull(
                  shareLink, r'GPlaylistDetailsData_response_data', 'shareLink'),
              playlistId: BuiltValueNullFieldError.checkNotNull(
                  playlistId, r'GPlaylistDetailsData_response_data', 'playlistId'),
              creatorOfPlaylist:
                  BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist, r'GPlaylistDetailsData_response_data', 'creatorOfPlaylist'),
              totalDuration: BuiltValueNullFieldError.checkNotNull(totalDuration, r'GPlaylistDetailsData_response_data', 'totalDuration'),
              numberOfPosts: BuiltValueNullFieldError.checkNotNull(numberOfPosts, r'GPlaylistDetailsData_response_data', 'numberOfPosts'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfPosts';
        listOfPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistDetailsData_response_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistByUserIdData extends GPlaylistByUserIdData {
  @override
  final String G__typename;
  @override
  final GPlaylistByUserIdData_response? response;

  factory _$GPlaylistByUserIdData(
          [void Function(GPlaylistByUserIdDataBuilder)? updates]) =>
      (new GPlaylistByUserIdDataBuilder()..update(updates))._build();

  _$GPlaylistByUserIdData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPlaylistByUserIdData', 'G__typename');
  }

  @override
  GPlaylistByUserIdData rebuild(
          void Function(GPlaylistByUserIdDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistByUserIdDataBuilder toBuilder() =>
      new GPlaylistByUserIdDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistByUserIdData &&
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
    return (newBuiltValueToStringHelper(r'GPlaylistByUserIdData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GPlaylistByUserIdDataBuilder
    implements Builder<GPlaylistByUserIdData, GPlaylistByUserIdDataBuilder> {
  _$GPlaylistByUserIdData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPlaylistByUserIdData_responseBuilder? _response;
  GPlaylistByUserIdData_responseBuilder get response =>
      _$this._response ??= new GPlaylistByUserIdData_responseBuilder();
  set response(GPlaylistByUserIdData_responseBuilder? response) =>
      _$this._response = response;

  GPlaylistByUserIdDataBuilder() {
    GPlaylistByUserIdData._initializeBuilder(this);
  }

  GPlaylistByUserIdDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPlaylistByUserIdData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistByUserIdData;
  }

  @override
  void update(void Function(GPlaylistByUserIdDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistByUserIdData build() => _build();

  _$GPlaylistByUserIdData _build() {
    _$GPlaylistByUserIdData _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistByUserIdData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPlaylistByUserIdData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistByUserIdData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistByUserIdData_response extends GPlaylistByUserIdData_response {
  @override
  final String G__typename;
  @override
  final BuiltList<GPlaylistByUserIdData_response_data?>? data;

  factory _$GPlaylistByUserIdData_response(
          [void Function(GPlaylistByUserIdData_responseBuilder)? updates]) =>
      (new GPlaylistByUserIdData_responseBuilder()..update(updates))._build();

  _$GPlaylistByUserIdData_response._({required this.G__typename, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPlaylistByUserIdData_response', 'G__typename');
  }

  @override
  GPlaylistByUserIdData_response rebuild(
          void Function(GPlaylistByUserIdData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistByUserIdData_responseBuilder toBuilder() =>
      new GPlaylistByUserIdData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistByUserIdData_response &&
        G__typename == other.G__typename &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPlaylistByUserIdData_response')
          ..add('G__typename', G__typename)
          ..add('data', data))
        .toString();
  }
}

class GPlaylistByUserIdData_responseBuilder
    implements
        Builder<GPlaylistByUserIdData_response,
            GPlaylistByUserIdData_responseBuilder> {
  _$GPlaylistByUserIdData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GPlaylistByUserIdData_response_data?>? _data;
  ListBuilder<GPlaylistByUserIdData_response_data?> get data =>
      _$this._data ??= new ListBuilder<GPlaylistByUserIdData_response_data?>();
  set data(ListBuilder<GPlaylistByUserIdData_response_data?>? data) =>
      _$this._data = data;

  GPlaylistByUserIdData_responseBuilder() {
    GPlaylistByUserIdData_response._initializeBuilder(this);
  }

  GPlaylistByUserIdData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPlaylistByUserIdData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistByUserIdData_response;
  }

  @override
  void update(void Function(GPlaylistByUserIdData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistByUserIdData_response build() => _build();

  _$GPlaylistByUserIdData_response _build() {
    _$GPlaylistByUserIdData_response _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistByUserIdData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GPlaylistByUserIdData_response', 'G__typename'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistByUserIdData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistByUserIdData_response_data
    extends GPlaylistByUserIdData_response_data {
  @override
  final String G__typename;
  @override
  final _i2.GprivacyType privacy;
  @override
  final String userId;
  @override
  final BuiltList<String> listOfPosts;
  @override
  final String? coverImage;
  @override
  final String createdOn;
  @override
  final String title;
  @override
  final String shareLink;
  @override
  final String playlistId;
  @override
  final String creatorOfPlaylist;
  @override
  final int totalDuration;
  @override
  final int numberOfPosts;

  factory _$GPlaylistByUserIdData_response_data(
          [void Function(GPlaylistByUserIdData_response_dataBuilder)?
              updates]) =>
      (new GPlaylistByUserIdData_response_dataBuilder()..update(updates))
          ._build();

  _$GPlaylistByUserIdData_response_data._(
      {required this.G__typename,
      required this.privacy,
      required this.userId,
      required this.listOfPosts,
      this.coverImage,
      required this.createdOn,
      required this.title,
      required this.shareLink,
      required this.playlistId,
      required this.creatorOfPlaylist,
      required this.totalDuration,
      required this.numberOfPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPlaylistByUserIdData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        privacy, r'GPlaylistByUserIdData_response_data', 'privacy');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GPlaylistByUserIdData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        listOfPosts, r'GPlaylistByUserIdData_response_data', 'listOfPosts');
    BuiltValueNullFieldError.checkNotNull(
        createdOn, r'GPlaylistByUserIdData_response_data', 'createdOn');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GPlaylistByUserIdData_response_data', 'title');
    BuiltValueNullFieldError.checkNotNull(
        shareLink, r'GPlaylistByUserIdData_response_data', 'shareLink');
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GPlaylistByUserIdData_response_data', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist,
        r'GPlaylistByUserIdData_response_data', 'creatorOfPlaylist');
    BuiltValueNullFieldError.checkNotNull(
        totalDuration, r'GPlaylistByUserIdData_response_data', 'totalDuration');
    BuiltValueNullFieldError.checkNotNull(
        numberOfPosts, r'GPlaylistByUserIdData_response_data', 'numberOfPosts');
  }

  @override
  GPlaylistByUserIdData_response_data rebuild(
          void Function(GPlaylistByUserIdData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistByUserIdData_response_dataBuilder toBuilder() =>
      new GPlaylistByUserIdData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistByUserIdData_response_data &&
        G__typename == other.G__typename &&
        privacy == other.privacy &&
        userId == other.userId &&
        listOfPosts == other.listOfPosts &&
        coverImage == other.coverImage &&
        createdOn == other.createdOn &&
        title == other.title &&
        shareLink == other.shareLink &&
        playlistId == other.playlistId &&
        creatorOfPlaylist == other.creatorOfPlaylist &&
        totalDuration == other.totalDuration &&
        numberOfPosts == other.numberOfPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, listOfPosts.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shareLink.hashCode);
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, creatorOfPlaylist.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, numberOfPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPlaylistByUserIdData_response_data')
          ..add('G__typename', G__typename)
          ..add('privacy', privacy)
          ..add('userId', userId)
          ..add('listOfPosts', listOfPosts)
          ..add('coverImage', coverImage)
          ..add('createdOn', createdOn)
          ..add('title', title)
          ..add('shareLink', shareLink)
          ..add('playlistId', playlistId)
          ..add('creatorOfPlaylist', creatorOfPlaylist)
          ..add('totalDuration', totalDuration)
          ..add('numberOfPosts', numberOfPosts))
        .toString();
  }
}

class GPlaylistByUserIdData_response_dataBuilder
    implements
        Builder<GPlaylistByUserIdData_response_data,
            GPlaylistByUserIdData_response_dataBuilder> {
  _$GPlaylistByUserIdData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GprivacyType? _privacy;
  _i2.GprivacyType? get privacy => _$this._privacy;
  set privacy(_i2.GprivacyType? privacy) => _$this._privacy = privacy;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<String>? _listOfPosts;
  ListBuilder<String> get listOfPosts =>
      _$this._listOfPosts ??= new ListBuilder<String>();
  set listOfPosts(ListBuilder<String>? listOfPosts) =>
      _$this._listOfPosts = listOfPosts;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shareLink;
  String? get shareLink => _$this._shareLink;
  set shareLink(String? shareLink) => _$this._shareLink = shareLink;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _creatorOfPlaylist;
  String? get creatorOfPlaylist => _$this._creatorOfPlaylist;
  set creatorOfPlaylist(String? creatorOfPlaylist) =>
      _$this._creatorOfPlaylist = creatorOfPlaylist;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  int? _numberOfPosts;
  int? get numberOfPosts => _$this._numberOfPosts;
  set numberOfPosts(int? numberOfPosts) =>
      _$this._numberOfPosts = numberOfPosts;

  GPlaylistByUserIdData_response_dataBuilder() {
    GPlaylistByUserIdData_response_data._initializeBuilder(this);
  }

  GPlaylistByUserIdData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _privacy = $v.privacy;
      _userId = $v.userId;
      _listOfPosts = $v.listOfPosts.toBuilder();
      _coverImage = $v.coverImage;
      _createdOn = $v.createdOn;
      _title = $v.title;
      _shareLink = $v.shareLink;
      _playlistId = $v.playlistId;
      _creatorOfPlaylist = $v.creatorOfPlaylist;
      _totalDuration = $v.totalDuration;
      _numberOfPosts = $v.numberOfPosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPlaylistByUserIdData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistByUserIdData_response_data;
  }

  @override
  void update(
      void Function(GPlaylistByUserIdData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistByUserIdData_response_data build() => _build();

  _$GPlaylistByUserIdData_response_data _build() {
    _$GPlaylistByUserIdData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistByUserIdData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPlaylistByUserIdData_response_data', 'G__typename'),
              privacy: BuiltValueNullFieldError.checkNotNull(
                  privacy, r'GPlaylistByUserIdData_response_data', 'privacy'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GPlaylistByUserIdData_response_data', 'userId'),
              listOfPosts: listOfPosts.build(),
              coverImage: coverImage,
              createdOn: BuiltValueNullFieldError.checkNotNull(
                  createdOn, r'GPlaylistByUserIdData_response_data', 'createdOn'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GPlaylistByUserIdData_response_data', 'title'),
              shareLink: BuiltValueNullFieldError.checkNotNull(
                  shareLink, r'GPlaylistByUserIdData_response_data', 'shareLink'),
              playlistId: BuiltValueNullFieldError.checkNotNull(
                  playlistId, r'GPlaylistByUserIdData_response_data', 'playlistId'),
              creatorOfPlaylist:
                  BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist, r'GPlaylistByUserIdData_response_data', 'creatorOfPlaylist'),
              totalDuration: BuiltValueNullFieldError.checkNotNull(totalDuration, r'GPlaylistByUserIdData_response_data', 'totalDuration'),
              numberOfPosts: BuiltValueNullFieldError.checkNotNull(numberOfPosts, r'GPlaylistByUserIdData_response_data', 'numberOfPosts'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfPosts';
        listOfPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistByUserIdData_response_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePlaylistData extends GCreatePlaylistData {
  @override
  final String G__typename;
  @override
  final GCreatePlaylistData_response? response;

  factory _$GCreatePlaylistData(
          [void Function(GCreatePlaylistDataBuilder)? updates]) =>
      (new GCreatePlaylistDataBuilder()..update(updates))._build();

  _$GCreatePlaylistData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePlaylistData', 'G__typename');
  }

  @override
  GCreatePlaylistData rebuild(
          void Function(GCreatePlaylistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePlaylistDataBuilder toBuilder() =>
      new GCreatePlaylistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePlaylistData &&
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
    return (newBuiltValueToStringHelper(r'GCreatePlaylistData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GCreatePlaylistDataBuilder
    implements Builder<GCreatePlaylistData, GCreatePlaylistDataBuilder> {
  _$GCreatePlaylistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreatePlaylistData_responseBuilder? _response;
  GCreatePlaylistData_responseBuilder get response =>
      _$this._response ??= new GCreatePlaylistData_responseBuilder();
  set response(GCreatePlaylistData_responseBuilder? response) =>
      _$this._response = response;

  GCreatePlaylistDataBuilder() {
    GCreatePlaylistData._initializeBuilder(this);
  }

  GCreatePlaylistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePlaylistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePlaylistData;
  }

  @override
  void update(void Function(GCreatePlaylistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePlaylistData build() => _build();

  _$GCreatePlaylistData _build() {
    _$GCreatePlaylistData _$result;
    try {
      _$result = _$v ??
          new _$GCreatePlaylistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreatePlaylistData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePlaylistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePlaylistData_response extends GCreatePlaylistData_response {
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
  final GCreatePlaylistData_response_data? data;

  factory _$GCreatePlaylistData_response(
          [void Function(GCreatePlaylistData_responseBuilder)? updates]) =>
      (new GCreatePlaylistData_responseBuilder()..update(updates))._build();

  _$GCreatePlaylistData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePlaylistData_response', 'G__typename');
  }

  @override
  GCreatePlaylistData_response rebuild(
          void Function(GCreatePlaylistData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePlaylistData_responseBuilder toBuilder() =>
      new GCreatePlaylistData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePlaylistData_response &&
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
    return (newBuiltValueToStringHelper(r'GCreatePlaylistData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GCreatePlaylistData_responseBuilder
    implements
        Builder<GCreatePlaylistData_response,
            GCreatePlaylistData_responseBuilder> {
  _$GCreatePlaylistData_response? _$v;

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

  GCreatePlaylistData_response_dataBuilder? _data;
  GCreatePlaylistData_response_dataBuilder get data =>
      _$this._data ??= new GCreatePlaylistData_response_dataBuilder();
  set data(GCreatePlaylistData_response_dataBuilder? data) =>
      _$this._data = data;

  GCreatePlaylistData_responseBuilder() {
    GCreatePlaylistData_response._initializeBuilder(this);
  }

  GCreatePlaylistData_responseBuilder get _$this {
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
  void replace(GCreatePlaylistData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePlaylistData_response;
  }

  @override
  void update(void Function(GCreatePlaylistData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePlaylistData_response build() => _build();

  _$GCreatePlaylistData_response _build() {
    _$GCreatePlaylistData_response _$result;
    try {
      _$result = _$v ??
          new _$GCreatePlaylistData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreatePlaylistData_response', 'G__typename'),
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
            r'GCreatePlaylistData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePlaylistData_response_data
    extends GCreatePlaylistData_response_data {
  @override
  final String G__typename;
  @override
  final _i2.GprivacyType privacy;
  @override
  final String userId;
  @override
  final BuiltList<String> listOfPosts;
  @override
  final String? coverImage;
  @override
  final String createdOn;
  @override
  final String title;
  @override
  final String shareLink;
  @override
  final String playlistId;
  @override
  final String creatorOfPlaylist;
  @override
  final int totalDuration;
  @override
  final int numberOfPosts;

  factory _$GCreatePlaylistData_response_data(
          [void Function(GCreatePlaylistData_response_dataBuilder)? updates]) =>
      (new GCreatePlaylistData_response_dataBuilder()..update(updates))
          ._build();

  _$GCreatePlaylistData_response_data._(
      {required this.G__typename,
      required this.privacy,
      required this.userId,
      required this.listOfPosts,
      this.coverImage,
      required this.createdOn,
      required this.title,
      required this.shareLink,
      required this.playlistId,
      required this.creatorOfPlaylist,
      required this.totalDuration,
      required this.numberOfPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePlaylistData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        privacy, r'GCreatePlaylistData_response_data', 'privacy');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GCreatePlaylistData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        listOfPosts, r'GCreatePlaylistData_response_data', 'listOfPosts');
    BuiltValueNullFieldError.checkNotNull(
        createdOn, r'GCreatePlaylistData_response_data', 'createdOn');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GCreatePlaylistData_response_data', 'title');
    BuiltValueNullFieldError.checkNotNull(
        shareLink, r'GCreatePlaylistData_response_data', 'shareLink');
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GCreatePlaylistData_response_data', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist,
        r'GCreatePlaylistData_response_data', 'creatorOfPlaylist');
    BuiltValueNullFieldError.checkNotNull(
        totalDuration, r'GCreatePlaylistData_response_data', 'totalDuration');
    BuiltValueNullFieldError.checkNotNull(
        numberOfPosts, r'GCreatePlaylistData_response_data', 'numberOfPosts');
  }

  @override
  GCreatePlaylistData_response_data rebuild(
          void Function(GCreatePlaylistData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePlaylistData_response_dataBuilder toBuilder() =>
      new GCreatePlaylistData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePlaylistData_response_data &&
        G__typename == other.G__typename &&
        privacy == other.privacy &&
        userId == other.userId &&
        listOfPosts == other.listOfPosts &&
        coverImage == other.coverImage &&
        createdOn == other.createdOn &&
        title == other.title &&
        shareLink == other.shareLink &&
        playlistId == other.playlistId &&
        creatorOfPlaylist == other.creatorOfPlaylist &&
        totalDuration == other.totalDuration &&
        numberOfPosts == other.numberOfPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, listOfPosts.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shareLink.hashCode);
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, creatorOfPlaylist.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, numberOfPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePlaylistData_response_data')
          ..add('G__typename', G__typename)
          ..add('privacy', privacy)
          ..add('userId', userId)
          ..add('listOfPosts', listOfPosts)
          ..add('coverImage', coverImage)
          ..add('createdOn', createdOn)
          ..add('title', title)
          ..add('shareLink', shareLink)
          ..add('playlistId', playlistId)
          ..add('creatorOfPlaylist', creatorOfPlaylist)
          ..add('totalDuration', totalDuration)
          ..add('numberOfPosts', numberOfPosts))
        .toString();
  }
}

class GCreatePlaylistData_response_dataBuilder
    implements
        Builder<GCreatePlaylistData_response_data,
            GCreatePlaylistData_response_dataBuilder> {
  _$GCreatePlaylistData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GprivacyType? _privacy;
  _i2.GprivacyType? get privacy => _$this._privacy;
  set privacy(_i2.GprivacyType? privacy) => _$this._privacy = privacy;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<String>? _listOfPosts;
  ListBuilder<String> get listOfPosts =>
      _$this._listOfPosts ??= new ListBuilder<String>();
  set listOfPosts(ListBuilder<String>? listOfPosts) =>
      _$this._listOfPosts = listOfPosts;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shareLink;
  String? get shareLink => _$this._shareLink;
  set shareLink(String? shareLink) => _$this._shareLink = shareLink;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _creatorOfPlaylist;
  String? get creatorOfPlaylist => _$this._creatorOfPlaylist;
  set creatorOfPlaylist(String? creatorOfPlaylist) =>
      _$this._creatorOfPlaylist = creatorOfPlaylist;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  int? _numberOfPosts;
  int? get numberOfPosts => _$this._numberOfPosts;
  set numberOfPosts(int? numberOfPosts) =>
      _$this._numberOfPosts = numberOfPosts;

  GCreatePlaylistData_response_dataBuilder() {
    GCreatePlaylistData_response_data._initializeBuilder(this);
  }

  GCreatePlaylistData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _privacy = $v.privacy;
      _userId = $v.userId;
      _listOfPosts = $v.listOfPosts.toBuilder();
      _coverImage = $v.coverImage;
      _createdOn = $v.createdOn;
      _title = $v.title;
      _shareLink = $v.shareLink;
      _playlistId = $v.playlistId;
      _creatorOfPlaylist = $v.creatorOfPlaylist;
      _totalDuration = $v.totalDuration;
      _numberOfPosts = $v.numberOfPosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePlaylistData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePlaylistData_response_data;
  }

  @override
  void update(
      void Function(GCreatePlaylistData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePlaylistData_response_data build() => _build();

  _$GCreatePlaylistData_response_data _build() {
    _$GCreatePlaylistData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GCreatePlaylistData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreatePlaylistData_response_data', 'G__typename'),
              privacy: BuiltValueNullFieldError.checkNotNull(
                  privacy, r'GCreatePlaylistData_response_data', 'privacy'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GCreatePlaylistData_response_data', 'userId'),
              listOfPosts: listOfPosts.build(),
              coverImage: coverImage,
              createdOn: BuiltValueNullFieldError.checkNotNull(
                  createdOn, r'GCreatePlaylistData_response_data', 'createdOn'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GCreatePlaylistData_response_data', 'title'),
              shareLink: BuiltValueNullFieldError.checkNotNull(
                  shareLink, r'GCreatePlaylistData_response_data', 'shareLink'),
              playlistId: BuiltValueNullFieldError.checkNotNull(
                  playlistId, r'GCreatePlaylistData_response_data', 'playlistId'),
              creatorOfPlaylist:
                  BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist, r'GCreatePlaylistData_response_data', 'creatorOfPlaylist'),
              totalDuration: BuiltValueNullFieldError.checkNotNull(totalDuration, r'GCreatePlaylistData_response_data', 'totalDuration'),
              numberOfPosts: BuiltValueNullFieldError.checkNotNull(numberOfPosts, r'GCreatePlaylistData_response_data', 'numberOfPosts'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfPosts';
        listOfPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePlaylistData_response_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GEditPlaylistData extends GEditPlaylistData {
  @override
  final String G__typename;
  @override
  final GEditPlaylistData_response? response;

  factory _$GEditPlaylistData(
          [void Function(GEditPlaylistDataBuilder)? updates]) =>
      (new GEditPlaylistDataBuilder()..update(updates))._build();

  _$GEditPlaylistData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GEditPlaylistData', 'G__typename');
  }

  @override
  GEditPlaylistData rebuild(void Function(GEditPlaylistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEditPlaylistDataBuilder toBuilder() =>
      new GEditPlaylistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEditPlaylistData &&
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
    return (newBuiltValueToStringHelper(r'GEditPlaylistData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GEditPlaylistDataBuilder
    implements Builder<GEditPlaylistData, GEditPlaylistDataBuilder> {
  _$GEditPlaylistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GEditPlaylistData_responseBuilder? _response;
  GEditPlaylistData_responseBuilder get response =>
      _$this._response ??= new GEditPlaylistData_responseBuilder();
  set response(GEditPlaylistData_responseBuilder? response) =>
      _$this._response = response;

  GEditPlaylistDataBuilder() {
    GEditPlaylistData._initializeBuilder(this);
  }

  GEditPlaylistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEditPlaylistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEditPlaylistData;
  }

  @override
  void update(void Function(GEditPlaylistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEditPlaylistData build() => _build();

  _$GEditPlaylistData _build() {
    _$GEditPlaylistData _$result;
    try {
      _$result = _$v ??
          new _$GEditPlaylistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GEditPlaylistData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GEditPlaylistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GEditPlaylistData_response extends GEditPlaylistData_response {
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
  final GEditPlaylistData_response_data? data;

  factory _$GEditPlaylistData_response(
          [void Function(GEditPlaylistData_responseBuilder)? updates]) =>
      (new GEditPlaylistData_responseBuilder()..update(updates))._build();

  _$GEditPlaylistData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GEditPlaylistData_response', 'G__typename');
  }

  @override
  GEditPlaylistData_response rebuild(
          void Function(GEditPlaylistData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEditPlaylistData_responseBuilder toBuilder() =>
      new GEditPlaylistData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEditPlaylistData_response &&
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
    return (newBuiltValueToStringHelper(r'GEditPlaylistData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GEditPlaylistData_responseBuilder
    implements
        Builder<GEditPlaylistData_response, GEditPlaylistData_responseBuilder> {
  _$GEditPlaylistData_response? _$v;

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

  GEditPlaylistData_response_dataBuilder? _data;
  GEditPlaylistData_response_dataBuilder get data =>
      _$this._data ??= new GEditPlaylistData_response_dataBuilder();
  set data(GEditPlaylistData_response_dataBuilder? data) => _$this._data = data;

  GEditPlaylistData_responseBuilder() {
    GEditPlaylistData_response._initializeBuilder(this);
  }

  GEditPlaylistData_responseBuilder get _$this {
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
  void replace(GEditPlaylistData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEditPlaylistData_response;
  }

  @override
  void update(void Function(GEditPlaylistData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEditPlaylistData_response build() => _build();

  _$GEditPlaylistData_response _build() {
    _$GEditPlaylistData_response _$result;
    try {
      _$result = _$v ??
          new _$GEditPlaylistData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GEditPlaylistData_response', 'G__typename'),
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
            r'GEditPlaylistData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GEditPlaylistData_response_data
    extends GEditPlaylistData_response_data {
  @override
  final String G__typename;
  @override
  final _i2.GprivacyType privacy;
  @override
  final String userId;
  @override
  final BuiltList<String> listOfPosts;
  @override
  final String? coverImage;
  @override
  final String createdOn;
  @override
  final String title;
  @override
  final String shareLink;
  @override
  final String playlistId;
  @override
  final String creatorOfPlaylist;
  @override
  final int totalDuration;
  @override
  final int numberOfPosts;

  factory _$GEditPlaylistData_response_data(
          [void Function(GEditPlaylistData_response_dataBuilder)? updates]) =>
      (new GEditPlaylistData_response_dataBuilder()..update(updates))._build();

  _$GEditPlaylistData_response_data._(
      {required this.G__typename,
      required this.privacy,
      required this.userId,
      required this.listOfPosts,
      this.coverImage,
      required this.createdOn,
      required this.title,
      required this.shareLink,
      required this.playlistId,
      required this.creatorOfPlaylist,
      required this.totalDuration,
      required this.numberOfPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GEditPlaylistData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        privacy, r'GEditPlaylistData_response_data', 'privacy');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GEditPlaylistData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        listOfPosts, r'GEditPlaylistData_response_data', 'listOfPosts');
    BuiltValueNullFieldError.checkNotNull(
        createdOn, r'GEditPlaylistData_response_data', 'createdOn');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GEditPlaylistData_response_data', 'title');
    BuiltValueNullFieldError.checkNotNull(
        shareLink, r'GEditPlaylistData_response_data', 'shareLink');
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GEditPlaylistData_response_data', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist,
        r'GEditPlaylistData_response_data', 'creatorOfPlaylist');
    BuiltValueNullFieldError.checkNotNull(
        totalDuration, r'GEditPlaylistData_response_data', 'totalDuration');
    BuiltValueNullFieldError.checkNotNull(
        numberOfPosts, r'GEditPlaylistData_response_data', 'numberOfPosts');
  }

  @override
  GEditPlaylistData_response_data rebuild(
          void Function(GEditPlaylistData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEditPlaylistData_response_dataBuilder toBuilder() =>
      new GEditPlaylistData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEditPlaylistData_response_data &&
        G__typename == other.G__typename &&
        privacy == other.privacy &&
        userId == other.userId &&
        listOfPosts == other.listOfPosts &&
        coverImage == other.coverImage &&
        createdOn == other.createdOn &&
        title == other.title &&
        shareLink == other.shareLink &&
        playlistId == other.playlistId &&
        creatorOfPlaylist == other.creatorOfPlaylist &&
        totalDuration == other.totalDuration &&
        numberOfPosts == other.numberOfPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, listOfPosts.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shareLink.hashCode);
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, creatorOfPlaylist.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, numberOfPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GEditPlaylistData_response_data')
          ..add('G__typename', G__typename)
          ..add('privacy', privacy)
          ..add('userId', userId)
          ..add('listOfPosts', listOfPosts)
          ..add('coverImage', coverImage)
          ..add('createdOn', createdOn)
          ..add('title', title)
          ..add('shareLink', shareLink)
          ..add('playlistId', playlistId)
          ..add('creatorOfPlaylist', creatorOfPlaylist)
          ..add('totalDuration', totalDuration)
          ..add('numberOfPosts', numberOfPosts))
        .toString();
  }
}

class GEditPlaylistData_response_dataBuilder
    implements
        Builder<GEditPlaylistData_response_data,
            GEditPlaylistData_response_dataBuilder> {
  _$GEditPlaylistData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GprivacyType? _privacy;
  _i2.GprivacyType? get privacy => _$this._privacy;
  set privacy(_i2.GprivacyType? privacy) => _$this._privacy = privacy;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<String>? _listOfPosts;
  ListBuilder<String> get listOfPosts =>
      _$this._listOfPosts ??= new ListBuilder<String>();
  set listOfPosts(ListBuilder<String>? listOfPosts) =>
      _$this._listOfPosts = listOfPosts;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shareLink;
  String? get shareLink => _$this._shareLink;
  set shareLink(String? shareLink) => _$this._shareLink = shareLink;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _creatorOfPlaylist;
  String? get creatorOfPlaylist => _$this._creatorOfPlaylist;
  set creatorOfPlaylist(String? creatorOfPlaylist) =>
      _$this._creatorOfPlaylist = creatorOfPlaylist;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  int? _numberOfPosts;
  int? get numberOfPosts => _$this._numberOfPosts;
  set numberOfPosts(int? numberOfPosts) =>
      _$this._numberOfPosts = numberOfPosts;

  GEditPlaylistData_response_dataBuilder() {
    GEditPlaylistData_response_data._initializeBuilder(this);
  }

  GEditPlaylistData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _privacy = $v.privacy;
      _userId = $v.userId;
      _listOfPosts = $v.listOfPosts.toBuilder();
      _coverImage = $v.coverImage;
      _createdOn = $v.createdOn;
      _title = $v.title;
      _shareLink = $v.shareLink;
      _playlistId = $v.playlistId;
      _creatorOfPlaylist = $v.creatorOfPlaylist;
      _totalDuration = $v.totalDuration;
      _numberOfPosts = $v.numberOfPosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEditPlaylistData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEditPlaylistData_response_data;
  }

  @override
  void update(void Function(GEditPlaylistData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEditPlaylistData_response_data build() => _build();

  _$GEditPlaylistData_response_data _build() {
    _$GEditPlaylistData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GEditPlaylistData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GEditPlaylistData_response_data', 'G__typename'),
              privacy: BuiltValueNullFieldError.checkNotNull(
                  privacy, r'GEditPlaylistData_response_data', 'privacy'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GEditPlaylistData_response_data', 'userId'),
              listOfPosts: listOfPosts.build(),
              coverImage: coverImage,
              createdOn: BuiltValueNullFieldError.checkNotNull(
                  createdOn, r'GEditPlaylistData_response_data', 'createdOn'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GEditPlaylistData_response_data', 'title'),
              shareLink: BuiltValueNullFieldError.checkNotNull(
                  shareLink, r'GEditPlaylistData_response_data', 'shareLink'),
              playlistId: BuiltValueNullFieldError.checkNotNull(
                  playlistId, r'GEditPlaylistData_response_data', 'playlistId'),
              creatorOfPlaylist:
                  BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist, r'GEditPlaylistData_response_data', 'creatorOfPlaylist'),
              totalDuration: BuiltValueNullFieldError.checkNotNull(totalDuration, r'GEditPlaylistData_response_data', 'totalDuration'),
              numberOfPosts: BuiltValueNullFieldError.checkNotNull(numberOfPosts, r'GEditPlaylistData_response_data', 'numberOfPosts'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfPosts';
        listOfPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GEditPlaylistData_response_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeletePlaylistData extends GDeletePlaylistData {
  @override
  final String G__typename;
  @override
  final GDeletePlaylistData_response? response;

  factory _$GDeletePlaylistData(
          [void Function(GDeletePlaylistDataBuilder)? updates]) =>
      (new GDeletePlaylistDataBuilder()..update(updates))._build();

  _$GDeletePlaylistData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeletePlaylistData', 'G__typename');
  }

  @override
  GDeletePlaylistData rebuild(
          void Function(GDeletePlaylistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletePlaylistDataBuilder toBuilder() =>
      new GDeletePlaylistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeletePlaylistData &&
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
    return (newBuiltValueToStringHelper(r'GDeletePlaylistData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GDeletePlaylistDataBuilder
    implements Builder<GDeletePlaylistData, GDeletePlaylistDataBuilder> {
  _$GDeletePlaylistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeletePlaylistData_responseBuilder? _response;
  GDeletePlaylistData_responseBuilder get response =>
      _$this._response ??= new GDeletePlaylistData_responseBuilder();
  set response(GDeletePlaylistData_responseBuilder? response) =>
      _$this._response = response;

  GDeletePlaylistDataBuilder() {
    GDeletePlaylistData._initializeBuilder(this);
  }

  GDeletePlaylistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeletePlaylistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletePlaylistData;
  }

  @override
  void update(void Function(GDeletePlaylistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeletePlaylistData build() => _build();

  _$GDeletePlaylistData _build() {
    _$GDeletePlaylistData _$result;
    try {
      _$result = _$v ??
          new _$GDeletePlaylistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDeletePlaylistData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeletePlaylistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeletePlaylistData_response extends GDeletePlaylistData_response {
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

  factory _$GDeletePlaylistData_response(
          [void Function(GDeletePlaylistData_responseBuilder)? updates]) =>
      (new GDeletePlaylistData_responseBuilder()..update(updates))._build();

  _$GDeletePlaylistData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeletePlaylistData_response', 'G__typename');
  }

  @override
  GDeletePlaylistData_response rebuild(
          void Function(GDeletePlaylistData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletePlaylistData_responseBuilder toBuilder() =>
      new GDeletePlaylistData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeletePlaylistData_response &&
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
    return (newBuiltValueToStringHelper(r'GDeletePlaylistData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GDeletePlaylistData_responseBuilder
    implements
        Builder<GDeletePlaylistData_response,
            GDeletePlaylistData_responseBuilder> {
  _$GDeletePlaylistData_response? _$v;

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

  GDeletePlaylistData_responseBuilder() {
    GDeletePlaylistData_response._initializeBuilder(this);
  }

  GDeletePlaylistData_responseBuilder get _$this {
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
  void replace(GDeletePlaylistData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletePlaylistData_response;
  }

  @override
  void update(void Function(GDeletePlaylistData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeletePlaylistData_response build() => _build();

  _$GDeletePlaylistData_response _build() {
    final _$result = _$v ??
        new _$GDeletePlaylistData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDeletePlaylistData_response', 'G__typename'),
            error: error,
            message: message,
            statusCode: statusCode,
            errorCodeForClient: errorCodeForClient,
            data: data);
    replace(_$result);
    return _$result;
  }
}

class _$GAddPostToPlaylistData extends GAddPostToPlaylistData {
  @override
  final String G__typename;
  @override
  final GAddPostToPlaylistData_response? response;

  factory _$GAddPostToPlaylistData(
          [void Function(GAddPostToPlaylistDataBuilder)? updates]) =>
      (new GAddPostToPlaylistDataBuilder()..update(updates))._build();

  _$GAddPostToPlaylistData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAddPostToPlaylistData', 'G__typename');
  }

  @override
  GAddPostToPlaylistData rebuild(
          void Function(GAddPostToPlaylistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddPostToPlaylistDataBuilder toBuilder() =>
      new GAddPostToPlaylistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddPostToPlaylistData &&
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
    return (newBuiltValueToStringHelper(r'GAddPostToPlaylistData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GAddPostToPlaylistDataBuilder
    implements Builder<GAddPostToPlaylistData, GAddPostToPlaylistDataBuilder> {
  _$GAddPostToPlaylistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAddPostToPlaylistData_responseBuilder? _response;
  GAddPostToPlaylistData_responseBuilder get response =>
      _$this._response ??= new GAddPostToPlaylistData_responseBuilder();
  set response(GAddPostToPlaylistData_responseBuilder? response) =>
      _$this._response = response;

  GAddPostToPlaylistDataBuilder() {
    GAddPostToPlaylistData._initializeBuilder(this);
  }

  GAddPostToPlaylistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddPostToPlaylistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddPostToPlaylistData;
  }

  @override
  void update(void Function(GAddPostToPlaylistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddPostToPlaylistData build() => _build();

  _$GAddPostToPlaylistData _build() {
    _$GAddPostToPlaylistData _$result;
    try {
      _$result = _$v ??
          new _$GAddPostToPlaylistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAddPostToPlaylistData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddPostToPlaylistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddPostToPlaylistData_response
    extends GAddPostToPlaylistData_response {
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
  final GAddPostToPlaylistData_response_data? data;

  factory _$GAddPostToPlaylistData_response(
          [void Function(GAddPostToPlaylistData_responseBuilder)? updates]) =>
      (new GAddPostToPlaylistData_responseBuilder()..update(updates))._build();

  _$GAddPostToPlaylistData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAddPostToPlaylistData_response', 'G__typename');
  }

  @override
  GAddPostToPlaylistData_response rebuild(
          void Function(GAddPostToPlaylistData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddPostToPlaylistData_responseBuilder toBuilder() =>
      new GAddPostToPlaylistData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddPostToPlaylistData_response &&
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
    return (newBuiltValueToStringHelper(r'GAddPostToPlaylistData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GAddPostToPlaylistData_responseBuilder
    implements
        Builder<GAddPostToPlaylistData_response,
            GAddPostToPlaylistData_responseBuilder> {
  _$GAddPostToPlaylistData_response? _$v;

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

  GAddPostToPlaylistData_response_dataBuilder? _data;
  GAddPostToPlaylistData_response_dataBuilder get data =>
      _$this._data ??= new GAddPostToPlaylistData_response_dataBuilder();
  set data(GAddPostToPlaylistData_response_dataBuilder? data) =>
      _$this._data = data;

  GAddPostToPlaylistData_responseBuilder() {
    GAddPostToPlaylistData_response._initializeBuilder(this);
  }

  GAddPostToPlaylistData_responseBuilder get _$this {
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
  void replace(GAddPostToPlaylistData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddPostToPlaylistData_response;
  }

  @override
  void update(void Function(GAddPostToPlaylistData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddPostToPlaylistData_response build() => _build();

  _$GAddPostToPlaylistData_response _build() {
    _$GAddPostToPlaylistData_response _$result;
    try {
      _$result = _$v ??
          new _$GAddPostToPlaylistData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GAddPostToPlaylistData_response', 'G__typename'),
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
            r'GAddPostToPlaylistData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddPostToPlaylistData_response_data
    extends GAddPostToPlaylistData_response_data {
  @override
  final String G__typename;
  @override
  final _i2.GprivacyType privacy;
  @override
  final String userId;
  @override
  final BuiltList<String> listOfPosts;
  @override
  final String? coverImage;
  @override
  final String createdOn;
  @override
  final String title;
  @override
  final String shareLink;
  @override
  final String playlistId;
  @override
  final String creatorOfPlaylist;
  @override
  final int totalDuration;
  @override
  final int numberOfPosts;

  factory _$GAddPostToPlaylistData_response_data(
          [void Function(GAddPostToPlaylistData_response_dataBuilder)?
              updates]) =>
      (new GAddPostToPlaylistData_response_dataBuilder()..update(updates))
          ._build();

  _$GAddPostToPlaylistData_response_data._(
      {required this.G__typename,
      required this.privacy,
      required this.userId,
      required this.listOfPosts,
      this.coverImage,
      required this.createdOn,
      required this.title,
      required this.shareLink,
      required this.playlistId,
      required this.creatorOfPlaylist,
      required this.totalDuration,
      required this.numberOfPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAddPostToPlaylistData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        privacy, r'GAddPostToPlaylistData_response_data', 'privacy');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GAddPostToPlaylistData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        listOfPosts, r'GAddPostToPlaylistData_response_data', 'listOfPosts');
    BuiltValueNullFieldError.checkNotNull(
        createdOn, r'GAddPostToPlaylistData_response_data', 'createdOn');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GAddPostToPlaylistData_response_data', 'title');
    BuiltValueNullFieldError.checkNotNull(
        shareLink, r'GAddPostToPlaylistData_response_data', 'shareLink');
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GAddPostToPlaylistData_response_data', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist,
        r'GAddPostToPlaylistData_response_data', 'creatorOfPlaylist');
    BuiltValueNullFieldError.checkNotNull(totalDuration,
        r'GAddPostToPlaylistData_response_data', 'totalDuration');
    BuiltValueNullFieldError.checkNotNull(numberOfPosts,
        r'GAddPostToPlaylistData_response_data', 'numberOfPosts');
  }

  @override
  GAddPostToPlaylistData_response_data rebuild(
          void Function(GAddPostToPlaylistData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddPostToPlaylistData_response_dataBuilder toBuilder() =>
      new GAddPostToPlaylistData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddPostToPlaylistData_response_data &&
        G__typename == other.G__typename &&
        privacy == other.privacy &&
        userId == other.userId &&
        listOfPosts == other.listOfPosts &&
        coverImage == other.coverImage &&
        createdOn == other.createdOn &&
        title == other.title &&
        shareLink == other.shareLink &&
        playlistId == other.playlistId &&
        creatorOfPlaylist == other.creatorOfPlaylist &&
        totalDuration == other.totalDuration &&
        numberOfPosts == other.numberOfPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, listOfPosts.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shareLink.hashCode);
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, creatorOfPlaylist.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, numberOfPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddPostToPlaylistData_response_data')
          ..add('G__typename', G__typename)
          ..add('privacy', privacy)
          ..add('userId', userId)
          ..add('listOfPosts', listOfPosts)
          ..add('coverImage', coverImage)
          ..add('createdOn', createdOn)
          ..add('title', title)
          ..add('shareLink', shareLink)
          ..add('playlistId', playlistId)
          ..add('creatorOfPlaylist', creatorOfPlaylist)
          ..add('totalDuration', totalDuration)
          ..add('numberOfPosts', numberOfPosts))
        .toString();
  }
}

class GAddPostToPlaylistData_response_dataBuilder
    implements
        Builder<GAddPostToPlaylistData_response_data,
            GAddPostToPlaylistData_response_dataBuilder> {
  _$GAddPostToPlaylistData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GprivacyType? _privacy;
  _i2.GprivacyType? get privacy => _$this._privacy;
  set privacy(_i2.GprivacyType? privacy) => _$this._privacy = privacy;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<String>? _listOfPosts;
  ListBuilder<String> get listOfPosts =>
      _$this._listOfPosts ??= new ListBuilder<String>();
  set listOfPosts(ListBuilder<String>? listOfPosts) =>
      _$this._listOfPosts = listOfPosts;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shareLink;
  String? get shareLink => _$this._shareLink;
  set shareLink(String? shareLink) => _$this._shareLink = shareLink;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _creatorOfPlaylist;
  String? get creatorOfPlaylist => _$this._creatorOfPlaylist;
  set creatorOfPlaylist(String? creatorOfPlaylist) =>
      _$this._creatorOfPlaylist = creatorOfPlaylist;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  int? _numberOfPosts;
  int? get numberOfPosts => _$this._numberOfPosts;
  set numberOfPosts(int? numberOfPosts) =>
      _$this._numberOfPosts = numberOfPosts;

  GAddPostToPlaylistData_response_dataBuilder() {
    GAddPostToPlaylistData_response_data._initializeBuilder(this);
  }

  GAddPostToPlaylistData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _privacy = $v.privacy;
      _userId = $v.userId;
      _listOfPosts = $v.listOfPosts.toBuilder();
      _coverImage = $v.coverImage;
      _createdOn = $v.createdOn;
      _title = $v.title;
      _shareLink = $v.shareLink;
      _playlistId = $v.playlistId;
      _creatorOfPlaylist = $v.creatorOfPlaylist;
      _totalDuration = $v.totalDuration;
      _numberOfPosts = $v.numberOfPosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddPostToPlaylistData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddPostToPlaylistData_response_data;
  }

  @override
  void update(
      void Function(GAddPostToPlaylistData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddPostToPlaylistData_response_data build() => _build();

  _$GAddPostToPlaylistData_response_data _build() {
    _$GAddPostToPlaylistData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GAddPostToPlaylistData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAddPostToPlaylistData_response_data', 'G__typename'),
              privacy: BuiltValueNullFieldError.checkNotNull(
                  privacy, r'GAddPostToPlaylistData_response_data', 'privacy'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GAddPostToPlaylistData_response_data', 'userId'),
              listOfPosts: listOfPosts.build(),
              coverImage: coverImage,
              createdOn: BuiltValueNullFieldError.checkNotNull(
                  createdOn, r'GAddPostToPlaylistData_response_data', 'createdOn'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GAddPostToPlaylistData_response_data', 'title'),
              shareLink: BuiltValueNullFieldError.checkNotNull(
                  shareLink, r'GAddPostToPlaylistData_response_data', 'shareLink'),
              playlistId: BuiltValueNullFieldError.checkNotNull(
                  playlistId, r'GAddPostToPlaylistData_response_data', 'playlistId'),
              creatorOfPlaylist: BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist, r'GAddPostToPlaylistData_response_data', 'creatorOfPlaylist'),
              totalDuration: BuiltValueNullFieldError.checkNotNull(totalDuration, r'GAddPostToPlaylistData_response_data', 'totalDuration'),
              numberOfPosts: BuiltValueNullFieldError.checkNotNull(numberOfPosts, r'GAddPostToPlaylistData_response_data', 'numberOfPosts'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfPosts';
        listOfPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddPostToPlaylistData_response_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSavePostToDefaultPlaylistData extends GSavePostToDefaultPlaylistData {
  @override
  final String G__typename;
  @override
  final GSavePostToDefaultPlaylistData_response? response;

  factory _$GSavePostToDefaultPlaylistData(
          [void Function(GSavePostToDefaultPlaylistDataBuilder)? updates]) =>
      (new GSavePostToDefaultPlaylistDataBuilder()..update(updates))._build();

  _$GSavePostToDefaultPlaylistData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSavePostToDefaultPlaylistData', 'G__typename');
  }

  @override
  GSavePostToDefaultPlaylistData rebuild(
          void Function(GSavePostToDefaultPlaylistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSavePostToDefaultPlaylistDataBuilder toBuilder() =>
      new GSavePostToDefaultPlaylistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSavePostToDefaultPlaylistData &&
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
    return (newBuiltValueToStringHelper(r'GSavePostToDefaultPlaylistData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GSavePostToDefaultPlaylistDataBuilder
    implements
        Builder<GSavePostToDefaultPlaylistData,
            GSavePostToDefaultPlaylistDataBuilder> {
  _$GSavePostToDefaultPlaylistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSavePostToDefaultPlaylistData_responseBuilder? _response;
  GSavePostToDefaultPlaylistData_responseBuilder get response =>
      _$this._response ??= new GSavePostToDefaultPlaylistData_responseBuilder();
  set response(GSavePostToDefaultPlaylistData_responseBuilder? response) =>
      _$this._response = response;

  GSavePostToDefaultPlaylistDataBuilder() {
    GSavePostToDefaultPlaylistData._initializeBuilder(this);
  }

  GSavePostToDefaultPlaylistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSavePostToDefaultPlaylistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSavePostToDefaultPlaylistData;
  }

  @override
  void update(void Function(GSavePostToDefaultPlaylistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSavePostToDefaultPlaylistData build() => _build();

  _$GSavePostToDefaultPlaylistData _build() {
    _$GSavePostToDefaultPlaylistData _$result;
    try {
      _$result = _$v ??
          new _$GSavePostToDefaultPlaylistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSavePostToDefaultPlaylistData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSavePostToDefaultPlaylistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSavePostToDefaultPlaylistData_response
    extends GSavePostToDefaultPlaylistData_response {
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
  final GSavePostToDefaultPlaylistData_response_data? data;

  factory _$GSavePostToDefaultPlaylistData_response(
          [void Function(GSavePostToDefaultPlaylistData_responseBuilder)?
              updates]) =>
      (new GSavePostToDefaultPlaylistData_responseBuilder()..update(updates))
          ._build();

  _$GSavePostToDefaultPlaylistData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSavePostToDefaultPlaylistData_response', 'G__typename');
  }

  @override
  GSavePostToDefaultPlaylistData_response rebuild(
          void Function(GSavePostToDefaultPlaylistData_responseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSavePostToDefaultPlaylistData_responseBuilder toBuilder() =>
      new GSavePostToDefaultPlaylistData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSavePostToDefaultPlaylistData_response &&
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
            r'GSavePostToDefaultPlaylistData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GSavePostToDefaultPlaylistData_responseBuilder
    implements
        Builder<GSavePostToDefaultPlaylistData_response,
            GSavePostToDefaultPlaylistData_responseBuilder> {
  _$GSavePostToDefaultPlaylistData_response? _$v;

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

  GSavePostToDefaultPlaylistData_response_dataBuilder? _data;
  GSavePostToDefaultPlaylistData_response_dataBuilder get data =>
      _$this._data ??=
          new GSavePostToDefaultPlaylistData_response_dataBuilder();
  set data(GSavePostToDefaultPlaylistData_response_dataBuilder? data) =>
      _$this._data = data;

  GSavePostToDefaultPlaylistData_responseBuilder() {
    GSavePostToDefaultPlaylistData_response._initializeBuilder(this);
  }

  GSavePostToDefaultPlaylistData_responseBuilder get _$this {
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
  void replace(GSavePostToDefaultPlaylistData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSavePostToDefaultPlaylistData_response;
  }

  @override
  void update(
      void Function(GSavePostToDefaultPlaylistData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSavePostToDefaultPlaylistData_response build() => _build();

  _$GSavePostToDefaultPlaylistData_response _build() {
    _$GSavePostToDefaultPlaylistData_response _$result;
    try {
      _$result = _$v ??
          new _$GSavePostToDefaultPlaylistData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSavePostToDefaultPlaylistData_response', 'G__typename'),
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
            r'GSavePostToDefaultPlaylistData_response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSavePostToDefaultPlaylistData_response_data
    extends GSavePostToDefaultPlaylistData_response_data {
  @override
  final String G__typename;
  @override
  final _i2.GprivacyType privacy;
  @override
  final String userId;
  @override
  final BuiltList<String> listOfPosts;
  @override
  final String? coverImage;
  @override
  final String createdOn;
  @override
  final String title;
  @override
  final String shareLink;
  @override
  final String playlistId;
  @override
  final String creatorOfPlaylist;
  @override
  final int totalDuration;
  @override
  final int numberOfPosts;

  factory _$GSavePostToDefaultPlaylistData_response_data(
          [void Function(GSavePostToDefaultPlaylistData_response_dataBuilder)?
              updates]) =>
      (new GSavePostToDefaultPlaylistData_response_dataBuilder()
            ..update(updates))
          ._build();

  _$GSavePostToDefaultPlaylistData_response_data._(
      {required this.G__typename,
      required this.privacy,
      required this.userId,
      required this.listOfPosts,
      this.coverImage,
      required this.createdOn,
      required this.title,
      required this.shareLink,
      required this.playlistId,
      required this.creatorOfPlaylist,
      required this.totalDuration,
      required this.numberOfPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSavePostToDefaultPlaylistData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        privacy, r'GSavePostToDefaultPlaylistData_response_data', 'privacy');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GSavePostToDefaultPlaylistData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(listOfPosts,
        r'GSavePostToDefaultPlaylistData_response_data', 'listOfPosts');
    BuiltValueNullFieldError.checkNotNull(createdOn,
        r'GSavePostToDefaultPlaylistData_response_data', 'createdOn');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GSavePostToDefaultPlaylistData_response_data', 'title');
    BuiltValueNullFieldError.checkNotNull(shareLink,
        r'GSavePostToDefaultPlaylistData_response_data', 'shareLink');
    BuiltValueNullFieldError.checkNotNull(playlistId,
        r'GSavePostToDefaultPlaylistData_response_data', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist,
        r'GSavePostToDefaultPlaylistData_response_data', 'creatorOfPlaylist');
    BuiltValueNullFieldError.checkNotNull(totalDuration,
        r'GSavePostToDefaultPlaylistData_response_data', 'totalDuration');
    BuiltValueNullFieldError.checkNotNull(numberOfPosts,
        r'GSavePostToDefaultPlaylistData_response_data', 'numberOfPosts');
  }

  @override
  GSavePostToDefaultPlaylistData_response_data rebuild(
          void Function(GSavePostToDefaultPlaylistData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSavePostToDefaultPlaylistData_response_dataBuilder toBuilder() =>
      new GSavePostToDefaultPlaylistData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSavePostToDefaultPlaylistData_response_data &&
        G__typename == other.G__typename &&
        privacy == other.privacy &&
        userId == other.userId &&
        listOfPosts == other.listOfPosts &&
        coverImage == other.coverImage &&
        createdOn == other.createdOn &&
        title == other.title &&
        shareLink == other.shareLink &&
        playlistId == other.playlistId &&
        creatorOfPlaylist == other.creatorOfPlaylist &&
        totalDuration == other.totalDuration &&
        numberOfPosts == other.numberOfPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, listOfPosts.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shareLink.hashCode);
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, creatorOfPlaylist.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, numberOfPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSavePostToDefaultPlaylistData_response_data')
          ..add('G__typename', G__typename)
          ..add('privacy', privacy)
          ..add('userId', userId)
          ..add('listOfPosts', listOfPosts)
          ..add('coverImage', coverImage)
          ..add('createdOn', createdOn)
          ..add('title', title)
          ..add('shareLink', shareLink)
          ..add('playlistId', playlistId)
          ..add('creatorOfPlaylist', creatorOfPlaylist)
          ..add('totalDuration', totalDuration)
          ..add('numberOfPosts', numberOfPosts))
        .toString();
  }
}

class GSavePostToDefaultPlaylistData_response_dataBuilder
    implements
        Builder<GSavePostToDefaultPlaylistData_response_data,
            GSavePostToDefaultPlaylistData_response_dataBuilder> {
  _$GSavePostToDefaultPlaylistData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GprivacyType? _privacy;
  _i2.GprivacyType? get privacy => _$this._privacy;
  set privacy(_i2.GprivacyType? privacy) => _$this._privacy = privacy;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<String>? _listOfPosts;
  ListBuilder<String> get listOfPosts =>
      _$this._listOfPosts ??= new ListBuilder<String>();
  set listOfPosts(ListBuilder<String>? listOfPosts) =>
      _$this._listOfPosts = listOfPosts;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shareLink;
  String? get shareLink => _$this._shareLink;
  set shareLink(String? shareLink) => _$this._shareLink = shareLink;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _creatorOfPlaylist;
  String? get creatorOfPlaylist => _$this._creatorOfPlaylist;
  set creatorOfPlaylist(String? creatorOfPlaylist) =>
      _$this._creatorOfPlaylist = creatorOfPlaylist;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  int? _numberOfPosts;
  int? get numberOfPosts => _$this._numberOfPosts;
  set numberOfPosts(int? numberOfPosts) =>
      _$this._numberOfPosts = numberOfPosts;

  GSavePostToDefaultPlaylistData_response_dataBuilder() {
    GSavePostToDefaultPlaylistData_response_data._initializeBuilder(this);
  }

  GSavePostToDefaultPlaylistData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _privacy = $v.privacy;
      _userId = $v.userId;
      _listOfPosts = $v.listOfPosts.toBuilder();
      _coverImage = $v.coverImage;
      _createdOn = $v.createdOn;
      _title = $v.title;
      _shareLink = $v.shareLink;
      _playlistId = $v.playlistId;
      _creatorOfPlaylist = $v.creatorOfPlaylist;
      _totalDuration = $v.totalDuration;
      _numberOfPosts = $v.numberOfPosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSavePostToDefaultPlaylistData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSavePostToDefaultPlaylistData_response_data;
  }

  @override
  void update(
      void Function(GSavePostToDefaultPlaylistData_response_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSavePostToDefaultPlaylistData_response_data build() => _build();

  _$GSavePostToDefaultPlaylistData_response_data _build() {
    _$GSavePostToDefaultPlaylistData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GSavePostToDefaultPlaylistData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSavePostToDefaultPlaylistData_response_data', 'G__typename'),
              privacy: BuiltValueNullFieldError.checkNotNull(
                  privacy, r'GSavePostToDefaultPlaylistData_response_data', 'privacy'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GSavePostToDefaultPlaylistData_response_data', 'userId'),
              listOfPosts: listOfPosts.build(),
              coverImage: coverImage,
              createdOn: BuiltValueNullFieldError.checkNotNull(
                  createdOn, r'GSavePostToDefaultPlaylistData_response_data', 'createdOn'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GSavePostToDefaultPlaylistData_response_data', 'title'),
              shareLink: BuiltValueNullFieldError.checkNotNull(
                  shareLink, r'GSavePostToDefaultPlaylistData_response_data', 'shareLink'),
              playlistId: BuiltValueNullFieldError.checkNotNull(
                  playlistId, r'GSavePostToDefaultPlaylistData_response_data', 'playlistId'),
              creatorOfPlaylist: BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist, r'GSavePostToDefaultPlaylistData_response_data', 'creatorOfPlaylist'),
              totalDuration: BuiltValueNullFieldError.checkNotNull(totalDuration, r'GSavePostToDefaultPlaylistData_response_data', 'totalDuration'),
              numberOfPosts: BuiltValueNullFieldError.checkNotNull(numberOfPosts, r'GSavePostToDefaultPlaylistData_response_data', 'numberOfPosts'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfPosts';
        listOfPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSavePostToDefaultPlaylistData_response_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemovePostFromPlaylistData extends GRemovePostFromPlaylistData {
  @override
  final String G__typename;
  @override
  final GRemovePostFromPlaylistData_response? response;

  factory _$GRemovePostFromPlaylistData(
          [void Function(GRemovePostFromPlaylistDataBuilder)? updates]) =>
      (new GRemovePostFromPlaylistDataBuilder()..update(updates))._build();

  _$GRemovePostFromPlaylistData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemovePostFromPlaylistData', 'G__typename');
  }

  @override
  GRemovePostFromPlaylistData rebuild(
          void Function(GRemovePostFromPlaylistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemovePostFromPlaylistDataBuilder toBuilder() =>
      new GRemovePostFromPlaylistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemovePostFromPlaylistData &&
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
    return (newBuiltValueToStringHelper(r'GRemovePostFromPlaylistData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GRemovePostFromPlaylistDataBuilder
    implements
        Builder<GRemovePostFromPlaylistData,
            GRemovePostFromPlaylistDataBuilder> {
  _$GRemovePostFromPlaylistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRemovePostFromPlaylistData_responseBuilder? _response;
  GRemovePostFromPlaylistData_responseBuilder get response =>
      _$this._response ??= new GRemovePostFromPlaylistData_responseBuilder();
  set response(GRemovePostFromPlaylistData_responseBuilder? response) =>
      _$this._response = response;

  GRemovePostFromPlaylistDataBuilder() {
    GRemovePostFromPlaylistData._initializeBuilder(this);
  }

  GRemovePostFromPlaylistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemovePostFromPlaylistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemovePostFromPlaylistData;
  }

  @override
  void update(void Function(GRemovePostFromPlaylistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemovePostFromPlaylistData build() => _build();

  _$GRemovePostFromPlaylistData _build() {
    _$GRemovePostFromPlaylistData _$result;
    try {
      _$result = _$v ??
          new _$GRemovePostFromPlaylistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRemovePostFromPlaylistData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRemovePostFromPlaylistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemovePostFromPlaylistData_response
    extends GRemovePostFromPlaylistData_response {
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
  final GRemovePostFromPlaylistData_response_data? data;

  factory _$GRemovePostFromPlaylistData_response(
          [void Function(GRemovePostFromPlaylistData_responseBuilder)?
              updates]) =>
      (new GRemovePostFromPlaylistData_responseBuilder()..update(updates))
          ._build();

  _$GRemovePostFromPlaylistData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemovePostFromPlaylistData_response', 'G__typename');
  }

  @override
  GRemovePostFromPlaylistData_response rebuild(
          void Function(GRemovePostFromPlaylistData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemovePostFromPlaylistData_responseBuilder toBuilder() =>
      new GRemovePostFromPlaylistData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemovePostFromPlaylistData_response &&
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
    return (newBuiltValueToStringHelper(r'GRemovePostFromPlaylistData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GRemovePostFromPlaylistData_responseBuilder
    implements
        Builder<GRemovePostFromPlaylistData_response,
            GRemovePostFromPlaylistData_responseBuilder> {
  _$GRemovePostFromPlaylistData_response? _$v;

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

  GRemovePostFromPlaylistData_response_dataBuilder? _data;
  GRemovePostFromPlaylistData_response_dataBuilder get data =>
      _$this._data ??= new GRemovePostFromPlaylistData_response_dataBuilder();
  set data(GRemovePostFromPlaylistData_response_dataBuilder? data) =>
      _$this._data = data;

  GRemovePostFromPlaylistData_responseBuilder() {
    GRemovePostFromPlaylistData_response._initializeBuilder(this);
  }

  GRemovePostFromPlaylistData_responseBuilder get _$this {
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
  void replace(GRemovePostFromPlaylistData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemovePostFromPlaylistData_response;
  }

  @override
  void update(
      void Function(GRemovePostFromPlaylistData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemovePostFromPlaylistData_response build() => _build();

  _$GRemovePostFromPlaylistData_response _build() {
    _$GRemovePostFromPlaylistData_response _$result;
    try {
      _$result = _$v ??
          new _$GRemovePostFromPlaylistData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GRemovePostFromPlaylistData_response', 'G__typename'),
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
            r'GRemovePostFromPlaylistData_response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemovePostFromPlaylistData_response_data
    extends GRemovePostFromPlaylistData_response_data {
  @override
  final String G__typename;
  @override
  final _i2.GprivacyType privacy;
  @override
  final String userId;
  @override
  final BuiltList<String> listOfPosts;
  @override
  final String? coverImage;
  @override
  final String createdOn;
  @override
  final String title;
  @override
  final String shareLink;
  @override
  final String playlistId;
  @override
  final String creatorOfPlaylist;
  @override
  final int totalDuration;
  @override
  final int numberOfPosts;

  factory _$GRemovePostFromPlaylistData_response_data(
          [void Function(GRemovePostFromPlaylistData_response_dataBuilder)?
              updates]) =>
      (new GRemovePostFromPlaylistData_response_dataBuilder()..update(updates))
          ._build();

  _$GRemovePostFromPlaylistData_response_data._(
      {required this.G__typename,
      required this.privacy,
      required this.userId,
      required this.listOfPosts,
      this.coverImage,
      required this.createdOn,
      required this.title,
      required this.shareLink,
      required this.playlistId,
      required this.creatorOfPlaylist,
      required this.totalDuration,
      required this.numberOfPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GRemovePostFromPlaylistData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        privacy, r'GRemovePostFromPlaylistData_response_data', 'privacy');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GRemovePostFromPlaylistData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(listOfPosts,
        r'GRemovePostFromPlaylistData_response_data', 'listOfPosts');
    BuiltValueNullFieldError.checkNotNull(
        createdOn, r'GRemovePostFromPlaylistData_response_data', 'createdOn');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GRemovePostFromPlaylistData_response_data', 'title');
    BuiltValueNullFieldError.checkNotNull(
        shareLink, r'GRemovePostFromPlaylistData_response_data', 'shareLink');
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GRemovePostFromPlaylistData_response_data', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist,
        r'GRemovePostFromPlaylistData_response_data', 'creatorOfPlaylist');
    BuiltValueNullFieldError.checkNotNull(totalDuration,
        r'GRemovePostFromPlaylistData_response_data', 'totalDuration');
    BuiltValueNullFieldError.checkNotNull(numberOfPosts,
        r'GRemovePostFromPlaylistData_response_data', 'numberOfPosts');
  }

  @override
  GRemovePostFromPlaylistData_response_data rebuild(
          void Function(GRemovePostFromPlaylistData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemovePostFromPlaylistData_response_dataBuilder toBuilder() =>
      new GRemovePostFromPlaylistData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemovePostFromPlaylistData_response_data &&
        G__typename == other.G__typename &&
        privacy == other.privacy &&
        userId == other.userId &&
        listOfPosts == other.listOfPosts &&
        coverImage == other.coverImage &&
        createdOn == other.createdOn &&
        title == other.title &&
        shareLink == other.shareLink &&
        playlistId == other.playlistId &&
        creatorOfPlaylist == other.creatorOfPlaylist &&
        totalDuration == other.totalDuration &&
        numberOfPosts == other.numberOfPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, listOfPosts.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shareLink.hashCode);
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, creatorOfPlaylist.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, numberOfPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GRemovePostFromPlaylistData_response_data')
          ..add('G__typename', G__typename)
          ..add('privacy', privacy)
          ..add('userId', userId)
          ..add('listOfPosts', listOfPosts)
          ..add('coverImage', coverImage)
          ..add('createdOn', createdOn)
          ..add('title', title)
          ..add('shareLink', shareLink)
          ..add('playlistId', playlistId)
          ..add('creatorOfPlaylist', creatorOfPlaylist)
          ..add('totalDuration', totalDuration)
          ..add('numberOfPosts', numberOfPosts))
        .toString();
  }
}

class GRemovePostFromPlaylistData_response_dataBuilder
    implements
        Builder<GRemovePostFromPlaylistData_response_data,
            GRemovePostFromPlaylistData_response_dataBuilder> {
  _$GRemovePostFromPlaylistData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GprivacyType? _privacy;
  _i2.GprivacyType? get privacy => _$this._privacy;
  set privacy(_i2.GprivacyType? privacy) => _$this._privacy = privacy;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<String>? _listOfPosts;
  ListBuilder<String> get listOfPosts =>
      _$this._listOfPosts ??= new ListBuilder<String>();
  set listOfPosts(ListBuilder<String>? listOfPosts) =>
      _$this._listOfPosts = listOfPosts;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shareLink;
  String? get shareLink => _$this._shareLink;
  set shareLink(String? shareLink) => _$this._shareLink = shareLink;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _creatorOfPlaylist;
  String? get creatorOfPlaylist => _$this._creatorOfPlaylist;
  set creatorOfPlaylist(String? creatorOfPlaylist) =>
      _$this._creatorOfPlaylist = creatorOfPlaylist;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  int? _numberOfPosts;
  int? get numberOfPosts => _$this._numberOfPosts;
  set numberOfPosts(int? numberOfPosts) =>
      _$this._numberOfPosts = numberOfPosts;

  GRemovePostFromPlaylistData_response_dataBuilder() {
    GRemovePostFromPlaylistData_response_data._initializeBuilder(this);
  }

  GRemovePostFromPlaylistData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _privacy = $v.privacy;
      _userId = $v.userId;
      _listOfPosts = $v.listOfPosts.toBuilder();
      _coverImage = $v.coverImage;
      _createdOn = $v.createdOn;
      _title = $v.title;
      _shareLink = $v.shareLink;
      _playlistId = $v.playlistId;
      _creatorOfPlaylist = $v.creatorOfPlaylist;
      _totalDuration = $v.totalDuration;
      _numberOfPosts = $v.numberOfPosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemovePostFromPlaylistData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemovePostFromPlaylistData_response_data;
  }

  @override
  void update(
      void Function(GRemovePostFromPlaylistData_response_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemovePostFromPlaylistData_response_data build() => _build();

  _$GRemovePostFromPlaylistData_response_data _build() {
    _$GRemovePostFromPlaylistData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GRemovePostFromPlaylistData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRemovePostFromPlaylistData_response_data', 'G__typename'),
              privacy: BuiltValueNullFieldError.checkNotNull(
                  privacy, r'GRemovePostFromPlaylistData_response_data', 'privacy'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GRemovePostFromPlaylistData_response_data', 'userId'),
              listOfPosts: listOfPosts.build(),
              coverImage: coverImage,
              createdOn: BuiltValueNullFieldError.checkNotNull(
                  createdOn, r'GRemovePostFromPlaylistData_response_data', 'createdOn'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GRemovePostFromPlaylistData_response_data', 'title'),
              shareLink: BuiltValueNullFieldError.checkNotNull(
                  shareLink, r'GRemovePostFromPlaylistData_response_data', 'shareLink'),
              playlistId: BuiltValueNullFieldError.checkNotNull(
                  playlistId, r'GRemovePostFromPlaylistData_response_data', 'playlistId'),
              creatorOfPlaylist: BuiltValueNullFieldError.checkNotNull(creatorOfPlaylist, r'GRemovePostFromPlaylistData_response_data', 'creatorOfPlaylist'),
              totalDuration: BuiltValueNullFieldError.checkNotNull(totalDuration, r'GRemovePostFromPlaylistData_response_data', 'totalDuration'),
              numberOfPosts: BuiltValueNullFieldError.checkNotNull(numberOfPosts, r'GRemovePostFromPlaylistData_response_data', 'numberOfPosts'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfPosts';
        listOfPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRemovePostFromPlaylistData_response_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPlaylistData extends GPlaylistData {
  @override
  final String G__typename;
  @override
  final _i2.GprivacyType privacy;
  @override
  final String userId;
  @override
  final BuiltList<String> listOfPosts;
  @override
  final String? coverImage;
  @override
  final String createdOn;
  @override
  final String title;
  @override
  final String shareLink;
  @override
  final String playlistId;
  @override
  final String creatorOfPlaylist;
  @override
  final int totalDuration;
  @override
  final int numberOfPosts;

  factory _$GPlaylistData([void Function(GPlaylistDataBuilder)? updates]) =>
      (new GPlaylistDataBuilder()..update(updates))._build();

  _$GPlaylistData._(
      {required this.G__typename,
      required this.privacy,
      required this.userId,
      required this.listOfPosts,
      this.coverImage,
      required this.createdOn,
      required this.title,
      required this.shareLink,
      required this.playlistId,
      required this.creatorOfPlaylist,
      required this.totalDuration,
      required this.numberOfPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPlaylistData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(privacy, r'GPlaylistData', 'privacy');
    BuiltValueNullFieldError.checkNotNull(userId, r'GPlaylistData', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        listOfPosts, r'GPlaylistData', 'listOfPosts');
    BuiltValueNullFieldError.checkNotNull(
        createdOn, r'GPlaylistData', 'createdOn');
    BuiltValueNullFieldError.checkNotNull(title, r'GPlaylistData', 'title');
    BuiltValueNullFieldError.checkNotNull(
        shareLink, r'GPlaylistData', 'shareLink');
    BuiltValueNullFieldError.checkNotNull(
        playlistId, r'GPlaylistData', 'playlistId');
    BuiltValueNullFieldError.checkNotNull(
        creatorOfPlaylist, r'GPlaylistData', 'creatorOfPlaylist');
    BuiltValueNullFieldError.checkNotNull(
        totalDuration, r'GPlaylistData', 'totalDuration');
    BuiltValueNullFieldError.checkNotNull(
        numberOfPosts, r'GPlaylistData', 'numberOfPosts');
  }

  @override
  GPlaylistData rebuild(void Function(GPlaylistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPlaylistDataBuilder toBuilder() => new GPlaylistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPlaylistData &&
        G__typename == other.G__typename &&
        privacy == other.privacy &&
        userId == other.userId &&
        listOfPosts == other.listOfPosts &&
        coverImage == other.coverImage &&
        createdOn == other.createdOn &&
        title == other.title &&
        shareLink == other.shareLink &&
        playlistId == other.playlistId &&
        creatorOfPlaylist == other.creatorOfPlaylist &&
        totalDuration == other.totalDuration &&
        numberOfPosts == other.numberOfPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, listOfPosts.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shareLink.hashCode);
    _$hash = $jc(_$hash, playlistId.hashCode);
    _$hash = $jc(_$hash, creatorOfPlaylist.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, numberOfPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPlaylistData')
          ..add('G__typename', G__typename)
          ..add('privacy', privacy)
          ..add('userId', userId)
          ..add('listOfPosts', listOfPosts)
          ..add('coverImage', coverImage)
          ..add('createdOn', createdOn)
          ..add('title', title)
          ..add('shareLink', shareLink)
          ..add('playlistId', playlistId)
          ..add('creatorOfPlaylist', creatorOfPlaylist)
          ..add('totalDuration', totalDuration)
          ..add('numberOfPosts', numberOfPosts))
        .toString();
  }
}

class GPlaylistDataBuilder
    implements Builder<GPlaylistData, GPlaylistDataBuilder> {
  _$GPlaylistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GprivacyType? _privacy;
  _i2.GprivacyType? get privacy => _$this._privacy;
  set privacy(_i2.GprivacyType? privacy) => _$this._privacy = privacy;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<String>? _listOfPosts;
  ListBuilder<String> get listOfPosts =>
      _$this._listOfPosts ??= new ListBuilder<String>();
  set listOfPosts(ListBuilder<String>? listOfPosts) =>
      _$this._listOfPosts = listOfPosts;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shareLink;
  String? get shareLink => _$this._shareLink;
  set shareLink(String? shareLink) => _$this._shareLink = shareLink;

  String? _playlistId;
  String? get playlistId => _$this._playlistId;
  set playlistId(String? playlistId) => _$this._playlistId = playlistId;

  String? _creatorOfPlaylist;
  String? get creatorOfPlaylist => _$this._creatorOfPlaylist;
  set creatorOfPlaylist(String? creatorOfPlaylist) =>
      _$this._creatorOfPlaylist = creatorOfPlaylist;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  int? _numberOfPosts;
  int? get numberOfPosts => _$this._numberOfPosts;
  set numberOfPosts(int? numberOfPosts) =>
      _$this._numberOfPosts = numberOfPosts;

  GPlaylistDataBuilder() {
    GPlaylistData._initializeBuilder(this);
  }

  GPlaylistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _privacy = $v.privacy;
      _userId = $v.userId;
      _listOfPosts = $v.listOfPosts.toBuilder();
      _coverImage = $v.coverImage;
      _createdOn = $v.createdOn;
      _title = $v.title;
      _shareLink = $v.shareLink;
      _playlistId = $v.playlistId;
      _creatorOfPlaylist = $v.creatorOfPlaylist;
      _totalDuration = $v.totalDuration;
      _numberOfPosts = $v.numberOfPosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPlaylistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPlaylistData;
  }

  @override
  void update(void Function(GPlaylistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPlaylistData build() => _build();

  _$GPlaylistData _build() {
    _$GPlaylistData _$result;
    try {
      _$result = _$v ??
          new _$GPlaylistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPlaylistData', 'G__typename'),
              privacy: BuiltValueNullFieldError.checkNotNull(
                  privacy, r'GPlaylistData', 'privacy'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GPlaylistData', 'userId'),
              listOfPosts: listOfPosts.build(),
              coverImage: coverImage,
              createdOn: BuiltValueNullFieldError.checkNotNull(
                  createdOn, r'GPlaylistData', 'createdOn'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GPlaylistData', 'title'),
              shareLink: BuiltValueNullFieldError.checkNotNull(
                  shareLink, r'GPlaylistData', 'shareLink'),
              playlistId: BuiltValueNullFieldError.checkNotNull(
                  playlistId, r'GPlaylistData', 'playlistId'),
              creatorOfPlaylist: BuiltValueNullFieldError.checkNotNull(
                  creatorOfPlaylist, r'GPlaylistData', 'creatorOfPlaylist'),
              totalDuration:
                  BuiltValueNullFieldError.checkNotNull(totalDuration, r'GPlaylistData', 'totalDuration'),
              numberOfPosts: BuiltValueNullFieldError.checkNotNull(numberOfPosts, r'GPlaylistData', 'numberOfPosts'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfPosts';
        listOfPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPlaylistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
