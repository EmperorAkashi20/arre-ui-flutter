// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schema.schema.gql.g.dart';

class GPreferredOTPProviderEnum extends EnumClass {
  const GPreferredOTPProviderEnum._(String name) : super(name);

  static const GPreferredOTPProviderEnum SMS = _$gPreferredOTPProviderEnumSMS;

  static const GPreferredOTPProviderEnum Whatsapp =
      _$gPreferredOTPProviderEnumWhatsapp;

  static Serializer<GPreferredOTPProviderEnum> get serializer =>
      _$gPreferredOTPProviderEnumSerializer;
  static BuiltSet<GPreferredOTPProviderEnum> get values =>
      _$gPreferredOTPProviderEnumValues;
  static GPreferredOTPProviderEnum valueOf(String name) =>
      _$gPreferredOTPProviderEnumValueOf(name);
}

const Map<String, Set<String>> possibleTypesMap = {};
