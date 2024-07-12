// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdatePreferencesData> _$gUpdatePreferencesDataSerializer =
    new _$GUpdatePreferencesDataSerializer();
Serializer<GUpdatePreferencesData_response>
    _$gUpdatePreferencesDataResponseSerializer =
    new _$GUpdatePreferencesData_responseSerializer();
Serializer<GGetUserShortDetailsByIdV2Data>
    _$gGetUserShortDetailsByIdV2DataSerializer =
    new _$GGetUserShortDetailsByIdV2DataSerializer();
Serializer<GGetUserShortDetailsByIdV2Data_response>
    _$gGetUserShortDetailsByIdV2DataResponseSerializer =
    new _$GGetUserShortDetailsByIdV2Data_responseSerializer();
Serializer<GGetUserShortDetailsByIdV2Data_response_data>
    _$gGetUserShortDetailsByIdV2DataResponseDataSerializer =
    new _$GGetUserShortDetailsByIdV2Data_response_dataSerializer();
Serializer<GGetUserDetailsByIdV2Data> _$gGetUserDetailsByIdV2DataSerializer =
    new _$GGetUserDetailsByIdV2DataSerializer();
Serializer<GGetUserDetailsByIdV2Data_response>
    _$gGetUserDetailsByIdV2DataResponseSerializer =
    new _$GGetUserDetailsByIdV2Data_responseSerializer();
Serializer<GGetUserDetailsByIdV2Data_response_data>
    _$gGetUserDetailsByIdV2DataResponseDataSerializer =
    new _$GGetUserDetailsByIdV2Data_response_dataSerializer();
Serializer<GGetUserDetailsByIdV2Data_response_data_profile>
    _$gGetUserDetailsByIdV2DataResponseDataProfileSerializer =
    new _$GGetUserDetailsByIdV2Data_response_data_profileSerializer();
Serializer<GUpdateUserProfileData> _$gUpdateUserProfileDataSerializer =
    new _$GUpdateUserProfileDataSerializer();
Serializer<GUpdateUserProfileData_response>
    _$gUpdateUserProfileDataResponseSerializer =
    new _$GUpdateUserProfileData_responseSerializer();
Serializer<GGetUserLanguageListData> _$gGetUserLanguageListDataSerializer =
    new _$GGetUserLanguageListDataSerializer();
Serializer<GGetUserLanguageListData_response>
    _$gGetUserLanguageListDataResponseSerializer =
    new _$GGetUserLanguageListData_responseSerializer();
Serializer<GGetUserLanguageListData_response_data>
    _$gGetUserLanguageListDataResponseDataSerializer =
    new _$GGetUserLanguageListData_response_dataSerializer();
Serializer<GUserShortDetailsData> _$gUserShortDetailsDataSerializer =
    new _$GUserShortDetailsDataSerializer();
Serializer<GUserDetailsData> _$gUserDetailsDataSerializer =
    new _$GUserDetailsDataSerializer();
Serializer<GUserDetailsData_profile> _$gUserDetailsDataProfileSerializer =
    new _$GUserDetailsData_profileSerializer();

class _$GUpdatePreferencesDataSerializer
    implements StructuredSerializer<GUpdatePreferencesData> {
  @override
  final Iterable<Type> types = const [
    GUpdatePreferencesData,
    _$GUpdatePreferencesData
  ];
  @override
  final String wireName = 'GUpdatePreferencesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdatePreferencesData object,
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
            specifiedType: const FullType(GUpdatePreferencesData_response)));
    }
    return result;
  }

  @override
  GUpdatePreferencesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePreferencesDataBuilder();

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
                      const FullType(GUpdatePreferencesData_response))!
              as GUpdatePreferencesData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePreferencesData_responseSerializer
    implements StructuredSerializer<GUpdatePreferencesData_response> {
  @override
  final Iterable<Type> types = const [
    GUpdatePreferencesData_response,
    _$GUpdatePreferencesData_response
  ];
  @override
  final String wireName = 'GUpdatePreferencesData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdatePreferencesData_response object,
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
  GUpdatePreferencesData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePreferencesData_responseBuilder();

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

class _$GGetUserShortDetailsByIdV2DataSerializer
    implements StructuredSerializer<GGetUserShortDetailsByIdV2Data> {
  @override
  final Iterable<Type> types = const [
    GGetUserShortDetailsByIdV2Data,
    _$GGetUserShortDetailsByIdV2Data
  ];
  @override
  final String wireName = 'GGetUserShortDetailsByIdV2Data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserShortDetailsByIdV2Data object,
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
                const FullType(GGetUserShortDetailsByIdV2Data_response)));
    }
    return result;
  }

  @override
  GGetUserShortDetailsByIdV2Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserShortDetailsByIdV2DataBuilder();

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
                      const FullType(GGetUserShortDetailsByIdV2Data_response))!
              as GGetUserShortDetailsByIdV2Data_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserShortDetailsByIdV2Data_responseSerializer
    implements StructuredSerializer<GGetUserShortDetailsByIdV2Data_response> {
  @override
  final Iterable<Type> types = const [
    GGetUserShortDetailsByIdV2Data_response,
    _$GGetUserShortDetailsByIdV2Data_response
  ];
  @override
  final String wireName = 'GGetUserShortDetailsByIdV2Data_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserShortDetailsByIdV2Data_response object,
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
                const FullType(GGetUserShortDetailsByIdV2Data_response_data)));
    }
    return result;
  }

  @override
  GGetUserShortDetailsByIdV2Data_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserShortDetailsByIdV2Data_responseBuilder();

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
                      GGetUserShortDetailsByIdV2Data_response_data))!
              as GGetUserShortDetailsByIdV2Data_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserShortDetailsByIdV2Data_response_dataSerializer
    implements
        StructuredSerializer<GGetUserShortDetailsByIdV2Data_response_data> {
  @override
  final Iterable<Type> types = const [
    GGetUserShortDetailsByIdV2Data_response_data,
    _$GGetUserShortDetailsByIdV2Data_response_data
  ];
  @override
  final String wireName = 'GGetUserShortDetailsByIdV2Data_response_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetUserShortDetailsByIdV2Data_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.profilePictureMediaId;
    if (value != null) {
      result
        ..add('profilePictureMediaId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUserShortDetailsByIdV2Data_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserShortDetailsByIdV2Data_response_dataBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profilePictureMediaId':
          result.profilePictureMediaId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserDetailsByIdV2DataSerializer
    implements StructuredSerializer<GGetUserDetailsByIdV2Data> {
  @override
  final Iterable<Type> types = const [
    GGetUserDetailsByIdV2Data,
    _$GGetUserDetailsByIdV2Data
  ];
  @override
  final String wireName = 'GGetUserDetailsByIdV2Data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserDetailsByIdV2Data object,
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
            specifiedType: const FullType(GGetUserDetailsByIdV2Data_response)));
    }
    return result;
  }

  @override
  GGetUserDetailsByIdV2Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserDetailsByIdV2DataBuilder();

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
                      const FullType(GGetUserDetailsByIdV2Data_response))!
              as GGetUserDetailsByIdV2Data_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserDetailsByIdV2Data_responseSerializer
    implements StructuredSerializer<GGetUserDetailsByIdV2Data_response> {
  @override
  final Iterable<Type> types = const [
    GGetUserDetailsByIdV2Data_response,
    _$GGetUserDetailsByIdV2Data_response
  ];
  @override
  final String wireName = 'GGetUserDetailsByIdV2Data_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserDetailsByIdV2Data_response object,
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
                const FullType(GGetUserDetailsByIdV2Data_response_data)));
    }
    return result;
  }

  @override
  GGetUserDetailsByIdV2Data_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserDetailsByIdV2Data_responseBuilder();

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
                      const FullType(GGetUserDetailsByIdV2Data_response_data))!
              as GGetUserDetailsByIdV2Data_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserDetailsByIdV2Data_response_dataSerializer
    implements StructuredSerializer<GGetUserDetailsByIdV2Data_response_data> {
  @override
  final Iterable<Type> types = const [
    GGetUserDetailsByIdV2Data_response_data,
    _$GGetUserDetailsByIdV2Data_response_data
  ];
  @override
  final String wireName = 'GGetUserDetailsByIdV2Data_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserDetailsByIdV2Data_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(String)),
      'deletionStatus',
      serializers.serialize(object.deletionStatus,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'inviterUserId',
      serializers.serialize(object.inviterUserId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstname;
    if (value != null) {
      result
        ..add('firstname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastname;
    if (value != null) {
      result
        ..add('lastname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profilePictureMediaId;
    if (value != null) {
      result
        ..add('profilePictureMediaId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.languages;
    if (value != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.moderationStatus;
    if (value != null) {
      result
        ..add('moderationStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verificationStatus;
    if (value != null) {
      result
        ..add('verificationStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publicTags;
    if (value != null) {
      result
        ..add('publicTags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.profileLink;
    if (value != null) {
      result
        ..add('profileLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profile;
    if (value != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GGetUserDetailsByIdV2Data_response_data_profile)));
    }
    return result;
  }

  @override
  GGetUserDetailsByIdV2Data_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserDetailsByIdV2Data_response_dataBuilder();

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
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profilePictureMediaId':
          result.profilePictureMediaId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deletionStatus':
          result.deletionStatus = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'moderationStatus':
          result.moderationStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'verificationStatus':
          result.verificationStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'publicTags':
          result.publicTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'profileLink':
          result.profileLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inviterUserId':
          result.inviterUserId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetUserDetailsByIdV2Data_response_data_profile))!
              as GGetUserDetailsByIdV2Data_response_data_profile);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserDetailsByIdV2Data_response_data_profileSerializer
    implements
        StructuredSerializer<GGetUserDetailsByIdV2Data_response_data_profile> {
  @override
  final Iterable<Type> types = const [
    GGetUserDetailsByIdV2Data_response_data_profile,
    _$GGetUserDetailsByIdV2Data_response_data_profile
  ];
  @override
  final String wireName = 'GGetUserDetailsByIdV2Data_response_data_profile';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetUserDetailsByIdV2Data_response_data_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twitterHandle;
    if (value != null) {
      result
        ..add('twitterHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagramHandle;
    if (value != null) {
      result
        ..add('instagramHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkedinHandle;
    if (value != null) {
      result
        ..add('linkedinHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youtubeHandle;
    if (value != null) {
      result
        ..add('youtubeHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.spotifyHandle;
    if (value != null) {
      result
        ..add('spotifyHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.website;
    if (value != null) {
      result
        ..add('website')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUserDetailsByIdV2Data_response_data_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserDetailsByIdV2Data_response_data_profileBuilder();

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
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twitterHandle':
          result.twitterHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagramHandle':
          result.instagramHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'linkedinHandle':
          result.linkedinHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youtubeHandle':
          result.youtubeHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'spotifyHandle':
          result.spotifyHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GUpdateUserProfileDataSerializer
    implements StructuredSerializer<GUpdateUserProfileData> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserProfileData,
    _$GUpdateUserProfileData
  ];
  @override
  final String wireName = 'GUpdateUserProfileData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserProfileData object,
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
            specifiedType: const FullType(GUpdateUserProfileData_response)));
    }
    return result;
  }

  @override
  GUpdateUserProfileData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserProfileDataBuilder();

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
                      const FullType(GUpdateUserProfileData_response))!
              as GUpdateUserProfileData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserProfileData_responseSerializer
    implements StructuredSerializer<GUpdateUserProfileData_response> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserProfileData_response,
    _$GUpdateUserProfileData_response
  ];
  @override
  final String wireName = 'GUpdateUserProfileData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserProfileData_response object,
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
  GUpdateUserProfileData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserProfileData_responseBuilder();

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

class _$GGetUserLanguageListDataSerializer
    implements StructuredSerializer<GGetUserLanguageListData> {
  @override
  final Iterable<Type> types = const [
    GGetUserLanguageListData,
    _$GGetUserLanguageListData
  ];
  @override
  final String wireName = 'GGetUserLanguageListData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserLanguageListData object,
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
            specifiedType: const FullType(GGetUserLanguageListData_response)));
    }
    return result;
  }

  @override
  GGetUserLanguageListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserLanguageListDataBuilder();

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
                      const FullType(GGetUserLanguageListData_response))!
              as GGetUserLanguageListData_response);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserLanguageListData_responseSerializer
    implements StructuredSerializer<GGetUserLanguageListData_response> {
  @override
  final Iterable<Type> types = const [
    GGetUserLanguageListData_response,
    _$GGetUserLanguageListData_response
  ];
  @override
  final String wireName = 'GGetUserLanguageListData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserLanguageListData_response object,
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
                const FullType(GGetUserLanguageListData_response_data)));
    }
    return result;
  }

  @override
  GGetUserLanguageListData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserLanguageListData_responseBuilder();

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
                      const FullType(GGetUserLanguageListData_response_data))!
              as GGetUserLanguageListData_response_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserLanguageListData_response_dataSerializer
    implements StructuredSerializer<GGetUserLanguageListData_response_data> {
  @override
  final Iterable<Type> types = const [
    GGetUserLanguageListData_response_data,
    _$GGetUserLanguageListData_response_data
  ];
  @override
  final String wireName = 'GGetUserLanguageListData_response_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserLanguageListData_response_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.languages;
    if (value != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GGetUserLanguageListData_response_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserLanguageListData_response_dataBuilder();

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
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserShortDetailsDataSerializer
    implements StructuredSerializer<GUserShortDetailsData> {
  @override
  final Iterable<Type> types = const [
    GUserShortDetailsData,
    _$GUserShortDetailsData
  ];
  @override
  final String wireName = 'GUserShortDetailsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserShortDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.profilePictureMediaId;
    if (value != null) {
      result
        ..add('profilePictureMediaId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserShortDetailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserShortDetailsDataBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profilePictureMediaId':
          result.profilePictureMediaId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserDetailsDataSerializer
    implements StructuredSerializer<GUserDetailsData> {
  @override
  final Iterable<Type> types = const [GUserDetailsData, _$GUserDetailsData];
  @override
  final String wireName = 'GUserDetailsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(String)),
      'deletionStatus',
      serializers.serialize(object.deletionStatus,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'inviterUserId',
      serializers.serialize(object.inviterUserId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstname;
    if (value != null) {
      result
        ..add('firstname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastname;
    if (value != null) {
      result
        ..add('lastname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profilePictureMediaId;
    if (value != null) {
      result
        ..add('profilePictureMediaId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.languages;
    if (value != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.moderationStatus;
    if (value != null) {
      result
        ..add('moderationStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verificationStatus;
    if (value != null) {
      result
        ..add('verificationStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publicTags;
    if (value != null) {
      result
        ..add('publicTags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.profileLink;
    if (value != null) {
      result
        ..add('profileLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profile;
    if (value != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserDetailsData_profile)));
    }
    return result;
  }

  @override
  GUserDetailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserDetailsDataBuilder();

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
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profilePictureMediaId':
          result.profilePictureMediaId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deletionStatus':
          result.deletionStatus = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'moderationStatus':
          result.moderationStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'verificationStatus':
          result.verificationStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'publicTags':
          result.publicTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'profileLink':
          result.profileLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inviterUserId':
          result.inviterUserId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserDetailsData_profile))!
              as GUserDetailsData_profile);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserDetailsData_profileSerializer
    implements StructuredSerializer<GUserDetailsData_profile> {
  @override
  final Iterable<Type> types = const [
    GUserDetailsData_profile,
    _$GUserDetailsData_profile
  ];
  @override
  final String wireName = 'GUserDetailsData_profile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserDetailsData_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twitterHandle;
    if (value != null) {
      result
        ..add('twitterHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagramHandle;
    if (value != null) {
      result
        ..add('instagramHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkedinHandle;
    if (value != null) {
      result
        ..add('linkedinHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youtubeHandle;
    if (value != null) {
      result
        ..add('youtubeHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.spotifyHandle;
    if (value != null) {
      result
        ..add('spotifyHandle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.website;
    if (value != null) {
      result
        ..add('website')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserDetailsData_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserDetailsData_profileBuilder();

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
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twitterHandle':
          result.twitterHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagramHandle':
          result.instagramHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'linkedinHandle':
          result.linkedinHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youtubeHandle':
          result.youtubeHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'spotifyHandle':
          result.spotifyHandle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GUpdatePreferencesData extends GUpdatePreferencesData {
  @override
  final String G__typename;
  @override
  final GUpdatePreferencesData_response? response;

  factory _$GUpdatePreferencesData(
          [void Function(GUpdatePreferencesDataBuilder)? updates]) =>
      (new GUpdatePreferencesDataBuilder()..update(updates))._build();

  _$GUpdatePreferencesData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdatePreferencesData', 'G__typename');
  }

  @override
  GUpdatePreferencesData rebuild(
          void Function(GUpdatePreferencesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePreferencesDataBuilder toBuilder() =>
      new GUpdatePreferencesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePreferencesData &&
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
    return (newBuiltValueToStringHelper(r'GUpdatePreferencesData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GUpdatePreferencesDataBuilder
    implements Builder<GUpdatePreferencesData, GUpdatePreferencesDataBuilder> {
  _$GUpdatePreferencesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdatePreferencesData_responseBuilder? _response;
  GUpdatePreferencesData_responseBuilder get response =>
      _$this._response ??= new GUpdatePreferencesData_responseBuilder();
  set response(GUpdatePreferencesData_responseBuilder? response) =>
      _$this._response = response;

  GUpdatePreferencesDataBuilder() {
    GUpdatePreferencesData._initializeBuilder(this);
  }

  GUpdatePreferencesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePreferencesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePreferencesData;
  }

  @override
  void update(void Function(GUpdatePreferencesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePreferencesData build() => _build();

  _$GUpdatePreferencesData _build() {
    _$GUpdatePreferencesData _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePreferencesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdatePreferencesData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdatePreferencesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePreferencesData_response
    extends GUpdatePreferencesData_response {
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

  factory _$GUpdatePreferencesData_response(
          [void Function(GUpdatePreferencesData_responseBuilder)? updates]) =>
      (new GUpdatePreferencesData_responseBuilder()..update(updates))._build();

  _$GUpdatePreferencesData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdatePreferencesData_response', 'G__typename');
  }

  @override
  GUpdatePreferencesData_response rebuild(
          void Function(GUpdatePreferencesData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePreferencesData_responseBuilder toBuilder() =>
      new GUpdatePreferencesData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePreferencesData_response &&
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
    return (newBuiltValueToStringHelper(r'GUpdatePreferencesData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GUpdatePreferencesData_responseBuilder
    implements
        Builder<GUpdatePreferencesData_response,
            GUpdatePreferencesData_responseBuilder> {
  _$GUpdatePreferencesData_response? _$v;

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

  GUpdatePreferencesData_responseBuilder() {
    GUpdatePreferencesData_response._initializeBuilder(this);
  }

  GUpdatePreferencesData_responseBuilder get _$this {
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
  void replace(GUpdatePreferencesData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePreferencesData_response;
  }

  @override
  void update(void Function(GUpdatePreferencesData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePreferencesData_response build() => _build();

  _$GUpdatePreferencesData_response _build() {
    final _$result = _$v ??
        new _$GUpdatePreferencesData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdatePreferencesData_response', 'G__typename'),
            error: error,
            message: message,
            statusCode: statusCode,
            errorCodeForClient: errorCodeForClient,
            data: data);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserShortDetailsByIdV2Data extends GGetUserShortDetailsByIdV2Data {
  @override
  final String G__typename;
  @override
  final GGetUserShortDetailsByIdV2Data_response? response;

  factory _$GGetUserShortDetailsByIdV2Data(
          [void Function(GGetUserShortDetailsByIdV2DataBuilder)? updates]) =>
      (new GGetUserShortDetailsByIdV2DataBuilder()..update(updates))._build();

  _$GGetUserShortDetailsByIdV2Data._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserShortDetailsByIdV2Data', 'G__typename');
  }

  @override
  GGetUserShortDetailsByIdV2Data rebuild(
          void Function(GGetUserShortDetailsByIdV2DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserShortDetailsByIdV2DataBuilder toBuilder() =>
      new GGetUserShortDetailsByIdV2DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserShortDetailsByIdV2Data &&
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
    return (newBuiltValueToStringHelper(r'GGetUserShortDetailsByIdV2Data')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GGetUserShortDetailsByIdV2DataBuilder
    implements
        Builder<GGetUserShortDetailsByIdV2Data,
            GGetUserShortDetailsByIdV2DataBuilder> {
  _$GGetUserShortDetailsByIdV2Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserShortDetailsByIdV2Data_responseBuilder? _response;
  GGetUserShortDetailsByIdV2Data_responseBuilder get response =>
      _$this._response ??= new GGetUserShortDetailsByIdV2Data_responseBuilder();
  set response(GGetUserShortDetailsByIdV2Data_responseBuilder? response) =>
      _$this._response = response;

  GGetUserShortDetailsByIdV2DataBuilder() {
    GGetUserShortDetailsByIdV2Data._initializeBuilder(this);
  }

  GGetUserShortDetailsByIdV2DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserShortDetailsByIdV2Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserShortDetailsByIdV2Data;
  }

  @override
  void update(void Function(GGetUserShortDetailsByIdV2DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserShortDetailsByIdV2Data build() => _build();

  _$GGetUserShortDetailsByIdV2Data _build() {
    _$GGetUserShortDetailsByIdV2Data _$result;
    try {
      _$result = _$v ??
          new _$GGetUserShortDetailsByIdV2Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetUserShortDetailsByIdV2Data', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetUserShortDetailsByIdV2Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserShortDetailsByIdV2Data_response
    extends GGetUserShortDetailsByIdV2Data_response {
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
  final GGetUserShortDetailsByIdV2Data_response_data? data;

  factory _$GGetUserShortDetailsByIdV2Data_response(
          [void Function(GGetUserShortDetailsByIdV2Data_responseBuilder)?
              updates]) =>
      (new GGetUserShortDetailsByIdV2Data_responseBuilder()..update(updates))
          ._build();

  _$GGetUserShortDetailsByIdV2Data_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserShortDetailsByIdV2Data_response', 'G__typename');
  }

  @override
  GGetUserShortDetailsByIdV2Data_response rebuild(
          void Function(GGetUserShortDetailsByIdV2Data_responseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserShortDetailsByIdV2Data_responseBuilder toBuilder() =>
      new GGetUserShortDetailsByIdV2Data_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserShortDetailsByIdV2Data_response &&
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
            r'GGetUserShortDetailsByIdV2Data_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GGetUserShortDetailsByIdV2Data_responseBuilder
    implements
        Builder<GGetUserShortDetailsByIdV2Data_response,
            GGetUserShortDetailsByIdV2Data_responseBuilder> {
  _$GGetUserShortDetailsByIdV2Data_response? _$v;

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

  GGetUserShortDetailsByIdV2Data_response_dataBuilder? _data;
  GGetUserShortDetailsByIdV2Data_response_dataBuilder get data =>
      _$this._data ??=
          new GGetUserShortDetailsByIdV2Data_response_dataBuilder();
  set data(GGetUserShortDetailsByIdV2Data_response_dataBuilder? data) =>
      _$this._data = data;

  GGetUserShortDetailsByIdV2Data_responseBuilder() {
    GGetUserShortDetailsByIdV2Data_response._initializeBuilder(this);
  }

  GGetUserShortDetailsByIdV2Data_responseBuilder get _$this {
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
  void replace(GGetUserShortDetailsByIdV2Data_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserShortDetailsByIdV2Data_response;
  }

  @override
  void update(
      void Function(GGetUserShortDetailsByIdV2Data_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserShortDetailsByIdV2Data_response build() => _build();

  _$GGetUserShortDetailsByIdV2Data_response _build() {
    _$GGetUserShortDetailsByIdV2Data_response _$result;
    try {
      _$result = _$v ??
          new _$GGetUserShortDetailsByIdV2Data_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetUserShortDetailsByIdV2Data_response', 'G__typename'),
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
            r'GGetUserShortDetailsByIdV2Data_response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserShortDetailsByIdV2Data_response_data
    extends GGetUserShortDetailsByIdV2Data_response_data {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String? profilePictureMediaId;

  factory _$GGetUserShortDetailsByIdV2Data_response_data(
          [void Function(GGetUserShortDetailsByIdV2Data_response_dataBuilder)?
              updates]) =>
      (new GGetUserShortDetailsByIdV2Data_response_dataBuilder()
            ..update(updates))
          ._build();

  _$GGetUserShortDetailsByIdV2Data_response_data._(
      {required this.G__typename,
      required this.userId,
      required this.username,
      this.profilePictureMediaId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetUserShortDetailsByIdV2Data_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetUserShortDetailsByIdV2Data_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GGetUserShortDetailsByIdV2Data_response_data', 'username');
  }

  @override
  GGetUserShortDetailsByIdV2Data_response_data rebuild(
          void Function(GGetUserShortDetailsByIdV2Data_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserShortDetailsByIdV2Data_response_dataBuilder toBuilder() =>
      new GGetUserShortDetailsByIdV2Data_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserShortDetailsByIdV2Data_response_data &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        username == other.username &&
        profilePictureMediaId == other.profilePictureMediaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, profilePictureMediaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetUserShortDetailsByIdV2Data_response_data')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('username', username)
          ..add('profilePictureMediaId', profilePictureMediaId))
        .toString();
  }
}

class GGetUserShortDetailsByIdV2Data_response_dataBuilder
    implements
        Builder<GGetUserShortDetailsByIdV2Data_response_data,
            GGetUserShortDetailsByIdV2Data_response_dataBuilder> {
  _$GGetUserShortDetailsByIdV2Data_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _profilePictureMediaId;
  String? get profilePictureMediaId => _$this._profilePictureMediaId;
  set profilePictureMediaId(String? profilePictureMediaId) =>
      _$this._profilePictureMediaId = profilePictureMediaId;

  GGetUserShortDetailsByIdV2Data_response_dataBuilder() {
    GGetUserShortDetailsByIdV2Data_response_data._initializeBuilder(this);
  }

  GGetUserShortDetailsByIdV2Data_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _username = $v.username;
      _profilePictureMediaId = $v.profilePictureMediaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserShortDetailsByIdV2Data_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserShortDetailsByIdV2Data_response_data;
  }

  @override
  void update(
      void Function(GGetUserShortDetailsByIdV2Data_response_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserShortDetailsByIdV2Data_response_data build() => _build();

  _$GGetUserShortDetailsByIdV2Data_response_data _build() {
    final _$result = _$v ??
        new _$GGetUserShortDetailsByIdV2Data_response_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GGetUserShortDetailsByIdV2Data_response_data', 'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(userId,
                r'GGetUserShortDetailsByIdV2Data_response_data', 'userId'),
            username: BuiltValueNullFieldError.checkNotNull(username,
                r'GGetUserShortDetailsByIdV2Data_response_data', 'username'),
            profilePictureMediaId: profilePictureMediaId);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserDetailsByIdV2Data extends GGetUserDetailsByIdV2Data {
  @override
  final String G__typename;
  @override
  final GGetUserDetailsByIdV2Data_response? response;

  factory _$GGetUserDetailsByIdV2Data(
          [void Function(GGetUserDetailsByIdV2DataBuilder)? updates]) =>
      (new GGetUserDetailsByIdV2DataBuilder()..update(updates))._build();

  _$GGetUserDetailsByIdV2Data._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserDetailsByIdV2Data', 'G__typename');
  }

  @override
  GGetUserDetailsByIdV2Data rebuild(
          void Function(GGetUserDetailsByIdV2DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserDetailsByIdV2DataBuilder toBuilder() =>
      new GGetUserDetailsByIdV2DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserDetailsByIdV2Data &&
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
    return (newBuiltValueToStringHelper(r'GGetUserDetailsByIdV2Data')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GGetUserDetailsByIdV2DataBuilder
    implements
        Builder<GGetUserDetailsByIdV2Data, GGetUserDetailsByIdV2DataBuilder> {
  _$GGetUserDetailsByIdV2Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserDetailsByIdV2Data_responseBuilder? _response;
  GGetUserDetailsByIdV2Data_responseBuilder get response =>
      _$this._response ??= new GGetUserDetailsByIdV2Data_responseBuilder();
  set response(GGetUserDetailsByIdV2Data_responseBuilder? response) =>
      _$this._response = response;

  GGetUserDetailsByIdV2DataBuilder() {
    GGetUserDetailsByIdV2Data._initializeBuilder(this);
  }

  GGetUserDetailsByIdV2DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserDetailsByIdV2Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserDetailsByIdV2Data;
  }

  @override
  void update(void Function(GGetUserDetailsByIdV2DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserDetailsByIdV2Data build() => _build();

  _$GGetUserDetailsByIdV2Data _build() {
    _$GGetUserDetailsByIdV2Data _$result;
    try {
      _$result = _$v ??
          new _$GGetUserDetailsByIdV2Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetUserDetailsByIdV2Data', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetUserDetailsByIdV2Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserDetailsByIdV2Data_response
    extends GGetUserDetailsByIdV2Data_response {
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
  final GGetUserDetailsByIdV2Data_response_data? data;

  factory _$GGetUserDetailsByIdV2Data_response(
          [void Function(GGetUserDetailsByIdV2Data_responseBuilder)?
              updates]) =>
      (new GGetUserDetailsByIdV2Data_responseBuilder()..update(updates))
          ._build();

  _$GGetUserDetailsByIdV2Data_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserDetailsByIdV2Data_response', 'G__typename');
  }

  @override
  GGetUserDetailsByIdV2Data_response rebuild(
          void Function(GGetUserDetailsByIdV2Data_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserDetailsByIdV2Data_responseBuilder toBuilder() =>
      new GGetUserDetailsByIdV2Data_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserDetailsByIdV2Data_response &&
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
    return (newBuiltValueToStringHelper(r'GGetUserDetailsByIdV2Data_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GGetUserDetailsByIdV2Data_responseBuilder
    implements
        Builder<GGetUserDetailsByIdV2Data_response,
            GGetUserDetailsByIdV2Data_responseBuilder> {
  _$GGetUserDetailsByIdV2Data_response? _$v;

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

  GGetUserDetailsByIdV2Data_response_dataBuilder? _data;
  GGetUserDetailsByIdV2Data_response_dataBuilder get data =>
      _$this._data ??= new GGetUserDetailsByIdV2Data_response_dataBuilder();
  set data(GGetUserDetailsByIdV2Data_response_dataBuilder? data) =>
      _$this._data = data;

  GGetUserDetailsByIdV2Data_responseBuilder() {
    GGetUserDetailsByIdV2Data_response._initializeBuilder(this);
  }

  GGetUserDetailsByIdV2Data_responseBuilder get _$this {
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
  void replace(GGetUserDetailsByIdV2Data_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserDetailsByIdV2Data_response;
  }

  @override
  void update(
      void Function(GGetUserDetailsByIdV2Data_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserDetailsByIdV2Data_response build() => _build();

  _$GGetUserDetailsByIdV2Data_response _build() {
    _$GGetUserDetailsByIdV2Data_response _$result;
    try {
      _$result = _$v ??
          new _$GGetUserDetailsByIdV2Data_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetUserDetailsByIdV2Data_response', 'G__typename'),
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
            r'GGetUserDetailsByIdV2Data_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserDetailsByIdV2Data_response_data
    extends GGetUserDetailsByIdV2Data_response_data {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? profilePictureMediaId;
  @override
  final String username;
  @override
  final String gender;
  @override
  final String deletionStatus;
  @override
  final BuiltList<String?>? languages;
  @override
  final String phoneNumber;
  @override
  final String? moderationStatus;
  @override
  final String? verificationStatus;
  @override
  final BuiltList<String?>? publicTags;
  @override
  final String? profileLink;
  @override
  final String inviterUserId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final GGetUserDetailsByIdV2Data_response_data_profile? profile;

  factory _$GGetUserDetailsByIdV2Data_response_data(
          [void Function(GGetUserDetailsByIdV2Data_response_dataBuilder)?
              updates]) =>
      (new GGetUserDetailsByIdV2Data_response_dataBuilder()..update(updates))
          ._build();

  _$GGetUserDetailsByIdV2Data_response_data._(
      {required this.G__typename,
      required this.userId,
      this.firstname,
      this.lastname,
      this.profilePictureMediaId,
      required this.username,
      required this.gender,
      required this.deletionStatus,
      this.languages,
      required this.phoneNumber,
      this.moderationStatus,
      this.verificationStatus,
      this.publicTags,
      this.profileLink,
      required this.inviterUserId,
      this.createdAt,
      this.updatedAt,
      this.profile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserDetailsByIdV2Data_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetUserDetailsByIdV2Data_response_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GGetUserDetailsByIdV2Data_response_data', 'username');
    BuiltValueNullFieldError.checkNotNull(
        gender, r'GGetUserDetailsByIdV2Data_response_data', 'gender');
    BuiltValueNullFieldError.checkNotNull(deletionStatus,
        r'GGetUserDetailsByIdV2Data_response_data', 'deletionStatus');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'GGetUserDetailsByIdV2Data_response_data', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(inviterUserId,
        r'GGetUserDetailsByIdV2Data_response_data', 'inviterUserId');
  }

  @override
  GGetUserDetailsByIdV2Data_response_data rebuild(
          void Function(GGetUserDetailsByIdV2Data_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserDetailsByIdV2Data_response_dataBuilder toBuilder() =>
      new GGetUserDetailsByIdV2Data_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserDetailsByIdV2Data_response_data &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        profilePictureMediaId == other.profilePictureMediaId &&
        username == other.username &&
        gender == other.gender &&
        deletionStatus == other.deletionStatus &&
        languages == other.languages &&
        phoneNumber == other.phoneNumber &&
        moderationStatus == other.moderationStatus &&
        verificationStatus == other.verificationStatus &&
        publicTags == other.publicTags &&
        profileLink == other.profileLink &&
        inviterUserId == other.inviterUserId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, profilePictureMediaId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, deletionStatus.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, moderationStatus.hashCode);
    _$hash = $jc(_$hash, verificationStatus.hashCode);
    _$hash = $jc(_$hash, publicTags.hashCode);
    _$hash = $jc(_$hash, profileLink.hashCode);
    _$hash = $jc(_$hash, inviterUserId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetUserDetailsByIdV2Data_response_data')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('profilePictureMediaId', profilePictureMediaId)
          ..add('username', username)
          ..add('gender', gender)
          ..add('deletionStatus', deletionStatus)
          ..add('languages', languages)
          ..add('phoneNumber', phoneNumber)
          ..add('moderationStatus', moderationStatus)
          ..add('verificationStatus', verificationStatus)
          ..add('publicTags', publicTags)
          ..add('profileLink', profileLink)
          ..add('inviterUserId', inviterUserId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('profile', profile))
        .toString();
  }
}

class GGetUserDetailsByIdV2Data_response_dataBuilder
    implements
        Builder<GGetUserDetailsByIdV2Data_response_data,
            GGetUserDetailsByIdV2Data_response_dataBuilder> {
  _$GGetUserDetailsByIdV2Data_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _profilePictureMediaId;
  String? get profilePictureMediaId => _$this._profilePictureMediaId;
  set profilePictureMediaId(String? profilePictureMediaId) =>
      _$this._profilePictureMediaId = profilePictureMediaId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _deletionStatus;
  String? get deletionStatus => _$this._deletionStatus;
  set deletionStatus(String? deletionStatus) =>
      _$this._deletionStatus = deletionStatus;

  ListBuilder<String?>? _languages;
  ListBuilder<String?> get languages =>
      _$this._languages ??= new ListBuilder<String?>();
  set languages(ListBuilder<String?>? languages) =>
      _$this._languages = languages;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _moderationStatus;
  String? get moderationStatus => _$this._moderationStatus;
  set moderationStatus(String? moderationStatus) =>
      _$this._moderationStatus = moderationStatus;

  String? _verificationStatus;
  String? get verificationStatus => _$this._verificationStatus;
  set verificationStatus(String? verificationStatus) =>
      _$this._verificationStatus = verificationStatus;

  ListBuilder<String?>? _publicTags;
  ListBuilder<String?> get publicTags =>
      _$this._publicTags ??= new ListBuilder<String?>();
  set publicTags(ListBuilder<String?>? publicTags) =>
      _$this._publicTags = publicTags;

  String? _profileLink;
  String? get profileLink => _$this._profileLink;
  set profileLink(String? profileLink) => _$this._profileLink = profileLink;

  String? _inviterUserId;
  String? get inviterUserId => _$this._inviterUserId;
  set inviterUserId(String? inviterUserId) =>
      _$this._inviterUserId = inviterUserId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GGetUserDetailsByIdV2Data_response_data_profileBuilder? _profile;
  GGetUserDetailsByIdV2Data_response_data_profileBuilder get profile =>
      _$this._profile ??=
          new GGetUserDetailsByIdV2Data_response_data_profileBuilder();
  set profile(
          GGetUserDetailsByIdV2Data_response_data_profileBuilder? profile) =>
      _$this._profile = profile;

  GGetUserDetailsByIdV2Data_response_dataBuilder() {
    GGetUserDetailsByIdV2Data_response_data._initializeBuilder(this);
  }

  GGetUserDetailsByIdV2Data_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _profilePictureMediaId = $v.profilePictureMediaId;
      _username = $v.username;
      _gender = $v.gender;
      _deletionStatus = $v.deletionStatus;
      _languages = $v.languages?.toBuilder();
      _phoneNumber = $v.phoneNumber;
      _moderationStatus = $v.moderationStatus;
      _verificationStatus = $v.verificationStatus;
      _publicTags = $v.publicTags?.toBuilder();
      _profileLink = $v.profileLink;
      _inviterUserId = $v.inviterUserId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _profile = $v.profile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserDetailsByIdV2Data_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserDetailsByIdV2Data_response_data;
  }

  @override
  void update(
      void Function(GGetUserDetailsByIdV2Data_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserDetailsByIdV2Data_response_data build() => _build();

  _$GGetUserDetailsByIdV2Data_response_data _build() {
    _$GGetUserDetailsByIdV2Data_response_data _$result;
    try {
      _$result = _$v ??
          new _$GGetUserDetailsByIdV2Data_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetUserDetailsByIdV2Data_response_data', 'G__typename'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GGetUserDetailsByIdV2Data_response_data', 'userId'),
              firstname: firstname,
              lastname: lastname,
              profilePictureMediaId: profilePictureMediaId,
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'GGetUserDetailsByIdV2Data_response_data', 'username'),
              gender: BuiltValueNullFieldError.checkNotNull(
                  gender, r'GGetUserDetailsByIdV2Data_response_data', 'gender'),
              deletionStatus: BuiltValueNullFieldError.checkNotNull(
                  deletionStatus, r'GGetUserDetailsByIdV2Data_response_data', 'deletionStatus'),
              languages: _languages?.build(),
              phoneNumber: BuiltValueNullFieldError.checkNotNull(
                  phoneNumber, r'GGetUserDetailsByIdV2Data_response_data', 'phoneNumber'),
              moderationStatus: moderationStatus,
              verificationStatus: verificationStatus,
              publicTags: _publicTags?.build(),
              profileLink: profileLink,
              inviterUserId: BuiltValueNullFieldError.checkNotNull(
                  inviterUserId, r'GGetUserDetailsByIdV2Data_response_data', 'inviterUserId'),
              createdAt: createdAt,
              updatedAt: updatedAt,
              profile: _profile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'publicTags';
        _publicTags?.build();

        _$failedField = 'profile';
        _profile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetUserDetailsByIdV2Data_response_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserDetailsByIdV2Data_response_data_profile
    extends GGetUserDetailsByIdV2Data_response_data_profile {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String? bio;
  @override
  final String? twitterHandle;
  @override
  final String? instagramHandle;
  @override
  final String? linkedinHandle;
  @override
  final String? youtubeHandle;
  @override
  final String? spotifyHandle;
  @override
  final String? website;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GGetUserDetailsByIdV2Data_response_data_profile(
          [void Function(
                  GGetUserDetailsByIdV2Data_response_data_profileBuilder)?
              updates]) =>
      (new GGetUserDetailsByIdV2Data_response_data_profileBuilder()
            ..update(updates))
          ._build();

  _$GGetUserDetailsByIdV2Data_response_data_profile._(
      {required this.G__typename,
      required this.userId,
      this.bio,
      this.twitterHandle,
      this.instagramHandle,
      this.linkedinHandle,
      this.youtubeHandle,
      this.spotifyHandle,
      this.website,
      this.city,
      this.country,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetUserDetailsByIdV2Data_response_data_profile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetUserDetailsByIdV2Data_response_data_profile', 'userId');
    BuiltValueNullFieldError.checkNotNull(createdAt,
        r'GGetUserDetailsByIdV2Data_response_data_profile', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(updatedAt,
        r'GGetUserDetailsByIdV2Data_response_data_profile', 'updatedAt');
  }

  @override
  GGetUserDetailsByIdV2Data_response_data_profile rebuild(
          void Function(GGetUserDetailsByIdV2Data_response_data_profileBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserDetailsByIdV2Data_response_data_profileBuilder toBuilder() =>
      new GGetUserDetailsByIdV2Data_response_data_profileBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserDetailsByIdV2Data_response_data_profile &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        bio == other.bio &&
        twitterHandle == other.twitterHandle &&
        instagramHandle == other.instagramHandle &&
        linkedinHandle == other.linkedinHandle &&
        youtubeHandle == other.youtubeHandle &&
        spotifyHandle == other.spotifyHandle &&
        website == other.website &&
        city == other.city &&
        country == other.country &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, twitterHandle.hashCode);
    _$hash = $jc(_$hash, instagramHandle.hashCode);
    _$hash = $jc(_$hash, linkedinHandle.hashCode);
    _$hash = $jc(_$hash, youtubeHandle.hashCode);
    _$hash = $jc(_$hash, spotifyHandle.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetUserDetailsByIdV2Data_response_data_profile')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('bio', bio)
          ..add('twitterHandle', twitterHandle)
          ..add('instagramHandle', instagramHandle)
          ..add('linkedinHandle', linkedinHandle)
          ..add('youtubeHandle', youtubeHandle)
          ..add('spotifyHandle', spotifyHandle)
          ..add('website', website)
          ..add('city', city)
          ..add('country', country)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GGetUserDetailsByIdV2Data_response_data_profileBuilder
    implements
        Builder<GGetUserDetailsByIdV2Data_response_data_profile,
            GGetUserDetailsByIdV2Data_response_data_profileBuilder> {
  _$GGetUserDetailsByIdV2Data_response_data_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _twitterHandle;
  String? get twitterHandle => _$this._twitterHandle;
  set twitterHandle(String? twitterHandle) =>
      _$this._twitterHandle = twitterHandle;

  String? _instagramHandle;
  String? get instagramHandle => _$this._instagramHandle;
  set instagramHandle(String? instagramHandle) =>
      _$this._instagramHandle = instagramHandle;

  String? _linkedinHandle;
  String? get linkedinHandle => _$this._linkedinHandle;
  set linkedinHandle(String? linkedinHandle) =>
      _$this._linkedinHandle = linkedinHandle;

  String? _youtubeHandle;
  String? get youtubeHandle => _$this._youtubeHandle;
  set youtubeHandle(String? youtubeHandle) =>
      _$this._youtubeHandle = youtubeHandle;

  String? _spotifyHandle;
  String? get spotifyHandle => _$this._spotifyHandle;
  set spotifyHandle(String? spotifyHandle) =>
      _$this._spotifyHandle = spotifyHandle;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GGetUserDetailsByIdV2Data_response_data_profileBuilder() {
    GGetUserDetailsByIdV2Data_response_data_profile._initializeBuilder(this);
  }

  GGetUserDetailsByIdV2Data_response_data_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _bio = $v.bio;
      _twitterHandle = $v.twitterHandle;
      _instagramHandle = $v.instagramHandle;
      _linkedinHandle = $v.linkedinHandle;
      _youtubeHandle = $v.youtubeHandle;
      _spotifyHandle = $v.spotifyHandle;
      _website = $v.website;
      _city = $v.city;
      _country = $v.country;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserDetailsByIdV2Data_response_data_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserDetailsByIdV2Data_response_data_profile;
  }

  @override
  void update(
      void Function(GGetUserDetailsByIdV2Data_response_data_profileBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserDetailsByIdV2Data_response_data_profile build() => _build();

  _$GGetUserDetailsByIdV2Data_response_data_profile _build() {
    final _$result = _$v ??
        new _$GGetUserDetailsByIdV2Data_response_data_profile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GGetUserDetailsByIdV2Data_response_data_profile',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(userId,
                r'GGetUserDetailsByIdV2Data_response_data_profile', 'userId'),
            bio: bio,
            twitterHandle: twitterHandle,
            instagramHandle: instagramHandle,
            linkedinHandle: linkedinHandle,
            youtubeHandle: youtubeHandle,
            spotifyHandle: spotifyHandle,
            website: website,
            city: city,
            country: country,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt,
                r'GGetUserDetailsByIdV2Data_response_data_profile',
                'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt,
                r'GGetUserDetailsByIdV2Data_response_data_profile',
                'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserProfileData extends GUpdateUserProfileData {
  @override
  final String G__typename;
  @override
  final GUpdateUserProfileData_response? response;

  factory _$GUpdateUserProfileData(
          [void Function(GUpdateUserProfileDataBuilder)? updates]) =>
      (new GUpdateUserProfileDataBuilder()..update(updates))._build();

  _$GUpdateUserProfileData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserProfileData', 'G__typename');
  }

  @override
  GUpdateUserProfileData rebuild(
          void Function(GUpdateUserProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserProfileDataBuilder toBuilder() =>
      new GUpdateUserProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserProfileData &&
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
    return (newBuiltValueToStringHelper(r'GUpdateUserProfileData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GUpdateUserProfileDataBuilder
    implements Builder<GUpdateUserProfileData, GUpdateUserProfileDataBuilder> {
  _$GUpdateUserProfileData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateUserProfileData_responseBuilder? _response;
  GUpdateUserProfileData_responseBuilder get response =>
      _$this._response ??= new GUpdateUserProfileData_responseBuilder();
  set response(GUpdateUserProfileData_responseBuilder? response) =>
      _$this._response = response;

  GUpdateUserProfileDataBuilder() {
    GUpdateUserProfileData._initializeBuilder(this);
  }

  GUpdateUserProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserProfileData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserProfileData;
  }

  @override
  void update(void Function(GUpdateUserProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserProfileData build() => _build();

  _$GUpdateUserProfileData _build() {
    _$GUpdateUserProfileData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserProfileData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateUserProfileData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserProfileData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserProfileData_response
    extends GUpdateUserProfileData_response {
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

  factory _$GUpdateUserProfileData_response(
          [void Function(GUpdateUserProfileData_responseBuilder)? updates]) =>
      (new GUpdateUserProfileData_responseBuilder()..update(updates))._build();

  _$GUpdateUserProfileData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserProfileData_response', 'G__typename');
  }

  @override
  GUpdateUserProfileData_response rebuild(
          void Function(GUpdateUserProfileData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserProfileData_responseBuilder toBuilder() =>
      new GUpdateUserProfileData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserProfileData_response &&
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
    return (newBuiltValueToStringHelper(r'GUpdateUserProfileData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GUpdateUserProfileData_responseBuilder
    implements
        Builder<GUpdateUserProfileData_response,
            GUpdateUserProfileData_responseBuilder> {
  _$GUpdateUserProfileData_response? _$v;

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

  GUpdateUserProfileData_responseBuilder() {
    GUpdateUserProfileData_response._initializeBuilder(this);
  }

  GUpdateUserProfileData_responseBuilder get _$this {
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
  void replace(GUpdateUserProfileData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserProfileData_response;
  }

  @override
  void update(void Function(GUpdateUserProfileData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserProfileData_response build() => _build();

  _$GUpdateUserProfileData_response _build() {
    final _$result = _$v ??
        new _$GUpdateUserProfileData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdateUserProfileData_response', 'G__typename'),
            error: error,
            message: message,
            statusCode: statusCode,
            errorCodeForClient: errorCodeForClient,
            data: data);
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserLanguageListData extends GGetUserLanguageListData {
  @override
  final String G__typename;
  @override
  final GGetUserLanguageListData_response? response;

  factory _$GGetUserLanguageListData(
          [void Function(GGetUserLanguageListDataBuilder)? updates]) =>
      (new GGetUserLanguageListDataBuilder()..update(updates))._build();

  _$GGetUserLanguageListData._({required this.G__typename, this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserLanguageListData', 'G__typename');
  }

  @override
  GGetUserLanguageListData rebuild(
          void Function(GGetUserLanguageListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserLanguageListDataBuilder toBuilder() =>
      new GGetUserLanguageListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserLanguageListData &&
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
    return (newBuiltValueToStringHelper(r'GGetUserLanguageListData')
          ..add('G__typename', G__typename)
          ..add('response', response))
        .toString();
  }
}

class GGetUserLanguageListDataBuilder
    implements
        Builder<GGetUserLanguageListData, GGetUserLanguageListDataBuilder> {
  _$GGetUserLanguageListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserLanguageListData_responseBuilder? _response;
  GGetUserLanguageListData_responseBuilder get response =>
      _$this._response ??= new GGetUserLanguageListData_responseBuilder();
  set response(GGetUserLanguageListData_responseBuilder? response) =>
      _$this._response = response;

  GGetUserLanguageListDataBuilder() {
    GGetUserLanguageListData._initializeBuilder(this);
  }

  GGetUserLanguageListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserLanguageListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserLanguageListData;
  }

  @override
  void update(void Function(GGetUserLanguageListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserLanguageListData build() => _build();

  _$GGetUserLanguageListData _build() {
    _$GGetUserLanguageListData _$result;
    try {
      _$result = _$v ??
          new _$GGetUserLanguageListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetUserLanguageListData', 'G__typename'),
              response: _response?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetUserLanguageListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserLanguageListData_response
    extends GGetUserLanguageListData_response {
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
  final GGetUserLanguageListData_response_data? data;

  factory _$GGetUserLanguageListData_response(
          [void Function(GGetUserLanguageListData_responseBuilder)? updates]) =>
      (new GGetUserLanguageListData_responseBuilder()..update(updates))
          ._build();

  _$GGetUserLanguageListData_response._(
      {required this.G__typename,
      this.error,
      this.message,
      this.statusCode,
      this.errorCodeForClient,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserLanguageListData_response', 'G__typename');
  }

  @override
  GGetUserLanguageListData_response rebuild(
          void Function(GGetUserLanguageListData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserLanguageListData_responseBuilder toBuilder() =>
      new GGetUserLanguageListData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserLanguageListData_response &&
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
    return (newBuiltValueToStringHelper(r'GGetUserLanguageListData_response')
          ..add('G__typename', G__typename)
          ..add('error', error)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('errorCodeForClient', errorCodeForClient)
          ..add('data', data))
        .toString();
  }
}

class GGetUserLanguageListData_responseBuilder
    implements
        Builder<GGetUserLanguageListData_response,
            GGetUserLanguageListData_responseBuilder> {
  _$GGetUserLanguageListData_response? _$v;

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

  GGetUserLanguageListData_response_dataBuilder? _data;
  GGetUserLanguageListData_response_dataBuilder get data =>
      _$this._data ??= new GGetUserLanguageListData_response_dataBuilder();
  set data(GGetUserLanguageListData_response_dataBuilder? data) =>
      _$this._data = data;

  GGetUserLanguageListData_responseBuilder() {
    GGetUserLanguageListData_response._initializeBuilder(this);
  }

  GGetUserLanguageListData_responseBuilder get _$this {
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
  void replace(GGetUserLanguageListData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserLanguageListData_response;
  }

  @override
  void update(
      void Function(GGetUserLanguageListData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserLanguageListData_response build() => _build();

  _$GGetUserLanguageListData_response _build() {
    _$GGetUserLanguageListData_response _$result;
    try {
      _$result = _$v ??
          new _$GGetUserLanguageListData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetUserLanguageListData_response', 'G__typename'),
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
            r'GGetUserLanguageListData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserLanguageListData_response_data
    extends GGetUserLanguageListData_response_data {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final BuiltList<String?>? languages;

  factory _$GGetUserLanguageListData_response_data(
          [void Function(GGetUserLanguageListData_response_dataBuilder)?
              updates]) =>
      (new GGetUserLanguageListData_response_dataBuilder()..update(updates))
          ._build();

  _$GGetUserLanguageListData_response_data._(
      {required this.G__typename, required this.userId, this.languages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserLanguageListData_response_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GGetUserLanguageListData_response_data', 'userId');
  }

  @override
  GGetUserLanguageListData_response_data rebuild(
          void Function(GGetUserLanguageListData_response_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserLanguageListData_response_dataBuilder toBuilder() =>
      new GGetUserLanguageListData_response_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserLanguageListData_response_data &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        languages == other.languages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetUserLanguageListData_response_data')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('languages', languages))
        .toString();
  }
}

class GGetUserLanguageListData_response_dataBuilder
    implements
        Builder<GGetUserLanguageListData_response_data,
            GGetUserLanguageListData_response_dataBuilder> {
  _$GGetUserLanguageListData_response_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<String?>? _languages;
  ListBuilder<String?> get languages =>
      _$this._languages ??= new ListBuilder<String?>();
  set languages(ListBuilder<String?>? languages) =>
      _$this._languages = languages;

  GGetUserLanguageListData_response_dataBuilder() {
    GGetUserLanguageListData_response_data._initializeBuilder(this);
  }

  GGetUserLanguageListData_response_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _languages = $v.languages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserLanguageListData_response_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserLanguageListData_response_data;
  }

  @override
  void update(
      void Function(GGetUserLanguageListData_response_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserLanguageListData_response_data build() => _build();

  _$GGetUserLanguageListData_response_data _build() {
    _$GGetUserLanguageListData_response_data _$result;
    try {
      _$result = _$v ??
          new _$GGetUserLanguageListData_response_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetUserLanguageListData_response_data', 'G__typename'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GGetUserLanguageListData_response_data', 'userId'),
              languages: _languages?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetUserLanguageListData_response_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserShortDetailsData extends GUserShortDetailsData {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String? profilePictureMediaId;

  factory _$GUserShortDetailsData(
          [void Function(GUserShortDetailsDataBuilder)? updates]) =>
      (new GUserShortDetailsDataBuilder()..update(updates))._build();

  _$GUserShortDetailsData._(
      {required this.G__typename,
      required this.userId,
      required this.username,
      this.profilePictureMediaId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserShortDetailsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GUserShortDetailsData', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GUserShortDetailsData', 'username');
  }

  @override
  GUserShortDetailsData rebuild(
          void Function(GUserShortDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserShortDetailsDataBuilder toBuilder() =>
      new GUserShortDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserShortDetailsData &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        username == other.username &&
        profilePictureMediaId == other.profilePictureMediaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, profilePictureMediaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserShortDetailsData')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('username', username)
          ..add('profilePictureMediaId', profilePictureMediaId))
        .toString();
  }
}

class GUserShortDetailsDataBuilder
    implements Builder<GUserShortDetailsData, GUserShortDetailsDataBuilder> {
  _$GUserShortDetailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _profilePictureMediaId;
  String? get profilePictureMediaId => _$this._profilePictureMediaId;
  set profilePictureMediaId(String? profilePictureMediaId) =>
      _$this._profilePictureMediaId = profilePictureMediaId;

  GUserShortDetailsDataBuilder() {
    GUserShortDetailsData._initializeBuilder(this);
  }

  GUserShortDetailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _username = $v.username;
      _profilePictureMediaId = $v.profilePictureMediaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserShortDetailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserShortDetailsData;
  }

  @override
  void update(void Function(GUserShortDetailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserShortDetailsData build() => _build();

  _$GUserShortDetailsData _build() {
    final _$result = _$v ??
        new _$GUserShortDetailsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserShortDetailsData', 'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GUserShortDetailsData', 'userId'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GUserShortDetailsData', 'username'),
            profilePictureMediaId: profilePictureMediaId);
    replace(_$result);
    return _$result;
  }
}

class _$GUserDetailsData extends GUserDetailsData {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? profilePictureMediaId;
  @override
  final String username;
  @override
  final String gender;
  @override
  final String deletionStatus;
  @override
  final BuiltList<String?>? languages;
  @override
  final String phoneNumber;
  @override
  final String? moderationStatus;
  @override
  final String? verificationStatus;
  @override
  final BuiltList<String?>? publicTags;
  @override
  final String? profileLink;
  @override
  final String inviterUserId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final GUserDetailsData_profile? profile;

  factory _$GUserDetailsData(
          [void Function(GUserDetailsDataBuilder)? updates]) =>
      (new GUserDetailsDataBuilder()..update(updates))._build();

  _$GUserDetailsData._(
      {required this.G__typename,
      required this.userId,
      this.firstname,
      this.lastname,
      this.profilePictureMediaId,
      required this.username,
      required this.gender,
      required this.deletionStatus,
      this.languages,
      required this.phoneNumber,
      this.moderationStatus,
      this.verificationStatus,
      this.publicTags,
      this.profileLink,
      required this.inviterUserId,
      this.createdAt,
      this.updatedAt,
      this.profile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserDetailsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GUserDetailsData', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GUserDetailsData', 'username');
    BuiltValueNullFieldError.checkNotNull(
        gender, r'GUserDetailsData', 'gender');
    BuiltValueNullFieldError.checkNotNull(
        deletionStatus, r'GUserDetailsData', 'deletionStatus');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'GUserDetailsData', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(
        inviterUserId, r'GUserDetailsData', 'inviterUserId');
  }

  @override
  GUserDetailsData rebuild(void Function(GUserDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDetailsDataBuilder toBuilder() =>
      new GUserDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserDetailsData &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        profilePictureMediaId == other.profilePictureMediaId &&
        username == other.username &&
        gender == other.gender &&
        deletionStatus == other.deletionStatus &&
        languages == other.languages &&
        phoneNumber == other.phoneNumber &&
        moderationStatus == other.moderationStatus &&
        verificationStatus == other.verificationStatus &&
        publicTags == other.publicTags &&
        profileLink == other.profileLink &&
        inviterUserId == other.inviterUserId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, profilePictureMediaId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, deletionStatus.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, moderationStatus.hashCode);
    _$hash = $jc(_$hash, verificationStatus.hashCode);
    _$hash = $jc(_$hash, publicTags.hashCode);
    _$hash = $jc(_$hash, profileLink.hashCode);
    _$hash = $jc(_$hash, inviterUserId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserDetailsData')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('profilePictureMediaId', profilePictureMediaId)
          ..add('username', username)
          ..add('gender', gender)
          ..add('deletionStatus', deletionStatus)
          ..add('languages', languages)
          ..add('phoneNumber', phoneNumber)
          ..add('moderationStatus', moderationStatus)
          ..add('verificationStatus', verificationStatus)
          ..add('publicTags', publicTags)
          ..add('profileLink', profileLink)
          ..add('inviterUserId', inviterUserId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('profile', profile))
        .toString();
  }
}

class GUserDetailsDataBuilder
    implements Builder<GUserDetailsData, GUserDetailsDataBuilder> {
  _$GUserDetailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _profilePictureMediaId;
  String? get profilePictureMediaId => _$this._profilePictureMediaId;
  set profilePictureMediaId(String? profilePictureMediaId) =>
      _$this._profilePictureMediaId = profilePictureMediaId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _deletionStatus;
  String? get deletionStatus => _$this._deletionStatus;
  set deletionStatus(String? deletionStatus) =>
      _$this._deletionStatus = deletionStatus;

  ListBuilder<String?>? _languages;
  ListBuilder<String?> get languages =>
      _$this._languages ??= new ListBuilder<String?>();
  set languages(ListBuilder<String?>? languages) =>
      _$this._languages = languages;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _moderationStatus;
  String? get moderationStatus => _$this._moderationStatus;
  set moderationStatus(String? moderationStatus) =>
      _$this._moderationStatus = moderationStatus;

  String? _verificationStatus;
  String? get verificationStatus => _$this._verificationStatus;
  set verificationStatus(String? verificationStatus) =>
      _$this._verificationStatus = verificationStatus;

  ListBuilder<String?>? _publicTags;
  ListBuilder<String?> get publicTags =>
      _$this._publicTags ??= new ListBuilder<String?>();
  set publicTags(ListBuilder<String?>? publicTags) =>
      _$this._publicTags = publicTags;

  String? _profileLink;
  String? get profileLink => _$this._profileLink;
  set profileLink(String? profileLink) => _$this._profileLink = profileLink;

  String? _inviterUserId;
  String? get inviterUserId => _$this._inviterUserId;
  set inviterUserId(String? inviterUserId) =>
      _$this._inviterUserId = inviterUserId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GUserDetailsData_profileBuilder? _profile;
  GUserDetailsData_profileBuilder get profile =>
      _$this._profile ??= new GUserDetailsData_profileBuilder();
  set profile(GUserDetailsData_profileBuilder? profile) =>
      _$this._profile = profile;

  GUserDetailsDataBuilder() {
    GUserDetailsData._initializeBuilder(this);
  }

  GUserDetailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _profilePictureMediaId = $v.profilePictureMediaId;
      _username = $v.username;
      _gender = $v.gender;
      _deletionStatus = $v.deletionStatus;
      _languages = $v.languages?.toBuilder();
      _phoneNumber = $v.phoneNumber;
      _moderationStatus = $v.moderationStatus;
      _verificationStatus = $v.verificationStatus;
      _publicTags = $v.publicTags?.toBuilder();
      _profileLink = $v.profileLink;
      _inviterUserId = $v.inviterUserId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _profile = $v.profile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserDetailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserDetailsData;
  }

  @override
  void update(void Function(GUserDetailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserDetailsData build() => _build();

  _$GUserDetailsData _build() {
    _$GUserDetailsData _$result;
    try {
      _$result = _$v ??
          new _$GUserDetailsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserDetailsData', 'G__typename'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GUserDetailsData', 'userId'),
              firstname: firstname,
              lastname: lastname,
              profilePictureMediaId: profilePictureMediaId,
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'GUserDetailsData', 'username'),
              gender: BuiltValueNullFieldError.checkNotNull(
                  gender, r'GUserDetailsData', 'gender'),
              deletionStatus: BuiltValueNullFieldError.checkNotNull(
                  deletionStatus, r'GUserDetailsData', 'deletionStatus'),
              languages: _languages?.build(),
              phoneNumber: BuiltValueNullFieldError.checkNotNull(
                  phoneNumber, r'GUserDetailsData', 'phoneNumber'),
              moderationStatus: moderationStatus,
              verificationStatus: verificationStatus,
              publicTags: _publicTags?.build(),
              profileLink: profileLink,
              inviterUserId: BuiltValueNullFieldError.checkNotNull(
                  inviterUserId, r'GUserDetailsData', 'inviterUserId'),
              createdAt: createdAt,
              updatedAt: updatedAt,
              profile: _profile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'publicTags';
        _publicTags?.build();

        _$failedField = 'profile';
        _profile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserDetailsData_profile extends GUserDetailsData_profile {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final String? bio;
  @override
  final String? twitterHandle;
  @override
  final String? instagramHandle;
  @override
  final String? linkedinHandle;
  @override
  final String? youtubeHandle;
  @override
  final String? spotifyHandle;
  @override
  final String? website;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GUserDetailsData_profile(
          [void Function(GUserDetailsData_profileBuilder)? updates]) =>
      (new GUserDetailsData_profileBuilder()..update(updates))._build();

  _$GUserDetailsData_profile._(
      {required this.G__typename,
      required this.userId,
      this.bio,
      this.twitterHandle,
      this.instagramHandle,
      this.linkedinHandle,
      this.youtubeHandle,
      this.spotifyHandle,
      this.website,
      this.city,
      this.country,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserDetailsData_profile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GUserDetailsData_profile', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GUserDetailsData_profile', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GUserDetailsData_profile', 'updatedAt');
  }

  @override
  GUserDetailsData_profile rebuild(
          void Function(GUserDetailsData_profileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDetailsData_profileBuilder toBuilder() =>
      new GUserDetailsData_profileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserDetailsData_profile &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        bio == other.bio &&
        twitterHandle == other.twitterHandle &&
        instagramHandle == other.instagramHandle &&
        linkedinHandle == other.linkedinHandle &&
        youtubeHandle == other.youtubeHandle &&
        spotifyHandle == other.spotifyHandle &&
        website == other.website &&
        city == other.city &&
        country == other.country &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, twitterHandle.hashCode);
    _$hash = $jc(_$hash, instagramHandle.hashCode);
    _$hash = $jc(_$hash, linkedinHandle.hashCode);
    _$hash = $jc(_$hash, youtubeHandle.hashCode);
    _$hash = $jc(_$hash, spotifyHandle.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserDetailsData_profile')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('bio', bio)
          ..add('twitterHandle', twitterHandle)
          ..add('instagramHandle', instagramHandle)
          ..add('linkedinHandle', linkedinHandle)
          ..add('youtubeHandle', youtubeHandle)
          ..add('spotifyHandle', spotifyHandle)
          ..add('website', website)
          ..add('city', city)
          ..add('country', country)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GUserDetailsData_profileBuilder
    implements
        Builder<GUserDetailsData_profile, GUserDetailsData_profileBuilder> {
  _$GUserDetailsData_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _twitterHandle;
  String? get twitterHandle => _$this._twitterHandle;
  set twitterHandle(String? twitterHandle) =>
      _$this._twitterHandle = twitterHandle;

  String? _instagramHandle;
  String? get instagramHandle => _$this._instagramHandle;
  set instagramHandle(String? instagramHandle) =>
      _$this._instagramHandle = instagramHandle;

  String? _linkedinHandle;
  String? get linkedinHandle => _$this._linkedinHandle;
  set linkedinHandle(String? linkedinHandle) =>
      _$this._linkedinHandle = linkedinHandle;

  String? _youtubeHandle;
  String? get youtubeHandle => _$this._youtubeHandle;
  set youtubeHandle(String? youtubeHandle) =>
      _$this._youtubeHandle = youtubeHandle;

  String? _spotifyHandle;
  String? get spotifyHandle => _$this._spotifyHandle;
  set spotifyHandle(String? spotifyHandle) =>
      _$this._spotifyHandle = spotifyHandle;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GUserDetailsData_profileBuilder() {
    GUserDetailsData_profile._initializeBuilder(this);
  }

  GUserDetailsData_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _bio = $v.bio;
      _twitterHandle = $v.twitterHandle;
      _instagramHandle = $v.instagramHandle;
      _linkedinHandle = $v.linkedinHandle;
      _youtubeHandle = $v.youtubeHandle;
      _spotifyHandle = $v.spotifyHandle;
      _website = $v.website;
      _city = $v.city;
      _country = $v.country;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserDetailsData_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserDetailsData_profile;
  }

  @override
  void update(void Function(GUserDetailsData_profileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserDetailsData_profile build() => _build();

  _$GUserDetailsData_profile _build() {
    final _$result = _$v ??
        new _$GUserDetailsData_profile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserDetailsData_profile', 'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GUserDetailsData_profile', 'userId'),
            bio: bio,
            twitterHandle: twitterHandle,
            instagramHandle: instagramHandle,
            linkedinHandle: linkedinHandle,
            youtubeHandle: youtubeHandle,
            spotifyHandle: spotifyHandle,
            website: website,
            city: city,
            country: country,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'GUserDetailsData_profile', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'GUserDetailsData_profile', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
