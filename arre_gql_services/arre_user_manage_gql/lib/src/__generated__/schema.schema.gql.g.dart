// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GPreferredOTPProviderEnum _$gPreferredOTPProviderEnumSMS =
    const GPreferredOTPProviderEnum._('SMS');
const GPreferredOTPProviderEnum _$gPreferredOTPProviderEnumWhatsapp =
    const GPreferredOTPProviderEnum._('Whatsapp');

GPreferredOTPProviderEnum _$gPreferredOTPProviderEnumValueOf(String name) {
  switch (name) {
    case 'SMS':
      return _$gPreferredOTPProviderEnumSMS;
    case 'Whatsapp':
      return _$gPreferredOTPProviderEnumWhatsapp;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GPreferredOTPProviderEnum> _$gPreferredOTPProviderEnumValues =
    new BuiltSet<GPreferredOTPProviderEnum>(const <GPreferredOTPProviderEnum>[
  _$gPreferredOTPProviderEnumSMS,
  _$gPreferredOTPProviderEnumWhatsapp,
]);

Serializer<GPreferredOTPProviderEnum> _$gPreferredOTPProviderEnumSerializer =
    new _$GPreferredOTPProviderEnumSerializer();

class _$GPreferredOTPProviderEnumSerializer
    implements PrimitiveSerializer<GPreferredOTPProviderEnum> {
  @override
  final Iterable<Type> types = const <Type>[GPreferredOTPProviderEnum];
  @override
  final String wireName = 'GPreferredOTPProviderEnum';

  @override
  Object serialize(Serializers serializers, GPreferredOTPProviderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GPreferredOTPProviderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GPreferredOTPProviderEnum.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
