// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_feed_schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Gstatus _$gstatusactive = const Gstatus._('active');
const Gstatus _$gstatusinactive = const Gstatus._('inactive');

Gstatus _$gstatusValueOf(String name) {
  switch (name) {
    case 'active':
      return _$gstatusactive;
    case 'inactive':
      return _$gstatusinactive;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Gstatus> _$gstatusValues = new BuiltSet<Gstatus>(const <Gstatus>[
  _$gstatusactive,
  _$gstatusinactive,
]);

Serializer<Gstatus> _$gstatusSerializer = new _$GstatusSerializer();

class _$GstatusSerializer implements PrimitiveSerializer<Gstatus> {
  @override
  final Iterable<Type> types = const <Type>[Gstatus];
  @override
  final String wireName = 'Gstatus';

  @override
  Object serialize(Serializers serializers, Gstatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Gstatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Gstatus.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
