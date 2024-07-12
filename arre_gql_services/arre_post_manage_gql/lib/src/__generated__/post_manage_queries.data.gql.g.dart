// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_manage_queries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLanguagesData> _$gGetLanguagesDataSerializer =
    new _$GGetLanguagesDataSerializer();
Serializer<GGetLanguagesData_response> _$gGetLanguagesDataResponseSerializer =
    new _$GGetLanguagesData_responseSerializer();
Serializer<GGetLanguagesData_response_data>
    _$gGetLanguagesDataResponseDataSerializer =
    new _$GGetLanguagesData_response_dataSerializer();
Serializer<GBgMusicData> _$gBgMusicDataSerializer =
    new _$GBgMusicDataSerializer();
Serializer<GBgMusicData_response> _$gBgMusicDataResponseSerializer =
    new _$GBgMusicData_responseSerializer();
Serializer<GBgMusicData_response_data> _$gBgMusicDataResponseDataSerializer =
    new _$GBgMusicData_response_dataSerializer();
Serializer<GAudioInsertablesData> _$gAudioInsertablesDataSerializer =
    new _$GAudioInsertablesDataSerializer();
Serializer<GAudioInsertablesData_response>
    _$gAudioInsertablesDataResponseSerializer =
    new _$GAudioInsertablesData_responseSerializer();
Serializer<GAudioInsertablesData_response_data>
    _$gAudioInsertablesDataResponseDataSerializer =
    new _$GAudioInsertablesData_response_dataSerializer();
Serializer<GVoiceEffectsData> _$gVoiceEffectsDataSerializer =
    new _$GVoiceEffectsDataSerializer();
Serializer<GVoiceEffectsData_response> _$gVoiceEffectsDataResponseSerializer =
    new _$GVoiceEffectsData_responseSerializer();
Serializer<GVoiceEffectsData_response_data>
    _$gVoiceEffectsDataResponseDataSerializer =
    new _$GVoiceEffectsData_response_dataSerializer();
Serializer<GUserVoicepodsData> _$gUserVoicepodsDataSerializer =
    new _$GUserVoicepodsDataSerializer();
Serializer<GUserVoicepodsData_response> _$gUserVoicepodsDataResponseSerializer =
    new _$GUserVoicepodsData_responseSerializer();
Serializer<GUserVoicepodsData_response_data>
    _$gUserVoicepodsDataResponseDataSerializer =
    new _$GUserVoicepodsData_response_dataSerializer();
Serializer<GUserVoicepodsData_response_data_lastEvaluatedKey>
    _$gUserVoicepodsDataResponseDataLastEvaluatedKeySerializer =
    new _$GUserVoicepodsData_response_data_lastEvaluatedKeySerializer();
Serializer<GMarkAsViewedData> _$gMarkAsViewedDataSerializer =
    new _$GMarkAsViewedDataSerializer();
Serializer<GMarkAsViewedData_response> _$gMarkAsViewedDataResponseSerializer =
    new _$GMarkAsViewedData_responseSerializer();
Serializer<GMarkAsPlayedData> _$gMarkAsPlayedDataSerializer =
    new _$GMarkAsPlayedDataSerializer();
Serializer<GMarkAsPlayedData_response> _$gMarkAsPlayedDataResponseSerializer =
    new _$GMarkAsPlayedData_responseSerializer();
Serializer<GCreateVoicepodData> _$gCreateVoicepodDataSerializer =
    new _$GCreateVoicepodDataSerializer();
Serializer<GCreateVoicepodData_response>
    _$gCreateVoicepodDataResponseSerializer =
    new _$GCreateVoicepodData_responseSerializer();
Serializer<GCreateVoicepodData_response_data>
    _$gCreateVoicepodDataResponseDataSerializer =
    new _$GCreateVoicepodData_response_dataSerializer();
Serializer<GGetVoicepodDetailsData> _$gGetVoicepodDetailsDataSerializer =
    new _$GGetVoicepodDetailsDataSerializer();
Serializer<GGetVoicepodDetailsData_response>
    _$gGetVoicepodDetailsDataResponseSerializer =
    new _$GGetVoicepodDetailsData_responseSerializer();
Serializer<GGetVoicepodDetailsData_response_data>
    _$gGetVoicepodDetailsDataResponseDataSerializer =
    new _$GGetVoicepodDetailsData_response_dataSerializer();
Serializer<GDeleteVoicepodData> _$gDeleteVoicepodDataSerializer =
    new _$GDeleteVoicepodDataSerializer();
Serializer<GDeleteVoicepodData_response>
    _$gDeleteVoicepodDataResponseSerializer =
    new _$GDeleteVoicepodData_responseSerializer();
Serializer<GPostCommentData> _$gPostCommentDataSerializer =
    new _$GPostCommentDataSerializer();
Serializer<GPostCommentData_response> _$gPostCommentDataResponseSerializer =
    new _$GPostCommentData_responseSerializer();
Serializer<GPostCommentData_response_data>
    _$gPostCommentDataResponseDataSerializer =
    new _$GPostCommentData_response_dataSerializer();
Serializer<GPostCommentReplyData> _$gPostCommentReplyDataSerializer =
    new _$GPostCommentReplyDataSerializer();
Serializer<GPostCommentReplyData_response>
    _$gPostCommentReplyDataResponseSerializer =
    new _$GPostCommentReplyData_responseSerializer();
Serializer<GPostCommentReplyData_response_data>
    _$gPostCommentReplyDataResponseDataSerializer =
    new _$GPostCommentReplyData_response_dataSerializer();
Serializer<GPostDetailsData> _$gPostDetailsDataSerializer =
    new _$GPostDetailsDataSerializer();
Serializer<GVPCommentData> _$gVPCommentDataSerializer =
    new _$GVPCommentDataSerializer();
Serializer<GVPCommentReplyData> _$gVPCommentReplyDataSerializer =
    new _$GVPCommentReplyDataSerializer();
Serializer<GLanguageData> _$gLanguageDataSerializer =
    new _$GLanguageDataSerializer();

class _$GGetLanguagesDataSerializer
    implements StructuredSerializer<GGetLanguagesData> {
  @override
  final Iterable<Type> types = const [GGetLanguagesData, _$GGetLanguagesData];
  @override
  final String wireName = 'GGetLanguagesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetLanguagesData object,
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
            specifiedType: const FullType(GGetLanguagesData_response)));
    }
    return result;
  }

  @override
  GGetLanguagesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLanguagesDataBuilder();

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
                  specifiedType: const FullType(GGetLanguagesData_response))!
              as GGetLanguagesData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLanguagesData_responseSerializer
    implements StructuredSerializer<GGetLanguagesData_response> {
  @override
  final Iterable<Type> types = const [
    GGetLanguagesData_response,
    _$GGetLanguagesData_response
  ];
  @override
  final String wireName = 'GGetLanguagesData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLanguagesData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetLanguagesData_response_data)])),
    ];

    return result;
  }

  @override
  GGetLanguagesData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLanguagesData_responseBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetLanguagesData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLanguagesData_response_dataSerializer
    implements StructuredSerializer<GGetLanguagesData_response_data> {
  @override
  final Iterable<Type> types = const [
    GGetLanguagesData_response_data,
    _$GGetLanguagesData_response_data
  ];
  @override
  final String wireName = 'GGetLanguagesData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLanguagesData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nameInEnglish',
      serializers.serialize(object.nameInEnglish,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetLanguagesData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLanguagesData_response_dataBuilder();

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
        case 'nameInEnglish':
          result.nameInEnglish = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GBgMusicDataSerializer implements StructuredSerializer<GBgMusicData> {
  @override
  final Iterable<Type> types = const [GBgMusicData, _$GBgMusicData];
  @override
  final String wireName = 'GBgMusicData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBgMusicData object,
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
            specifiedType: const FullType(GBgMusicData_response)));
    }
    return result;
  }

  @override
  GBgMusicData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBgMusicDataBuilder();

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
                  specifiedType: const FullType(GBgMusicData_response))!
              as GBgMusicData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GBgMusicData_responseSerializer
    implements StructuredSerializer<GBgMusicData_response> {
  @override
  final Iterable<Type> types = const [
    GBgMusicData_response,
    _$GBgMusicData_response
  ];
  @override
  final String wireName = 'GBgMusicData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBgMusicData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GBgMusicData_response_data)])),
    ];

    return result;
  }

  @override
  GBgMusicData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBgMusicData_responseBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GBgMusicData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GBgMusicData_response_dataSerializer
    implements StructuredSerializer<GBgMusicData_response_data> {
  @override
  final Iterable<Type> types = const [
    GBgMusicData_response_data,
    _$GBgMusicData_response_data
  ];
  @override
  final String wireName = 'GBgMusicData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBgMusicData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'iconUrl',
      serializers.serialize(object.iconUrl,
          specifiedType: const FullType(String)),
      'musicUrl',
      serializers.serialize(object.musicUrl,
          specifiedType: const FullType(String)),
      'filename',
      serializers.serialize(object.filename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GBgMusicData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBgMusicData_response_dataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'musicUrl':
          result.musicUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'filename':
          result.filename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAudioInsertablesDataSerializer
    implements StructuredSerializer<GAudioInsertablesData> {
  @override
  final Iterable<Type> types = const [
    GAudioInsertablesData,
    _$GAudioInsertablesData
  ];
  @override
  final String wireName = 'GAudioInsertablesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAudioInsertablesData object,
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
            specifiedType: const FullType(GAudioInsertablesData_response)));
    }
    return result;
  }

  @override
  GAudioInsertablesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAudioInsertablesDataBuilder();

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
                      const FullType(GAudioInsertablesData_response))!
              as GAudioInsertablesData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GAudioInsertablesData_responseSerializer
    implements StructuredSerializer<GAudioInsertablesData_response> {
  @override
  final Iterable<Type> types = const [
    GAudioInsertablesData_response,
    _$GAudioInsertablesData_response
  ];
  @override
  final String wireName = 'GAudioInsertablesData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAudioInsertablesData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GAudioInsertablesData_response_data)])),
    ];

    return result;
  }

  @override
  GAudioInsertablesData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAudioInsertablesData_responseBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAudioInsertablesData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAudioInsertablesData_response_dataSerializer
    implements StructuredSerializer<GAudioInsertablesData_response_data> {
  @override
  final Iterable<Type> types = const [
    GAudioInsertablesData_response_data,
    _$GAudioInsertablesData_response_data
  ];
  @override
  final String wireName = 'GAudioInsertablesData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAudioInsertablesData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'iconUrl',
      serializers.serialize(object.iconUrl,
          specifiedType: const FullType(String)),
      'musicUrl',
      serializers.serialize(object.musicUrl,
          specifiedType: const FullType(String)),
      'filename',
      serializers.serialize(object.filename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAudioInsertablesData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAudioInsertablesData_response_dataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'musicUrl':
          result.musicUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'filename':
          result.filename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GVoiceEffectsDataSerializer
    implements StructuredSerializer<GVoiceEffectsData> {
  @override
  final Iterable<Type> types = const [GVoiceEffectsData, _$GVoiceEffectsData];
  @override
  final String wireName = 'GVoiceEffectsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GVoiceEffectsData object,
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
            specifiedType: const FullType(GVoiceEffectsData_response)));
    }
    return result;
  }

  @override
  GVoiceEffectsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVoiceEffectsDataBuilder();

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
                  specifiedType: const FullType(GVoiceEffectsData_response))!
              as GVoiceEffectsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GVoiceEffectsData_responseSerializer
    implements StructuredSerializer<GVoiceEffectsData_response> {
  @override
  final Iterable<Type> types = const [
    GVoiceEffectsData_response,
    _$GVoiceEffectsData_response
  ];
  @override
  final String wireName = 'GVoiceEffectsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVoiceEffectsData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GVoiceEffectsData_response_data)])),
    ];

    return result;
  }

  @override
  GVoiceEffectsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVoiceEffectsData_responseBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GVoiceEffectsData_response_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVoiceEffectsData_response_dataSerializer
    implements StructuredSerializer<GVoiceEffectsData_response_data> {
  @override
  final Iterable<Type> types = const [
    GVoiceEffectsData_response_data,
    _$GVoiceEffectsData_response_data
  ];
  @override
  final String wireName = 'GVoiceEffectsData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVoiceEffectsData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'ffmpegCommand',
      serializers.serialize(object.ffmpegCommand,
          specifiedType: const FullType(String)),
      'iconUrl',
      serializers.serialize(object.iconUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GVoiceEffectsData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVoiceEffectsData_response_dataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ffmpegCommand':
          result.ffmpegCommand = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserVoicepodsDataSerializer
    implements StructuredSerializer<GUserVoicepodsData> {
  @override
  final Iterable<Type> types = const [GUserVoicepodsData, _$GUserVoicepodsData];
  @override
  final String wireName = 'GUserVoicepodsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserVoicepodsData object,
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
            specifiedType: const FullType(GUserVoicepodsData_response)));
    }
    return result;
  }

  @override
  GUserVoicepodsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserVoicepodsDataBuilder();

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
                  specifiedType: const FullType(GUserVoicepodsData_response))!
              as GUserVoicepodsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserVoicepodsData_responseSerializer
    implements StructuredSerializer<GUserVoicepodsData_response> {
  @override
  final Iterable<Type> types = const [
    GUserVoicepodsData_response,
    _$GUserVoicepodsData_response
  ];
  @override
  final String wireName = 'GUserVoicepodsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserVoicepodsData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserVoicepodsData_response_data)));
    }
    return result;
  }

  @override
  GUserVoicepodsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserVoicepodsData_responseBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserVoicepodsData_response_data))!
              as GUserVoicepodsData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserVoicepodsData_response_dataSerializer
    implements StructuredSerializer<GUserVoicepodsData_response_data> {
  @override
  final Iterable<Type> types = const [
    GUserVoicepodsData_response_data,
    _$GUserVoicepodsData_response_data
  ];
  @override
  final String wireName = 'GUserVoicepodsData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserVoicepodsData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'voicepods',
      serializers.serialize(object.voicepods,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.lastEvaluatedKey;
    if (value != null) {
      result
        ..add('lastEvaluatedKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUserVoicepodsData_response_data_lastEvaluatedKey)));
    }
    return result;
  }

  @override
  GUserVoicepodsData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserVoicepodsData_response_dataBuilder();

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
        case 'voicepods':
          result.voicepods.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'lastEvaluatedKey':
          result.lastEvaluatedKey.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserVoicepodsData_response_data_lastEvaluatedKey))!
              as GUserVoicepodsData_response_data_lastEvaluatedKey);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserVoicepodsData_response_data_lastEvaluatedKeySerializer
    implements
        StructuredSerializer<
            GUserVoicepodsData_response_data_lastEvaluatedKey> {
  @override
  final Iterable<Type> types = const [
    GUserVoicepodsData_response_data_lastEvaluatedKey,
    _$GUserVoicepodsData_response_data_lastEvaluatedKey
  ];
  @override
  final String wireName = 'GUserVoicepodsData_response_data_lastEvaluatedKey';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserVoicepodsData_response_data_lastEvaluatedKey object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserVoicepodsData_response_data_lastEvaluatedKey deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder();

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
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMarkAsViewedDataSerializer
    implements StructuredSerializer<GMarkAsViewedData> {
  @override
  final Iterable<Type> types = const [GMarkAsViewedData, _$GMarkAsViewedData];
  @override
  final String wireName = 'GMarkAsViewedData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMarkAsViewedData object,
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
            specifiedType: const FullType(GMarkAsViewedData_response)));
    }
    return result;
  }

  @override
  GMarkAsViewedData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkAsViewedDataBuilder();

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
                  specifiedType: const FullType(GMarkAsViewedData_response))!
              as GMarkAsViewedData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GMarkAsViewedData_responseSerializer
    implements StructuredSerializer<GMarkAsViewedData_response> {
  @override
  final Iterable<Type> types = const [
    GMarkAsViewedData_response,
    _$GMarkAsViewedData_response
  ];
  @override
  final String wireName = 'GMarkAsViewedData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMarkAsViewedData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
    ];
    Object? value;
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
  GMarkAsViewedData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkAsViewedData_responseBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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

class _$GMarkAsPlayedDataSerializer
    implements StructuredSerializer<GMarkAsPlayedData> {
  @override
  final Iterable<Type> types = const [GMarkAsPlayedData, _$GMarkAsPlayedData];
  @override
  final String wireName = 'GMarkAsPlayedData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMarkAsPlayedData object,
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
            specifiedType: const FullType(GMarkAsPlayedData_response)));
    }
    return result;
  }

  @override
  GMarkAsPlayedData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkAsPlayedDataBuilder();

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
                  specifiedType: const FullType(GMarkAsPlayedData_response))!
              as GMarkAsPlayedData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GMarkAsPlayedData_responseSerializer
    implements StructuredSerializer<GMarkAsPlayedData_response> {
  @override
  final Iterable<Type> types = const [
    GMarkAsPlayedData_response,
    _$GMarkAsPlayedData_response
  ];
  @override
  final String wireName = 'GMarkAsPlayedData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMarkAsPlayedData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
    ];
    Object? value;
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
  GMarkAsPlayedData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarkAsPlayedData_responseBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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

class _$GCreateVoicepodDataSerializer
    implements StructuredSerializer<GCreateVoicepodData> {
  @override
  final Iterable<Type> types = const [
    GCreateVoicepodData,
    _$GCreateVoicepodData
  ];
  @override
  final String wireName = 'GCreateVoicepodData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateVoicepodData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'response',
      serializers.serialize(object.response,
          specifiedType: const FullType(GCreateVoicepodData_response)),
    ];

    return result;
  }

  @override
  GCreateVoicepodData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVoicepodDataBuilder();

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
                  specifiedType: const FullType(GCreateVoicepodData_response))!
              as GCreateVoicepodData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVoicepodData_responseSerializer
    implements StructuredSerializer<GCreateVoicepodData_response> {
  @override
  final Iterable<Type> types = const [
    GCreateVoicepodData_response,
    _$GCreateVoicepodData_response
  ];
  @override
  final String wireName = 'GCreateVoicepodData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateVoicepodData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreateVoicepodData_response_data)));
    }
    return result;
  }

  @override
  GCreateVoicepodData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVoicepodData_responseBuilder();

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
                  specifiedType:
                      const FullType(GCreateVoicepodData_response_data))!
              as GCreateVoicepodData_response_data);
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVoicepodData_response_dataSerializer
    implements StructuredSerializer<GCreateVoicepodData_response_data> {
  @override
  final Iterable<Type> types = const [
    GCreateVoicepodData_response_data,
    _$GCreateVoicepodData_response_data
  ];
  @override
  final String wireName = 'GCreateVoicepodData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateVoicepodData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'postUrl',
      serializers.serialize(object.postUrl,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(_i2.GPostVisibility)),
      'audioMediaFiles',
      serializers.serialize(object.audioMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'videoMediaFiles',
      serializers.serialize(object.videoMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'imageMediaFiles',
      serializers.serialize(object.imageMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'playCount',
      serializers.serialize(object.playCount,
          specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'commentCount',
      serializers.serialize(object.commentCount,
          specifiedType: const FullType(int)),
      'postStatus',
      serializers.serialize(object.postStatus,
          specifiedType: const FullType(_i2.GPostStatus)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateVoicepodData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVoicepodData_response_dataBuilder();

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
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postUrl':
          result.postUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostVisibility))!
              as _i2.GPostVisibility;
          break;
        case 'audioMediaFiles':
          result.audioMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'videoMediaFiles':
          result.videoMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'imageMediaFiles':
          result.imageMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'playCount':
          result.playCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'commentCount':
          result.commentCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'postStatus':
          result.postStatus = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostStatus))!
              as _i2.GPostStatus;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetVoicepodDetailsDataSerializer
    implements StructuredSerializer<GGetVoicepodDetailsData> {
  @override
  final Iterable<Type> types = const [
    GGetVoicepodDetailsData,
    _$GGetVoicepodDetailsData
  ];
  @override
  final String wireName = 'GGetVoicepodDetailsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetVoicepodDetailsData object,
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
            specifiedType: const FullType(GGetVoicepodDetailsData_response)));
    }
    return result;
  }

  @override
  GGetVoicepodDetailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetVoicepodDetailsDataBuilder();

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
                      const FullType(GGetVoicepodDetailsData_response))!
              as GGetVoicepodDetailsData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetVoicepodDetailsData_responseSerializer
    implements StructuredSerializer<GGetVoicepodDetailsData_response> {
  @override
  final Iterable<Type> types = const [
    GGetVoicepodDetailsData_response,
    _$GGetVoicepodDetailsData_response
  ];
  @override
  final String wireName = 'GGetVoicepodDetailsData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetVoicepodDetailsData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetVoicepodDetailsData_response_data)));
    }
    return result;
  }

  @override
  GGetVoicepodDetailsData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetVoicepodDetailsData_responseBuilder();

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
                  specifiedType:
                      const FullType(GGetVoicepodDetailsData_response_data))!
              as GGetVoicepodDetailsData_response_data);
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetVoicepodDetailsData_response_dataSerializer
    implements StructuredSerializer<GGetVoicepodDetailsData_response_data> {
  @override
  final Iterable<Type> types = const [
    GGetVoicepodDetailsData_response_data,
    _$GGetVoicepodDetailsData_response_data
  ];
  @override
  final String wireName = 'GGetVoicepodDetailsData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetVoicepodDetailsData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'postUrl',
      serializers.serialize(object.postUrl,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(_i2.GPostVisibility)),
      'audioMediaFiles',
      serializers.serialize(object.audioMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'videoMediaFiles',
      serializers.serialize(object.videoMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'imageMediaFiles',
      serializers.serialize(object.imageMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'playCount',
      serializers.serialize(object.playCount,
          specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'commentCount',
      serializers.serialize(object.commentCount,
          specifiedType: const FullType(int)),
      'postStatus',
      serializers.serialize(object.postStatus,
          specifiedType: const FullType(_i2.GPostStatus)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetVoicepodDetailsData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetVoicepodDetailsData_response_dataBuilder();

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
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postUrl':
          result.postUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostVisibility))!
              as _i2.GPostVisibility;
          break;
        case 'audioMediaFiles':
          result.audioMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'videoMediaFiles':
          result.videoMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'imageMediaFiles':
          result.imageMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'playCount':
          result.playCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'commentCount':
          result.commentCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'postStatus':
          result.postStatus = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostStatus))!
              as _i2.GPostStatus;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteVoicepodDataSerializer
    implements StructuredSerializer<GDeleteVoicepodData> {
  @override
  final Iterable<Type> types = const [
    GDeleteVoicepodData,
    _$GDeleteVoicepodData
  ];
  @override
  final String wireName = 'GDeleteVoicepodData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteVoicepodData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'response',
      serializers.serialize(object.response,
          specifiedType: const FullType(GDeleteVoicepodData_response)),
    ];

    return result;
  }

  @override
  GDeleteVoicepodData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteVoicepodDataBuilder();

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
                  specifiedType: const FullType(GDeleteVoicepodData_response))!
              as GDeleteVoicepodData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteVoicepodData_responseSerializer
    implements StructuredSerializer<GDeleteVoicepodData_response> {
  @override
  final Iterable<Type> types = const [
    GDeleteVoicepodData_response,
    _$GDeleteVoicepodData_response
  ];
  @override
  final String wireName = 'GDeleteVoicepodData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteVoicepodData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
  GDeleteVoicepodData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteVoicepodData_responseBuilder();

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
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentDataSerializer
    implements StructuredSerializer<GPostCommentData> {
  @override
  final Iterable<Type> types = const [GPostCommentData, _$GPostCommentData];
  @override
  final String wireName = 'GPostCommentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostCommentData object,
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
            specifiedType: const FullType(GPostCommentData_response)));
    }
    return result;
  }

  @override
  GPostCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentDataBuilder();

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
                  specifiedType: const FullType(GPostCommentData_response))!
              as GPostCommentData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentData_responseSerializer
    implements StructuredSerializer<GPostCommentData_response> {
  @override
  final Iterable<Type> types = const [
    GPostCommentData_response,
    _$GPostCommentData_response
  ];
  @override
  final String wireName = 'GPostCommentData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPostCommentData_response_data)));
    }
    return result;
  }

  @override
  GPostCommentData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentData_responseBuilder();

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
                  specifiedType:
                      const FullType(GPostCommentData_response_data))!
              as GPostCommentData_response_data);
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentData_response_dataSerializer
    implements StructuredSerializer<GPostCommentData_response_data> {
  @override
  final Iterable<Type> types = const [
    GPostCommentData_response_data,
    _$GPostCommentData_response_data
  ];
  @override
  final String wireName = 'GPostCommentData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'commentId',
      serializers.serialize(object.commentId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'replyCount',
      serializers.serialize(object.replyCount,
          specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GPostStatus)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPostCommentData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentData_response_dataBuilder();

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
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostStatus))!
              as _i2.GPostStatus;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentReplyDataSerializer
    implements StructuredSerializer<GPostCommentReplyData> {
  @override
  final Iterable<Type> types = const [
    GPostCommentReplyData,
    _$GPostCommentReplyData
  ];
  @override
  final String wireName = 'GPostCommentReplyData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentReplyData object,
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
            specifiedType: const FullType(GPostCommentReplyData_response)));
    }
    return result;
  }

  @override
  GPostCommentReplyData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentReplyDataBuilder();

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
                      const FullType(GPostCommentReplyData_response))!
              as GPostCommentReplyData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentReplyData_responseSerializer
    implements StructuredSerializer<GPostCommentReplyData_response> {
  @override
  final Iterable<Type> types = const [
    GPostCommentReplyData_response,
    _$GPostCommentReplyData_response
  ];
  @override
  final String wireName = 'GPostCommentReplyData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentReplyData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'statusCode',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(int)),
      'errorCodeForClient',
      serializers.serialize(object.errorCodeForClient,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GPostCommentReplyData_response_data)));
    }
    return result;
  }

  @override
  GPostCommentReplyData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentReplyData_responseBuilder();

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
                  specifiedType:
                      const FullType(GPostCommentReplyData_response_data))!
              as GPostCommentReplyData_response_data);
          break;
        case 'statusCode':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'errorCodeForClient':
          result.errorCodeForClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCommentReplyData_response_dataSerializer
    implements StructuredSerializer<GPostCommentReplyData_response_data> {
  @override
  final Iterable<Type> types = const [
    GPostCommentReplyData_response_data,
    _$GPostCommentReplyData_response_data
  ];
  @override
  final String wireName = 'GPostCommentReplyData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostCommentReplyData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'replyId',
      serializers.serialize(object.replyId,
          specifiedType: const FullType(String)),
      'commentId',
      serializers.serialize(object.commentId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GPostStatus)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPostCommentReplyData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCommentReplyData_response_dataBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostStatus))!
              as _i2.GPostStatus;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostDetailsDataSerializer
    implements StructuredSerializer<GPostDetailsData> {
  @override
  final Iterable<Type> types = const [GPostDetailsData, _$GPostDetailsData];
  @override
  final String wireName = 'GPostDetailsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'postUrl',
      serializers.serialize(object.postUrl,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(_i2.GPostVisibility)),
      'audioMediaFiles',
      serializers.serialize(object.audioMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'videoMediaFiles',
      serializers.serialize(object.videoMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'imageMediaFiles',
      serializers.serialize(object.imageMediaFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'playCount',
      serializers.serialize(object.playCount,
          specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'commentCount',
      serializers.serialize(object.commentCount,
          specifiedType: const FullType(int)),
      'postStatus',
      serializers.serialize(object.postStatus,
          specifiedType: const FullType(_i2.GPostStatus)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPostDetailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostDetailsDataBuilder();

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
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postUrl':
          result.postUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostVisibility))!
              as _i2.GPostVisibility;
          break;
        case 'audioMediaFiles':
          result.audioMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'videoMediaFiles':
          result.videoMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'imageMediaFiles':
          result.imageMediaFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'playCount':
          result.playCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'commentCount':
          result.commentCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'postStatus':
          result.postStatus = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostStatus))!
              as _i2.GPostStatus;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GVPCommentDataSerializer
    implements StructuredSerializer<GVPCommentData> {
  @override
  final Iterable<Type> types = const [GVPCommentData, _$GVPCommentData];
  @override
  final String wireName = 'GVPCommentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GVPCommentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'commentId',
      serializers.serialize(object.commentId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'replyCount',
      serializers.serialize(object.replyCount,
          specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GPostStatus)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GVPCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVPCommentDataBuilder();

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
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostStatus))!
              as _i2.GPostStatus;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GVPCommentReplyDataSerializer
    implements StructuredSerializer<GVPCommentReplyData> {
  @override
  final Iterable<Type> types = const [
    GVPCommentReplyData,
    _$GVPCommentReplyData
  ];
  @override
  final String wireName = 'GVPCommentReplyData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVPCommentReplyData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'replyId',
      serializers.serialize(object.replyId,
          specifiedType: const FullType(String)),
      'commentId',
      serializers.serialize(object.commentId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GPostStatus)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GVPCommentReplyData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVPCommentReplyDataBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPostStatus))!
              as _i2.GPostStatus;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLanguageDataSerializer implements StructuredSerializer<GLanguageData> {
  @override
  final Iterable<Type> types = const [GLanguageData, _$GLanguageData];
  @override
  final String wireName = 'GLanguageData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLanguageData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nameInEnglish',
      serializers.serialize(object.nameInEnglish,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLanguageData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLanguageDataBuilder();

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
        case 'nameInEnglish':
          result.nameInEnglish = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLanguagesData extends GGetLanguagesData {
  @override
  final String G__typename;
  @override
  final GGetLanguagesData_response? response;

  factory _$GGetLanguagesData(
          [void Function(GGetLanguagesDataBuilder)? updates]) =>
      (new GGetLanguagesDataBuilder()..update(updates))._build();

  _$GGetLanguagesData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetLanguagesData', 'G__typename');
  }

  @override
  GGetLanguagesData rebuild(void Function(GGetLanguagesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLanguagesDataBuilder toBuilder() =>
      new GGetLanguagesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLanguagesData &&
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
    return (newBuiltValueToStringHelper(r'GGetLanguagesData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GGetLanguagesDataBuilder
    implements Builder<GGetLanguagesData, GGetLanguagesDataBuilder> {
  _$GGetLanguagesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetLanguagesData_responseBuilder? _response;
  GGetLanguagesData_responseBuilder get response =>
      _$this._response ??= new GGetLanguagesData_responseBuilder();
  set response(GGetLanguagesData_responseBuilder? response) =>
      _$this._response = response;

  GGetLanguagesDataBuilder() {
    GGetLanguagesData._initializeBuilder(this);
  }

  GGetLanguagesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLanguagesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLanguagesData;
  }

  @override
  void update(void Function(GGetLanguagesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLanguagesData build() => _build();

  _$GGetLanguagesData _build() {
    _$GGetLanguagesData _$result;
    try {
      _$result = _$v ??
          new _$GGetLanguagesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetLanguagesData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetLanguagesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetLanguagesData_response extends GGetLanguagesData_response {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool error;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final BuiltList<GGetLanguagesData_response_data> data;

  factory _$GGetLanguagesData_response(
          [void Function(GGetLanguagesData_responseBuilder)? updates]) =>
      (new GGetLanguagesData_responseBuilder()..update(updates))._build();

  _$GGetLanguagesData_response._(
      {required this.G__typename,
      required this.message,
      required this.error,
      required this.statusCode,
      required this.errorCodeForClient,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetLanguagesData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GGetLanguagesData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GGetLanguagesData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GGetLanguagesData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GGetLanguagesData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GGetLanguagesData_response', 'data');
  }

  @override
  GGetLanguagesData_response rebuild(
          void Function(GGetLanguagesData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLanguagesData_responseBuilder toBuilder() =>
      new GGetLanguagesData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLanguagesData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetLanguagesData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GGetLanguagesData_responseBuilder
    implements
        Builder<GGetLanguagesData_response, GGetLanguagesData_responseBuilder> {
  _$GGetLanguagesData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  ListBuilder<GGetLanguagesData_response_data>? _data;
  ListBuilder<GGetLanguagesData_response_data> get data =>
      _$this._data ??= new ListBuilder<GGetLanguagesData_response_data>();
  set data(ListBuilder<GGetLanguagesData_response_data>? data) =>
      _$this._data = data;

  GGetLanguagesData_responseBuilder() {
    GGetLanguagesData_response._initializeBuilder(this);
  }

  GGetLanguagesData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLanguagesData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLanguagesData_response;
  }

  @override
  void update(void Function(GGetLanguagesData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLanguagesData_response build() => _build();

  _$GGetLanguagesData_response _build() {
    _$GGetLanguagesData_response _$result;
    try {
      _$result = _$v ??
          new _$GGetLanguagesData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetLanguagesData_response', 'G__typename'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GGetLanguagesData_response', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GGetLanguagesData_response', 'error'),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'GGetLanguagesData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GGetLanguagesData_response',
                  'errorCodeForClient'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetLanguagesData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetLanguagesData_response_data
    extends GGetLanguagesData_response_data {
  @override
  final String G__typename;
  @override
  final String nameInEnglish;
  @override
  final String name;

  factory _$GGetLanguagesData_response_data(
          [void Function(GGetLanguagesData_response_dataBuilder)? updates]) =>
      (new GGetLanguagesData_response_dataBuilder()..update(updates))._build();

  _$GGetLanguagesData_response_data._(
      {required this.G__typename,
      required this.nameInEnglish,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetLanguagesData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nameInEnglish, r'GGetLanguagesData_response_data', 'nameInEnglish');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GGetLanguagesData_response_data', 'name');
  }

  @override
  GGetLanguagesData_response_data rebuild(
          void Function(GGetLanguagesData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLanguagesData_response_dataBuilder toBuilder() =>
      new GGetLanguagesData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLanguagesData_response_data &&
        G__typename == other.G__typename &&
        nameInEnglish == other.nameInEnglish &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nameInEnglish.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetLanguagesData_response_data')
          ..add('G__typename', G__typename)
          ..add('nameInEnglish', nameInEnglish)
          ..add('name', name))
        .toString();
  }
}

class GGetLanguagesData_response_dataBuilder
    implements
        Builder<GGetLanguagesData_response_data,
            GGetLanguagesData_response_dataBuilder> {
  _$GGetLanguagesData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _nameInEnglish;
  String? get nameInEnglish => _$this._nameInEnglish;
  set nameInEnglish(String? nameInEnglish) =>
      _$this._nameInEnglish = nameInEnglish;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetLanguagesData_response_dataBuilder() {
    GGetLanguagesData_response_data._initializeBuilder(this);
  }

  GGetLanguagesData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nameInEnglish = $v.nameInEnglish;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLanguagesData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLanguagesData_response_data;
  }

  @override
  void update(void Function(GGetLanguagesData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLanguagesData_response_data build() => _build();

  _$GGetLanguagesData_response_data _build() {
    final _$result = _$v ??
        new _$GGetLanguagesData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetLanguagesData_response_data', 'G__typename'),
            nameInEnglish: BuiltValueNullFieldError.checkNotNull(nameInEnglish,
                r'GGetLanguagesData_response_data', 'nameInEnglish'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GGetLanguagesData_response_data', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GBgMusicData extends GBgMusicData {
  @override
  final String G__typename;
  @override
  final GBgMusicData_response? response;

  factory _$GBgMusicData([void Function(GBgMusicDataBuilder)? updates]) =>
      (new GBgMusicDataBuilder()..update(updates))._build();

  _$GBgMusicData._({required this.G__typename, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBgMusicData', 'G__typename');
  }

  @override
  GBgMusicData rebuild(void Function(GBgMusicDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBgMusicDataBuilder toBuilder() => new GBgMusicDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBgMusicData &&
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
    return (newBuiltValueToStringHelper(r'GBgMusicData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GBgMusicDataBuilder
    implements Builder<GBgMusicData, GBgMusicDataBuilder> {
  _$GBgMusicData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GBgMusicData_responseBuilder? _response;
  GBgMusicData_responseBuilder get response =>
      _$this._response ??= new GBgMusicData_responseBuilder();
  set response(GBgMusicData_responseBuilder? response) =>
      _$this._response = response;

  GBgMusicDataBuilder() {
    GBgMusicData._initializeBuilder(this);
  }

  GBgMusicDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBgMusicData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBgMusicData;
  }

  @override
  void update(void Function(GBgMusicDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBgMusicData build() => _build();

  _$GBgMusicData _build() {
    _$GBgMusicData _$result;
    try {
      _$result = _$v ??
          new _$GBgMusicData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GBgMusicData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBgMusicData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBgMusicData_response extends GBgMusicData_response {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool error;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final BuiltList<GBgMusicData_response_data> data;

  factory _$GBgMusicData_response(
          [void Function(GBgMusicData_responseBuilder)? updates]) =>
      (new GBgMusicData_responseBuilder()..update(updates))._build();

  _$GBgMusicData_response._(
      {required this.G__typename,
      required this.message,
      required this.error,
      required this.statusCode,
      required this.errorCodeForClient,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBgMusicData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GBgMusicData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GBgMusicData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GBgMusicData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(
        errorCodeForClient, r'GBgMusicData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GBgMusicData_response', 'data');
  }

  @override
  GBgMusicData_response rebuild(
          void Function(GBgMusicData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBgMusicData_responseBuilder toBuilder() =>
      new GBgMusicData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBgMusicData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBgMusicData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GBgMusicData_responseBuilder
    implements Builder<GBgMusicData_response, GBgMusicData_responseBuilder> {
  _$GBgMusicData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  ListBuilder<GBgMusicData_response_data>? _data;
  ListBuilder<GBgMusicData_response_data> get data =>
      _$this._data ??= new ListBuilder<GBgMusicData_response_data>();
  set data(ListBuilder<GBgMusicData_response_data>? data) =>
      _$this._data = data;

  GBgMusicData_responseBuilder() {
    GBgMusicData_response._initializeBuilder(this);
  }

  GBgMusicData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBgMusicData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBgMusicData_response;
  }

  @override
  void update(void Function(GBgMusicData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBgMusicData_response build() => _build();

  _$GBgMusicData_response _build() {
    _$GBgMusicData_response _$result;
    try {
      _$result = _$v ??
          new _$GBgMusicData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GBgMusicData_response', 'G__typename'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GBgMusicData_response', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GBgMusicData_response', 'error'),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'GBgMusicData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GBgMusicData_response',
                  'errorCodeForClient'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBgMusicData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBgMusicData_response_data extends GBgMusicData_response_data {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String iconUrl;
  @override
  final String musicUrl;
  @override
  final String filename;

  factory _$GBgMusicData_response_data(
          [void Function(GBgMusicData_response_dataBuilder)? updates]) =>
      (new GBgMusicData_response_dataBuilder()..update(updates))._build();

  _$GBgMusicData_response_data._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.iconUrl,
      required this.musicUrl,
      required this.filename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBgMusicData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GBgMusicData_response_data', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GBgMusicData_response_data', 'name');
    BuiltValueNullFieldError.checkNotNull(
        iconUrl, r'GBgMusicData_response_data', 'iconUrl');
    BuiltValueNullFieldError.checkNotNull(
        musicUrl, r'GBgMusicData_response_data', 'musicUrl');
    BuiltValueNullFieldError.checkNotNull(
        filename, r'GBgMusicData_response_data', 'filename');
  }

  @override
  GBgMusicData_response_data rebuild(
          void Function(GBgMusicData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBgMusicData_response_dataBuilder toBuilder() =>
      new GBgMusicData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBgMusicData_response_data &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        iconUrl == other.iconUrl &&
        musicUrl == other.musicUrl &&
        filename == other.filename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jc(_$hash, musicUrl.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBgMusicData_response_data')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('iconUrl', iconUrl)
          ..add('musicUrl', musicUrl)
          ..add('filename', filename))
        .toString();
  }
}

class GBgMusicData_response_dataBuilder
    implements
        Builder<GBgMusicData_response_data, GBgMusicData_response_dataBuilder> {
  _$GBgMusicData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  String? _musicUrl;
  String? get musicUrl => _$this._musicUrl;
  set musicUrl(String? musicUrl) => _$this._musicUrl = musicUrl;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  GBgMusicData_response_dataBuilder() {
    GBgMusicData_response_data._initializeBuilder(this);
  }

  GBgMusicData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _iconUrl = $v.iconUrl;
      _musicUrl = $v.musicUrl;
      _filename = $v.filename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBgMusicData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBgMusicData_response_data;
  }

  @override
  void update(void Function(GBgMusicData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBgMusicData_response_data build() => _build();

  _$GBgMusicData_response_data _build() {
    final _$result = _$v ??
        new _$GBgMusicData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GBgMusicData_response_data', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GBgMusicData_response_data', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GBgMusicData_response_data', 'name'),
            iconUrl: BuiltValueNullFieldError.checkNotNull(
                iconUrl, r'GBgMusicData_response_data', 'iconUrl'),
            musicUrl: BuiltValueNullFieldError.checkNotNull(
                musicUrl, r'GBgMusicData_response_data', 'musicUrl'),
            filename: BuiltValueNullFieldError.checkNotNull(
                filename, r'GBgMusicData_response_data', 'filename'));
    replace(_$result);
    return _$result;
  }
}

class _$GAudioInsertablesData extends GAudioInsertablesData {
  @override
  final String G__typename;
  @override
  final GAudioInsertablesData_response? response;

  factory _$GAudioInsertablesData(
          [void Function(GAudioInsertablesDataBuilder)? updates]) =>
      (new GAudioInsertablesDataBuilder()..update(updates))._build();

  _$GAudioInsertablesData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAudioInsertablesData', 'G__typename');
  }

  @override
  GAudioInsertablesData rebuild(
          void Function(GAudioInsertablesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAudioInsertablesDataBuilder toBuilder() =>
      new GAudioInsertablesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAudioInsertablesData &&
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
    return (newBuiltValueToStringHelper(r'GAudioInsertablesData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GAudioInsertablesDataBuilder
    implements Builder<GAudioInsertablesData, GAudioInsertablesDataBuilder> {
  _$GAudioInsertablesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAudioInsertablesData_responseBuilder? _response;
  GAudioInsertablesData_responseBuilder get response =>
      _$this._response ??= new GAudioInsertablesData_responseBuilder();
  set response(GAudioInsertablesData_responseBuilder? response) =>
      _$this._response = response;

  GAudioInsertablesDataBuilder() {
    GAudioInsertablesData._initializeBuilder(this);
  }

  GAudioInsertablesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAudioInsertablesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAudioInsertablesData;
  }

  @override
  void update(void Function(GAudioInsertablesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAudioInsertablesData build() => _build();

  _$GAudioInsertablesData _build() {
    _$GAudioInsertablesData _$result;
    try {
      _$result = _$v ??
          new _$GAudioInsertablesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAudioInsertablesData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAudioInsertablesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAudioInsertablesData_response extends GAudioInsertablesData_response {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool error;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final BuiltList<GAudioInsertablesData_response_data> data;

  factory _$GAudioInsertablesData_response(
          [void Function(GAudioInsertablesData_responseBuilder)? updates]) =>
      (new GAudioInsertablesData_responseBuilder()..update(updates))._build();

  _$GAudioInsertablesData_response._(
      {required this.G__typename,
      required this.message,
      required this.error,
      required this.statusCode,
      required this.errorCodeForClient,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAudioInsertablesData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GAudioInsertablesData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GAudioInsertablesData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GAudioInsertablesData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GAudioInsertablesData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GAudioInsertablesData_response', 'data');
  }

  @override
  GAudioInsertablesData_response rebuild(
          void Function(GAudioInsertablesData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAudioInsertablesData_responseBuilder toBuilder() =>
      new GAudioInsertablesData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAudioInsertablesData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAudioInsertablesData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GAudioInsertablesData_responseBuilder
    implements
        Builder<GAudioInsertablesData_response,
            GAudioInsertablesData_responseBuilder> {
  _$GAudioInsertablesData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  ListBuilder<GAudioInsertablesData_response_data>? _data;
  ListBuilder<GAudioInsertablesData_response_data> get data =>
      _$this._data ??= new ListBuilder<GAudioInsertablesData_response_data>();
  set data(ListBuilder<GAudioInsertablesData_response_data>? data) =>
      _$this._data = data;

  GAudioInsertablesData_responseBuilder() {
    GAudioInsertablesData_response._initializeBuilder(this);
  }

  GAudioInsertablesData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAudioInsertablesData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAudioInsertablesData_response;
  }

  @override
  void update(void Function(GAudioInsertablesData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAudioInsertablesData_response build() => _build();

  _$GAudioInsertablesData_response _build() {
    _$GAudioInsertablesData_response _$result;
    try {
      _$result = _$v ??
          new _$GAudioInsertablesData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GAudioInsertablesData_response', 'G__typename'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GAudioInsertablesData_response', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GAudioInsertablesData_response', 'error'),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'GAudioInsertablesData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GAudioInsertablesData_response',
                  'errorCodeForClient'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAudioInsertablesData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAudioInsertablesData_response_data
    extends GAudioInsertablesData_response_data {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String iconUrl;
  @override
  final String musicUrl;
  @override
  final String filename;

  factory _$GAudioInsertablesData_response_data(
          [void Function(GAudioInsertablesData_response_dataBuilder)?
              updates]) =>
      (new GAudioInsertablesData_response_dataBuilder()..update(updates))
          ._build();

  _$GAudioInsertablesData_response_data._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.iconUrl,
      required this.musicUrl,
      required this.filename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAudioInsertablesData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAudioInsertablesData_response_data', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GAudioInsertablesData_response_data', 'name');
    BuiltValueNullFieldError.checkNotNull(
        iconUrl, r'GAudioInsertablesData_response_data', 'iconUrl');
    BuiltValueNullFieldError.checkNotNull(
        musicUrl, r'GAudioInsertablesData_response_data', 'musicUrl');
    BuiltValueNullFieldError.checkNotNull(
        filename, r'GAudioInsertablesData_response_data', 'filename');
  }

  @override
  GAudioInsertablesData_response_data rebuild(
          void Function(GAudioInsertablesData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAudioInsertablesData_response_dataBuilder toBuilder() =>
      new GAudioInsertablesData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAudioInsertablesData_response_data &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        iconUrl == other.iconUrl &&
        musicUrl == other.musicUrl &&
        filename == other.filename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jc(_$hash, musicUrl.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAudioInsertablesData_response_data')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('iconUrl', iconUrl)
          ..add('musicUrl', musicUrl)
          ..add('filename', filename))
        .toString();
  }
}

class GAudioInsertablesData_response_dataBuilder
    implements
        Builder<GAudioInsertablesData_response_data,
            GAudioInsertablesData_response_dataBuilder> {
  _$GAudioInsertablesData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  String? _musicUrl;
  String? get musicUrl => _$this._musicUrl;
  set musicUrl(String? musicUrl) => _$this._musicUrl = musicUrl;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  GAudioInsertablesData_response_dataBuilder() {
    GAudioInsertablesData_response_data._initializeBuilder(this);
  }

  GAudioInsertablesData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _iconUrl = $v.iconUrl;
      _musicUrl = $v.musicUrl;
      _filename = $v.filename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAudioInsertablesData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAudioInsertablesData_response_data;
  }

  @override
  void update(
      void Function(GAudioInsertablesData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAudioInsertablesData_response_data build() => _build();

  _$GAudioInsertablesData_response_data _build() {
    final _$result = _$v ??
        new _$GAudioInsertablesData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAudioInsertablesData_response_data', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GAudioInsertablesData_response_data', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GAudioInsertablesData_response_data', 'name'),
            iconUrl: BuiltValueNullFieldError.checkNotNull(
                iconUrl, r'GAudioInsertablesData_response_data', 'iconUrl'),
            musicUrl: BuiltValueNullFieldError.checkNotNull(
                musicUrl, r'GAudioInsertablesData_response_data', 'musicUrl'),
            filename: BuiltValueNullFieldError.checkNotNull(
                filename, r'GAudioInsertablesData_response_data', 'filename'));
    replace(_$result);
    return _$result;
  }
}

class _$GVoiceEffectsData extends GVoiceEffectsData {
  @override
  final String G__typename;
  @override
  final GVoiceEffectsData_response? response;

  factory _$GVoiceEffectsData(
          [void Function(GVoiceEffectsDataBuilder)? updates]) =>
      (new GVoiceEffectsDataBuilder()..update(updates))._build();

  _$GVoiceEffectsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVoiceEffectsData', 'G__typename');
  }

  @override
  GVoiceEffectsData rebuild(void Function(GVoiceEffectsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVoiceEffectsDataBuilder toBuilder() =>
      new GVoiceEffectsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVoiceEffectsData &&
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
    return (newBuiltValueToStringHelper(r'GVoiceEffectsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GVoiceEffectsDataBuilder
    implements Builder<GVoiceEffectsData, GVoiceEffectsDataBuilder> {
  _$GVoiceEffectsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GVoiceEffectsData_responseBuilder? _response;
  GVoiceEffectsData_responseBuilder get response =>
      _$this._response ??= new GVoiceEffectsData_responseBuilder();
  set response(GVoiceEffectsData_responseBuilder? response) =>
      _$this._response = response;

  GVoiceEffectsDataBuilder() {
    GVoiceEffectsData._initializeBuilder(this);
  }

  GVoiceEffectsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVoiceEffectsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVoiceEffectsData;
  }

  @override
  void update(void Function(GVoiceEffectsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVoiceEffectsData build() => _build();

  _$GVoiceEffectsData _build() {
    _$GVoiceEffectsData _$result;
    try {
      _$result = _$v ??
          new _$GVoiceEffectsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GVoiceEffectsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVoiceEffectsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVoiceEffectsData_response extends GVoiceEffectsData_response {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool error;
  @override
  final BuiltList<GVoiceEffectsData_response_data> data;

  factory _$GVoiceEffectsData_response(
          [void Function(GVoiceEffectsData_responseBuilder)? updates]) =>
      (new GVoiceEffectsData_responseBuilder()..update(updates))._build();

  _$GVoiceEffectsData_response._(
      {required this.G__typename,
      required this.message,
      required this.error,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVoiceEffectsData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GVoiceEffectsData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GVoiceEffectsData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GVoiceEffectsData_response', 'data');
  }

  @override
  GVoiceEffectsData_response rebuild(
          void Function(GVoiceEffectsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVoiceEffectsData_responseBuilder toBuilder() =>
      new GVoiceEffectsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVoiceEffectsData_response &&
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
    return (newBuiltValueToStringHelper(r'GVoiceEffectsData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class GVoiceEffectsData_responseBuilder
    implements
        Builder<GVoiceEffectsData_response, GVoiceEffectsData_responseBuilder> {
  _$GVoiceEffectsData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  ListBuilder<GVoiceEffectsData_response_data>? _data;
  ListBuilder<GVoiceEffectsData_response_data> get data =>
      _$this._data ??= new ListBuilder<GVoiceEffectsData_response_data>();
  set data(ListBuilder<GVoiceEffectsData_response_data>? data) =>
      _$this._data = data;

  GVoiceEffectsData_responseBuilder() {
    GVoiceEffectsData_response._initializeBuilder(this);
  }

  GVoiceEffectsData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVoiceEffectsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVoiceEffectsData_response;
  }

  @override
  void update(void Function(GVoiceEffectsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVoiceEffectsData_response build() => _build();

  _$GVoiceEffectsData_response _build() {
    _$GVoiceEffectsData_response _$result;
    try {
      _$result = _$v ??
          new _$GVoiceEffectsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GVoiceEffectsData_response', 'G__typename'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GVoiceEffectsData_response', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GVoiceEffectsData_response', 'error'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVoiceEffectsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVoiceEffectsData_response_data
    extends GVoiceEffectsData_response_data {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String ffmpegCommand;
  @override
  final String iconUrl;

  factory _$GVoiceEffectsData_response_data(
          [void Function(GVoiceEffectsData_response_dataBuilder)? updates]) =>
      (new GVoiceEffectsData_response_dataBuilder()..update(updates))._build();

  _$GVoiceEffectsData_response_data._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.ffmpegCommand,
      required this.iconUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVoiceEffectsData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVoiceEffectsData_response_data', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GVoiceEffectsData_response_data', 'name');
    BuiltValueNullFieldError.checkNotNull(
        ffmpegCommand, r'GVoiceEffectsData_response_data', 'ffmpegCommand');
    BuiltValueNullFieldError.checkNotNull(
        iconUrl, r'GVoiceEffectsData_response_data', 'iconUrl');
  }

  @override
  GVoiceEffectsData_response_data rebuild(
          void Function(GVoiceEffectsData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVoiceEffectsData_response_dataBuilder toBuilder() =>
      new GVoiceEffectsData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVoiceEffectsData_response_data &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        ffmpegCommand == other.ffmpegCommand &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ffmpegCommand.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVoiceEffectsData_response_data')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('ffmpegCommand', ffmpegCommand)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class GVoiceEffectsData_response_dataBuilder
    implements
        Builder<GVoiceEffectsData_response_data,
            GVoiceEffectsData_response_dataBuilder> {
  _$GVoiceEffectsData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _ffmpegCommand;
  String? get ffmpegCommand => _$this._ffmpegCommand;
  set ffmpegCommand(String? ffmpegCommand) =>
      _$this._ffmpegCommand = ffmpegCommand;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  GVoiceEffectsData_response_dataBuilder() {
    GVoiceEffectsData_response_data._initializeBuilder(this);
  }

  GVoiceEffectsData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _ffmpegCommand = $v.ffmpegCommand;
      _iconUrl = $v.iconUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVoiceEffectsData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVoiceEffectsData_response_data;
  }

  @override
  void update(void Function(GVoiceEffectsData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVoiceEffectsData_response_data build() => _build();

  _$GVoiceEffectsData_response_data _build() {
    final _$result = _$v ??
        new _$GVoiceEffectsData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GVoiceEffectsData_response_data', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GVoiceEffectsData_response_data', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GVoiceEffectsData_response_data', 'name'),
            ffmpegCommand: BuiltValueNullFieldError.checkNotNull(ffmpegCommand,
                r'GVoiceEffectsData_response_data', 'ffmpegCommand'),
            iconUrl: BuiltValueNullFieldError.checkNotNull(
                iconUrl, r'GVoiceEffectsData_response_data', 'iconUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserVoicepodsData extends GUserVoicepodsData {
  @override
  final String G__typename;
  @override
  final GUserVoicepodsData_response? response;

  factory _$GUserVoicepodsData(
          [void Function(GUserVoicepodsDataBuilder)? updates]) =>
      (new GUserVoicepodsDataBuilder()..update(updates))._build();

  _$GUserVoicepodsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserVoicepodsData', 'G__typename');
  }

  @override
  GUserVoicepodsData rebuild(
          void Function(GUserVoicepodsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserVoicepodsDataBuilder toBuilder() =>
      new GUserVoicepodsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserVoicepodsData &&
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
    return (newBuiltValueToStringHelper(r'GUserVoicepodsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GUserVoicepodsDataBuilder
    implements Builder<GUserVoicepodsData, GUserVoicepodsDataBuilder> {
  _$GUserVoicepodsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserVoicepodsData_responseBuilder? _response;
  GUserVoicepodsData_responseBuilder get response =>
      _$this._response ??= new GUserVoicepodsData_responseBuilder();
  set response(GUserVoicepodsData_responseBuilder? response) =>
      _$this._response = response;

  GUserVoicepodsDataBuilder() {
    GUserVoicepodsData._initializeBuilder(this);
  }

  GUserVoicepodsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserVoicepodsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserVoicepodsData;
  }

  @override
  void update(void Function(GUserVoicepodsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserVoicepodsData build() => _build();

  _$GUserVoicepodsData _build() {
    _$GUserVoicepodsData _$result;
    try {
      _$result = _$v ??
          new _$GUserVoicepodsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserVoicepodsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserVoicepodsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserVoicepodsData_response extends GUserVoicepodsData_response {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool error;
  @override
  final String errorCodeForClient;
  @override
  final int statusCode;
  @override
  final GUserVoicepodsData_response_data? data;

  factory _$GUserVoicepodsData_response(
          [void Function(GUserVoicepodsData_responseBuilder)? updates]) =>
      (new GUserVoicepodsData_responseBuilder()..update(updates))._build();

  _$GUserVoicepodsData_response._(
      {required this.G__typename,
      required this.message,
      required this.error,
      required this.errorCodeForClient,
      required this.statusCode,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserVoicepodsData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GUserVoicepodsData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GUserVoicepodsData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GUserVoicepodsData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GUserVoicepodsData_response', 'statusCode');
  }

  @override
  GUserVoicepodsData_response rebuild(
          void Function(GUserVoicepodsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserVoicepodsData_responseBuilder toBuilder() =>
      new GUserVoicepodsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserVoicepodsData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        errorCodeForClient == other.errorCodeForClient &&
        statusCode == other.statusCode &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserVoicepodsData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class GUserVoicepodsData_responseBuilder
    implements
        Builder<GUserVoicepodsData_response,
            GUserVoicepodsData_responseBuilder> {
  _$GUserVoicepodsData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  GUserVoicepodsData_response_dataBuilder? _data;
  GUserVoicepodsData_response_dataBuilder get data =>
      _$this._data ??= new GUserVoicepodsData_response_dataBuilder();
  set data(GUserVoicepodsData_response_dataBuilder? data) =>
      _$this._data = data;

  GUserVoicepodsData_responseBuilder() {
    GUserVoicepodsData_response._initializeBuilder(this);
  }

  GUserVoicepodsData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _errorCodeForClient = $v.errorCodeForClient;
      _statusCode = $v.statusCode;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserVoicepodsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserVoicepodsData_response;
  }

  @override
  void update(void Function(GUserVoicepodsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserVoicepodsData_response build() => _build();

  _$GUserVoicepodsData_response _build() {
    _$GUserVoicepodsData_response _$result;
    try {
      _$result = _$v ??
          new _$GUserVoicepodsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserVoicepodsData_response', 'G__typename'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GUserVoicepodsData_response', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GUserVoicepodsData_response', 'error'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GUserVoicepodsData_response',
                  'errorCodeForClient'),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'GUserVoicepodsData_response', 'statusCode'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserVoicepodsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserVoicepodsData_response_data
    extends GUserVoicepodsData_response_data {
  @override
  final String G__typename;
  @override
  final BuiltList<String> voicepods;
  @override
  final GUserVoicepodsData_response_data_lastEvaluatedKey? lastEvaluatedKey;

  factory _$GUserVoicepodsData_response_data(
          [void Function(GUserVoicepodsData_response_dataBuilder)? updates]) =>
      (new GUserVoicepodsData_response_dataBuilder()..update(updates))._build();

  _$GUserVoicepodsData_response_data._(
      {required this.G__typename,
      required this.voicepods,
      this.lastEvaluatedKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserVoicepodsData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        voicepods, r'GUserVoicepodsData_response_data', 'voicepods');
  }

  @override
  GUserVoicepodsData_response_data rebuild(
          void Function(GUserVoicepodsData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserVoicepodsData_response_dataBuilder toBuilder() =>
      new GUserVoicepodsData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserVoicepodsData_response_data &&
        G__typename == other.G__typename &&
        voicepods == other.voicepods &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, voicepods.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserVoicepodsData_response_data')
          ..add('G__typename', G__typename)
          ..add('voicepods', voicepods)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class GUserVoicepodsData_response_dataBuilder
    implements
        Builder<GUserVoicepodsData_response_data,
            GUserVoicepodsData_response_dataBuilder> {
  _$GUserVoicepodsData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String>? _voicepods;
  ListBuilder<String> get voicepods =>
      _$this._voicepods ??= new ListBuilder<String>();
  set voicepods(ListBuilder<String>? voicepods) =>
      _$this._voicepods = voicepods;

  GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder? _lastEvaluatedKey;
  GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder
      get lastEvaluatedKey => _$this._lastEvaluatedKey ??=
          new GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder();
  set lastEvaluatedKey(
          GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder?
              lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  GUserVoicepodsData_response_dataBuilder() {
    GUserVoicepodsData_response_data._initializeBuilder(this);
  }

  GUserVoicepodsData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _voicepods = $v.voicepods.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserVoicepodsData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserVoicepodsData_response_data;
  }

  @override
  void update(void Function(GUserVoicepodsData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserVoicepodsData_response_data build() => _build();

  _$GUserVoicepodsData_response_data _build() {
    _$GUserVoicepodsData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GUserVoicepodsData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserVoicepodsData_response_data', 'G__typename'),
              voicepods: voicepods.build(),
              lastEvaluatedKey: _lastEvaluatedKey?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'voicepods';
        voicepods.build();
        _$failedField = 'lastEvaluatedKey';
        _lastEvaluatedKey?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserVoicepodsData_response_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserVoicepodsData_response_data_lastEvaluatedKey
    extends GUserVoicepodsData_response_data_lastEvaluatedKey {
  @override
  final String G__typename;
  @override
  final String? createdAt;
  @override
  final String? postId;
  @override
  final String? userId;

  factory _$GUserVoicepodsData_response_data_lastEvaluatedKey(
          [void Function(
                  GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder)?
              updates]) =>
      (new GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder()
            ..update(updates))
          ._build();

  _$GUserVoicepodsData_response_data_lastEvaluatedKey._(
      {required this.G__typename, this.createdAt, this.postId, this.userId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserVoicepodsData_response_data_lastEvaluatedKey', 'G__typename');
  }

  @override
  GUserVoicepodsData_response_data_lastEvaluatedKey rebuild(
          void Function(
                  GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder toBuilder() =>
      new GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserVoicepodsData_response_data_lastEvaluatedKey &&
        G__typename == other.G__typename &&
        createdAt == other.createdAt &&
        postId == other.postId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserVoicepodsData_response_data_lastEvaluatedKey')
          ..add('G__typename', G__typename)
          ..add('createdAt', createdAt)
          ..add('postId', postId)
          ..add('userId', userId))
        .toString();
  }
}

class GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder
    implements
        Builder<GUserVoicepodsData_response_data_lastEvaluatedKey,
            GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder> {
  _$GUserVoicepodsData_response_data_lastEvaluatedKey? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder() {
    GUserVoicepodsData_response_data_lastEvaluatedKey._initializeBuilder(this);
  }

  GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createdAt = $v.createdAt;
      _postId = $v.postId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserVoicepodsData_response_data_lastEvaluatedKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserVoicepodsData_response_data_lastEvaluatedKey;
  }

  @override
  void update(
      void Function(GUserVoicepodsData_response_data_lastEvaluatedKeyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserVoicepodsData_response_data_lastEvaluatedKey build() => _build();

  _$GUserVoicepodsData_response_data_lastEvaluatedKey _build() {
    final _$result = _$v ??
        new _$GUserVoicepodsData_response_data_lastEvaluatedKey._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserVoicepodsData_response_data_lastEvaluatedKey',
                'G__typename'),
            createdAt: createdAt,
            postId: postId,
            userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$GMarkAsViewedData extends GMarkAsViewedData {
  @override
  final String G__typename;
  @override
  final GMarkAsViewedData_response? response;

  factory _$GMarkAsViewedData(
          [void Function(GMarkAsViewedDataBuilder)? updates]) =>
      (new GMarkAsViewedDataBuilder()..update(updates))._build();

  _$GMarkAsViewedData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMarkAsViewedData', 'G__typename');
  }

  @override
  GMarkAsViewedData rebuild(void Function(GMarkAsViewedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkAsViewedDataBuilder toBuilder() =>
      new GMarkAsViewedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarkAsViewedData &&
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
    return (newBuiltValueToStringHelper(r'GMarkAsViewedData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GMarkAsViewedDataBuilder
    implements Builder<GMarkAsViewedData, GMarkAsViewedDataBuilder> {
  _$GMarkAsViewedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMarkAsViewedData_responseBuilder? _response;
  GMarkAsViewedData_responseBuilder get response =>
      _$this._response ??= new GMarkAsViewedData_responseBuilder();
  set response(GMarkAsViewedData_responseBuilder? response) =>
      _$this._response = response;

  GMarkAsViewedDataBuilder() {
    GMarkAsViewedData._initializeBuilder(this);
  }

  GMarkAsViewedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarkAsViewedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkAsViewedData;
  }

  @override
  void update(void Function(GMarkAsViewedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkAsViewedData build() => _build();

  _$GMarkAsViewedData _build() {
    _$GMarkAsViewedData _$result;
    try {
      _$result = _$v ??
          new _$GMarkAsViewedData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMarkAsViewedData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMarkAsViewedData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMarkAsViewedData_response extends GMarkAsViewedData_response {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool error;
  @override
  final String errorCodeForClient;
  @override
  final int statusCode;
  @override
  final String? data;

  factory _$GMarkAsViewedData_response(
          [void Function(GMarkAsViewedData_responseBuilder)? updates]) =>
      (new GMarkAsViewedData_responseBuilder()..update(updates))._build();

  _$GMarkAsViewedData_response._(
      {required this.G__typename,
      required this.message,
      required this.error,
      required this.errorCodeForClient,
      required this.statusCode,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMarkAsViewedData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GMarkAsViewedData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GMarkAsViewedData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GMarkAsViewedData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GMarkAsViewedData_response', 'statusCode');
  }

  @override
  GMarkAsViewedData_response rebuild(
          void Function(GMarkAsViewedData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkAsViewedData_responseBuilder toBuilder() =>
      new GMarkAsViewedData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarkAsViewedData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        errorCodeForClient == other.errorCodeForClient &&
        statusCode == other.statusCode &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMarkAsViewedData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class GMarkAsViewedData_responseBuilder
    implements
        Builder<GMarkAsViewedData_response, GMarkAsViewedData_responseBuilder> {
  _$GMarkAsViewedData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  GMarkAsViewedData_responseBuilder() {
    GMarkAsViewedData_response._initializeBuilder(this);
  }

  GMarkAsViewedData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _errorCodeForClient = $v.errorCodeForClient;
      _statusCode = $v.statusCode;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarkAsViewedData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkAsViewedData_response;
  }

  @override
  void update(void Function(GMarkAsViewedData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkAsViewedData_response build() => _build();

  _$GMarkAsViewedData_response _build() {
    final _$result = _$v ??
        new _$GMarkAsViewedData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMarkAsViewedData_response', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'GMarkAsViewedData_response', 'message'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'GMarkAsViewedData_response', 'error'),
            errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                errorCodeForClient,
                r'GMarkAsViewedData_response',
                'errorCodeForClient'),
            statusCode: BuiltValueNullFieldError.checkNotNull(
                statusCode, r'GMarkAsViewedData_response', 'statusCode'),
            data: data);
    replace(_$result);
    return _$result;
  }
}

class _$GMarkAsPlayedData extends GMarkAsPlayedData {
  @override
  final String G__typename;
  @override
  final GMarkAsPlayedData_response? response;

  factory _$GMarkAsPlayedData(
          [void Function(GMarkAsPlayedDataBuilder)? updates]) =>
      (new GMarkAsPlayedDataBuilder()..update(updates))._build();

  _$GMarkAsPlayedData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMarkAsPlayedData', 'G__typename');
  }

  @override
  GMarkAsPlayedData rebuild(void Function(GMarkAsPlayedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkAsPlayedDataBuilder toBuilder() =>
      new GMarkAsPlayedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarkAsPlayedData &&
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
    return (newBuiltValueToStringHelper(r'GMarkAsPlayedData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GMarkAsPlayedDataBuilder
    implements Builder<GMarkAsPlayedData, GMarkAsPlayedDataBuilder> {
  _$GMarkAsPlayedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMarkAsPlayedData_responseBuilder? _response;
  GMarkAsPlayedData_responseBuilder get response =>
      _$this._response ??= new GMarkAsPlayedData_responseBuilder();
  set response(GMarkAsPlayedData_responseBuilder? response) =>
      _$this._response = response;

  GMarkAsPlayedDataBuilder() {
    GMarkAsPlayedData._initializeBuilder(this);
  }

  GMarkAsPlayedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarkAsPlayedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkAsPlayedData;
  }

  @override
  void update(void Function(GMarkAsPlayedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkAsPlayedData build() => _build();

  _$GMarkAsPlayedData _build() {
    _$GMarkAsPlayedData _$result;
    try {
      _$result = _$v ??
          new _$GMarkAsPlayedData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMarkAsPlayedData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMarkAsPlayedData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMarkAsPlayedData_response extends GMarkAsPlayedData_response {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool error;
  @override
  final String errorCodeForClient;
  @override
  final int statusCode;
  @override
  final String? data;

  factory _$GMarkAsPlayedData_response(
          [void Function(GMarkAsPlayedData_responseBuilder)? updates]) =>
      (new GMarkAsPlayedData_responseBuilder()..update(updates))._build();

  _$GMarkAsPlayedData_response._(
      {required this.G__typename,
      required this.message,
      required this.error,
      required this.errorCodeForClient,
      required this.statusCode,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMarkAsPlayedData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GMarkAsPlayedData_response', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GMarkAsPlayedData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GMarkAsPlayedData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GMarkAsPlayedData_response', 'statusCode');
  }

  @override
  GMarkAsPlayedData_response rebuild(
          void Function(GMarkAsPlayedData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarkAsPlayedData_responseBuilder toBuilder() =>
      new GMarkAsPlayedData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarkAsPlayedData_response &&
        G__typename == other.G__typename &&
        message == other.message &&
        error == other.error &&
        errorCodeForClient == other.errorCodeForClient &&
        statusCode == other.statusCode &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMarkAsPlayedData_response')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('error', error)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class GMarkAsPlayedData_responseBuilder
    implements
        Builder<GMarkAsPlayedData_response, GMarkAsPlayedData_responseBuilder> {
  _$GMarkAsPlayedData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  GMarkAsPlayedData_responseBuilder() {
    GMarkAsPlayedData_response._initializeBuilder(this);
  }

  GMarkAsPlayedData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _error = $v.error;
      _errorCodeForClient = $v.errorCodeForClient;
      _statusCode = $v.statusCode;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarkAsPlayedData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarkAsPlayedData_response;
  }

  @override
  void update(void Function(GMarkAsPlayedData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMarkAsPlayedData_response build() => _build();

  _$GMarkAsPlayedData_response _build() {
    final _$result = _$v ??
        new _$GMarkAsPlayedData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMarkAsPlayedData_response', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'GMarkAsPlayedData_response', 'message'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'GMarkAsPlayedData_response', 'error'),
            errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                errorCodeForClient,
                r'GMarkAsPlayedData_response',
                'errorCodeForClient'),
            statusCode: BuiltValueNullFieldError.checkNotNull(
                statusCode, r'GMarkAsPlayedData_response', 'statusCode'),
            data: data);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVoicepodData extends GCreateVoicepodData {
  @override
  final String G__typename;
  @override
  final GCreateVoicepodData_response response;

  factory _$GCreateVoicepodData(
          [void Function(GCreateVoicepodDataBuilder)? updates]) =>
      (new GCreateVoicepodDataBuilder()..update(updates))._build();

  _$GCreateVoicepodData._({required this.G__typename, required this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateVoicepodData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        response, r'GCreateVoicepodData', 'response');
  }

  @override
  GCreateVoicepodData rebuild(
          void Function(GCreateVoicepodDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVoicepodDataBuilder toBuilder() =>
      new GCreateVoicepodDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVoicepodData &&
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
    return (newBuiltValueToStringHelper(r'GCreateVoicepodData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GCreateVoicepodDataBuilder
    implements Builder<GCreateVoicepodData, GCreateVoicepodDataBuilder> {
  _$GCreateVoicepodData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateVoicepodData_responseBuilder? _response;
  GCreateVoicepodData_responseBuilder get response =>
      _$this._response ??= new GCreateVoicepodData_responseBuilder();
  set response(GCreateVoicepodData_responseBuilder? response) =>
      _$this._response = response;

  GCreateVoicepodDataBuilder() {
    GCreateVoicepodData._initializeBuilder(this);
  }

  GCreateVoicepodDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVoicepodData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVoicepodData;
  }

  @override
  void update(void Function(GCreateVoicepodDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVoicepodData build() => _build();

  _$GCreateVoicepodData _build() {
    _$GCreateVoicepodData _$result;
    try {
      _$result = _$v ??
          new _$GCreateVoicepodData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateVoicepodData', 'G__typename'),
              response: response.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVoicepodData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVoicepodData_response extends GCreateVoicepodData_response {
  @override
  final String G__typename;
  @override
  final GCreateVoicepodData_response_data? data;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final bool error;
  @override
  final String message;

  factory _$GCreateVoicepodData_response(
          [void Function(GCreateVoicepodData_responseBuilder)? updates]) =>
      (new GCreateVoicepodData_responseBuilder()..update(updates))._build();

  _$GCreateVoicepodData_response._(
      {required this.G__typename,
      this.data,
      required this.statusCode,
      required this.errorCodeForClient,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateVoicepodData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GCreateVoicepodData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GCreateVoicepodData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GCreateVoicepodData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GCreateVoicepodData_response', 'message');
  }

  @override
  GCreateVoicepodData_response rebuild(
          void Function(GCreateVoicepodData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVoicepodData_responseBuilder toBuilder() =>
      new GCreateVoicepodData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVoicepodData_response &&
        G__typename == other.G__typename &&
        data == other.data &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateVoicepodData_response')
          ..add('G__typename', G__typename)
          ..add('data', data)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class GCreateVoicepodData_responseBuilder
    implements
        Builder<GCreateVoicepodData_response,
            GCreateVoicepodData_responseBuilder> {
  _$GCreateVoicepodData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateVoicepodData_response_dataBuilder? _data;
  GCreateVoicepodData_response_dataBuilder get data =>
      _$this._data ??= new GCreateVoicepodData_response_dataBuilder();
  set data(GCreateVoicepodData_response_dataBuilder? data) =>
      _$this._data = data;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GCreateVoicepodData_responseBuilder() {
    GCreateVoicepodData_response._initializeBuilder(this);
  }

  GCreateVoicepodData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data?.toBuilder();
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVoicepodData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVoicepodData_response;
  }

  @override
  void update(void Function(GCreateVoicepodData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVoicepodData_response build() => _build();

  _$GCreateVoicepodData_response _build() {
    _$GCreateVoicepodData_response _$result;
    try {
      _$result = _$v ??
          new _$GCreateVoicepodData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateVoicepodData_response', 'G__typename'),
              data: _data?.build(),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'GCreateVoicepodData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GCreateVoicepodData_response',
                  'errorCodeForClient'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GCreateVoicepodData_response', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GCreateVoicepodData_response', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVoicepodData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVoicepodData_response_data
    extends GCreateVoicepodData_response_data {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String postId;
  @override
  final String title;
  @override
  final String postUrl;
  @override
  final _i2.GPostVisibility visibility;
  @override
  final BuiltList<String> audioMediaFiles;
  @override
  final BuiltList<String> videoMediaFiles;
  @override
  final BuiltList<String> imageMediaFiles;
  @override
  final int playCount;
  @override
  final int likeCount;
  @override
  final int commentCount;
  @override
  final _i2.GPostStatus postStatus;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GCreateVoicepodData_response_data(
          [void Function(GCreateVoicepodData_response_dataBuilder)? updates]) =>
      (new GCreateVoicepodData_response_dataBuilder()..update(updates))
          ._build();

  _$GCreateVoicepodData_response_data._(
      {required this.G__typename,
      required this.userId,
      required this.postId,
      required this.title,
      required this.postUrl,
      required this.visibility,
      required this.audioMediaFiles,
      required this.videoMediaFiles,
      required this.imageMediaFiles,
      required this.playCount,
      required this.likeCount,
      required this.commentCount,
      required this.postStatus,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateVoicepodData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GCreateVoicepodData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GCreateVoicepodData_response_data', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GCreateVoicepodData_response_data', 'title');
    BuiltValueNullFieldError.checkNotNull(
        postUrl, r'GCreateVoicepodData_response_data', 'postUrl');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GCreateVoicepodData_response_data', 'visibility');
    BuiltValueNullFieldError.checkNotNull(audioMediaFiles,
        r'GCreateVoicepodData_response_data', 'audioMediaFiles');
    BuiltValueNullFieldError.checkNotNull(videoMediaFiles,
        r'GCreateVoicepodData_response_data', 'videoMediaFiles');
    BuiltValueNullFieldError.checkNotNull(imageMediaFiles,
        r'GCreateVoicepodData_response_data', 'imageMediaFiles');
    BuiltValueNullFieldError.checkNotNull(
        playCount, r'GCreateVoicepodData_response_data', 'playCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GCreateVoicepodData_response_data', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        commentCount, r'GCreateVoicepodData_response_data', 'commentCount');
    BuiltValueNullFieldError.checkNotNull(
        postStatus, r'GCreateVoicepodData_response_data', 'postStatus');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GCreateVoicepodData_response_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GCreateVoicepodData_response_data', 'updatedAt');
  }

  @override
  GCreateVoicepodData_response_data rebuild(
          void Function(GCreateVoicepodData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVoicepodData_response_dataBuilder toBuilder() =>
      new GCreateVoicepodData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVoicepodData_response_data &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        postId == other.postId &&
        title == other.title &&
        postUrl == other.postUrl &&
        visibility == other.visibility &&
        audioMediaFiles == other.audioMediaFiles &&
        videoMediaFiles == other.videoMediaFiles &&
        imageMediaFiles == other.imageMediaFiles &&
        playCount == other.playCount &&
        likeCount == other.likeCount &&
        commentCount == other.commentCount &&
        postStatus == other.postStatus &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, postUrl.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, audioMediaFiles.hashCode);
    _$hash = $jc(_$hash, videoMediaFiles.hashCode);
    _$hash = $jc(_$hash, imageMediaFiles.hashCode);
    _$hash = $jc(_$hash, playCount.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, commentCount.hashCode);
    _$hash = $jc(_$hash, postStatus.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateVoicepodData_response_data')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('postId', postId)
          ..add('title', title)
          ..add('postUrl', postUrl)
          ..add('visibility', visibility)
          ..add('audioMediaFiles', audioMediaFiles)
          ..add('videoMediaFiles', videoMediaFiles)
          ..add('imageMediaFiles', imageMediaFiles)
          ..add('playCount', playCount)
          ..add('likeCount', likeCount)
          ..add('commentCount', commentCount)
          ..add('postStatus', postStatus)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GCreateVoicepodData_response_dataBuilder
    implements
        Builder<GCreateVoicepodData_response_data,
            GCreateVoicepodData_response_dataBuilder> {
  _$GCreateVoicepodData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _postUrl;
  String? get postUrl => _$this._postUrl;
  set postUrl(String? postUrl) => _$this._postUrl = postUrl;

  _i2.GPostVisibility? _visibility;
  _i2.GPostVisibility? get visibility => _$this._visibility;
  set visibility(_i2.GPostVisibility? visibility) =>
      _$this._visibility = visibility;

  ListBuilder<String>? _audioMediaFiles;
  ListBuilder<String> get audioMediaFiles =>
      _$this._audioMediaFiles ??= new ListBuilder<String>();
  set audioMediaFiles(ListBuilder<String>? audioMediaFiles) =>
      _$this._audioMediaFiles = audioMediaFiles;

  ListBuilder<String>? _videoMediaFiles;
  ListBuilder<String> get videoMediaFiles =>
      _$this._videoMediaFiles ??= new ListBuilder<String>();
  set videoMediaFiles(ListBuilder<String>? videoMediaFiles) =>
      _$this._videoMediaFiles = videoMediaFiles;

  ListBuilder<String>? _imageMediaFiles;
  ListBuilder<String> get imageMediaFiles =>
      _$this._imageMediaFiles ??= new ListBuilder<String>();
  set imageMediaFiles(ListBuilder<String>? imageMediaFiles) =>
      _$this._imageMediaFiles = imageMediaFiles;

  int? _playCount;
  int? get playCount => _$this._playCount;
  set playCount(int? playCount) => _$this._playCount = playCount;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  _i2.GPostStatus? _postStatus;
  _i2.GPostStatus? get postStatus => _$this._postStatus;
  set postStatus(_i2.GPostStatus? postStatus) =>
      _$this._postStatus = postStatus;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GCreateVoicepodData_response_dataBuilder() {
    GCreateVoicepodData_response_data._initializeBuilder(this);
  }

  GCreateVoicepodData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _postId = $v.postId;
      _title = $v.title;
      _postUrl = $v.postUrl;
      _visibility = $v.visibility;
      _audioMediaFiles = $v.audioMediaFiles.toBuilder();
      _videoMediaFiles = $v.videoMediaFiles.toBuilder();
      _imageMediaFiles = $v.imageMediaFiles.toBuilder();
      _playCount = $v.playCount;
      _likeCount = $v.likeCount;
      _commentCount = $v.commentCount;
      _postStatus = $v.postStatus;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVoicepodData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVoicepodData_response_data;
  }

  @override
  void update(
      void Function(GCreateVoicepodData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVoicepodData_response_data build() => _build();

  _$GCreateVoicepodData_response_data _build() {
    _$GCreateVoicepodData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GCreateVoicepodData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateVoicepodData_response_data', 'G__typename'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GCreateVoicepodData_response_data', 'userId'),
              postId: BuiltValueNullFieldError.checkNotNull(
                  postId, r'GCreateVoicepodData_response_data', 'postId'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GCreateVoicepodData_response_data', 'title'),
              postUrl: BuiltValueNullFieldError.checkNotNull(
                  postUrl, r'GCreateVoicepodData_response_data', 'postUrl'),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'GCreateVoicepodData_response_data', 'visibility'),
              audioMediaFiles: audioMediaFiles.build(),
              videoMediaFiles: videoMediaFiles.build(),
              imageMediaFiles: imageMediaFiles.build(),
              playCount: BuiltValueNullFieldError.checkNotNull(
                  playCount, r'GCreateVoicepodData_response_data', 'playCount'),
              likeCount:
                  BuiltValueNullFieldError.checkNotNull(likeCount, r'GCreateVoicepodData_response_data', 'likeCount'),
              commentCount: BuiltValueNullFieldError.checkNotNull(commentCount, r'GCreateVoicepodData_response_data', 'commentCount'),
              postStatus: BuiltValueNullFieldError.checkNotNull(postStatus, r'GCreateVoicepodData_response_data', 'postStatus'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GCreateVoicepodData_response_data', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GCreateVoicepodData_response_data', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'audioMediaFiles';
        audioMediaFiles.build();
        _$failedField = 'videoMediaFiles';
        videoMediaFiles.build();
        _$failedField = 'imageMediaFiles';
        imageMediaFiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVoicepodData_response_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetVoicepodDetailsData extends GGetVoicepodDetailsData {
  @override
  final String G__typename;
  @override
  final GGetVoicepodDetailsData_response? response;

  factory _$GGetVoicepodDetailsData(
          [void Function(GGetVoicepodDetailsDataBuilder)? updates]) =>
      (new GGetVoicepodDetailsDataBuilder()..update(updates))._build();

  _$GGetVoicepodDetailsData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetVoicepodDetailsData', 'G__typename');
  }

  @override
  GGetVoicepodDetailsData rebuild(
          void Function(GGetVoicepodDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetVoicepodDetailsDataBuilder toBuilder() =>
      new GGetVoicepodDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetVoicepodDetailsData &&
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
    return (newBuiltValueToStringHelper(r'GGetVoicepodDetailsData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GGetVoicepodDetailsDataBuilder
    implements
        Builder<GGetVoicepodDetailsData, GGetVoicepodDetailsDataBuilder> {
  _$GGetVoicepodDetailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetVoicepodDetailsData_responseBuilder? _response;
  GGetVoicepodDetailsData_responseBuilder get response =>
      _$this._response ??= new GGetVoicepodDetailsData_responseBuilder();
  set response(GGetVoicepodDetailsData_responseBuilder? response) =>
      _$this._response = response;

  GGetVoicepodDetailsDataBuilder() {
    GGetVoicepodDetailsData._initializeBuilder(this);
  }

  GGetVoicepodDetailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetVoicepodDetailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetVoicepodDetailsData;
  }

  @override
  void update(void Function(GGetVoicepodDetailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetVoicepodDetailsData build() => _build();

  _$GGetVoicepodDetailsData _build() {
    _$GGetVoicepodDetailsData _$result;
    try {
      _$result = _$v ??
          new _$GGetVoicepodDetailsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetVoicepodDetailsData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetVoicepodDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetVoicepodDetailsData_response
    extends GGetVoicepodDetailsData_response {
  @override
  final String G__typename;
  @override
  final GGetVoicepodDetailsData_response_data? data;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final bool error;
  @override
  final String message;

  factory _$GGetVoicepodDetailsData_response(
          [void Function(GGetVoicepodDetailsData_responseBuilder)? updates]) =>
      (new GGetVoicepodDetailsData_responseBuilder()..update(updates))._build();

  _$GGetVoicepodDetailsData_response._(
      {required this.G__typename,
      this.data,
      required this.statusCode,
      required this.errorCodeForClient,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetVoicepodDetailsData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GGetVoicepodDetailsData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GGetVoicepodDetailsData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GGetVoicepodDetailsData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GGetVoicepodDetailsData_response', 'message');
  }

  @override
  GGetVoicepodDetailsData_response rebuild(
          void Function(GGetVoicepodDetailsData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetVoicepodDetailsData_responseBuilder toBuilder() =>
      new GGetVoicepodDetailsData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetVoicepodDetailsData_response &&
        G__typename == other.G__typename &&
        data == other.data &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetVoicepodDetailsData_response')
          ..add('G__typename', G__typename)
          ..add('data', data)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class GGetVoicepodDetailsData_responseBuilder
    implements
        Builder<GGetVoicepodDetailsData_response,
            GGetVoicepodDetailsData_responseBuilder> {
  _$GGetVoicepodDetailsData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetVoicepodDetailsData_response_dataBuilder? _data;
  GGetVoicepodDetailsData_response_dataBuilder get data =>
      _$this._data ??= new GGetVoicepodDetailsData_response_dataBuilder();
  set data(GGetVoicepodDetailsData_response_dataBuilder? data) =>
      _$this._data = data;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GGetVoicepodDetailsData_responseBuilder() {
    GGetVoicepodDetailsData_response._initializeBuilder(this);
  }

  GGetVoicepodDetailsData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data?.toBuilder();
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetVoicepodDetailsData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetVoicepodDetailsData_response;
  }

  @override
  void update(void Function(GGetVoicepodDetailsData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetVoicepodDetailsData_response build() => _build();

  _$GGetVoicepodDetailsData_response _build() {
    _$GGetVoicepodDetailsData_response _$result;
    try {
      _$result = _$v ??
          new _$GGetVoicepodDetailsData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetVoicepodDetailsData_response', 'G__typename'),
              data: _data?.build(),
              statusCode: BuiltValueNullFieldError.checkNotNull(statusCode,
                  r'GGetVoicepodDetailsData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GGetVoicepodDetailsData_response',
                  'errorCodeForClient'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GGetVoicepodDetailsData_response', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GGetVoicepodDetailsData_response', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetVoicepodDetailsData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetVoicepodDetailsData_response_data
    extends GGetVoicepodDetailsData_response_data {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String postId;
  @override
  final String title;
  @override
  final String postUrl;
  @override
  final _i2.GPostVisibility visibility;
  @override
  final BuiltList<String> audioMediaFiles;
  @override
  final BuiltList<String> videoMediaFiles;
  @override
  final BuiltList<String> imageMediaFiles;
  @override
  final int playCount;
  @override
  final int likeCount;
  @override
  final int commentCount;
  @override
  final _i2.GPostStatus postStatus;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GGetVoicepodDetailsData_response_data(
          [void Function(GGetVoicepodDetailsData_response_dataBuilder)?
              updates]) =>
      (new GGetVoicepodDetailsData_response_dataBuilder()..update(updates))
          ._build();

  _$GGetVoicepodDetailsData_response_data._(
      {required this.G__typename,
      required this.userId,
      required this.postId,
      required this.title,
      required this.postUrl,
      required this.visibility,
      required this.audioMediaFiles,
      required this.videoMediaFiles,
      required this.imageMediaFiles,
      required this.playCount,
      required this.likeCount,
      required this.commentCount,
      required this.postStatus,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetVoicepodDetailsData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetVoicepodDetailsData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GGetVoicepodDetailsData_response_data', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GGetVoicepodDetailsData_response_data', 'title');
    BuiltValueNullFieldError.checkNotNull(
        postUrl, r'GGetVoicepodDetailsData_response_data', 'postUrl');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GGetVoicepodDetailsData_response_data', 'visibility');
    BuiltValueNullFieldError.checkNotNull(audioMediaFiles,
        r'GGetVoicepodDetailsData_response_data', 'audioMediaFiles');
    BuiltValueNullFieldError.checkNotNull(videoMediaFiles,
        r'GGetVoicepodDetailsData_response_data', 'videoMediaFiles');
    BuiltValueNullFieldError.checkNotNull(imageMediaFiles,
        r'GGetVoicepodDetailsData_response_data', 'imageMediaFiles');
    BuiltValueNullFieldError.checkNotNull(
        playCount, r'GGetVoicepodDetailsData_response_data', 'playCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GGetVoicepodDetailsData_response_data', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        commentCount, r'GGetVoicepodDetailsData_response_data', 'commentCount');
    BuiltValueNullFieldError.checkNotNull(
        postStatus, r'GGetVoicepodDetailsData_response_data', 'postStatus');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GGetVoicepodDetailsData_response_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GGetVoicepodDetailsData_response_data', 'updatedAt');
  }

  @override
  GGetVoicepodDetailsData_response_data rebuild(
          void Function(GGetVoicepodDetailsData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetVoicepodDetailsData_response_dataBuilder toBuilder() =>
      new GGetVoicepodDetailsData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetVoicepodDetailsData_response_data &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        postId == other.postId &&
        title == other.title &&
        postUrl == other.postUrl &&
        visibility == other.visibility &&
        audioMediaFiles == other.audioMediaFiles &&
        videoMediaFiles == other.videoMediaFiles &&
        imageMediaFiles == other.imageMediaFiles &&
        playCount == other.playCount &&
        likeCount == other.likeCount &&
        commentCount == other.commentCount &&
        postStatus == other.postStatus &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, postUrl.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, audioMediaFiles.hashCode);
    _$hash = $jc(_$hash, videoMediaFiles.hashCode);
    _$hash = $jc(_$hash, imageMediaFiles.hashCode);
    _$hash = $jc(_$hash, playCount.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, commentCount.hashCode);
    _$hash = $jc(_$hash, postStatus.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetVoicepodDetailsData_response_data')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('postId', postId)
          ..add('title', title)
          ..add('postUrl', postUrl)
          ..add('visibility', visibility)
          ..add('audioMediaFiles', audioMediaFiles)
          ..add('videoMediaFiles', videoMediaFiles)
          ..add('imageMediaFiles', imageMediaFiles)
          ..add('playCount', playCount)
          ..add('likeCount', likeCount)
          ..add('commentCount', commentCount)
          ..add('postStatus', postStatus)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GGetVoicepodDetailsData_response_dataBuilder
    implements
        Builder<GGetVoicepodDetailsData_response_data,
            GGetVoicepodDetailsData_response_dataBuilder> {
  _$GGetVoicepodDetailsData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _postUrl;
  String? get postUrl => _$this._postUrl;
  set postUrl(String? postUrl) => _$this._postUrl = postUrl;

  _i2.GPostVisibility? _visibility;
  _i2.GPostVisibility? get visibility => _$this._visibility;
  set visibility(_i2.GPostVisibility? visibility) =>
      _$this._visibility = visibility;

  ListBuilder<String>? _audioMediaFiles;
  ListBuilder<String> get audioMediaFiles =>
      _$this._audioMediaFiles ??= new ListBuilder<String>();
  set audioMediaFiles(ListBuilder<String>? audioMediaFiles) =>
      _$this._audioMediaFiles = audioMediaFiles;

  ListBuilder<String>? _videoMediaFiles;
  ListBuilder<String> get videoMediaFiles =>
      _$this._videoMediaFiles ??= new ListBuilder<String>();
  set videoMediaFiles(ListBuilder<String>? videoMediaFiles) =>
      _$this._videoMediaFiles = videoMediaFiles;

  ListBuilder<String>? _imageMediaFiles;
  ListBuilder<String> get imageMediaFiles =>
      _$this._imageMediaFiles ??= new ListBuilder<String>();
  set imageMediaFiles(ListBuilder<String>? imageMediaFiles) =>
      _$this._imageMediaFiles = imageMediaFiles;

  int? _playCount;
  int? get playCount => _$this._playCount;
  set playCount(int? playCount) => _$this._playCount = playCount;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  _i2.GPostStatus? _postStatus;
  _i2.GPostStatus? get postStatus => _$this._postStatus;
  set postStatus(_i2.GPostStatus? postStatus) =>
      _$this._postStatus = postStatus;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GGetVoicepodDetailsData_response_dataBuilder() {
    GGetVoicepodDetailsData_response_data._initializeBuilder(this);
  }

  GGetVoicepodDetailsData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _postId = $v.postId;
      _title = $v.title;
      _postUrl = $v.postUrl;
      _visibility = $v.visibility;
      _audioMediaFiles = $v.audioMediaFiles.toBuilder();
      _videoMediaFiles = $v.videoMediaFiles.toBuilder();
      _imageMediaFiles = $v.imageMediaFiles.toBuilder();
      _playCount = $v.playCount;
      _likeCount = $v.likeCount;
      _commentCount = $v.commentCount;
      _postStatus = $v.postStatus;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetVoicepodDetailsData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetVoicepodDetailsData_response_data;
  }

  @override
  void update(
      void Function(GGetVoicepodDetailsData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetVoicepodDetailsData_response_data build() => _build();

  _$GGetVoicepodDetailsData_response_data _build() {
    _$GGetVoicepodDetailsData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GGetVoicepodDetailsData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetVoicepodDetailsData_response_data', 'G__typename'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GGetVoicepodDetailsData_response_data', 'userId'),
              postId: BuiltValueNullFieldError.checkNotNull(
                  postId, r'GGetVoicepodDetailsData_response_data', 'postId'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GGetVoicepodDetailsData_response_data', 'title'),
              postUrl: BuiltValueNullFieldError.checkNotNull(
                  postUrl, r'GGetVoicepodDetailsData_response_data', 'postUrl'),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'GGetVoicepodDetailsData_response_data', 'visibility'),
              audioMediaFiles: audioMediaFiles.build(),
              videoMediaFiles: videoMediaFiles.build(),
              imageMediaFiles: imageMediaFiles.build(),
              playCount: BuiltValueNullFieldError.checkNotNull(
                  playCount, r'GGetVoicepodDetailsData_response_data', 'playCount'),
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount, r'GGetVoicepodDetailsData_response_data', 'likeCount'),
              commentCount: BuiltValueNullFieldError.checkNotNull(commentCount, r'GGetVoicepodDetailsData_response_data', 'commentCount'),
              postStatus: BuiltValueNullFieldError.checkNotNull(postStatus, r'GGetVoicepodDetailsData_response_data', 'postStatus'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GGetVoicepodDetailsData_response_data', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GGetVoicepodDetailsData_response_data', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'audioMediaFiles';
        audioMediaFiles.build();
        _$failedField = 'videoMediaFiles';
        videoMediaFiles.build();
        _$failedField = 'imageMediaFiles';
        imageMediaFiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetVoicepodDetailsData_response_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteVoicepodData extends GDeleteVoicepodData {
  @override
  final String G__typename;
  @override
  final GDeleteVoicepodData_response response;

  factory _$GDeleteVoicepodData(
          [void Function(GDeleteVoicepodDataBuilder)? updates]) =>
      (new GDeleteVoicepodDataBuilder()..update(updates))._build();

  _$GDeleteVoicepodData._({required this.G__typename, required this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteVoicepodData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        response, r'GDeleteVoicepodData', 'response');
  }

  @override
  GDeleteVoicepodData rebuild(
          void Function(GDeleteVoicepodDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteVoicepodDataBuilder toBuilder() =>
      new GDeleteVoicepodDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteVoicepodData &&
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
    return (newBuiltValueToStringHelper(r'GDeleteVoicepodData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GDeleteVoicepodDataBuilder
    implements Builder<GDeleteVoicepodData, GDeleteVoicepodDataBuilder> {
  _$GDeleteVoicepodData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteVoicepodData_responseBuilder? _response;
  GDeleteVoicepodData_responseBuilder get response =>
      _$this._response ??= new GDeleteVoicepodData_responseBuilder();
  set response(GDeleteVoicepodData_responseBuilder? response) =>
      _$this._response = response;

  GDeleteVoicepodDataBuilder() {
    GDeleteVoicepodData._initializeBuilder(this);
  }

  GDeleteVoicepodDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteVoicepodData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteVoicepodData;
  }

  @override
  void update(void Function(GDeleteVoicepodDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteVoicepodData build() => _build();

  _$GDeleteVoicepodData _build() {
    _$GDeleteVoicepodData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteVoicepodData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDeleteVoicepodData', 'G__typename'),
              response: response.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeleteVoicepodData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteVoicepodData_response extends GDeleteVoicepodData_response {
  @override
  final String G__typename;
  @override
  final String? data;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final bool error;
  @override
  final String message;

  factory _$GDeleteVoicepodData_response(
          [void Function(GDeleteVoicepodData_responseBuilder)? updates]) =>
      (new GDeleteVoicepodData_responseBuilder()..update(updates))._build();

  _$GDeleteVoicepodData_response._(
      {required this.G__typename,
      this.data,
      required this.statusCode,
      required this.errorCodeForClient,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteVoicepodData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GDeleteVoicepodData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GDeleteVoicepodData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GDeleteVoicepodData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GDeleteVoicepodData_response', 'message');
  }

  @override
  GDeleteVoicepodData_response rebuild(
          void Function(GDeleteVoicepodData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteVoicepodData_responseBuilder toBuilder() =>
      new GDeleteVoicepodData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteVoicepodData_response &&
        G__typename == other.G__typename &&
        data == other.data &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteVoicepodData_response')
          ..add('G__typename', G__typename)
          ..add('data', data)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class GDeleteVoicepodData_responseBuilder
    implements
        Builder<GDeleteVoicepodData_response,
            GDeleteVoicepodData_responseBuilder> {
  _$GDeleteVoicepodData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GDeleteVoicepodData_responseBuilder() {
    GDeleteVoicepodData_response._initializeBuilder(this);
  }

  GDeleteVoicepodData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data;
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteVoicepodData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteVoicepodData_response;
  }

  @override
  void update(void Function(GDeleteVoicepodData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteVoicepodData_response build() => _build();

  _$GDeleteVoicepodData_response _build() {
    final _$result = _$v ??
        new _$GDeleteVoicepodData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDeleteVoicepodData_response', 'G__typename'),
            data: data,
            statusCode: BuiltValueNullFieldError.checkNotNull(
                statusCode, r'GDeleteVoicepodData_response', 'statusCode'),
            errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                errorCodeForClient,
                r'GDeleteVoicepodData_response',
                'errorCodeForClient'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'GDeleteVoicepodData_response', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'GDeleteVoicepodData_response', 'message'));
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentData extends GPostCommentData {
  @override
  final String G__typename;
  @override
  final GPostCommentData_response? response;

  factory _$GPostCommentData(
          [void Function(GPostCommentDataBuilder)? updates]) =>
      (new GPostCommentDataBuilder()..update(updates))._build();

  _$GPostCommentData._({required this.G__typename, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostCommentData', 'G__typename');
  }

  @override
  GPostCommentData rebuild(void Function(GPostCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentDataBuilder toBuilder() =>
      new GPostCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentData &&
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
    return (newBuiltValueToStringHelper(r'GPostCommentData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GPostCommentDataBuilder
    implements Builder<GPostCommentData, GPostCommentDataBuilder> {
  _$GPostCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostCommentData_responseBuilder? _response;
  GPostCommentData_responseBuilder get response =>
      _$this._response ??= new GPostCommentData_responseBuilder();
  set response(GPostCommentData_responseBuilder? response) =>
      _$this._response = response;

  GPostCommentDataBuilder() {
    GPostCommentData._initializeBuilder(this);
  }

  GPostCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentData;
  }

  @override
  void update(void Function(GPostCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentData build() => _build();

  _$GPostCommentData _build() {
    _$GPostCommentData _$result;
    try {
      _$result = _$v ??
          new _$GPostCommentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostCommentData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentData_response extends GPostCommentData_response {
  @override
  final String G__typename;
  @override
  final GPostCommentData_response_data? data;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final bool error;
  @override
  final String message;

  factory _$GPostCommentData_response(
          [void Function(GPostCommentData_responseBuilder)? updates]) =>
      (new GPostCommentData_responseBuilder()..update(updates))._build();

  _$GPostCommentData_response._(
      {required this.G__typename,
      this.data,
      required this.statusCode,
      required this.errorCodeForClient,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostCommentData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GPostCommentData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(
        errorCodeForClient, r'GPostCommentData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GPostCommentData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GPostCommentData_response', 'message');
  }

  @override
  GPostCommentData_response rebuild(
          void Function(GPostCommentData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentData_responseBuilder toBuilder() =>
      new GPostCommentData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentData_response &&
        G__typename == other.G__typename &&
        data == other.data &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostCommentData_response')
          ..add('G__typename', G__typename)
          ..add('data', data)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class GPostCommentData_responseBuilder
    implements
        Builder<GPostCommentData_response, GPostCommentData_responseBuilder> {
  _$GPostCommentData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostCommentData_response_dataBuilder? _data;
  GPostCommentData_response_dataBuilder get data =>
      _$this._data ??= new GPostCommentData_response_dataBuilder();
  set data(GPostCommentData_response_dataBuilder? data) => _$this._data = data;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GPostCommentData_responseBuilder() {
    GPostCommentData_response._initializeBuilder(this);
  }

  GPostCommentData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data?.toBuilder();
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentData_response;
  }

  @override
  void update(void Function(GPostCommentData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentData_response build() => _build();

  _$GPostCommentData_response _build() {
    _$GPostCommentData_response _$result;
    try {
      _$result = _$v ??
          new _$GPostCommentData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostCommentData_response', 'G__typename'),
              data: _data?.build(),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'GPostCommentData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GPostCommentData_response',
                  'errorCodeForClient'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GPostCommentData_response', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GPostCommentData_response', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostCommentData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentData_response_data extends GPostCommentData_response_data {
  @override
  final String G__typename;
  @override
  final String commentId;
  @override
  final String postId;
  @override
  final String userId;
  @override
  final String body;
  @override
  final int likeCount;
  @override
  final int replyCount;
  @override
  final _i2.GPostStatus status;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GPostCommentData_response_data(
          [void Function(GPostCommentData_response_dataBuilder)? updates]) =>
      (new GPostCommentData_response_dataBuilder()..update(updates))._build();

  _$GPostCommentData_response_data._(
      {required this.G__typename,
      required this.commentId,
      required this.postId,
      required this.userId,
      required this.body,
      required this.likeCount,
      required this.replyCount,
      required this.status,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostCommentData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        commentId, r'GPostCommentData_response_data', 'commentId');
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GPostCommentData_response_data', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GPostCommentData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        body, r'GPostCommentData_response_data', 'body');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GPostCommentData_response_data', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        replyCount, r'GPostCommentData_response_data', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GPostCommentData_response_data', 'status');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GPostCommentData_response_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GPostCommentData_response_data', 'updatedAt');
  }

  @override
  GPostCommentData_response_data rebuild(
          void Function(GPostCommentData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentData_response_dataBuilder toBuilder() =>
      new GPostCommentData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentData_response_data &&
        G__typename == other.G__typename &&
        commentId == other.commentId &&
        postId == other.postId &&
        userId == other.userId &&
        body == other.body &&
        likeCount == other.likeCount &&
        replyCount == other.replyCount &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, commentId.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostCommentData_response_data')
          ..add('G__typename', G__typename)
          ..add('commentId', commentId)
          ..add('postId', postId)
          ..add('userId', userId)
          ..add('body', body)
          ..add('likeCount', likeCount)
          ..add('replyCount', replyCount)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GPostCommentData_response_dataBuilder
    implements
        Builder<GPostCommentData_response_data,
            GPostCommentData_response_dataBuilder> {
  _$GPostCommentData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  _i2.GPostStatus? _status;
  _i2.GPostStatus? get status => _$this._status;
  set status(_i2.GPostStatus? status) => _$this._status = status;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GPostCommentData_response_dataBuilder() {
    GPostCommentData_response_data._initializeBuilder(this);
  }

  GPostCommentData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _commentId = $v.commentId;
      _postId = $v.postId;
      _userId = $v.userId;
      _body = $v.body;
      _likeCount = $v.likeCount;
      _replyCount = $v.replyCount;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentData_response_data;
  }

  @override
  void update(void Function(GPostCommentData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentData_response_data build() => _build();

  _$GPostCommentData_response_data _build() {
    final _$result = _$v ??
        new _$GPostCommentData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPostCommentData_response_data', 'G__typename'),
            commentId: BuiltValueNullFieldError.checkNotNull(
                commentId, r'GPostCommentData_response_data', 'commentId'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GPostCommentData_response_data', 'postId'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GPostCommentData_response_data', 'userId'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'GPostCommentData_response_data', 'body'),
            likeCount: BuiltValueNullFieldError.checkNotNull(
                likeCount, r'GPostCommentData_response_data', 'likeCount'),
            replyCount: BuiltValueNullFieldError.checkNotNull(
                replyCount, r'GPostCommentData_response_data', 'replyCount'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'GPostCommentData_response_data', 'status'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GPostCommentData_response_data', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GPostCommentData_response_data', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentReplyData extends GPostCommentReplyData {
  @override
  final String G__typename;
  @override
  final GPostCommentReplyData_response? response;

  factory _$GPostCommentReplyData(
          [void Function(GPostCommentReplyDataBuilder)? updates]) =>
      (new GPostCommentReplyDataBuilder()..update(updates))._build();

  _$GPostCommentReplyData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostCommentReplyData', 'G__typename');
  }

  @override
  GPostCommentReplyData rebuild(
          void Function(GPostCommentReplyDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentReplyDataBuilder toBuilder() =>
      new GPostCommentReplyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentReplyData &&
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
    return (newBuiltValueToStringHelper(r'GPostCommentReplyData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GPostCommentReplyDataBuilder
    implements Builder<GPostCommentReplyData, GPostCommentReplyDataBuilder> {
  _$GPostCommentReplyData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostCommentReplyData_responseBuilder? _response;
  GPostCommentReplyData_responseBuilder get response =>
      _$this._response ??= new GPostCommentReplyData_responseBuilder();
  set response(GPostCommentReplyData_responseBuilder? response) =>
      _$this._response = response;

  GPostCommentReplyDataBuilder() {
    GPostCommentReplyData._initializeBuilder(this);
  }

  GPostCommentReplyDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentReplyData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentReplyData;
  }

  @override
  void update(void Function(GPostCommentReplyDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentReplyData build() => _build();

  _$GPostCommentReplyData _build() {
    _$GPostCommentReplyData _$result;
    try {
      _$result = _$v ??
          new _$GPostCommentReplyData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostCommentReplyData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostCommentReplyData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentReplyData_response extends GPostCommentReplyData_response {
  @override
  final String G__typename;
  @override
  final GPostCommentReplyData_response_data? data;
  @override
  final int statusCode;
  @override
  final String errorCodeForClient;
  @override
  final bool error;
  @override
  final String message;

  factory _$GPostCommentReplyData_response(
          [void Function(GPostCommentReplyData_responseBuilder)? updates]) =>
      (new GPostCommentReplyData_responseBuilder()..update(updates))._build();

  _$GPostCommentReplyData_response._(
      {required this.G__typename,
      this.data,
      required this.statusCode,
      required this.errorCodeForClient,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostCommentReplyData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GPostCommentReplyData_response', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(errorCodeForClient,
        r'GPostCommentReplyData_response', 'errorCodeForClient');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GPostCommentReplyData_response', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GPostCommentReplyData_response', 'message');
  }

  @override
  GPostCommentReplyData_response rebuild(
          void Function(GPostCommentReplyData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentReplyData_responseBuilder toBuilder() =>
      new GPostCommentReplyData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentReplyData_response &&
        G__typename == other.G__typename &&
        data == other.data &&
        statusCode == other.statusCode &&
        errorCodeForClient == other.errorCodeForClient &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCodeForClient.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostCommentReplyData_response')
          ..add('G__typename', G__typename)
          ..add('data', data)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class GPostCommentReplyData_responseBuilder
    implements
        Builder<GPostCommentReplyData_response,
            GPostCommentReplyData_responseBuilder> {
  _$GPostCommentReplyData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostCommentReplyData_response_dataBuilder? _data;
  GPostCommentReplyData_response_dataBuilder get data =>
      _$this._data ??= new GPostCommentReplyData_response_dataBuilder();
  set data(GPostCommentReplyData_response_dataBuilder? data) =>
      _$this._data = data;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCodeForClient;
  String? get errorCodeForClient => _$this._errorCodeForClient;
  set errorCodeForClient(String? errorCodeForClient) =>
      _$this._errorCodeForClient = errorCodeForClient;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GPostCommentReplyData_responseBuilder() {
    GPostCommentReplyData_response._initializeBuilder(this);
  }

  GPostCommentReplyData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data?.toBuilder();
      _statusCode = $v.statusCode;
      _errorCodeForClient = $v.errorCodeForClient;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentReplyData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentReplyData_response;
  }

  @override
  void update(void Function(GPostCommentReplyData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentReplyData_response build() => _build();

  _$GPostCommentReplyData_response _build() {
    _$GPostCommentReplyData_response _$result;
    try {
      _$result = _$v ??
          new _$GPostCommentReplyData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GPostCommentReplyData_response', 'G__typename'),
              data: _data?.build(),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'GPostCommentReplyData_response', 'statusCode'),
              errorCodeForClient: BuiltValueNullFieldError.checkNotNull(
                  errorCodeForClient,
                  r'GPostCommentReplyData_response',
                  'errorCodeForClient'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GPostCommentReplyData_response', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GPostCommentReplyData_response', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostCommentReplyData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostCommentReplyData_response_data
    extends GPostCommentReplyData_response_data {
  @override
  final String G__typename;
  @override
  final String replyId;
  @override
  final String commentId;
  @override
  final String postId;
  @override
  final String userId;
  @override
  final String body;
  @override
  final int likeCount;
  @override
  final _i2.GPostStatus status;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GPostCommentReplyData_response_data(
          [void Function(GPostCommentReplyData_response_dataBuilder)?
              updates]) =>
      (new GPostCommentReplyData_response_dataBuilder()..update(updates))
          ._build();

  _$GPostCommentReplyData_response_data._(
      {required this.G__typename,
      required this.replyId,
      required this.commentId,
      required this.postId,
      required this.userId,
      required this.body,
      required this.likeCount,
      required this.status,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostCommentReplyData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        replyId, r'GPostCommentReplyData_response_data', 'replyId');
    BuiltValueNullFieldError.checkNotNull(
        commentId, r'GPostCommentReplyData_response_data', 'commentId');
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GPostCommentReplyData_response_data', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GPostCommentReplyData_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        body, r'GPostCommentReplyData_response_data', 'body');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GPostCommentReplyData_response_data', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GPostCommentReplyData_response_data', 'status');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GPostCommentReplyData_response_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GPostCommentReplyData_response_data', 'updatedAt');
  }

  @override
  GPostCommentReplyData_response_data rebuild(
          void Function(GPostCommentReplyData_response_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCommentReplyData_response_dataBuilder toBuilder() =>
      new GPostCommentReplyData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCommentReplyData_response_data &&
        G__typename == other.G__typename &&
        replyId == other.replyId &&
        commentId == other.commentId &&
        postId == other.postId &&
        userId == other.userId &&
        body == other.body &&
        likeCount == other.likeCount &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, replyId.hashCode);
    _$hash = $jc(_$hash, commentId.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostCommentReplyData_response_data')
          ..add('G__typename', G__typename)
          ..add('replyId', replyId)
          ..add('commentId', commentId)
          ..add('postId', postId)
          ..add('userId', userId)
          ..add('body', body)
          ..add('likeCount', likeCount)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GPostCommentReplyData_response_dataBuilder
    implements
        Builder<GPostCommentReplyData_response_data,
            GPostCommentReplyData_response_dataBuilder> {
  _$GPostCommentReplyData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _replyId;
  String? get replyId => _$this._replyId;
  set replyId(String? replyId) => _$this._replyId = replyId;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  _i2.GPostStatus? _status;
  _i2.GPostStatus? get status => _$this._status;
  set status(_i2.GPostStatus? status) => _$this._status = status;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GPostCommentReplyData_response_dataBuilder() {
    GPostCommentReplyData_response_data._initializeBuilder(this);
  }

  GPostCommentReplyData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _replyId = $v.replyId;
      _commentId = $v.commentId;
      _postId = $v.postId;
      _userId = $v.userId;
      _body = $v.body;
      _likeCount = $v.likeCount;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCommentReplyData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCommentReplyData_response_data;
  }

  @override
  void update(
      void Function(GPostCommentReplyData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCommentReplyData_response_data build() => _build();

  _$GPostCommentReplyData_response_data _build() {
    final _$result = _$v ??
        new _$GPostCommentReplyData_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPostCommentReplyData_response_data', 'G__typename'),
            replyId: BuiltValueNullFieldError.checkNotNull(
                replyId, r'GPostCommentReplyData_response_data', 'replyId'),
            commentId: BuiltValueNullFieldError.checkNotNull(
                commentId, r'GPostCommentReplyData_response_data', 'commentId'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GPostCommentReplyData_response_data', 'postId'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GPostCommentReplyData_response_data', 'userId'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'GPostCommentReplyData_response_data', 'body'),
            likeCount: BuiltValueNullFieldError.checkNotNull(
                likeCount, r'GPostCommentReplyData_response_data', 'likeCount'),
            status:
                BuiltValueNullFieldError.checkNotNull(status, r'GPostCommentReplyData_response_data', 'status'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GPostCommentReplyData_response_data', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GPostCommentReplyData_response_data', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

class _$GPostDetailsData extends GPostDetailsData {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String postId;
  @override
  final String title;
  @override
  final String postUrl;
  @override
  final _i2.GPostVisibility visibility;
  @override
  final BuiltList<String> audioMediaFiles;
  @override
  final BuiltList<String> videoMediaFiles;
  @override
  final BuiltList<String> imageMediaFiles;
  @override
  final int playCount;
  @override
  final int likeCount;
  @override
  final int commentCount;
  @override
  final _i2.GPostStatus postStatus;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GPostDetailsData(
          [void Function(GPostDetailsDataBuilder)? updates]) =>
      (new GPostDetailsDataBuilder()..update(updates))._build();

  _$GPostDetailsData._(
      {required this.G__typename,
      required this.userId,
      required this.postId,
      required this.title,
      required this.postUrl,
      required this.visibility,
      required this.audioMediaFiles,
      required this.videoMediaFiles,
      required this.imageMediaFiles,
      required this.playCount,
      required this.likeCount,
      required this.commentCount,
      required this.postStatus,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostDetailsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GPostDetailsData', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GPostDetailsData', 'postId');
    BuiltValueNullFieldError.checkNotNull(title, r'GPostDetailsData', 'title');
    BuiltValueNullFieldError.checkNotNull(
        postUrl, r'GPostDetailsData', 'postUrl');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GPostDetailsData', 'visibility');
    BuiltValueNullFieldError.checkNotNull(
        audioMediaFiles, r'GPostDetailsData', 'audioMediaFiles');
    BuiltValueNullFieldError.checkNotNull(
        videoMediaFiles, r'GPostDetailsData', 'videoMediaFiles');
    BuiltValueNullFieldError.checkNotNull(
        imageMediaFiles, r'GPostDetailsData', 'imageMediaFiles');
    BuiltValueNullFieldError.checkNotNull(
        playCount, r'GPostDetailsData', 'playCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GPostDetailsData', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        commentCount, r'GPostDetailsData', 'commentCount');
    BuiltValueNullFieldError.checkNotNull(
        postStatus, r'GPostDetailsData', 'postStatus');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GPostDetailsData', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GPostDetailsData', 'updatedAt');
  }

  @override
  GPostDetailsData rebuild(void Function(GPostDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostDetailsDataBuilder toBuilder() =>
      new GPostDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostDetailsData &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        postId == other.postId &&
        title == other.title &&
        postUrl == other.postUrl &&
        visibility == other.visibility &&
        audioMediaFiles == other.audioMediaFiles &&
        videoMediaFiles == other.videoMediaFiles &&
        imageMediaFiles == other.imageMediaFiles &&
        playCount == other.playCount &&
        likeCount == other.likeCount &&
        commentCount == other.commentCount &&
        postStatus == other.postStatus &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, postUrl.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, audioMediaFiles.hashCode);
    _$hash = $jc(_$hash, videoMediaFiles.hashCode);
    _$hash = $jc(_$hash, imageMediaFiles.hashCode);
    _$hash = $jc(_$hash, playCount.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, commentCount.hashCode);
    _$hash = $jc(_$hash, postStatus.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostDetailsData')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('postId', postId)
          ..add('title', title)
          ..add('postUrl', postUrl)
          ..add('visibility', visibility)
          ..add('audioMediaFiles', audioMediaFiles)
          ..add('videoMediaFiles', videoMediaFiles)
          ..add('imageMediaFiles', imageMediaFiles)
          ..add('playCount', playCount)
          ..add('likeCount', likeCount)
          ..add('commentCount', commentCount)
          ..add('postStatus', postStatus)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GPostDetailsDataBuilder
    implements Builder<GPostDetailsData, GPostDetailsDataBuilder> {
  _$GPostDetailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _postUrl;
  String? get postUrl => _$this._postUrl;
  set postUrl(String? postUrl) => _$this._postUrl = postUrl;

  _i2.GPostVisibility? _visibility;
  _i2.GPostVisibility? get visibility => _$this._visibility;
  set visibility(_i2.GPostVisibility? visibility) =>
      _$this._visibility = visibility;

  ListBuilder<String>? _audioMediaFiles;
  ListBuilder<String> get audioMediaFiles =>
      _$this._audioMediaFiles ??= new ListBuilder<String>();
  set audioMediaFiles(ListBuilder<String>? audioMediaFiles) =>
      _$this._audioMediaFiles = audioMediaFiles;

  ListBuilder<String>? _videoMediaFiles;
  ListBuilder<String> get videoMediaFiles =>
      _$this._videoMediaFiles ??= new ListBuilder<String>();
  set videoMediaFiles(ListBuilder<String>? videoMediaFiles) =>
      _$this._videoMediaFiles = videoMediaFiles;

  ListBuilder<String>? _imageMediaFiles;
  ListBuilder<String> get imageMediaFiles =>
      _$this._imageMediaFiles ??= new ListBuilder<String>();
  set imageMediaFiles(ListBuilder<String>? imageMediaFiles) =>
      _$this._imageMediaFiles = imageMediaFiles;

  int? _playCount;
  int? get playCount => _$this._playCount;
  set playCount(int? playCount) => _$this._playCount = playCount;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  _i2.GPostStatus? _postStatus;
  _i2.GPostStatus? get postStatus => _$this._postStatus;
  set postStatus(_i2.GPostStatus? postStatus) =>
      _$this._postStatus = postStatus;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GPostDetailsDataBuilder() {
    GPostDetailsData._initializeBuilder(this);
  }

  GPostDetailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _postId = $v.postId;
      _title = $v.title;
      _postUrl = $v.postUrl;
      _visibility = $v.visibility;
      _audioMediaFiles = $v.audioMediaFiles.toBuilder();
      _videoMediaFiles = $v.videoMediaFiles.toBuilder();
      _imageMediaFiles = $v.imageMediaFiles.toBuilder();
      _playCount = $v.playCount;
      _likeCount = $v.likeCount;
      _commentCount = $v.commentCount;
      _postStatus = $v.postStatus;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostDetailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostDetailsData;
  }

  @override
  void update(void Function(GPostDetailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostDetailsData build() => _build();

  _$GPostDetailsData _build() {
    _$GPostDetailsData _$result;
    try {
      _$result = _$v ??
          new _$GPostDetailsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostDetailsData', 'G__typename'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GPostDetailsData', 'userId'),
              postId: BuiltValueNullFieldError.checkNotNull(
                  postId, r'GPostDetailsData', 'postId'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GPostDetailsData', 'title'),
              postUrl: BuiltValueNullFieldError.checkNotNull(
                  postUrl, r'GPostDetailsData', 'postUrl'),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'GPostDetailsData', 'visibility'),
              audioMediaFiles: audioMediaFiles.build(),
              videoMediaFiles: videoMediaFiles.build(),
              imageMediaFiles: imageMediaFiles.build(),
              playCount: BuiltValueNullFieldError.checkNotNull(
                  playCount, r'GPostDetailsData', 'playCount'),
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount, r'GPostDetailsData', 'likeCount'),
              commentCount:
                  BuiltValueNullFieldError.checkNotNull(commentCount, r'GPostDetailsData', 'commentCount'),
              postStatus: BuiltValueNullFieldError.checkNotNull(postStatus, r'GPostDetailsData', 'postStatus'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GPostDetailsData', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GPostDetailsData', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'audioMediaFiles';
        audioMediaFiles.build();
        _$failedField = 'videoMediaFiles';
        videoMediaFiles.build();
        _$failedField = 'imageMediaFiles';
        imageMediaFiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVPCommentData extends GVPCommentData {
  @override
  final String G__typename;
  @override
  final String commentId;
  @override
  final String postId;
  @override
  final String userId;
  @override
  final String body;
  @override
  final int likeCount;
  @override
  final int replyCount;
  @override
  final _i2.GPostStatus status;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GVPCommentData([void Function(GVPCommentDataBuilder)? updates]) =>
      (new GVPCommentDataBuilder()..update(updates))._build();

  _$GVPCommentData._(
      {required this.G__typename,
      required this.commentId,
      required this.postId,
      required this.userId,
      required this.body,
      required this.likeCount,
      required this.replyCount,
      required this.status,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVPCommentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        commentId, r'GVPCommentData', 'commentId');
    BuiltValueNullFieldError.checkNotNull(postId, r'GVPCommentData', 'postId');
    BuiltValueNullFieldError.checkNotNull(userId, r'GVPCommentData', 'userId');
    BuiltValueNullFieldError.checkNotNull(body, r'GVPCommentData', 'body');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GVPCommentData', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        replyCount, r'GVPCommentData', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(status, r'GVPCommentData', 'status');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GVPCommentData', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GVPCommentData', 'updatedAt');
  }

  @override
  GVPCommentData rebuild(void Function(GVPCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVPCommentDataBuilder toBuilder() =>
      new GVPCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVPCommentData &&
        G__typename == other.G__typename &&
        commentId == other.commentId &&
        postId == other.postId &&
        userId == other.userId &&
        body == other.body &&
        likeCount == other.likeCount &&
        replyCount == other.replyCount &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, commentId.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVPCommentData')
          ..add('G__typename', G__typename)
          ..add('commentId', commentId)
          ..add('postId', postId)
          ..add('userId', userId)
          ..add('body', body)
          ..add('likeCount', likeCount)
          ..add('replyCount', replyCount)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GVPCommentDataBuilder
    implements Builder<GVPCommentData, GVPCommentDataBuilder> {
  _$GVPCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  _i2.GPostStatus? _status;
  _i2.GPostStatus? get status => _$this._status;
  set status(_i2.GPostStatus? status) => _$this._status = status;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GVPCommentDataBuilder() {
    GVPCommentData._initializeBuilder(this);
  }

  GVPCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _commentId = $v.commentId;
      _postId = $v.postId;
      _userId = $v.userId;
      _body = $v.body;
      _likeCount = $v.likeCount;
      _replyCount = $v.replyCount;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVPCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVPCommentData;
  }

  @override
  void update(void Function(GVPCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVPCommentData build() => _build();

  _$GVPCommentData _build() {
    final _$result = _$v ??
        new _$GVPCommentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GVPCommentData', 'G__typename'),
            commentId: BuiltValueNullFieldError.checkNotNull(
                commentId, r'GVPCommentData', 'commentId'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GVPCommentData', 'postId'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GVPCommentData', 'userId'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'GVPCommentData', 'body'),
            likeCount: BuiltValueNullFieldError.checkNotNull(
                likeCount, r'GVPCommentData', 'likeCount'),
            replyCount: BuiltValueNullFieldError.checkNotNull(
                replyCount, r'GVPCommentData', 'replyCount'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'GVPCommentData', 'status'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'GVPCommentData', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GVPCommentData', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

class _$GVPCommentReplyData extends GVPCommentReplyData {
  @override
  final String G__typename;
  @override
  final String replyId;
  @override
  final String commentId;
  @override
  final String postId;
  @override
  final String userId;
  @override
  final String body;
  @override
  final int likeCount;
  @override
  final _i2.GPostStatus status;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GVPCommentReplyData(
          [void Function(GVPCommentReplyDataBuilder)? updates]) =>
      (new GVPCommentReplyDataBuilder()..update(updates))._build();

  _$GVPCommentReplyData._(
      {required this.G__typename,
      required this.replyId,
      required this.commentId,
      required this.postId,
      required this.userId,
      required this.body,
      required this.likeCount,
      required this.status,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVPCommentReplyData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        replyId, r'GVPCommentReplyData', 'replyId');
    BuiltValueNullFieldError.checkNotNull(
        commentId, r'GVPCommentReplyData', 'commentId');
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GVPCommentReplyData', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GVPCommentReplyData', 'userId');
    BuiltValueNullFieldError.checkNotNull(body, r'GVPCommentReplyData', 'body');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GVPCommentReplyData', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GVPCommentReplyData', 'status');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GVPCommentReplyData', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GVPCommentReplyData', 'updatedAt');
  }

  @override
  GVPCommentReplyData rebuild(
          void Function(GVPCommentReplyDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVPCommentReplyDataBuilder toBuilder() =>
      new GVPCommentReplyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVPCommentReplyData &&
        G__typename == other.G__typename &&
        replyId == other.replyId &&
        commentId == other.commentId &&
        postId == other.postId &&
        userId == other.userId &&
        body == other.body &&
        likeCount == other.likeCount &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, replyId.hashCode);
    _$hash = $jc(_$hash, commentId.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVPCommentReplyData')
          ..add('G__typename', G__typename)
          ..add('replyId', replyId)
          ..add('commentId', commentId)
          ..add('postId', postId)
          ..add('userId', userId)
          ..add('body', body)
          ..add('likeCount', likeCount)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GVPCommentReplyDataBuilder
    implements Builder<GVPCommentReplyData, GVPCommentReplyDataBuilder> {
  _$GVPCommentReplyData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _replyId;
  String? get replyId => _$this._replyId;
  set replyId(String? replyId) => _$this._replyId = replyId;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  _i2.GPostStatus? _status;
  _i2.GPostStatus? get status => _$this._status;
  set status(_i2.GPostStatus? status) => _$this._status = status;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GVPCommentReplyDataBuilder() {
    GVPCommentReplyData._initializeBuilder(this);
  }

  GVPCommentReplyDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _replyId = $v.replyId;
      _commentId = $v.commentId;
      _postId = $v.postId;
      _userId = $v.userId;
      _body = $v.body;
      _likeCount = $v.likeCount;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVPCommentReplyData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVPCommentReplyData;
  }

  @override
  void update(void Function(GVPCommentReplyDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVPCommentReplyData build() => _build();

  _$GVPCommentReplyData _build() {
    final _$result = _$v ??
        new _$GVPCommentReplyData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GVPCommentReplyData', 'G__typename'),
            replyId: BuiltValueNullFieldError.checkNotNull(
                replyId, r'GVPCommentReplyData', 'replyId'),
            commentId: BuiltValueNullFieldError.checkNotNull(
                commentId, r'GVPCommentReplyData', 'commentId'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GVPCommentReplyData', 'postId'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GVPCommentReplyData', 'userId'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'GVPCommentReplyData', 'body'),
            likeCount: BuiltValueNullFieldError.checkNotNull(
                likeCount, r'GVPCommentReplyData', 'likeCount'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'GVPCommentReplyData', 'status'),
            createdAt:
                BuiltValueNullFieldError.checkNotNull(createdAt, r'GVPCommentReplyData', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GVPCommentReplyData', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

class _$GLanguageData extends GLanguageData {
  @override
  final String G__typename;
  @override
  final String nameInEnglish;
  @override
  final String name;

  factory _$GLanguageData([void Function(GLanguageDataBuilder)? updates]) =>
      (new GLanguageDataBuilder()..update(updates))._build();

  _$GLanguageData._(
      {required this.G__typename,
      required this.nameInEnglish,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLanguageData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nameInEnglish, r'GLanguageData', 'nameInEnglish');
    BuiltValueNullFieldError.checkNotNull(name, r'GLanguageData', 'name');
  }

  @override
  GLanguageData rebuild(void Function(GLanguageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLanguageDataBuilder toBuilder() => new GLanguageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLanguageData &&
        G__typename == other.G__typename &&
        nameInEnglish == other.nameInEnglish &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nameInEnglish.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLanguageData')
          ..add('G__typename', G__typename)
          ..add('nameInEnglish', nameInEnglish)
          ..add('name', name))
        .toString();
  }
}

class GLanguageDataBuilder
    implements Builder<GLanguageData, GLanguageDataBuilder> {
  _$GLanguageData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _nameInEnglish;
  String? get nameInEnglish => _$this._nameInEnglish;
  set nameInEnglish(String? nameInEnglish) =>
      _$this._nameInEnglish = nameInEnglish;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GLanguageDataBuilder() {
    GLanguageData._initializeBuilder(this);
  }

  GLanguageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nameInEnglish = $v.nameInEnglish;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLanguageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLanguageData;
  }

  @override
  void update(void Function(GLanguageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLanguageData build() => _build();

  _$GLanguageData _build() {
    final _$result = _$v ??
        new _$GLanguageData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLanguageData', 'G__typename'),
            nameInEnglish: BuiltValueNullFieldError.checkNotNull(
                nameInEnglish, r'GLanguageData', 'nameInEnglish'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GLanguageData', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
