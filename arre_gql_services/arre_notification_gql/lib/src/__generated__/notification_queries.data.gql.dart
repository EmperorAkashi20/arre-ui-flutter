// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_notification_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_queries.data.gql.g.dart';

abstract class GNotificationData
    implements Built<GNotificationData, GNotificationDataBuilder> {
  GNotificationData._();

  factory GNotificationData([Function(GNotificationDataBuilder b) updates]) =
      _$GNotificationData;

  static void _initializeBuilder(GNotificationDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNotificationData_response? get response;
  static Serializer<GNotificationData> get serializer =>
      _$gNotificationDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationData.serializer,
        json,
      );
}

abstract class GNotificationData_response
    implements
        Built<GNotificationData_response, GNotificationData_responseBuilder> {
  GNotificationData_response._();

  factory GNotificationData_response(
          [Function(GNotificationData_responseBuilder b) updates]) =
      _$GNotificationData_response;

  static void _initializeBuilder(GNotificationData_responseBuilder b) =>
      b..G__typename = 'NotificationResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  BuiltList<GNotificationData_response_data?>? get data;
  static Serializer<GNotificationData_response> get serializer =>
      _$gNotificationDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationData_response? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationData_response.serializer,
        json,
      );
}

abstract class GNotificationData_response_data
    implements
        Built<GNotificationData_response_data,
            GNotificationData_response_dataBuilder> {
  GNotificationData_response_data._();

  factory GNotificationData_response_data(
          [Function(GNotificationData_response_dataBuilder b) updates]) =
      _$GNotificationData_response_data;

  static void _initializeBuilder(GNotificationData_response_dataBuilder b) =>
      b..G__typename = 'Notification';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get notificationId;
  String? get actionType;
  String? get senderId;
  String? get receiverId;
  String? get entityType;
  String? get entityId;
  String? get notificationTitle;
  String? get notificationBody;
  String? get ctaText;
  String? get mediaId;
  String? get redirectUrl;
  String? get notificationPersistenceType;
  String? get createdOn;
  bool? get seenByUser;
  static Serializer<GNotificationData_response_data> get serializer =>
      _$gNotificationDataResponseDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationData_response_data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationData_response_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationData_response_data.serializer,
        json,
      );
}

abstract class GMarkNotificationAsSeenData
    implements
        Built<GMarkNotificationAsSeenData, GMarkNotificationAsSeenDataBuilder> {
  GMarkNotificationAsSeenData._();

  factory GMarkNotificationAsSeenData(
          [Function(GMarkNotificationAsSeenDataBuilder b) updates]) =
      _$GMarkNotificationAsSeenData;

  static void _initializeBuilder(GMarkNotificationAsSeenDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMarkNotificationAsSeenData_response? get response;
  static Serializer<GMarkNotificationAsSeenData> get serializer =>
      _$gMarkNotificationAsSeenDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMarkNotificationAsSeenData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkNotificationAsSeenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMarkNotificationAsSeenData.serializer,
        json,
      );
}

abstract class GMarkNotificationAsSeenData_response
    implements
        Built<GMarkNotificationAsSeenData_response,
            GMarkNotificationAsSeenData_responseBuilder> {
  GMarkNotificationAsSeenData_response._();

  factory GMarkNotificationAsSeenData_response(
          [Function(GMarkNotificationAsSeenData_responseBuilder b) updates]) =
      _$GMarkNotificationAsSeenData_response;

  static void _initializeBuilder(
          GMarkNotificationAsSeenData_responseBuilder b) =>
      b..G__typename = 'genericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  String? get data;
  static Serializer<GMarkNotificationAsSeenData_response> get serializer =>
      _$gMarkNotificationAsSeenDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMarkNotificationAsSeenData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkNotificationAsSeenData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMarkNotificationAsSeenData_response.serializer,
        json,
      );
}

abstract class GSaveUserDeviceInformationData
    implements
        Built<GSaveUserDeviceInformationData,
            GSaveUserDeviceInformationDataBuilder> {
  GSaveUserDeviceInformationData._();

  factory GSaveUserDeviceInformationData(
          [Function(GSaveUserDeviceInformationDataBuilder b) updates]) =
      _$GSaveUserDeviceInformationData;

  static void _initializeBuilder(GSaveUserDeviceInformationDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSaveUserDeviceInformationData_response? get response;
  static Serializer<GSaveUserDeviceInformationData> get serializer =>
      _$gSaveUserDeviceInformationDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveUserDeviceInformationData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSaveUserDeviceInformationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveUserDeviceInformationData.serializer,
        json,
      );
}

abstract class GSaveUserDeviceInformationData_response
    implements
        Built<GSaveUserDeviceInformationData_response,
            GSaveUserDeviceInformationData_responseBuilder> {
  GSaveUserDeviceInformationData_response._();

  factory GSaveUserDeviceInformationData_response(
      [Function(GSaveUserDeviceInformationData_responseBuilder b)
          updates]) = _$GSaveUserDeviceInformationData_response;

  static void _initializeBuilder(
          GSaveUserDeviceInformationData_responseBuilder b) =>
      b..G__typename = 'genericResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get error;
  String? get message;
  int? get statusCode;
  String? get errorCodeForClient;
  String? get data;
  static Serializer<GSaveUserDeviceInformationData_response> get serializer =>
      _$gSaveUserDeviceInformationDataResponseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveUserDeviceInformationData_response.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSaveUserDeviceInformationData_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveUserDeviceInformationData_response.serializer,
        json,
      );
}
