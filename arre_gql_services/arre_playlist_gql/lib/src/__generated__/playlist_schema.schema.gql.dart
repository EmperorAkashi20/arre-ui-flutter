// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'playlist_schema.schema.gql.g.dart';

class GprivacyInputType extends EnumClass {
  const GprivacyInputType._(String name) : super(name);

  static const GprivacyInputType public = _$gprivacyInputTypepublic;

  static const GprivacyInputType private = _$gprivacyInputTypeprivate;

  static Serializer<GprivacyInputType> get serializer =>
      _$gprivacyInputTypeSerializer;
  static BuiltSet<GprivacyInputType> get values => _$gprivacyInputTypeValues;
  static GprivacyInputType valueOf(String name) =>
      _$gprivacyInputTypeValueOf(name);
}

class GprivacyType extends EnumClass {
  const GprivacyType._(String name) : super(name);

  static const GprivacyType public = _$gprivacyTypepublic;

  static const GprivacyType private = _$gprivacyTypeprivate;

  static const GprivacyType both = _$gprivacyTypeboth;

  static Serializer<GprivacyType> get serializer => _$gprivacyTypeSerializer;
  static BuiltSet<GprivacyType> get values => _$gprivacyTypeValues;
  static GprivacyType valueOf(String name) => _$gprivacyTypeValueOf(name);
}

const Map<String, Set<String>> possibleTypesMap = {};
