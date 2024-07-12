// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cs_audio_insertable.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAudioInsertableCollection on Isar {
  IsarCollection<AudioInsertable> get audioInsertables => this.collection();
}

const AudioInsertableSchema = CollectionSchema(
  name: r'AudioInsertable',
  id: 2467802434953870397,
  properties: {
    r'activityType': PropertySchema(
      id: 0,
      name: r'activityType',
      type: IsarType.byte,
      enumMap: _AudioInsertableactivityTypeEnumValueMap,
    ),
    r'draftIsarId': PropertySchema(
      id: 1,
      name: r'draftIsarId',
      type: IsarType.long,
    ),
    r'fileDirectory': PropertySchema(
      id: 2,
      name: r'fileDirectory',
      type: IsarType.string,
      enumMap: _AudioInsertablefileDirectoryEnumValueMap,
    ),
    r'filename': PropertySchema(
      id: 3,
      name: r'filename',
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
    r'milliSeconds': PropertySchema(
      id: 6,
      name: r'milliSeconds',
      type: IsarType.long,
    ),
    r'musicUrl': PropertySchema(
      id: 7,
      name: r'musicUrl',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'orderIndex': PropertySchema(
      id: 9,
      name: r'orderIndex',
      type: IsarType.long,
    ),
    r'relativePath': PropertySchema(
      id: 10,
      name: r'relativePath',
      type: IsarType.string,
    )
  },
  estimateSize: _audioInsertableEstimateSize,
  serialize: _audioInsertableSerialize,
  deserialize: _audioInsertableDeserialize,
  deserializeProp: _audioInsertableDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'draftIsarId': IndexSchema(
      id: -3053537582378089411,
      name: r'draftIsarId',
      unique: false,
      replace: false,
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
  getId: _audioInsertableGetId,
  getLinks: _audioInsertableGetLinks,
  attach: _audioInsertableAttach,
  version: '3.1.0+1',
);

int _audioInsertableEstimateSize(
  AudioInsertable object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.fileDirectory;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  bytesCount += 3 + object.filename.length * 3;
  bytesCount += 3 + object.iconUrl.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.musicUrl.length * 3;
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.relativePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _audioInsertableSerialize(
  AudioInsertable object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.activityType.index);
  writer.writeLong(offsets[1], object.draftIsarId);
  writer.writeString(offsets[2], object.fileDirectory?.name);
  writer.writeString(offsets[3], object.filename);
  writer.writeString(offsets[4], object.iconUrl);
  writer.writeString(offsets[5], object.id);
  writer.writeLong(offsets[6], object.milliSeconds);
  writer.writeString(offsets[7], object.musicUrl);
  writer.writeString(offsets[8], object.name);
  writer.writeLong(offsets[9], object.orderIndex);
  writer.writeString(offsets[10], object.relativePath);
}

AudioInsertable _audioInsertableDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AudioInsertable(
    fileDirectory: _AudioInsertablefileDirectoryValueEnumMap[
        reader.readStringOrNull(offsets[2])],
    filename: reader.readString(offsets[3]),
    iconUrl: reader.readString(offsets[4]),
    id: reader.readString(offsets[5]),
    musicUrl: reader.readString(offsets[7]),
    name: reader.readString(offsets[8]),
    relativePath: reader.readStringOrNull(offsets[10]),
  );
  object.draftIsarId = reader.readLong(offsets[1]);
  object.isarId = id;
  object.milliSeconds = reader.readLong(offsets[6]);
  object.orderIndex = reader.readLong(offsets[9]);
  return object;
}

P _audioInsertableDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_AudioInsertableactivityTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ActivityType.mic) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (_AudioInsertablefileDirectoryValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AudioInsertableactivityTypeEnumValueMap = {
  'mic': 0,
  'insertable': 1,
  'imported': 2,
};
const _AudioInsertableactivityTypeValueEnumMap = {
  0: ActivityType.mic,
  1: ActivityType.insertable,
  2: ActivityType.imported,
};
const _AudioInsertablefileDirectoryEnumValueMap = {
  r'ApplicationSupportDirectory': r'ApplicationSupportDirectory',
  r'ApplicationDocumentsDirectory': r'ApplicationDocumentsDirectory',
};
const _AudioInsertablefileDirectoryValueEnumMap = {
  r'ApplicationSupportDirectory': AFileDirectory.ApplicationSupportDirectory,
  r'ApplicationDocumentsDirectory':
      AFileDirectory.ApplicationDocumentsDirectory,
};

Id _audioInsertableGetId(AudioInsertable object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _audioInsertableGetLinks(AudioInsertable object) {
  return [];
}

void _audioInsertableAttach(
    IsarCollection<dynamic> col, Id id, AudioInsertable object) {
  object.isarId = id;
}

extension AudioInsertableQueryWhereSort
    on QueryBuilder<AudioInsertable, AudioInsertable, QWhere> {
  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhere> anyDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'draftIsarId'),
      );
    });
  }
}

extension AudioInsertableQueryWhere
    on QueryBuilder<AudioInsertable, AudioInsertable, QWhereClause> {
  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
      isarIdBetween(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
      draftIsarIdEqualTo(int draftIsarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'draftIsarId',
        value: [draftIsarId],
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
      draftIsarIdLessThan(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterWhereClause>
      draftIsarIdBetween(
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

extension AudioInsertableQueryFilter
    on QueryBuilder<AudioInsertable, AudioInsertable, QFilterCondition> {
  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      activityTypeEqualTo(ActivityType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activityType',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      activityTypeGreaterThan(
    ActivityType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activityType',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      activityTypeLessThan(
    ActivityType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activityType',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      activityTypeBetween(
    ActivityType lower,
    ActivityType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activityType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      draftIsarIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'draftIsarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fileDirectory',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fileDirectory',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryEqualTo(
    AFileDirectory? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileDirectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryGreaterThan(
    AFileDirectory? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fileDirectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryLessThan(
    AFileDirectory? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fileDirectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryBetween(
    AFileDirectory? lower,
    AFileDirectory? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fileDirectory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fileDirectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fileDirectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileDirectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileDirectory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileDirectory',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      fileDirectoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileDirectory',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'filename',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'filename',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filename',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      filenameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'filename',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      iconUrlEqualTo(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      iconUrlLessThan(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      iconUrlBetween(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      iconUrlEndsWith(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      iconUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      iconUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iconUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      iconUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      iconUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idEqualTo(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idStartsWith(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idEndsWith(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      isarIdLessThan(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      isarIdBetween(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      milliSecondsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'milliSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      milliSecondsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'milliSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      milliSecondsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'milliSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      milliSecondsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'milliSeconds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'musicUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'musicUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'musicUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'musicUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'musicUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'musicUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'musicUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'musicUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'musicUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      musicUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'musicUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      orderIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      orderIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      orderIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      orderIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'relativePath',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'relativePath',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'relativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'relativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'relativePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'relativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'relativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'relativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'relativePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relativePath',
        value: '',
      ));
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterFilterCondition>
      relativePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'relativePath',
        value: '',
      ));
    });
  }
}

extension AudioInsertableQueryObject
    on QueryBuilder<AudioInsertable, AudioInsertable, QFilterCondition> {}

extension AudioInsertableQueryLinks
    on QueryBuilder<AudioInsertable, AudioInsertable, QFilterCondition> {}

extension AudioInsertableQuerySortBy
    on QueryBuilder<AudioInsertable, AudioInsertable, QSortBy> {
  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByActivityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByFileDirectory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByFileDirectoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filename', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByFilenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filename', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy> sortByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByMilliSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByMilliSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByMusicUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'musicUrl', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByMusicUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'musicUrl', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      sortByRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.desc);
    });
  }
}

extension AudioInsertableQuerySortThenBy
    on QueryBuilder<AudioInsertable, AudioInsertable, QSortThenBy> {
  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByActivityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByFileDirectory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByFileDirectoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filename', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByFilenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filename', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy> thenByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByMilliSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByMilliSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByMusicUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'musicUrl', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByMusicUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'musicUrl', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.asc);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QAfterSortBy>
      thenByRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.desc);
    });
  }
}

extension AudioInsertableQueryWhereDistinct
    on QueryBuilder<AudioInsertable, AudioInsertable, QDistinct> {
  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct>
      distinctByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activityType');
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct>
      distinctByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'draftIsarId');
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct>
      distinctByFileDirectory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileDirectory',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct> distinctByFilename(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'filename', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct> distinctByIconUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iconUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct>
      distinctByMilliSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'milliSeconds');
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct> distinctByMusicUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'musicUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct>
      distinctByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderIndex');
    });
  }

  QueryBuilder<AudioInsertable, AudioInsertable, QDistinct>
      distinctByRelativePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relativePath', caseSensitive: caseSensitive);
    });
  }
}

extension AudioInsertableQueryProperty
    on QueryBuilder<AudioInsertable, AudioInsertable, QQueryProperty> {
  QueryBuilder<AudioInsertable, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<AudioInsertable, ActivityType, QQueryOperations>
      activityTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activityType');
    });
  }

  QueryBuilder<AudioInsertable, int, QQueryOperations> draftIsarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'draftIsarId');
    });
  }

  QueryBuilder<AudioInsertable, AFileDirectory?, QQueryOperations>
      fileDirectoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileDirectory');
    });
  }

  QueryBuilder<AudioInsertable, String, QQueryOperations> filenameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'filename');
    });
  }

  QueryBuilder<AudioInsertable, String, QQueryOperations> iconUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iconUrl');
    });
  }

  QueryBuilder<AudioInsertable, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AudioInsertable, int, QQueryOperations> milliSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'milliSeconds');
    });
  }

  QueryBuilder<AudioInsertable, String, QQueryOperations> musicUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'musicUrl');
    });
  }

  QueryBuilder<AudioInsertable, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<AudioInsertable, int, QQueryOperations> orderIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderIndex');
    });
  }

  QueryBuilder<AudioInsertable, String?, QQueryOperations>
      relativePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relativePath');
    });
  }
}
