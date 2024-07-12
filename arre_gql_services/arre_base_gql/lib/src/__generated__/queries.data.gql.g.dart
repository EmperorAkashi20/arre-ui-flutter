// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GTrendingHashtagsData> _$gTrendingHashtagsDataSerializer =
    new _$GTrendingHashtagsDataSerializer();
Serializer<GTrendingHashtagsData_response>
    _$gTrendingHashtagsDataResponseSerializer =
    new _$GTrendingHashtagsData_responseSerializer();
Serializer<GDeletePostData> _$gDeletePostDataSerializer =
    new _$GDeletePostDataSerializer();
Serializer<GDeletePostData_response> _$gDeletePostDataResponseSerializer =
    new _$GDeletePostData_responseSerializer();
Serializer<GLikePostData> _$gLikePostDataSerializer =
    new _$GLikePostDataSerializer();
Serializer<GLikePostData_response> _$gLikePostDataResponseSerializer =
    new _$GLikePostData_responseSerializer();
Serializer<GUnlikePostData> _$gUnlikePostDataSerializer =
    new _$GUnlikePostDataSerializer();
Serializer<GUnlikePostData_response> _$gUnlikePostDataResponseSerializer =
    new _$GUnlikePostData_responseSerializer();
Serializer<GPostCommentsRepliesData> _$gPostCommentsRepliesDataSerializer =
    new _$GPostCommentsRepliesDataSerializer();
Serializer<GPostCommentsRepliesData_response>
    _$gPostCommentsRepliesDataResponseSerializer =
    new _$GPostCommentsRepliesData_responseSerializer();
Serializer<GPostCommentsRepliesData_response_data>
    _$gPostCommentsRepliesDataResponseDataSerializer =
    new _$GPostCommentsRepliesData_response_dataSerializer();
Serializer<GPostCommentsRepliesData_response_data_secondLevelReplies>
    _$gPostCommentsRepliesDataResponseDataSecondLevelRepliesSerializer =
    new _$GPostCommentsRepliesData_response_data_secondLevelRepliesSerializer();
Serializer<
        GPostCommentsRepliesData_response_data_secondLevelReplies_interactions>
    _$gPostCommentsRepliesDataResponseDataSecondLevelRepliesInteractionsSerializer =
    new _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsSerializer();
Serializer<GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy>
    _$gPostCommentsRepliesDataResponseDataSecondLevelRepliesCreatedBySerializer =
    new _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBySerializer();
Serializer<GPostCommentsRepliesData_response_data_interactions>
    _$gPostCommentsRepliesDataResponseDataInteractionsSerializer =
    new _$GPostCommentsRepliesData_response_data_interactionsSerializer();
Serializer<GPostCommentsRepliesData_response_data_createdBy>
    _$gPostCommentsRepliesDataResponseDataCreatedBySerializer =
    new _$GPostCommentsRepliesData_response_data_createdBySerializer();
Serializer<GPostVoicepodCommentData> _$gPostVoicepodCommentDataSerializer =
    new _$GPostVoicepodCommentDataSerializer();
Serializer<GPostVoicepodCommentData_sendPostReply>
    _$gPostVoicepodCommentDataSendPostReplySerializer =
    new _$GPostVoicepodCommentData_sendPostReplySerializer();
Serializer<GPostVoicepodCommentData_sendPostReply_data>
    _$gPostVoicepodCommentDataSendPostReplyDataSerializer =
    new _$GPostVoicepodCommentData_sendPostReply_dataSerializer();
Serializer<GLikePostCommentData> _$gLikePostCommentDataSerializer =
    new _$GLikePostCommentDataSerializer();
Serializer<GLikePostCommentData_response>
    _$gLikePostCommentDataResponseSerializer =
    new _$GLikePostCommentData_responseSerializer();
Serializer<GUnlikePostCommentData> _$gUnlikePostCommentDataSerializer =
    new _$GUnlikePostCommentDataSerializer();
Serializer<GUnlikePostCommentData_response>
    _$gUnlikePostCommentDataResponseSerializer =
    new _$GUnlikePostCommentData_responseSerializer();
Serializer<GBlockUserData> _$gBlockUserDataSerializer =
    new _$GBlockUserDataSerializer();
Serializer<GBlockUserData_response> _$gBlockUserDataResponseSerializer =
    new _$GBlockUserData_responseSerializer();
Serializer<GBlockUserData_response_data>
    _$gBlockUserDataResponseDataSerializer =
    new _$GBlockUserData_response_dataSerializer();

class _$GTrendingHashtagsDataSerializer
    implements StructuredSerializer<GTrendingHashtagsData> {
  @override
  final Iterable<Type> types = const [
    GTrendingHashtagsData,
    _$GTrendingHashtagsData
  ];
  @override
  final String wireName = 'GTrendingHashtagsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTrendingHashtagsData object,
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
            specifiedType: const FullType(GTrendingHashtagsData_response)));
    }
    return result;
  }

  @override
  GTrendingHashtagsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTrendingHashtagsDataBuilder();

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
                      const FullType(GTrendingHashtagsData_response))!
              as GTrendingHashtagsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GTrendingHashtagsData_responseSerializer
    implements StructuredSerializer<GTrendingHashtagsData_response> {
  @override
  final Iterable<Type> types = const [
    GTrendingHashtagsData_response,
    _$GTrendingHashtagsData_response
  ];
  @override
  final String wireName = 'GTrendingHashtagsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTrendingHashtagsData_response object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GTrendingHashtagsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTrendingHashtagsData_responseBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeletePostDataSerializer
    implements StructuredSerializer<GDeletePostData> {
  @override
  final Iterable<Type> types = const [GDeletePostData, _$GDeletePostData];
  @override
  final String wireName = 'GDeletePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeletePostData object,
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
            specifiedType: const FullType(GDeletePostData_response)));
    }
    return result;
  }

  @override
  GDeletePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletePostDataBuilder();

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
                  specifiedType: const FullType(GDeletePostData_response))!
              as GDeletePostData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeletePostData_responseSerializer
    implements StructuredSerializer<GDeletePostData_response> {
  @override
  final Iterable<Type> types = const [
    GDeletePostData_response,
    _$GDeletePostData_response
  ];
  @override
  final String wireName = 'GDeletePostData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeletePostData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GDeletePostData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletePostData_responseBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostDataSerializer implements StructuredSerializer<GLikePostData> {
  @override
  final Iterable<Type> types = const [GLikePostData, _$GLikePostData];
  @override
  final String wireName = 'GLikePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLikePostData object,
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
            specifiedType: const FullType(GLikePostData_response)));
    }
    return result;
  }

  @override
  GLikePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostDataBuilder();

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
                  specifiedType: const FullType(GLikePostData_response))!
              as GLikePostData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostData_responseSerializer
    implements StructuredSerializer<GLikePostData_response> {
  @override
  final Iterable<Type> types = const [
    GLikePostData_response,
    _$GLikePostData_response
  ];
  @override
  final String wireName = 'GLikePostData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLikePostData_response object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GLikePostData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostData_responseBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUnlikePostDataSerializer
    implements StructuredSerializer<GUnlikePostData> {
  @override
  final Iterable<Type> types = const [GUnlikePostData, _$GUnlikePostData];
  @override
  final String wireName = 'GUnlikePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUnlikePostData object,
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
            specifiedType: const FullType(GUnlikePostData_response)));
    }
    return result;
  }

  @override
  GUnlikePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnlikePostDataBuilder();

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
                  specifiedType: const FullType(GUnlikePostData_response))!
              as GUnlikePostData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GUnlikePostData_responseSerializer
    implements StructuredSerializer<GUnlikePostData_response> {
  @override
  final Iterable<Type> types = const [
    GUnlikePostData_response,
    _$GUnlikePostData_response
  ];
  @override
  final String wireName = 'GUnlikePostData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUnlikePostData_response object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUnlikePostData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnlikePostData_responseBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentsRepliesDataSerializer
    implements StructuredSerializer<GPostCommentsRepliesData> {
  @override
  final Iterable<Type> types = const [
    GPostCommentsRepliesData,
    _$GPostCommentsRepliesData
  ];
  @override
  final String wireName = 'GPostCommentsRepliesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentsRepliesData object,
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
            specifiedType: const FullType(GPostCommentsRepliesData_response)));
    }
    return result;
  }

  @override
  GPostCommentsRepliesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentsRepliesDataBuilder();

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
                      const FullType(GPostCommentsRepliesData_response))!
              as GPostCommentsRepliesData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentsRepliesData_responseSerializer
    implements StructuredSerializer<GPostCommentsRepliesData_response> {
  @override
  final Iterable<Type> types = const [
    GPostCommentsRepliesData_response,
    _$GPostCommentsRepliesData_response
  ];
  @override
  final String wireName = 'GPostCommentsRepliesData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentsRepliesData_response object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GPostCommentsRepliesData_response_data)
            ])));
    }
    return result;
  }

  @override
  GPostCommentsRepliesData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentsRepliesData_responseBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GPostCommentsRepliesData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentsRepliesData_response_dataSerializer
    implements StructuredSerializer<GPostCommentsRepliesData_response_data> {
  @override
  final Iterable<Type> types = const [
    GPostCommentsRepliesData_response_data,
    _$GPostCommentsRepliesData_response_data
  ];
  @override
  final String wireName = 'GPostCommentsRepliesData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentsRepliesData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'replyLevel',
      serializers.serialize(object.replyLevel,
          specifiedType: const FullType(int)),
      'createdBy',
      serializers.serialize(object.createdBy,
          specifiedType:
              const FullType(GPostCommentsRepliesData_response_data_createdBy)),
    ];
    Object? value;
    value = object.currentUserInteractions;
    if (value != null) {
      result
        ..add('currentUserInteractions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.secondLevelReplies;
    if (value != null) {
      result
        ..add('secondLevelReplies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GPostCommentsRepliesData_response_data_secondLevelReplies)
            ])));
    }
    value = object.interactions;
    if (value != null) {
      result
        ..add('interactions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GPostCommentsRepliesData_response_data_interactions)));
    }
    return result;
  }

  @override
  GPostCommentsRepliesData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentsRepliesData_response_dataBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'currentUserInteractions':
          result.currentUserInteractions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'replyLevel':
          result.replyLevel = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'secondLevelReplies':
          result.secondLevelReplies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GPostCommentsRepliesData_response_data_secondLevelReplies)
              ]))! as BuiltList<Object?>);
          break;
        case 'interactions':
          result.interactions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPostCommentsRepliesData_response_data_interactions))!
              as GPostCommentsRepliesData_response_data_interactions);
          break;
        case 'createdBy':
          result.createdBy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPostCommentsRepliesData_response_data_createdBy))!
              as GPostCommentsRepliesData_response_data_createdBy);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentsRepliesData_response_data_secondLevelRepliesSerializer
    implements
        StructuredSerializer<
            GPostCommentsRepliesData_response_data_secondLevelReplies> {
  @override
  final Iterable<Type> types = const [
    GPostCommentsRepliesData_response_data_secondLevelReplies,
    _$GPostCommentsRepliesData_response_data_secondLevelReplies
  ];
  @override
  final String wireName =
      'GPostCommentsRepliesData_response_data_secondLevelReplies';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPostCommentsRepliesData_response_data_secondLevelReplies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'replyLevel',
      serializers.serialize(object.replyLevel,
          specifiedType: const FullType(int)),
      'parentId',
      serializers.serialize(object.parentId,
          specifiedType: const FullType(String)),
      'createdBy',
      serializers.serialize(object.createdBy,
          specifiedType: const FullType(
              GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy)),
    ];
    Object? value;
    value = object.secondLevelInteractions;
    if (value != null) {
      result
        ..add('secondLevelInteractions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.interactions;
    if (value != null) {
      result
        ..add('interactions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GPostCommentsRepliesData_response_data_secondLevelReplies_interactions)));
    }
    return result;
  }

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'replyLevel':
          result.replyLevel = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'parentId':
          result.parentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'secondLevelInteractions':
          result.secondLevelInteractions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'interactions':
          result.interactions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPostCommentsRepliesData_response_data_secondLevelReplies_interactions))!
              as GPostCommentsRepliesData_response_data_secondLevelReplies_interactions);
          break;
        case 'createdBy':
          result.createdBy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy))!
              as GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsSerializer
    implements
        StructuredSerializer<
            GPostCommentsRepliesData_response_data_secondLevelReplies_interactions> {
  @override
  final Iterable<Type> types = const [
    GPostCommentsRepliesData_response_data_secondLevelReplies_interactions,
    _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
  ];
  @override
  final String wireName =
      'GPostCommentsRepliesData_response_data_secondLevelReplies_interactions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.heart;
    if (value != null) {
      result
        ..add('heart')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder();

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
        case 'heart':
          result.heart = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBySerializer
    implements
        StructuredSerializer<
            GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy> {
  @override
  final Iterable<Type> types = const [
    GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy,
    _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
  ];
  @override
  final String wireName =
      'GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAvatar;
    if (value != null) {
      result
        ..add('isAvatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatarUrl;
    if (value != null) {
      result
        ..add('avatarUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.themeUrl;
    if (value != null) {
      result
        ..add('themeUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAvatar':
          result.isAvatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatarUrl':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'themeUrl':
          result.themeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentsRepliesData_response_data_interactionsSerializer
    implements
        StructuredSerializer<
            GPostCommentsRepliesData_response_data_interactions> {
  @override
  final Iterable<Type> types = const [
    GPostCommentsRepliesData_response_data_interactions,
    _$GPostCommentsRepliesData_response_data_interactions
  ];
  @override
  final String wireName = 'GPostCommentsRepliesData_response_data_interactions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPostCommentsRepliesData_response_data_interactions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.heart;
    if (value != null) {
      result
        ..add('heart')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GPostCommentsRepliesData_response_data_interactions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPostCommentsRepliesData_response_data_interactionsBuilder();

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
        case 'heart':
          result.heart = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentsRepliesData_response_data_createdBySerializer
    implements
        StructuredSerializer<GPostCommentsRepliesData_response_data_createdBy> {
  @override
  final Iterable<Type> types = const [
    GPostCommentsRepliesData_response_data_createdBy,
    _$GPostCommentsRepliesData_response_data_createdBy
  ];
  @override
  final String wireName = 'GPostCommentsRepliesData_response_data_createdBy';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPostCommentsRepliesData_response_data_createdBy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAvatar;
    if (value != null) {
      result
        ..add('isAvatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatarUrl;
    if (value != null) {
      result
        ..add('avatarUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.themeUrl;
    if (value != null) {
      result
        ..add('themeUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPostCommentsRepliesData_response_data_createdBy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPostCommentsRepliesData_response_data_createdByBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAvatar':
          result.isAvatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatarUrl':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'themeUrl':
          result.themeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostVoicepodCommentDataSerializer
    implements StructuredSerializer<GPostVoicepodCommentData> {
  @override
  final Iterable<Type> types = const [
    GPostVoicepodCommentData,
    _$GPostVoicepodCommentData
  ];
  @override
  final String wireName = 'GPostVoicepodCommentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostVoicepodCommentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sendPostReply;
    if (value != null) {
      result
        ..add('sendPostReply')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GPostVoicepodCommentData_sendPostReply)));
    }
    return result;
  }

  @override
  GPostVoicepodCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostVoicepodCommentDataBuilder();

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
        case 'sendPostReply':
          result.sendPostReply.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GPostVoicepodCommentData_sendPostReply))!
              as GPostVoicepodCommentData_sendPostReply);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostVoicepodCommentData_sendPostReplySerializer
    implements StructuredSerializer<GPostVoicepodCommentData_sendPostReply> {
  @override
  final Iterable<Type> types = const [
    GPostVoicepodCommentData_sendPostReply,
    _$GPostVoicepodCommentData_sendPostReply
  ];
  @override
  final String wireName = 'GPostVoicepodCommentData_sendPostReply';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostVoicepodCommentData_sendPostReply object,
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GPostVoicepodCommentData_sendPostReply_data)));
    }
    return result;
  }

  @override
  GPostVoicepodCommentData_sendPostReply deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostVoicepodCommentData_sendPostReplyBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPostVoicepodCommentData_sendPostReply_data))!
              as GPostVoicepodCommentData_sendPostReply_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostVoicepodCommentData_sendPostReply_dataSerializer
    implements
        StructuredSerializer<GPostVoicepodCommentData_sendPostReply_data> {
  @override
  final Iterable<Type> types = const [
    GPostVoicepodCommentData_sendPostReply_data,
    _$GPostVoicepodCommentData_sendPostReply_data
  ];
  @override
  final String wireName = 'GPostVoicepodCommentData_sendPostReply_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPostVoicepodCommentData_sendPostReply_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.replyId;
    if (value != null) {
      result
        ..add('replyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPostVoicepodCommentData_sendPostReply_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostVoicepodCommentData_sendPostReply_dataBuilder();

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
        case 'replyId':
          result.replyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostCommentDataSerializer
    implements StructuredSerializer<GLikePostCommentData> {
  @override
  final Iterable<Type> types = const [
    GLikePostCommentData,
    _$GLikePostCommentData
  ];
  @override
  final String wireName = 'GLikePostCommentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLikePostCommentData object,
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
            specifiedType: const FullType(GLikePostCommentData_response)));
    }
    return result;
  }

  @override
  GLikePostCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostCommentDataBuilder();

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
                  specifiedType: const FullType(GLikePostCommentData_response))!
              as GLikePostCommentData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostCommentData_responseSerializer
    implements StructuredSerializer<GLikePostCommentData_response> {
  @override
  final Iterable<Type> types = const [
    GLikePostCommentData_response,
    _$GLikePostCommentData_response
  ];
  @override
  final String wireName = 'GLikePostCommentData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLikePostCommentData_response object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
    return result;
  }

  @override
  GLikePostCommentData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostCommentData_responseBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUnlikePostCommentDataSerializer
    implements StructuredSerializer<GUnlikePostCommentData> {
  @override
  final Iterable<Type> types = const [
    GUnlikePostCommentData,
    _$GUnlikePostCommentData
  ];
  @override
  final String wireName = 'GUnlikePostCommentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUnlikePostCommentData object,
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
            specifiedType: const FullType(GUnlikePostCommentData_response)));
    }
    return result;
  }

  @override
  GUnlikePostCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnlikePostCommentDataBuilder();

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
                      const FullType(GUnlikePostCommentData_response))!
              as GUnlikePostCommentData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GUnlikePostCommentData_responseSerializer
    implements StructuredSerializer<GUnlikePostCommentData_response> {
  @override
  final Iterable<Type> types = const [
    GUnlikePostCommentData_response,
    _$GUnlikePostCommentData_response
  ];
  @override
  final String wireName = 'GUnlikePostCommentData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUnlikePostCommentData_response object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
    return result;
  }

  @override
  GUnlikePostCommentData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUnlikePostCommentData_responseBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GBlockUserDataSerializer
    implements StructuredSerializer<GBlockUserData> {
  @override
  final Iterable<Type> types = const [GBlockUserData, _$GBlockUserData];
  @override
  final String wireName = 'GBlockUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBlockUserData object,
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
            specifiedType: const FullType(GBlockUserData_response)));
    }
    return result;
  }

  @override
  GBlockUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBlockUserDataBuilder();

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
                  specifiedType: const FullType(GBlockUserData_response))!
              as GBlockUserData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GBlockUserData_responseSerializer
    implements StructuredSerializer<GBlockUserData_response> {
  @override
  final Iterable<Type> types = const [
    GBlockUserData_response,
    _$GBlockUserData_response
  ];
  @override
  final String wireName = 'GBlockUserData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBlockUserData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GBlockUserData_response_data)));
    }
    return result;
  }

  @override
  GBlockUserData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBlockUserData_responseBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GBlockUserData_response_data))!
              as GBlockUserData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GBlockUserData_response_dataSerializer
    implements StructuredSerializer<GBlockUserData_response_data> {
  @override
  final Iterable<Type> types = const [
    GBlockUserData_response_data,
    _$GBlockUserData_response_data
  ];
  @override
  final String wireName = 'GBlockUserData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBlockUserData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GBlockUserData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBlockUserData_response_dataBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GTrendingHashtagsData extends GTrendingHashtagsData {
  @override
  final String G__typename;
  @override
  final GTrendingHashtagsData_response? response;

  factory _$GTrendingHashtagsData(
          [void Function(GTrendingHashtagsDataBuilder)? updates]) =>
      (new GTrendingHashtagsDataBuilder()..update(updates))._build();

  _$GTrendingHashtagsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GTrendingHashtagsData', 'G__typename');
  }

  @override
  GTrendingHashtagsData rebuild(
          void Function(GTrendingHashtagsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTrendingHashtagsDataBuilder toBuilder() =>
      new GTrendingHashtagsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTrendingHashtagsData &&
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
    return (newBuiltValueToStringHelper(r'GTrendingHashtagsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GTrendingHashtagsDataBuilder
    implements Builder<GTrendingHashtagsData, GTrendingHashtagsDataBuilder> {
  _$GTrendingHashtagsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GTrendingHashtagsData_responseBuilder? _response;
  GTrendingHashtagsData_responseBuilder get response =>
      _$this._response ??= new GTrendingHashtagsData_responseBuilder();
  set response(GTrendingHashtagsData_responseBuilder? response) =>
      _$this._response = response;

  GTrendingHashtagsDataBuilder() {
    GTrendingHashtagsData._initializeBuilder(this);
  }

  GTrendingHashtagsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTrendingHashtagsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTrendingHashtagsData;
  }

  @override
  void update(void Function(GTrendingHashtagsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTrendingHashtagsData build() => _build();

  _$GTrendingHashtagsData _build() {
    _$GTrendingHashtagsData _$result;
    try {
      _$result = _$v ??
          new _$GTrendingHashtagsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GTrendingHashtagsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTrendingHashtagsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTrendingHashtagsData_response extends GTrendingHashtagsData_response {
  @override
  final String G__typename;
  @override
  final String? error;
  @override
  final BuiltList<String>? data;
  @override
  final String? message;

  factory _$GTrendingHashtagsData_response(
          [void Function(GTrendingHashtagsData_responseBuilder)? updates]) =>
      (new GTrendingHashtagsData_responseBuilder()..update(updates))._build();

  _$GTrendingHashtagsData_response._(
      {required this.G__typename, this.error, this.data, this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GTrendingHashtagsData_response', 'G__typename');
  }

  @override
  GTrendingHashtagsData_response rebuild(
          void Function(GTrendingHashtagsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTrendingHashtagsData_responseBuilder toBuilder() =>
      new GTrendingHashtagsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTrendingHashtagsData_response &&
        G__typename == other.G__typename &&
        error == other.error &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GTrendingHashtagsData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class GTrendingHashtagsData_responseBuilder
    implements
        Builder<GTrendingHashtagsData_response,
            GTrendingHashtagsData_responseBuilder> {
  _$GTrendingHashtagsData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ListBuilder<String>? _data;
  ListBuilder<String> get data => _$this._data ??= new ListBuilder<String>();
  set data(ListBuilder<String>? data) => _$this._data = data;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GTrendingHashtagsData_responseBuilder() {
    GTrendingHashtagsData_response._initializeBuilder(this);
  }

  GTrendingHashtagsData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error;
      _data = $v.data?.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTrendingHashtagsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTrendingHashtagsData_response;
  }

  @override
  void update(void Function(GTrendingHashtagsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTrendingHashtagsData_response build() => _build();

  _$GTrendingHashtagsData_response _build() {
    _$GTrendingHashtagsData_response _$result;
    try {
      _$result = _$v ??
          new _$GTrendingHashtagsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GTrendingHashtagsData_response', 'G__typename'),
              error: error,
              data: _data?.build(),
              message: message);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTrendingHashtagsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeletePostData extends GDeletePostData {
  @override
  final String G__typename;
  @override
  final GDeletePostData_response? response;

  factory _$GDeletePostData([void Function(GDeletePostDataBuilder)? updates]) =>
      (new GDeletePostDataBuilder()..update(updates))._build();

  _$GDeletePostData._({required this.G__typename, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeletePostData', 'G__typename');
  }

  @override
  GDeletePostData rebuild(void Function(GDeletePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletePostDataBuilder toBuilder() =>
      new GDeletePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeletePostData &&
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
    return (newBuiltValueToStringHelper(r'GDeletePostData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GDeletePostDataBuilder
    implements Builder<GDeletePostData, GDeletePostDataBuilder> {
  _$GDeletePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeletePostData_responseBuilder? _response;
  GDeletePostData_responseBuilder get response =>
      _$this._response ??= new GDeletePostData_responseBuilder();
  set response(GDeletePostData_responseBuilder? response) =>
      _$this._response = response;

  GDeletePostDataBuilder() {
    GDeletePostData._initializeBuilder(this);
  }

  GDeletePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeletePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletePostData;
  }

  @override
  void update(void Function(GDeletePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeletePostData build() => _build();

  _$GDeletePostData _build() {
    _$GDeletePostData _$result;
    try {
      _$result = _$v ??
          new _$GDeletePostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDeletePostData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeletePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeletePostData_response extends GDeletePostData_response {
  @override
  final String G__typename;
  @override
  final bool? status;
  @override
  final String? error;
  @override
  final String? message;

  factory _$GDeletePostData_response(
          [void Function(GDeletePostData_responseBuilder)? updates]) =>
      (new GDeletePostData_responseBuilder()..update(updates))._build();

  _$GDeletePostData_response._(
      {required this.G__typename, this.status, this.error, this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeletePostData_response', 'G__typename');
  }

  @override
  GDeletePostData_response rebuild(
          void Function(GDeletePostData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletePostData_responseBuilder toBuilder() =>
      new GDeletePostData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeletePostData_response &&
        G__typename == other.G__typename &&
        status == other.status &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeletePostData_response')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class GDeletePostData_responseBuilder
    implements
        Builder<GDeletePostData_response, GDeletePostData_responseBuilder> {
  _$GDeletePostData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GDeletePostData_responseBuilder() {
    GDeletePostData_response._initializeBuilder(this);
  }

  GDeletePostData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeletePostData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletePostData_response;
  }

  @override
  void update(void Function(GDeletePostData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeletePostData_response build() => _build();

  _$GDeletePostData_response _build() {
    final _$result = _$v ??
        new _$GDeletePostData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDeletePostData_response', 'G__typename'),
            status: status,
            error: error,
            message: message);
    replace(_$result);
    return _$result;
  }
}

class _$GLikePostData extends GLikePostData {
  @override
  final String G__typename;
  @override
  final GLikePostData_response? response;

  factory _$GLikePostData([void Function(GLikePostDataBuilder)? updates]) =>
      (new GLikePostDataBuilder()..update(updates))._build();

  _$GLikePostData._({required this.G__typename, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLikePostData', 'G__typename');
  }

  @override
  GLikePostData rebuild(void Function(GLikePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostDataBuilder toBuilder() => new GLikePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostData &&
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
    return (newBuiltValueToStringHelper(r'GLikePostData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GLikePostDataBuilder
    implements Builder<GLikePostData, GLikePostDataBuilder> {
  _$GLikePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLikePostData_responseBuilder? _response;
  GLikePostData_responseBuilder get response =>
      _$this._response ??= new GLikePostData_responseBuilder();
  set response(GLikePostData_responseBuilder? response) =>
      _$this._response = response;

  GLikePostDataBuilder() {
    GLikePostData._initializeBuilder(this);
  }

  GLikePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostData;
  }

  @override
  void update(void Function(GLikePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikePostData build() => _build();

  _$GLikePostData _build() {
    _$GLikePostData _$result;
    try {
      _$result = _$v ??
          new _$GLikePostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLikePostData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLikePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLikePostData_response extends GLikePostData_response {
  @override
  final String G__typename;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final bool? status;

  factory _$GLikePostData_response(
          [void Function(GLikePostData_responseBuilder)? updates]) =>
      (new GLikePostData_responseBuilder()..update(updates))._build();

  _$GLikePostData_response._(
      {required this.G__typename, this.message, this.error, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLikePostData_response', 'G__typename');
  }

  @override
  GLikePostData_response rebuild(
          void Function(GLikePostData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostData_responseBuilder toBuilder() =>
      new GLikePostData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLikePostData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('status', status))
        .toString();
  }
}

class GLikePostData_responseBuilder
    implements Builder<GLikePostData_response, GLikePostData_responseBuilder> {
  _$GLikePostData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  GLikePostData_responseBuilder() {
    GLikePostData_response._initializeBuilder(this);
  }

  GLikePostData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostData_response;
  }

  @override
  void update(void Function(GLikePostData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikePostData_response build() => _build();

  _$GLikePostData_response _build() {
    final _$result = _$v ??
        new _$GLikePostData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLikePostData_response', 'G__typename'),
            message: message,
            error: error,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GUnlikePostData extends GUnlikePostData {
  @override
  final String G__typename;
  @override
  final GUnlikePostData_response? response;

  factory _$GUnlikePostData([void Function(GUnlikePostDataBuilder)? updates]) =>
      (new GUnlikePostDataBuilder()..update(updates))._build();

  _$GUnlikePostData._({required this.G__typename, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUnlikePostData', 'G__typename');
  }

  @override
  GUnlikePostData rebuild(void Function(GUnlikePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnlikePostDataBuilder toBuilder() =>
      new GUnlikePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUnlikePostData &&
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
    return (newBuiltValueToStringHelper(r'GUnlikePostData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GUnlikePostDataBuilder
    implements Builder<GUnlikePostData, GUnlikePostDataBuilder> {
  _$GUnlikePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUnlikePostData_responseBuilder? _response;
  GUnlikePostData_responseBuilder get response =>
      _$this._response ??= new GUnlikePostData_responseBuilder();
  set response(GUnlikePostData_responseBuilder? response) =>
      _$this._response = response;

  GUnlikePostDataBuilder() {
    GUnlikePostData._initializeBuilder(this);
  }

  GUnlikePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUnlikePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnlikePostData;
  }

  @override
  void update(void Function(GUnlikePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnlikePostData build() => _build();

  _$GUnlikePostData _build() {
    _$GUnlikePostData _$result;
    try {
      _$result = _$v ??
          new _$GUnlikePostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUnlikePostData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUnlikePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUnlikePostData_response extends GUnlikePostData_response {
  @override
  final String G__typename;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final bool? status;

  factory _$GUnlikePostData_response(
          [void Function(GUnlikePostData_responseBuilder)? updates]) =>
      (new GUnlikePostData_responseBuilder()..update(updates))._build();

  _$GUnlikePostData_response._(
      {required this.G__typename, this.message, this.error, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUnlikePostData_response', 'G__typename');
  }

  @override
  GUnlikePostData_response rebuild(
          void Function(GUnlikePostData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnlikePostData_responseBuilder toBuilder() =>
      new GUnlikePostData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUnlikePostData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUnlikePostData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('status', status))
        .toString();
  }
}

class GUnlikePostData_responseBuilder
    implements
        Builder<GUnlikePostData_response, GUnlikePostData_responseBuilder> {
  _$GUnlikePostData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  GUnlikePostData_responseBuilder() {
    GUnlikePostData_response._initializeBuilder(this);
  }

  GUnlikePostData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUnlikePostData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnlikePostData_response;
  }

  @override
  void update(void Function(GUnlikePostData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnlikePostData_response build() => _build();

  _$GUnlikePostData_response _build() {
    final _$result = _$v ??
        new _$GUnlikePostData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUnlikePostData_response', 'G__typename'),
            message: message,
            error: error,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentsRepliesData extends GPostCommentsRepliesData {
  @override
  final String G__typename;
  @override
  final GPostCommentsRepliesData_response? response;

  factory _$GPostCommentsRepliesData(
          [void Function(GPostCommentsRepliesDataBuilder)? updates]) =>
      (new GPostCommentsRepliesDataBuilder()..update(updates))._build();

  _$GPostCommentsRepliesData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostCommentsRepliesData', 'G__typename');
  }

  @override
  GPostCommentsRepliesData rebuild(
          void Function(GPostCommentsRepliesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentsRepliesDataBuilder toBuilder() =>
      new GPostCommentsRepliesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentsRepliesData &&
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
    return (newBuiltValueToStringHelper(r'GPostCommentsRepliesData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GPostCommentsRepliesDataBuilder
    implements
        Builder<GPostCommentsRepliesData, GPostCommentsRepliesDataBuilder> {
  _$GPostCommentsRepliesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostCommentsRepliesData_responseBuilder? _response;
  GPostCommentsRepliesData_responseBuilder get response =>
      _$this._response ??= new GPostCommentsRepliesData_responseBuilder();
  set response(GPostCommentsRepliesData_responseBuilder? response) =>
      _$this._response = response;

  GPostCommentsRepliesDataBuilder() {
    GPostCommentsRepliesData._initializeBuilder(this);
  }

  GPostCommentsRepliesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentsRepliesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentsRepliesData;
  }

  @override
  void update(void Function(GPostCommentsRepliesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentsRepliesData build() => _build();

  _$GPostCommentsRepliesData _build() {
    _$GPostCommentsRepliesData _$result;
    try {
      _$result = _$v ??
          new _$GPostCommentsRepliesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostCommentsRepliesData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostCommentsRepliesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentsRepliesData_response
    extends GPostCommentsRepliesData_response {
  @override
  final String G__typename;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final bool? status;
  @override
  final BuiltList<GPostCommentsRepliesData_response_data>? data;

  factory _$GPostCommentsRepliesData_response(
          [void Function(GPostCommentsRepliesData_responseBuilder)? updates]) =>
      (new GPostCommentsRepliesData_responseBuilder()..update(updates))
          ._build();

  _$GPostCommentsRepliesData_response._(
      {required this.G__typename,
      this.message,
      this.error,
      this.status,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostCommentsRepliesData_response', 'G__typename');
  }

  @override
  GPostCommentsRepliesData_response rebuild(
          void Function(GPostCommentsRepliesData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentsRepliesData_responseBuilder toBuilder() =>
      new GPostCommentsRepliesData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentsRepliesData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostCommentsRepliesData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class GPostCommentsRepliesData_responseBuilder
    implements
        Builder<GPostCommentsRepliesData_response,
            GPostCommentsRepliesData_responseBuilder> {
  _$GPostCommentsRepliesData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<GPostCommentsRepliesData_response_data>? _data;
  ListBuilder<GPostCommentsRepliesData_response_data> get data =>
      _$this._data ??=
          new ListBuilder<GPostCommentsRepliesData_response_data>();
  set data(ListBuilder<GPostCommentsRepliesData_response_data>? data) =>
      _$this._data = data;

  GPostCommentsRepliesData_responseBuilder() {
    GPostCommentsRepliesData_response._initializeBuilder(this);
  }

  GPostCommentsRepliesData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentsRepliesData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentsRepliesData_response;
  }

  @override
  void update(
      void Function(GPostCommentsRepliesData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentsRepliesData_response build() => _build();

  _$GPostCommentsRepliesData_response _build() {
    _$GPostCommentsRepliesData_response _$result;
    try {
      _$result = _$v ??
          new _$GPostCommentsRepliesData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GPostCommentsRepliesData_response', 'G__typename'),
              message: message,
              error: error,
              status: status,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostCommentsRepliesData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentsRepliesData_response_data
    extends GPostCommentsRepliesData_response_data {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String message;
  @override
  final _i2.GDateTime createdAt;
  @override
  final BuiltList<String>? currentUserInteractions;
  @override
  final int replyLevel;
  @override
  final BuiltList<GPostCommentsRepliesData_response_data_secondLevelReplies>?
      secondLevelReplies;
  @override
  final GPostCommentsRepliesData_response_data_interactions? interactions;
  @override
  final GPostCommentsRepliesData_response_data_createdBy createdBy;

  factory _$GPostCommentsRepliesData_response_data(
          [void Function(GPostCommentsRepliesData_response_dataBuilder)?
              updates]) =>
      (new GPostCommentsRepliesData_response_dataBuilder()..update(updates))
          ._build();

  _$GPostCommentsRepliesData_response_data._(
      {required this.G__typename,
      required this.id,
      required this.message,
      required this.createdAt,
      this.currentUserInteractions,
      required this.replyLevel,
      this.secondLevelReplies,
      this.interactions,
      required this.createdBy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostCommentsRepliesData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GPostCommentsRepliesData_response_data', 'id');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GPostCommentsRepliesData_response_data', 'message');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GPostCommentsRepliesData_response_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        replyLevel, r'GPostCommentsRepliesData_response_data', 'replyLevel');
    BuiltValueNullFieldError.checkNotNull(
        createdBy, r'GPostCommentsRepliesData_response_data', 'createdBy');
  }

  @override
  GPostCommentsRepliesData_response_data rebuild(
          void Function(GPostCommentsRepliesData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentsRepliesData_response_dataBuilder toBuilder() =>
      new GPostCommentsRepliesData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentsRepliesData_response_data &&
        G__typename == other.G__typename &&
        id == other.id &&
        message == other.message &&
        createdAt == other.createdAt &&
        currentUserInteractions == other.currentUserInteractions &&
        replyLevel == other.replyLevel &&
        secondLevelReplies == other.secondLevelReplies &&
        interactions == other.interactions &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, currentUserInteractions.hashCode);
    _$hash = $jc(_$hash, replyLevel.hashCode);
    _$hash = $jc(_$hash, secondLevelReplies.hashCode);
    _$hash = $jc(_$hash, interactions.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPostCommentsRepliesData_response_data')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('message', message)
          ..add('createdAt', createdAt)
          ..add('currentUserInteractions', currentUserInteractions)
          ..add('replyLevel', replyLevel)
          ..add('secondLevelReplies', secondLevelReplies)
          ..add('interactions', interactions)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class GPostCommentsRepliesData_response_dataBuilder
    implements
        Builder<GPostCommentsRepliesData_response_data,
            GPostCommentsRepliesData_response_dataBuilder> {
  _$GPostCommentsRepliesData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  ListBuilder<String>? _currentUserInteractions;
  ListBuilder<String> get currentUserInteractions =>
      _$this._currentUserInteractions ??= new ListBuilder<String>();
  set currentUserInteractions(ListBuilder<String>? currentUserInteractions) =>
      _$this._currentUserInteractions = currentUserInteractions;

  int? _replyLevel;
  int? get replyLevel => _$this._replyLevel;
  set replyLevel(int? replyLevel) => _$this._replyLevel = replyLevel;

  ListBuilder<GPostCommentsRepliesData_response_data_secondLevelReplies>?
      _secondLevelReplies;
  ListBuilder<GPostCommentsRepliesData_response_data_secondLevelReplies>
      get secondLevelReplies => _$this._secondLevelReplies ??= new ListBuilder<
          GPostCommentsRepliesData_response_data_secondLevelReplies>();
  set secondLevelReplies(
          ListBuilder<
                  GPostCommentsRepliesData_response_data_secondLevelReplies>?
              secondLevelReplies) =>
      _$this._secondLevelReplies = secondLevelReplies;

  GPostCommentsRepliesData_response_data_interactionsBuilder? _interactions;
  GPostCommentsRepliesData_response_data_interactionsBuilder get interactions =>
      _$this._interactions ??=
          new GPostCommentsRepliesData_response_data_interactionsBuilder();
  set interactions(
          GPostCommentsRepliesData_response_data_interactionsBuilder?
              interactions) =>
      _$this._interactions = interactions;

  GPostCommentsRepliesData_response_data_createdByBuilder? _createdBy;
  GPostCommentsRepliesData_response_data_createdByBuilder get createdBy =>
      _$this._createdBy ??=
          new GPostCommentsRepliesData_response_data_createdByBuilder();
  set createdBy(
          GPostCommentsRepliesData_response_data_createdByBuilder? createdBy) =>
      _$this._createdBy = createdBy;

  GPostCommentsRepliesData_response_dataBuilder() {
    GPostCommentsRepliesData_response_data._initializeBuilder(this);
  }

  GPostCommentsRepliesData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _message = $v.message;
      _createdAt = $v.createdAt.toBuilder();
      _currentUserInteractions = $v.currentUserInteractions?.toBuilder();
      _replyLevel = $v.replyLevel;
      _secondLevelReplies = $v.secondLevelReplies?.toBuilder();
      _interactions = $v.interactions?.toBuilder();
      _createdBy = $v.createdBy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentsRepliesData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentsRepliesData_response_data;
  }

  @override
  void update(
      void Function(GPostCommentsRepliesData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentsRepliesData_response_data build() => _build();

  _$GPostCommentsRepliesData_response_data _build() {
    _$GPostCommentsRepliesData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GPostCommentsRepliesData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GPostCommentsRepliesData_response_data', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GPostCommentsRepliesData_response_data', 'id'),
              message: BuiltValueNullFieldError.checkNotNull(message,
                  r'GPostCommentsRepliesData_response_data', 'message'),
              createdAt: createdAt.build(),
              currentUserInteractions: _currentUserInteractions?.build(),
              replyLevel: BuiltValueNullFieldError.checkNotNull(replyLevel,
                  r'GPostCommentsRepliesData_response_data', 'replyLevel'),
              secondLevelReplies: _secondLevelReplies?.build(),
              interactions: _interactions?.build(),
              createdBy: createdBy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'currentUserInteractions';
        _currentUserInteractions?.build();

        _$failedField = 'secondLevelReplies';
        _secondLevelReplies?.build();
        _$failedField = 'interactions';
        _interactions?.build();
        _$failedField = 'createdBy';
        createdBy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostCommentsRepliesData_response_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentsRepliesData_response_data_secondLevelReplies
    extends GPostCommentsRepliesData_response_data_secondLevelReplies {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String message;
  @override
  final _i2.GDateTime createdAt;
  @override
  final int replyLevel;
  @override
  final String parentId;
  @override
  final BuiltList<String>? secondLevelInteractions;
  @override
  final GPostCommentsRepliesData_response_data_secondLevelReplies_interactions?
      interactions;
  @override
  final GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
      createdBy;

  factory _$GPostCommentsRepliesData_response_data_secondLevelReplies(
          [void Function(
                  GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder)?
              updates]) =>
      (new GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder()
            ..update(updates))
          ._build();

  _$GPostCommentsRepliesData_response_data_secondLevelReplies._(
      {required this.G__typename,
      required this.id,
      required this.message,
      required this.createdAt,
      required this.replyLevel,
      required this.parentId,
      this.secondLevelInteractions,
      this.interactions,
      required this.createdBy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GPostCommentsRepliesData_response_data_secondLevelReplies',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GPostCommentsRepliesData_response_data_secondLevelReplies', 'id');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'GPostCommentsRepliesData_response_data_secondLevelReplies',
        'message');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GPostCommentsRepliesData_response_data_secondLevelReplies',
        'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        replyLevel,
        r'GPostCommentsRepliesData_response_data_secondLevelReplies',
        'replyLevel');
    BuiltValueNullFieldError.checkNotNull(
        parentId,
        r'GPostCommentsRepliesData_response_data_secondLevelReplies',
        'parentId');
    BuiltValueNullFieldError.checkNotNull(
        createdBy,
        r'GPostCommentsRepliesData_response_data_secondLevelReplies',
        'createdBy');
  }

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies rebuild(
          void Function(
                  GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder
      toBuilder() =>
          new GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentsRepliesData_response_data_secondLevelReplies &&
        G__typename == other.G__typename &&
        id == other.id &&
        message == other.message &&
        createdAt == other.createdAt &&
        replyLevel == other.replyLevel &&
        parentId == other.parentId &&
        secondLevelInteractions == other.secondLevelInteractions &&
        interactions == other.interactions &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, replyLevel.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, secondLevelInteractions.hashCode);
    _$hash = $jc(_$hash, interactions.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPostCommentsRepliesData_response_data_secondLevelReplies')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('message', message)
          ..add('createdAt', createdAt)
          ..add('replyLevel', replyLevel)
          ..add('parentId', parentId)
          ..add('secondLevelInteractions', secondLevelInteractions)
          ..add('interactions', interactions)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder
    implements
        Builder<GPostCommentsRepliesData_response_data_secondLevelReplies,
            GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder> {
  _$GPostCommentsRepliesData_response_data_secondLevelReplies? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  int? _replyLevel;
  int? get replyLevel => _$this._replyLevel;
  set replyLevel(int? replyLevel) => _$this._replyLevel = replyLevel;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  ListBuilder<String>? _secondLevelInteractions;
  ListBuilder<String> get secondLevelInteractions =>
      _$this._secondLevelInteractions ??= new ListBuilder<String>();
  set secondLevelInteractions(ListBuilder<String>? secondLevelInteractions) =>
      _$this._secondLevelInteractions = secondLevelInteractions;

  GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder?
      _interactions;
  GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder
      get interactions => _$this._interactions ??=
          new GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder();
  set interactions(
          GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder?
              interactions) =>
      _$this._interactions = interactions;

  GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder?
      _createdBy;
  GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder
      get createdBy => _$this._createdBy ??=
          new GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder();
  set createdBy(
          GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder?
              createdBy) =>
      _$this._createdBy = createdBy;

  GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder() {
    GPostCommentsRepliesData_response_data_secondLevelReplies
        ._initializeBuilder(this);
  }

  GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _message = $v.message;
      _createdAt = $v.createdAt.toBuilder();
      _replyLevel = $v.replyLevel;
      _parentId = $v.parentId;
      _secondLevelInteractions = $v.secondLevelInteractions?.toBuilder();
      _interactions = $v.interactions?.toBuilder();
      _createdBy = $v.createdBy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GPostCommentsRepliesData_response_data_secondLevelReplies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentsRepliesData_response_data_secondLevelReplies;
  }

  @override
  void update(
      void Function(
              GPostCommentsRepliesData_response_data_secondLevelRepliesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies build() => _build();

  _$GPostCommentsRepliesData_response_data_secondLevelReplies _build() {
    _$GPostCommentsRepliesData_response_data_secondLevelReplies _$result;
    try {
      _$result = _$v ??
          new _$GPostCommentsRepliesData_response_data_secondLevelReplies._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GPostCommentsRepliesData_response_data_secondLevelReplies',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GPostCommentsRepliesData_response_data_secondLevelReplies', 'id'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message,
                  r'GPostCommentsRepliesData_response_data_secondLevelReplies',
                  'message'),
              createdAt: createdAt.build(),
              replyLevel: BuiltValueNullFieldError.checkNotNull(
                  replyLevel,
                  r'GPostCommentsRepliesData_response_data_secondLevelReplies',
                  'replyLevel'),
              parentId: BuiltValueNullFieldError.checkNotNull(
                  parentId,
                  r'GPostCommentsRepliesData_response_data_secondLevelReplies',
                  'parentId'),
              secondLevelInteractions: _secondLevelInteractions?.build(),
              interactions: _interactions?.build(),
              createdBy: createdBy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();

        _$failedField = 'secondLevelInteractions';
        _secondLevelInteractions?.build();
        _$failedField = 'interactions';
        _interactions?.build();
        _$failedField = 'createdBy';
        createdBy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostCommentsRepliesData_response_data_secondLevelReplies',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
    extends GPostCommentsRepliesData_response_data_secondLevelReplies_interactions {
  @override
  final String G__typename;
  @override
  final int? heart;

  factory _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactions(
          [void Function(
                  GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder)?
              updates]) =>
      (new GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder()
            ..update(updates))
          ._build();

  _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactions._(
      {required this.G__typename, this.heart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GPostCommentsRepliesData_response_data_secondLevelReplies_interactions',
        'G__typename');
  }

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies_interactions rebuild(
          void Function(
                  GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder
      toBuilder() =>
          new GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GPostCommentsRepliesData_response_data_secondLevelReplies_interactions &&
        G__typename == other.G__typename &&
        heart == other.heart;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, heart.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPostCommentsRepliesData_response_data_secondLevelReplies_interactions')
          ..add('G__typename', G__typename)
          ..add('heart', heart))
        .toString();
  }
}

class GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder
    implements
        Builder<
            GPostCommentsRepliesData_response_data_secondLevelReplies_interactions,
            GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder> {
  _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _heart;
  int? get heart => _$this._heart;
  set heart(int? heart) => _$this._heart = heart;

  GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder() {
    GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
        ._initializeBuilder(this);
  }

  GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _heart = $v.heart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactions;
  }

  @override
  void update(
      void Function(
              GPostCommentsRepliesData_response_data_secondLevelReplies_interactionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
      build() => _build();

  _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
      _build() {
    final _$result = _$v ??
        new _$GPostCommentsRepliesData_response_data_secondLevelReplies_interactions
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GPostCommentsRepliesData_response_data_secondLevelReplies_interactions',
                'G__typename'),
            heart: heart);
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
    extends GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? username;
  @override
  final String? isAvatar;
  @override
  final String? avatarUrl;
  @override
  final String? themeUrl;

  factory _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy(
          [void Function(
                  GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder)?
              updates]) =>
      (new GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder()
            ..update(updates))
          ._build();

  _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy._(
      {required this.G__typename,
      required this.id,
      this.username,
      this.isAvatar,
      this.avatarUrl,
      this.themeUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy',
        'id');
  }

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy rebuild(
          void Function(
                  GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder
      toBuilder() =>
          new GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy &&
        G__typename == other.G__typename &&
        id == other.id &&
        username == other.username &&
        isAvatar == other.isAvatar &&
        avatarUrl == other.avatarUrl &&
        themeUrl == other.themeUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, isAvatar.hashCode);
    _$hash = $jc(_$hash, avatarUrl.hashCode);
    _$hash = $jc(_$hash, themeUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username)
          ..add('isAvatar', isAvatar)
          ..add('avatarUrl', avatarUrl)
          ..add('themeUrl', themeUrl))
        .toString();
  }
}

class GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder
    implements
        Builder<
            GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy,
            GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder> {
  _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _isAvatar;
  String? get isAvatar => _$this._isAvatar;
  set isAvatar(String? isAvatar) => _$this._isAvatar = isAvatar;

  String? _avatarUrl;
  String? get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String? avatarUrl) => _$this._avatarUrl = avatarUrl;

  String? _themeUrl;
  String? get themeUrl => _$this._themeUrl;
  set themeUrl(String? themeUrl) => _$this._themeUrl = themeUrl;

  GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder() {
    GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
        ._initializeBuilder(this);
  }

  GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _username = $v.username;
      _isAvatar = $v.isAvatar;
      _avatarUrl = $v.avatarUrl;
      _themeUrl = $v.themeUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy;
  }

  @override
  void update(
      void Function(
              GPostCommentsRepliesData_response_data_secondLevelReplies_createdByBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy build() =>
      _build();

  _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
      _build() {
    final _$result = _$v ??
        new _$GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GPostCommentsRepliesData_response_data_secondLevelReplies_createdBy',
                'id'),
            username: username,
            isAvatar: isAvatar,
            avatarUrl: avatarUrl,
            themeUrl: themeUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentsRepliesData_response_data_interactions
    extends GPostCommentsRepliesData_response_data_interactions {
  @override
  final String G__typename;
  @override
  final int? heart;

  factory _$GPostCommentsRepliesData_response_data_interactions(
          [void Function(
                  GPostCommentsRepliesData_response_data_interactionsBuilder)?
              updates]) =>
      (new GPostCommentsRepliesData_response_data_interactionsBuilder()
            ..update(updates))
          ._build();

  _$GPostCommentsRepliesData_response_data_interactions._(
      {required this.G__typename, this.heart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GPostCommentsRepliesData_response_data_interactions', 'G__typename');
  }

  @override
  GPostCommentsRepliesData_response_data_interactions rebuild(
          void Function(
                  GPostCommentsRepliesData_response_data_interactionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentsRepliesData_response_data_interactionsBuilder toBuilder() =>
      new GPostCommentsRepliesData_response_data_interactionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentsRepliesData_response_data_interactions &&
        G__typename == other.G__typename &&
        heart == other.heart;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, heart.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPostCommentsRepliesData_response_data_interactions')
          ..add('G__typename', G__typename)
          ..add('heart', heart))
        .toString();
  }
}

class GPostCommentsRepliesData_response_data_interactionsBuilder
    implements
        Builder<GPostCommentsRepliesData_response_data_interactions,
            GPostCommentsRepliesData_response_data_interactionsBuilder> {
  _$GPostCommentsRepliesData_response_data_interactions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _heart;
  int? get heart => _$this._heart;
  set heart(int? heart) => _$this._heart = heart;

  GPostCommentsRepliesData_response_data_interactionsBuilder() {
    GPostCommentsRepliesData_response_data_interactions._initializeBuilder(
        this);
  }

  GPostCommentsRepliesData_response_data_interactionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _heart = $v.heart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentsRepliesData_response_data_interactions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentsRepliesData_response_data_interactions;
  }

  @override
  void update(
      void Function(GPostCommentsRepliesData_response_data_interactionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentsRepliesData_response_data_interactions build() => _build();

  _$GPostCommentsRepliesData_response_data_interactions _build() {
    final _$result = _$v ??
        new _$GPostCommentsRepliesData_response_data_interactions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GPostCommentsRepliesData_response_data_interactions',
                'G__typename'),
            heart: heart);
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentsRepliesData_response_data_createdBy
    extends GPostCommentsRepliesData_response_data_createdBy {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? username;
  @override
  final String? isAvatar;
  @override
  final String? avatarUrl;
  @override
  final String? themeUrl;

  factory _$GPostCommentsRepliesData_response_data_createdBy(
          [void Function(
                  GPostCommentsRepliesData_response_data_createdByBuilder)?
              updates]) =>
      (new GPostCommentsRepliesData_response_data_createdByBuilder()
            ..update(updates))
          ._build();

  _$GPostCommentsRepliesData_response_data_createdBy._(
      {required this.G__typename,
      required this.id,
      this.username,
      this.isAvatar,
      this.avatarUrl,
      this.themeUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GPostCommentsRepliesData_response_data_createdBy', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GPostCommentsRepliesData_response_data_createdBy', 'id');
  }

  @override
  GPostCommentsRepliesData_response_data_createdBy rebuild(
          void Function(GPostCommentsRepliesData_response_data_createdByBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentsRepliesData_response_data_createdByBuilder toBuilder() =>
      new GPostCommentsRepliesData_response_data_createdByBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentsRepliesData_response_data_createdBy &&
        G__typename == other.G__typename &&
        id == other.id &&
        username == other.username &&
        isAvatar == other.isAvatar &&
        avatarUrl == other.avatarUrl &&
        themeUrl == other.themeUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, isAvatar.hashCode);
    _$hash = $jc(_$hash, avatarUrl.hashCode);
    _$hash = $jc(_$hash, themeUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPostCommentsRepliesData_response_data_createdBy')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username)
          ..add('isAvatar', isAvatar)
          ..add('avatarUrl', avatarUrl)
          ..add('themeUrl', themeUrl))
        .toString();
  }
}

class GPostCommentsRepliesData_response_data_createdByBuilder
    implements
        Builder<GPostCommentsRepliesData_response_data_createdBy,
            GPostCommentsRepliesData_response_data_createdByBuilder> {
  _$GPostCommentsRepliesData_response_data_createdBy? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _isAvatar;
  String? get isAvatar => _$this._isAvatar;
  set isAvatar(String? isAvatar) => _$this._isAvatar = isAvatar;

  String? _avatarUrl;
  String? get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String? avatarUrl) => _$this._avatarUrl = avatarUrl;

  String? _themeUrl;
  String? get themeUrl => _$this._themeUrl;
  set themeUrl(String? themeUrl) => _$this._themeUrl = themeUrl;

  GPostCommentsRepliesData_response_data_createdByBuilder() {
    GPostCommentsRepliesData_response_data_createdBy._initializeBuilder(this);
  }

  GPostCommentsRepliesData_response_data_createdByBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _username = $v.username;
      _isAvatar = $v.isAvatar;
      _avatarUrl = $v.avatarUrl;
      _themeUrl = $v.themeUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentsRepliesData_response_data_createdBy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentsRepliesData_response_data_createdBy;
  }

  @override
  void update(
      void Function(GPostCommentsRepliesData_response_data_createdByBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentsRepliesData_response_data_createdBy build() => _build();

  _$GPostCommentsRepliesData_response_data_createdBy _build() {
    final _$result = _$v ??
        new _$GPostCommentsRepliesData_response_data_createdBy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GPostCommentsRepliesData_response_data_createdBy',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GPostCommentsRepliesData_response_data_createdBy', 'id'),
            username: username,
            isAvatar: isAvatar,
            avatarUrl: avatarUrl,
            themeUrl: themeUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GPostVoicepodCommentData extends GPostVoicepodCommentData {
  @override
  final String G__typename;
  @override
  final GPostVoicepodCommentData_sendPostReply? sendPostReply;

  factory _$GPostVoicepodCommentData(
          [void Function(GPostVoicepodCommentDataBuilder)? updates]) =>
      (new GPostVoicepodCommentDataBuilder()..update(updates))._build();

  _$GPostVoicepodCommentData._({required this.G__typename, this.sendPostReply})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostVoicepodCommentData', 'G__typename');
  }

  @override
  GPostVoicepodCommentData rebuild(
          void Function(GPostVoicepodCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostVoicepodCommentDataBuilder toBuilder() =>
      new GPostVoicepodCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostVoicepodCommentData &&
        G__typename == other.G__typename &&
        sendPostReply == other.sendPostReply;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sendPostReply.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostVoicepodCommentData')
          ..add('G__typename', G__typename)
          ..add('sendPostReply', sendPostReply))
        .toString();
  }
}

class GPostVoicepodCommentDataBuilder
    implements
        Builder<GPostVoicepodCommentData, GPostVoicepodCommentDataBuilder> {
  _$GPostVoicepodCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostVoicepodCommentData_sendPostReplyBuilder? _sendPostReply;
  GPostVoicepodCommentData_sendPostReplyBuilder get sendPostReply =>
      _$this._sendPostReply ??=
          new GPostVoicepodCommentData_sendPostReplyBuilder();
  set sendPostReply(
          GPostVoicepodCommentData_sendPostReplyBuilder? sendPostReply) =>
      _$this._sendPostReply = sendPostReply;

  GPostVoicepodCommentDataBuilder() {
    GPostVoicepodCommentData._initializeBuilder(this);
  }

  GPostVoicepodCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendPostReply = $v.sendPostReply?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostVoicepodCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostVoicepodCommentData;
  }

  @override
  void update(void Function(GPostVoicepodCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostVoicepodCommentData build() => _build();

  _$GPostVoicepodCommentData _build() {
    _$GPostVoicepodCommentData _$result;
    try {
      _$result = _$v ??
          new _$GPostVoicepodCommentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostVoicepodCommentData', 'G__typename'),
              sendPostReply: _sendPostReply?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendPostReply';
        _sendPostReply?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostVoicepodCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostVoicepodCommentData_sendPostReply
    extends GPostVoicepodCommentData_sendPostReply {
  @override
  final String G__typename;
  @override
  final String? message;
  @override
  final bool? status;
  @override
  final String? error;
  @override
  final GPostVoicepodCommentData_sendPostReply_data? data;

  factory _$GPostVoicepodCommentData_sendPostReply(
          [void Function(GPostVoicepodCommentData_sendPostReplyBuilder)?
              updates]) =>
      (new GPostVoicepodCommentData_sendPostReplyBuilder()..update(updates))
          ._build();

  _$GPostVoicepodCommentData_sendPostReply._(
      {required this.G__typename,
      this.message,
      this.status,
      this.error,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostVoicepodCommentData_sendPostReply', 'G__typename');
  }

  @override
  GPostVoicepodCommentData_sendPostReply rebuild(
          void Function(GPostVoicepodCommentData_sendPostReplyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostVoicepodCommentData_sendPostReplyBuilder toBuilder() =>
      new GPostVoicepodCommentData_sendPostReplyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostVoicepodCommentData_sendPostReply &&
        G__typename == other.G__typename &&
        message == other.message &&
        status == other.status &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPostVoicepodCommentData_sendPostReply')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('status', status)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class GPostVoicepodCommentData_sendPostReplyBuilder
    implements
        Builder<GPostVoicepodCommentData_sendPostReply,
            GPostVoicepodCommentData_sendPostReplyBuilder> {
  _$GPostVoicepodCommentData_sendPostReply? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  GPostVoicepodCommentData_sendPostReply_dataBuilder? _data;
  GPostVoicepodCommentData_sendPostReply_dataBuilder get data =>
      _$this._data ??= new GPostVoicepodCommentData_sendPostReply_dataBuilder();
  set data(GPostVoicepodCommentData_sendPostReply_dataBuilder? data) =>
      _$this._data = data;

  GPostVoicepodCommentData_sendPostReplyBuilder() {
    GPostVoicepodCommentData_sendPostReply._initializeBuilder(this);
  }

  GPostVoicepodCommentData_sendPostReplyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _status = $v.status;
      _error = $v.error;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostVoicepodCommentData_sendPostReply other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostVoicepodCommentData_sendPostReply;
  }

  @override
  void update(
      void Function(GPostVoicepodCommentData_sendPostReplyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostVoicepodCommentData_sendPostReply build() => _build();

  _$GPostVoicepodCommentData_sendPostReply _build() {
    _$GPostVoicepodCommentData_sendPostReply _$result;
    try {
      _$result = _$v ??
          new _$GPostVoicepodCommentData_sendPostReply._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GPostVoicepodCommentData_sendPostReply', 'G__typename'),
              message: message,
              status: status,
              error: error,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostVoicepodCommentData_sendPostReply',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostVoicepodCommentData_sendPostReply_data
    extends GPostVoicepodCommentData_sendPostReply_data {
  @override
  final String G__typename;
  @override
  final String? replyId;

  factory _$GPostVoicepodCommentData_sendPostReply_data(
          [void Function(GPostVoicepodCommentData_sendPostReply_dataBuilder)?
              updates]) =>
      (new GPostVoicepodCommentData_sendPostReply_dataBuilder()
            ..update(updates))
          ._build();

  _$GPostVoicepodCommentData_sendPostReply_data._(
      {required this.G__typename, this.replyId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GPostVoicepodCommentData_sendPostReply_data', 'G__typename');
  }

  @override
  GPostVoicepodCommentData_sendPostReply_data rebuild(
          void Function(GPostVoicepodCommentData_sendPostReply_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostVoicepodCommentData_sendPostReply_dataBuilder toBuilder() =>
      new GPostVoicepodCommentData_sendPostReply_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostVoicepodCommentData_sendPostReply_data &&
        G__typename == other.G__typename &&
        replyId == other.replyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, replyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPostVoicepodCommentData_sendPostReply_data')
          ..add('G__typename', G__typename)
          ..add('replyId', replyId))
        .toString();
  }
}

class GPostVoicepodCommentData_sendPostReply_dataBuilder
    implements
        Builder<GPostVoicepodCommentData_sendPostReply_data,
            GPostVoicepodCommentData_sendPostReply_dataBuilder> {
  _$GPostVoicepodCommentData_sendPostReply_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _replyId;
  String? get replyId => _$this._replyId;
  set replyId(String? replyId) => _$this._replyId = replyId;

  GPostVoicepodCommentData_sendPostReply_dataBuilder() {
    GPostVoicepodCommentData_sendPostReply_data._initializeBuilder(this);
  }

  GPostVoicepodCommentData_sendPostReply_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _replyId = $v.replyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostVoicepodCommentData_sendPostReply_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostVoicepodCommentData_sendPostReply_data;
  }

  @override
  void update(
      void Function(GPostVoicepodCommentData_sendPostReply_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostVoicepodCommentData_sendPostReply_data build() => _build();

  _$GPostVoicepodCommentData_sendPostReply_data _build() {
    final _$result = _$v ??
        new _$GPostVoicepodCommentData_sendPostReply_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GPostVoicepodCommentData_sendPostReply_data', 'G__typename'),
            replyId: replyId);
    replace(_$result);
    return _$result;
  }
}

class _$GLikePostCommentData extends GLikePostCommentData {
  @override
  final String G__typename;
  @override
  final GLikePostCommentData_response? response;

  factory _$GLikePostCommentData(
          [void Function(GLikePostCommentDataBuilder)? updates]) =>
      (new GLikePostCommentDataBuilder()..update(updates))._build();

  _$GLikePostCommentData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLikePostCommentData', 'G__typename');
  }

  @override
  GLikePostCommentData rebuild(
          void Function(GLikePostCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostCommentDataBuilder toBuilder() =>
      new GLikePostCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostCommentData &&
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
    return (newBuiltValueToStringHelper(r'GLikePostCommentData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GLikePostCommentDataBuilder
    implements Builder<GLikePostCommentData, GLikePostCommentDataBuilder> {
  _$GLikePostCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLikePostCommentData_responseBuilder? _response;
  GLikePostCommentData_responseBuilder get response =>
      _$this._response ??= new GLikePostCommentData_responseBuilder();
  set response(GLikePostCommentData_responseBuilder? response) =>
      _$this._response = response;

  GLikePostCommentDataBuilder() {
    GLikePostCommentData._initializeBuilder(this);
  }

  GLikePostCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostCommentData;
  }

  @override
  void update(void Function(GLikePostCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikePostCommentData build() => _build();

  _$GLikePostCommentData _build() {
    _$GLikePostCommentData _$result;
    try {
      _$result = _$v ??
          new _$GLikePostCommentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLikePostCommentData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLikePostCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLikePostCommentData_response extends GLikePostCommentData_response {
  @override
  final String G__typename;
  @override
  final String? error;
  @override
  final bool? status;
  @override
  final String? message;

  factory _$GLikePostCommentData_response(
          [void Function(GLikePostCommentData_responseBuilder)? updates]) =>
      (new GLikePostCommentData_responseBuilder()..update(updates))._build();

  _$GLikePostCommentData_response._(
      {required this.G__typename, this.error, this.status, this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLikePostCommentData_response', 'G__typename');
  }

  @override
  GLikePostCommentData_response rebuild(
          void Function(GLikePostCommentData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostCommentData_responseBuilder toBuilder() =>
      new GLikePostCommentData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostCommentData_response &&
        G__typename == other.G__typename &&
        error == other.error &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLikePostCommentData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class GLikePostCommentData_responseBuilder
    implements
        Builder<GLikePostCommentData_response,
            GLikePostCommentData_responseBuilder> {
  _$GLikePostCommentData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GLikePostCommentData_responseBuilder() {
    GLikePostCommentData_response._initializeBuilder(this);
  }

  GLikePostCommentData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error;
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostCommentData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostCommentData_response;
  }

  @override
  void update(void Function(GLikePostCommentData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikePostCommentData_response build() => _build();

  _$GLikePostCommentData_response _build() {
    final _$result = _$v ??
        new _$GLikePostCommentData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLikePostCommentData_response', 'G__typename'),
            error: error,
            status: status,
            message: message);
    replace(_$result);
    return _$result;
  }
}

class _$GUnlikePostCommentData extends GUnlikePostCommentData {
  @override
  final String G__typename;
  @override
  final GUnlikePostCommentData_response? response;

  factory _$GUnlikePostCommentData(
          [void Function(GUnlikePostCommentDataBuilder)? updates]) =>
      (new GUnlikePostCommentDataBuilder()..update(updates))._build();

  _$GUnlikePostCommentData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUnlikePostCommentData', 'G__typename');
  }

  @override
  GUnlikePostCommentData rebuild(
          void Function(GUnlikePostCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnlikePostCommentDataBuilder toBuilder() =>
      new GUnlikePostCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUnlikePostCommentData &&
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
    return (newBuiltValueToStringHelper(r'GUnlikePostCommentData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GUnlikePostCommentDataBuilder
    implements Builder<GUnlikePostCommentData, GUnlikePostCommentDataBuilder> {
  _$GUnlikePostCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUnlikePostCommentData_responseBuilder? _response;
  GUnlikePostCommentData_responseBuilder get response =>
      _$this._response ??= new GUnlikePostCommentData_responseBuilder();
  set response(GUnlikePostCommentData_responseBuilder? response) =>
      _$this._response = response;

  GUnlikePostCommentDataBuilder() {
    GUnlikePostCommentData._initializeBuilder(this);
  }

  GUnlikePostCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUnlikePostCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnlikePostCommentData;
  }

  @override
  void update(void Function(GUnlikePostCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnlikePostCommentData build() => _build();

  _$GUnlikePostCommentData _build() {
    _$GUnlikePostCommentData _$result;
    try {
      _$result = _$v ??
          new _$GUnlikePostCommentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUnlikePostCommentData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUnlikePostCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUnlikePostCommentData_response
    extends GUnlikePostCommentData_response {
  @override
  final String G__typename;
  @override
  final String? error;
  @override
  final bool? status;
  @override
  final String? message;

  factory _$GUnlikePostCommentData_response(
          [void Function(GUnlikePostCommentData_responseBuilder)? updates]) =>
      (new GUnlikePostCommentData_responseBuilder()..update(updates))._build();

  _$GUnlikePostCommentData_response._(
      {required this.G__typename, this.error, this.status, this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUnlikePostCommentData_response', 'G__typename');
  }

  @override
  GUnlikePostCommentData_response rebuild(
          void Function(GUnlikePostCommentData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUnlikePostCommentData_responseBuilder toBuilder() =>
      new GUnlikePostCommentData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUnlikePostCommentData_response &&
        G__typename == other.G__typename &&
        error == other.error &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUnlikePostCommentData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class GUnlikePostCommentData_responseBuilder
    implements
        Builder<GUnlikePostCommentData_response,
            GUnlikePostCommentData_responseBuilder> {
  _$GUnlikePostCommentData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GUnlikePostCommentData_responseBuilder() {
    GUnlikePostCommentData_response._initializeBuilder(this);
  }

  GUnlikePostCommentData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error;
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUnlikePostCommentData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUnlikePostCommentData_response;
  }

  @override
  void update(void Function(GUnlikePostCommentData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUnlikePostCommentData_response build() => _build();

  _$GUnlikePostCommentData_response _build() {
    final _$result = _$v ??
        new _$GUnlikePostCommentData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUnlikePostCommentData_response', 'G__typename'),
            error: error,
            status: status,
            message: message);
    replace(_$result);
    return _$result;
  }
}

class _$GBlockUserData extends GBlockUserData {
  @override
  final String G__typename;
  @override
  final GBlockUserData_response? response;

  factory _$GBlockUserData([void Function(GBlockUserDataBuilder)? updates]) =>
      (new GBlockUserDataBuilder()..update(updates))._build();

  _$GBlockUserData._({required this.G__typename, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBlockUserData', 'G__typename');
  }

  @override
  GBlockUserData rebuild(void Function(GBlockUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBlockUserDataBuilder toBuilder() =>
      new GBlockUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBlockUserData &&
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
    return (newBuiltValueToStringHelper(r'GBlockUserData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GBlockUserDataBuilder
    implements Builder<GBlockUserData, GBlockUserDataBuilder> {
  _$GBlockUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GBlockUserData_responseBuilder? _response;
  GBlockUserData_responseBuilder get response =>
      _$this._response ??= new GBlockUserData_responseBuilder();
  set response(GBlockUserData_responseBuilder? response) =>
      _$this._response = response;

  GBlockUserDataBuilder() {
    GBlockUserData._initializeBuilder(this);
  }

  GBlockUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBlockUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBlockUserData;
  }

  @override
  void update(void Function(GBlockUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBlockUserData build() => _build();

  _$GBlockUserData _build() {
    _$GBlockUserData _$result;
    try {
      _$result = _$v ??
          new _$GBlockUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GBlockUserData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBlockUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBlockUserData_response extends GBlockUserData_response {
  @override
  final String G__typename;
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final GBlockUserData_response_data? data;

  factory _$GBlockUserData_response(
          [void Function(GBlockUserData_responseBuilder)? updates]) =>
      (new GBlockUserData_responseBuilder()..update(updates))._build();

  _$GBlockUserData_response._(
      {required this.G__typename,
      this.status,
      this.message,
      this.error,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBlockUserData_response', 'G__typename');
  }

  @override
  GBlockUserData_response rebuild(
          void Function(GBlockUserData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBlockUserData_responseBuilder toBuilder() =>
      new GBlockUserData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBlockUserData_response &&
        G__typename == other.G__typename &&
        status == other.status &&
        message == other.message &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBlockUserData_response')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class GBlockUserData_responseBuilder
    implements
        Builder<GBlockUserData_response, GBlockUserData_responseBuilder> {
  _$GBlockUserData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  GBlockUserData_response_dataBuilder? _data;
  GBlockUserData_response_dataBuilder get data =>
      _$this._data ??= new GBlockUserData_response_dataBuilder();
  set data(GBlockUserData_response_dataBuilder? data) => _$this._data = data;

  GBlockUserData_responseBuilder() {
    GBlockUserData_response._initializeBuilder(this);
  }

  GBlockUserData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _message = $v.message;
      _error = $v.error;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBlockUserData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBlockUserData_response;
  }

  @override
  void update(void Function(GBlockUserData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBlockUserData_response build() => _build();

  _$GBlockUserData_response _build() {
    _$GBlockUserData_response _$result;
    try {
      _$result = _$v ??
          new _$GBlockUserData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GBlockUserData_response', 'G__typename'),
              status: status,
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
            r'GBlockUserData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBlockUserData_response_data extends GBlockUserData_response_data {
  @override
  final String G__typename;
  @override
  final String? username;
  @override
  final String id;

  factory _$GBlockUserData_response_data(
          [void Function(GBlockUserData_response_dataBuilder)? updates]) =>
      (new GBlockUserData_response_dataBuilder()..update(updates))._build();

  _$GBlockUserData_response_data._(
      {required this.G__typename, this.username, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBlockUserData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GBlockUserData_response_data', 'id');
  }

  @override
  GBlockUserData_response_data rebuild(
          void Function(GBlockUserData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBlockUserData_response_dataBuilder toBuilder() =>
      new GBlockUserData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBlockUserData_response_data &&
        G__typename == other.G__typename &&
        username == other.username &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBlockUserData_response_data')
          ..add('G__typename', G__typename)
          ..add('username', username)
          ..add('id', id))
        .toString();
  }
}

class GBlockUserData_response_dataBuilder
    implements
        Builder<GBlockUserData_response_data,
            GBlockUserData_response_dataBuilder> {
  _$GBlockUserData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GBlockUserData_response_dataBuilder() {
    GBlockUserData_response_data._initializeBuilder(this);
  }

  GBlockUserData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _username = $v.username;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBlockUserData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBlockUserData_response_data;
  }

  @override
  void update(void Function(GBlockUserData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBlockUserData_response_data build() => _build();

  _$GBlockUserData_response_data _build() {
    final _$result = _$v ??
        new _$GBlockUserData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GBlockUserData_response_data', 'G__typename'),
            username: username,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GBlockUserData_response_data', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
