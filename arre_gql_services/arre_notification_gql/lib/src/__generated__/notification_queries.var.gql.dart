// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_notification_gql/src/__generated__/notification_schema.schema.gql.dart'
    as _i2;
import 'package:arre_notification_gql/src/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_queries.var.gql.g.dart';

abstract class GNotificationVars
    implements Built<GNotificationVars, GNotificationVarsBuilder> {
  GNotificationVars._();

  factory GNotificationVars([Function(GNotificationVarsBuilder b) updates]) =
      _$GNotificationVars;

  String? get after;
  String? get schemaName;
  static Serializer<GNotificationVars> get serializer =>
      _$gNotificationVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationVars.serializer,
        json,
      );
}

abstract class GMarkNotificationAsSeenVars
    implements
        Built<GMarkNotificationAsSeenVars, GMarkNotificationAsSeenVarsBuilder> {
  GMarkNotificationAsSeenVars._();

  factory GMarkNotificationAsSeenVars(
          [Function(GMarkNotificationAsSeenVarsBuilder b) updates]) =
      _$GMarkNotificationAsSeenVars;

  String? get notificationIds;
  String? get schemaName;
  static Serializer<GMarkNotificationAsSeenVars> get serializer =>
      _$gMarkNotificationAsSeenVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMarkNotificationAsSeenVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkNotificationAsSeenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMarkNotificationAsSeenVars.serializer,
        json,
      );
}

abstract class GSaveUserDeviceInformationVars
    implements
        Built<GSaveUserDeviceInformationVars,
            GSaveUserDeviceInformationVarsBuilder> {
  GSaveUserDeviceInformationVars._();

  factory GSaveUserDeviceInformationVars(
          [Function(GSaveUserDeviceInformationVarsBuilder b) updates]) =
      _$GSaveUserDeviceInformationVars;

  String? get userId;
  _i2.GinputDeviceInfo? get inputDeviceInfo;
  _i2.GlastAppLandingSourceType? get lastAppLandingSource;
  String? get lastAppLandingLink;
  String? get appVersion;
  String? get buildNumber;
  static Serializer<GSaveUserDeviceInformationVars> get serializer =>
      _$gSaveUserDeviceInformationVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveUserDeviceInformationVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSaveUserDeviceInformationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveUserDeviceInformationVars.serializer,
        json,
      );
}
