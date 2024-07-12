// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GprivacyInputType _$gprivacyInputTypepublic =
    const GprivacyInputType._('public');
const GprivacyInputType _$gprivacyInputTypeprivate =
    const GprivacyInputType._('private');

GprivacyInputType _$gprivacyInputTypeValueOf(String name) {
  switch (name) {
    case 'public':
      return _$gprivacyInputTypepublic;
    case 'private':
      return _$gprivacyInputTypeprivate;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GprivacyInputType> _$gprivacyInputTypeValues =
    new BuiltSet<GprivacyInputType>(const <GprivacyInputType>[
  _$gprivacyInputTypepublic,
  _$gprivacyInputTypeprivate,
]);

const GprivacyType _$gprivacyTypepublic = const GprivacyType._('public');
const GprivacyType _$gprivacyTypeprivate = const GprivacyType._('private');
const GprivacyType _$gprivacyTypeboth = const GprivacyType._('both');

GprivacyType _$gprivacyTypeValueOf(String name) {
  switch (name) {
    case 'public':
      return _$gprivacyTypepublic;
    case 'private':
      return _$gprivacyTypeprivate;
    case 'both':
      return _$gprivacyTypeboth;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GprivacyType> _$gprivacyTypeValues =
    new BuiltSet<GprivacyType>(const <GprivacyType>[
  _$gprivacyTypepublic,
  _$gprivacyTypeprivate,
  _$gprivacyTypeboth,
]);

Serializer<GprivacyInputType> _$gprivacyInputTypeSerializer =
    new _$GprivacyInputTypeSerializer();
Serializer<GprivacyType> _$gprivacyTypeSerializer =
    new _$GprivacyTypeSerializer();

class _$GprivacyInputTypeSerializer
    implements PrimitiveSerializer<GprivacyInputType> {
  @override
  final Iterable<Type> types = const <Type>[GprivacyInputType];
  @override
  final String wireName = 'GprivacyInputType';

  @override
  Object serialize(Serializers serializers, GprivacyInputType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GprivacyInputType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GprivacyInputType.valueOf(serialized as String);
}

class _$GprivacyTypeSerializer implements PrimitiveSerializer<GprivacyType> {
  @override
  final Iterable<Type> types = const <Type>[GprivacyType];
  @override
  final String wireName = 'GprivacyType';

  @override
  Object serialize(Serializers serializers, GprivacyType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GprivacyType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GprivacyType.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
