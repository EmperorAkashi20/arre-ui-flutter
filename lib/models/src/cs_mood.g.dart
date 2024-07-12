// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cs_mood.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMoodCollection on Isar {
  IsarCollection<Mood> get moods => this.collection();
}

const MoodSchema = CollectionSchema(
  name: r'Mood',
  id: 6108270824894609419,
  properties: {
    r'backgroundImages': PropertySchema(
      id: 0,
      name: r'backgroundImages',
      type: IsarType.stringList,
    ),
    r'caption': PropertySchema(
      id: 1,
      name: r'caption',
      type: IsarType.string,
    ),
    r'draftIsarId': PropertySchema(
      id: 2,
      name: r'draftIsarId',
      type: IsarType.long,
    ),
    r'gifUrl': PropertySchema(
      id: 3,
      name: r'gifUrl',
      type: IsarType.string,
    ),
    r'iconUrl': PropertySchema(
      id: 4,
      name: r'iconUrl',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 5,
      name: r'id',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _moodEstimateSize,
  serialize: _moodSerialize,
  deserialize: _moodDeserialize,
  deserializeProp: _moodDeserializeProp,
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
  getId: _moodGetId,
  getLinks: _moodGetLinks,
  attach: _moodAttach,
  version: '3.1.0+1',
);

int _moodEstimateSize(
  Mood object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.backgroundImages.length * 3;
  {
    for (var i = 0; i < object.backgroundImages.length; i++) {
      final value = object.backgroundImages[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.caption.length * 3;
  bytesCount += 3 + object.gifUrl.length * 3;
  bytesCount += 3 + object.iconUrl.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _moodSerialize(
  Mood object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.backgroundImages);
  writer.writeString(offsets[1], object.caption);
  writer.writeLong(offsets[2], object.draftIsarId);
  writer.writeString(offsets[3], object.gifUrl);
  writer.writeString(offsets[4], object.iconUrl);
  writer.writeString(offsets[5], object.id);
  writer.writeString(offsets[6], object.name);
}

Mood _moodDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Mood(
    backgroundImages: reader.readStringList(offsets[0]) ?? [],
    caption: reader.readString(offsets[1]),
    gifUrl: reader.readString(offsets[3]),
    iconUrl: reader.readString(offsets[4]),
    id: reader.readString(offsets[5]),
    name: reader.readString(offsets[6]),
  );
  object.draftIsarId = reader.readLong(offsets[2]);
  object.isarId = id;
  return object;
}

P _moodDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _moodGetId(Mood object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _moodGetLinks(Mood object) {
  return [];
}

void _moodAttach(IsarCollection<dynamic> col, Id id, Mood object) {
  object.isarId = id;
}

extension MoodByIndex on IsarCollection<Mood> {
  Future<Mood?> getByDraftIsarId(int draftIsarId) {
    return getByIndex(r'draftIsarId', [draftIsarId]);
  }

  Mood? getByDraftIsarIdSync(int draftIsarId) {
    return getByIndexSync(r'draftIsarId', [draftIsarId]);
  }

  Future<bool> deleteByDraftIsarId(int draftIsarId) {
    return deleteByIndex(r'draftIsarId', [draftIsarId]);
  }

  bool deleteByDraftIsarIdSync(int draftIsarId) {
    return deleteByIndexSync(r'draftIsarId', [draftIsarId]);
  }

  Future<List<Mood?>> getAllByDraftIsarId(List<int> draftIsarIdValues) {
    final values = draftIsarIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'draftIsarId', values);
  }

  List<Mood?> getAllByDraftIsarIdSync(List<int> draftIsarIdValues) {
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

  Future<Id> putByDraftIsarId(Mood object) {
    return putByIndex(r'draftIsarId', object);
  }

  Id putByDraftIsarIdSync(Mood object, {bool saveLinks = true}) {
    return putByIndexSync(r'draftIsarId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDraftIsarId(List<Mood> objects) {
    return putAllByIndex(r'draftIsarId', objects);
  }

  List<Id> putAllByDraftIsarIdSync(List<Mood> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'draftIsarId', objects, saveLinks: saveLinks);
  }
}

extension MoodQueryWhereSort on QueryBuilder<Mood, Mood, QWhere> {
  QueryBuilder<Mood, Mood, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Mood, Mood, QAfterWhere> anyDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'draftIsarId'),
      );
    });
  }
}

extension MoodQueryWhere on QueryBuilder<Mood, Mood, QWhereClause> {
  QueryBuilder<Mood, Mood, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
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

  QueryBuilder<Mood, Mood, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Mood, Mood, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Mood, Mood, QAfterWhereClause> isarIdBetween(
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

  QueryBuilder<Mood, Mood, QAfterWhereClause> draftIsarIdEqualTo(
      int draftIsarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'draftIsarId',
        value: [draftIsarId],
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterWhereClause> draftIsarIdNotEqualTo(
      int draftIsarId) {
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

  QueryBuilder<Mood, Mood, QAfterWhereClause> draftIsarIdGreaterThan(
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

  QueryBuilder<Mood, Mood, QAfterWhereClause> draftIsarIdLessThan(
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

  QueryBuilder<Mood, Mood, QAfterWhereClause> draftIsarIdBetween(
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

extension MoodQueryFilter on QueryBuilder<Mood, Mood, QFilterCondition> {
  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroundImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backgroundImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backgroundImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backgroundImages',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backgroundImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backgroundImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backgroundImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backgroundImages',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroundImages',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backgroundImages',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> backgroundImagesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'backgroundImages',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> backgroundImagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'backgroundImages',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> backgroundImagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'backgroundImages',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'backgroundImages',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition>
      backgroundImagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'backgroundImages',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> backgroundImagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'backgroundImages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'caption',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'caption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'caption',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> captionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'caption',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> draftIsarIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'draftIsarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> draftIsarIdGreaterThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> draftIsarIdLessThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> draftIsarIdBetween(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gifUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gifUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gifUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gifUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gifUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gifUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gifUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gifUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gifUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> gifUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gifUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlEqualTo(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlGreaterThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlLessThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlBetween(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlStartsWith(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlEndsWith(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iconUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> iconUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Mood, Mood, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension MoodQueryObject on QueryBuilder<Mood, Mood, QFilterCondition> {}

extension MoodQueryLinks on QueryBuilder<Mood, Mood, QFilterCondition> {}

extension MoodQuerySortBy on QueryBuilder<Mood, Mood, QSortBy> {
  QueryBuilder<Mood, Mood, QAfterSortBy> sortByCaption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'caption', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByCaptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'caption', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByGifUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gifUrl', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByGifUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gifUrl', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension MoodQuerySortThenBy on QueryBuilder<Mood, Mood, QSortThenBy> {
  QueryBuilder<Mood, Mood, QAfterSortBy> thenByCaption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'caption', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByCaptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'caption', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByGifUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gifUrl', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByGifUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gifUrl', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Mood, Mood, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension MoodQueryWhereDistinct on QueryBuilder<Mood, Mood, QDistinct> {
  QueryBuilder<Mood, Mood, QDistinct> distinctByBackgroundImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backgroundImages');
    });
  }

  QueryBuilder<Mood, Mood, QDistinct> distinctByCaption(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'caption', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Mood, Mood, QDistinct> distinctByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'draftIsarId');
    });
  }

  QueryBuilder<Mood, Mood, QDistinct> distinctByGifUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gifUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Mood, Mood, QDistinct> distinctByIconUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iconUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Mood, Mood, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Mood, Mood, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension MoodQueryProperty on QueryBuilder<Mood, Mood, QQueryProperty> {
  QueryBuilder<Mood, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Mood, List<String>, QQueryOperations>
      backgroundImagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backgroundImages');
    });
  }

  QueryBuilder<Mood, String, QQueryOperations> captionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'caption');
    });
  }

  QueryBuilder<Mood, int, QQueryOperations> draftIsarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'draftIsarId');
    });
  }

  QueryBuilder<Mood, String, QQueryOperations> gifUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gifUrl');
    });
  }

  QueryBuilder<Mood, String, QQueryOperations> iconUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iconUrl');
    });
  }

  QueryBuilder<Mood, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Mood, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
