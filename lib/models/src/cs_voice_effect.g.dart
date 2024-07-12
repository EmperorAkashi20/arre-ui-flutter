// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cs_voice_effect.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetVoiceEffectCollection on Isar {
  IsarCollection<VoiceEffect> get voiceEffects => this.collection();
}

const VoiceEffectSchema = CollectionSchema(
  name: r'VoiceEffect',
  id: 4664282971261948483,
  properties: {
    r'draftIsarId': PropertySchema(
      id: 0,
      name: r'draftIsarId',
      type: IsarType.long,
    ),
    r'ffmpegCommand': PropertySchema(
      id: 1,
      name: r'ffmpegCommand',
      type: IsarType.string,
    ),
    r'iconUrl': PropertySchema(
      id: 2,
      name: r'iconUrl',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _voiceEffectEstimateSize,
  serialize: _voiceEffectSerialize,
  deserialize: _voiceEffectDeserialize,
  deserializeProp: _voiceEffectDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'draftIsarId': IndexSchema(
      id: -3053537582378089411,
      name: r'draftIsarId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'draftIsarId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _voiceEffectGetId,
  getLinks: _voiceEffectGetLinks,
  attach: _voiceEffectAttach,
  version: '3.1.0+1',
);

int _voiceEffectEstimateSize(
  VoiceEffect object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.ffmpegCommand.length * 3;
  bytesCount += 3 + object.iconUrl.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _voiceEffectSerialize(
  VoiceEffect object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.draftIsarId);
  writer.writeString(offsets[1], object.ffmpegCommand);
  writer.writeString(offsets[2], object.iconUrl);
  writer.writeString(offsets[3], object.id);
  writer.writeString(offsets[4], object.name);
}

VoiceEffect _voiceEffectDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = VoiceEffect(
    ffmpegCommand: reader.readString(offsets[1]),
    iconUrl: reader.readString(offsets[2]),
    id: reader.readString(offsets[3]),
    name: reader.readString(offsets[4]),
  );
  object.draftIsarId = reader.readLong(offsets[0]);
  object.isarId = id;
  return object;
}

P _voiceEffectDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _voiceEffectGetId(VoiceEffect object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _voiceEffectGetLinks(VoiceEffect object) {
  return [];
}

void _voiceEffectAttach(
    IsarCollection<dynamic> col, Id id, VoiceEffect object) {
  object.isarId = id;
}

extension VoiceEffectByIndex on IsarCollection<VoiceEffect> {
  Future<VoiceEffect?> getByDraftIsarId(int draftIsarId) {
    return getByIndex(r'draftIsarId', [draftIsarId]);
  }

  VoiceEffect? getByDraftIsarIdSync(int draftIsarId) {
    return getByIndexSync(r'draftIsarId', [draftIsarId]);
  }

  Future<bool> deleteByDraftIsarId(int draftIsarId) {
    return deleteByIndex(r'draftIsarId', [draftIsarId]);
  }

  bool deleteByDraftIsarIdSync(int draftIsarId) {
    return deleteByIndexSync(r'draftIsarId', [draftIsarId]);
  }

  Future<List<VoiceEffect?>> getAllByDraftIsarId(List<int> draftIsarIdValues) {
    final values = draftIsarIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'draftIsarId', values);
  }

  List<VoiceEffect?> getAllByDraftIsarIdSync(List<int> draftIsarIdValues) {
    final values = draftIsarIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'draftIsarId', values);
  }

  Future<int> deleteAllByDraftIsarId(List<int> draftIsarIdValues) {
    final values = draftIsarIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'draftIsarId', values);
  }

  int deleteAllByDraftIsarIdSync(List<int> draftIsarIdValues) {
    final values = draftIsarIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'draftIsarId', values);
  }

  Future<Id> putByDraftIsarId(VoiceEffect object) {
    return putByIndex(r'draftIsarId', object);
  }

  Id putByDraftIsarIdSync(VoiceEffect object, {bool saveLinks = true}) {
    return putByIndexSync(r'draftIsarId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDraftIsarId(List<VoiceEffect> objects) {
    return putAllByIndex(r'draftIsarId', objects);
  }

  List<Id> putAllByDraftIsarIdSync(List<VoiceEffect> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'draftIsarId', objects, saveLinks: saveLinks);
  }
}

extension VoiceEffectQueryWhereSort
    on QueryBuilder<VoiceEffect, VoiceEffect, QWhere> {
  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhere> anyDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'draftIsarId'),
      );
    });
  }
}

extension VoiceEffectQueryWhere
    on QueryBuilder<VoiceEffect, VoiceEffect, QWhereClause> {
  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause> draftIsarIdEqualTo(
      int draftIsarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'draftIsarId',
        value: [draftIsarId],
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause>
      draftIsarIdNotEqualTo(int draftIsarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'draftIsarId',
              lower: [],
              upper: [draftIsarId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'draftIsarId',
              lower: [draftIsarId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'draftIsarId',
              lower: [draftIsarId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'draftIsarId',
              lower: [],
              upper: [draftIsarId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause>
      draftIsarIdGreaterThan(
    int draftIsarId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'draftIsarId',
        lower: [draftIsarId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause> draftIsarIdLessThan(
    int draftIsarId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'draftIsarId',
        lower: [],
        upper: [draftIsarId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterWhereClause> draftIsarIdBetween(
    int lowerDraftIsarId,
    int upperDraftIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'draftIsarId',
        lower: [lowerDraftIsarId],
        includeLower: includeLower,
        upper: [upperDraftIsarId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension VoiceEffectQueryFilter
    on QueryBuilder<VoiceEffect, VoiceEffect, QFilterCondition> {
  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      draftIsarIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'draftIsarId',
        value: value,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      draftIsarIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'draftIsarId',
        value: value,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      draftIsarIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'draftIsarId',
        value: value,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      draftIsarIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'draftIsarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ffmpegCommand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ffmpegCommand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ffmpegCommand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ffmpegCommand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ffmpegCommand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ffmpegCommand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ffmpegCommand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ffmpegCommand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ffmpegCommand',
        value: '',
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      ffmpegCommandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ffmpegCommand',
        value: '',
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> iconUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      iconUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> iconUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> iconUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iconUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      iconUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> iconUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> iconUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> iconUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iconUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      iconUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      iconUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension VoiceEffectQueryObject
    on QueryBuilder<VoiceEffect, VoiceEffect, QFilterCondition> {}

extension VoiceEffectQueryLinks
    on QueryBuilder<VoiceEffect, VoiceEffect, QFilterCondition> {}

extension VoiceEffectQuerySortBy
    on QueryBuilder<VoiceEffect, VoiceEffect, QSortBy> {
  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> sortByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> sortByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> sortByFfmpegCommand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ffmpegCommand', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy>
      sortByFfmpegCommandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ffmpegCommand', Sort.desc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> sortByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> sortByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension VoiceEffectQuerySortThenBy
    on QueryBuilder<VoiceEffect, VoiceEffect, QSortThenBy> {
  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByFfmpegCommand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ffmpegCommand', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy>
      thenByFfmpegCommandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ffmpegCommand', Sort.desc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension VoiceEffectQueryWhereDistinct
    on QueryBuilder<VoiceEffect, VoiceEffect, QDistinct> {
  QueryBuilder<VoiceEffect, VoiceEffect, QDistinct> distinctByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'draftIsarId');
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QDistinct> distinctByFfmpegCommand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ffmpegCommand',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QDistinct> distinctByIconUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iconUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VoiceEffect, VoiceEffect, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension VoiceEffectQueryProperty
    on QueryBuilder<VoiceEffect, VoiceEffect, QQueryProperty> {
  QueryBuilder<VoiceEffect, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<VoiceEffect, int, QQueryOperations> draftIsarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'draftIsarId');
    });
  }

  QueryBuilder<VoiceEffect, String, QQueryOperations> ffmpegCommandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ffmpegCommand');
    });
  }

  QueryBuilder<VoiceEffect, String, QQueryOperations> iconUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iconUrl');
    });
  }

  QueryBuilder<VoiceEffect, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<VoiceEffect, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
