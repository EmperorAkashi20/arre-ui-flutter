// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_notification_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_schema.schema.gql.g.dart';

abstract class GinputDeviceInfo
    implements Built<GinputDeviceInfo, GinputDeviceInfoBuilder> {
  GinputDeviceInfo._();

  factory GinputDeviceInfo([Function(GinputDeviceInfoBuilder b) updates]) =
      _$GinputDeviceInfo;

  String? get fcmToken;
  String? get operatingSystem;
  String? get operatingSystemVersion;
  String? get modelName;
  String? get manufacturer;
  String? get deviceName;
  String? get deviceUniqueId;
  String? get imeiNumber;
  static Serializer<GinputDeviceInfo> get serializer =>
      _$ginputDeviceInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinputDeviceInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GinputDeviceInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinputDeviceInfo.serializer,
        json,
      );
}

class GlastAppLandingSourceType extends EnumClass {
  const GlastAppLandingSourceType._(String name) : super(name);

  static const GlastAppLandingSourceType direct =
      _$glastAppLandingSourceTypedirect;

  static const GlastAppLandingSourceType notification =
      _$glastAppLandingSourceTypenotification;

  static const GlastAppLandingSourceType inviteLink =
      _$glastAppLandingSourceTypeinviteLink;

  static const GlastAppLandingSourceType deepLink =
      _$glastAppLandingSourceTypedeepLink;

  static Serializer<GlastAppLandingSourceType> get serializer =>
      _$glastAppLandingSourceTypeSerializer;
  static BuiltSet<GlastAppLandingSourceType> get values =>
      _$glastAppLandingSourceTypeValues;
  static GlastAppLandingSourceType valueOf(String name) =>
      _$glastAppLandingSourceTypeValueOf(name);
}

class GschemaName extends EnumClass {
  const GschemaName._(String name) : super(name);

  static const GschemaName TransactionalNotification =
      _$gschemaNameTransactionalNotification;

  static const GschemaName SocialNotification = _$gschemaNameSocialNotification;

  static const GschemaName CMSNotification = _$gschemaNameCMSNotification;

  static Serializer<GschemaName> get serializer => _$gschemaNameSerializer;
  static BuiltSet<GschemaName> get values => _$gschemaNameValues;
  static GschemaName valueOf(String name) => _$gschemaNameValueOf(name);
}

const Map<String, Set<String>> possibleTypesMap = {};
