// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_feed_schema.schema.gql.g.dart';

class Gstatus extends EnumClass {
  const Gstatus._(String name) : super(name);

  static const Gstatus active = _$gstatusactive;

  static const Gstatus inactive = _$gstatusinactive;

  static Serializer<Gstatus> get serializer => _$gstatusSerializer;
  static BuiltSet<Gstatus> get values => _$gstatusValues;
  static Gstatus valueOf(String name) => _$gstatusValueOf(name);
}

const Map<String, Set<String>> possibleTypesMap = {};
