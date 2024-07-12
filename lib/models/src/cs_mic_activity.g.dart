// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cs_mic_activity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCSMicActivityCollection on Isar {
  IsarCollection<CSMicActivity> get cSMicActivitys => this.collection();
}

const CSMicActivitySchema = CollectionSchema(
  name: r'CSMicActivity',
  id: -8576028538144323016,
  properties: {
    r'activityType': PropertySchema(
      id: 0,
      name: r'activityType',
      type: IsarType.byte,
      enumMap: _CSMicActivityactivityTypeEnumValueMap,
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
      enumMap: _CSMicActivityfileDirectoryEnumValueMap,
    ),
    r'milliSeconds': PropertySchema(
      id: 3,
      name: r'milliSeconds',
      type: IsarType.long,
    ),
    r'orderIndex': PropertySchema(
      id: 4,
      name: r'orderIndex',
      type: IsarType.long,
    ),
    r'relativePath': PropertySchema(
      id: 5,
      name: r'relativePath',
      type: IsarType.string,
    )
  },
  estimateSize: _cSMicActivityEstimateSize,
  serialize: _cSMicActivitySerialize,
  deserialize: _cSMicActivityDeserialize,
  deserializeProp: _cSMicActivityDeserializeProp,
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
  getId: _cSMicActivityGetId,
  getLinks: _cSMicActivityGetLinks,
  attach: _cSMicActivityAttach,
  version: '3.1.0+1',
);

int _cSMicActivityEstimateSize(
  CSMicActivity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.fileDirectory.name.length * 3;
  bytesCount += 3 + object.relativePath.length * 3;
  return bytesCount;
}

void _cSMicActivitySerialize(
  CSMicActivity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.activityType.index);
  writer.writeLong(offsets[1], object.draftIsarId);
  writer.writeString(offsets[2], object.fileDirectory.name);
  writer.writeLong(offsets[3], object.milliSeconds);
  writer.writeLong(offsets[4], object.orderIndex);
  writer.writeString(offsets[5], object.relativePath);
}

CSMicActivity _cSMicActivityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CSMicActivity(
    fileDirectory: _CSMicActivityfileDirectoryValueEnumMap[
            reader.readStringOrNull(offsets[2])] ??
        AFileDirectory.ApplicationSupportDirectory,
    milliSeconds: reader.readLong(offsets[3]),
    relativePath: reader.readString(offsets[5]),
  );
  object.draftIsarId = reader.readLong(offsets[1]);
  object.isarId = id;
  object.orderIndex = reader.readLong(offsets[4]);
  return object;
}

P _cSMicActivityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_CSMicActivityactivityTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ActivityType.mic) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (_CSMicActivityfileDirectoryValueEnumMap[
              reader.readStringOrNull(offset)] ??
          AFileDirectory.ApplicationSupportDirectory) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CSMicActivityactivityTypeEnumValueMap = {
  'mic': 0,
  'insertable': 1,
  'imported': 2,
};
const _CSMicActivityactivityTypeValueEnumMap = {
  0: ActivityType.mic,
  1: ActivityType.insertable,
  2: ActivityType.imported,
};
const _CSMicActivityfileDirectoryEnumValueMap = {
  r'ApplicationSupportDirectory': r'ApplicationSupportDirectory',
  r'ApplicationDocumentsDirectory': r'ApplicationDocumentsDirectory',
};
const _CSMicActivityfileDirectoryValueEnumMap = {
  r'ApplicationSupportDirectory': AFileDirectory.ApplicationSupportDirectory,
  r'ApplicationDocumentsDirectory':
      AFileDirectory.ApplicationDocumentsDirectory,
};

Id _cSMicActivityGetId(CSMicActivity object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _cSMicActivityGetLinks(CSMicActivity object) {
  return [];
}

void _cSMicActivityAttach(
    IsarCollection<dynamic> col, Id id, CSMicActivity object) {
  object.isarId = id;
}

extension CSMicActivityQueryWhereSort
    on QueryBuilder<CSMicActivity, CSMicActivity, QWhere> {
  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhere> anyDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'draftIsarId'),
      );
    });
  }
}

extension CSMicActivityQueryWhere
    on QueryBuilder<CSMicActivity, CSMicActivity, QWhereClause> {
  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause> isarIdBetween(
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause>
      draftIsarIdEqualTo(int draftIsarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'draftIsarId',
        value: [draftIsarId],
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterWhereClause>
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

extension CSMicActivityQueryFilter
    on QueryBuilder<CSMicActivity, CSMicActivity, QFilterCondition> {
  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      activityTypeEqualTo(ActivityType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activityType',
        value: value,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      draftIsarIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'draftIsarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      fileDirectoryEqualTo(
    AFileDirectory value, {
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      fileDirectoryGreaterThan(
    AFileDirectory value, {
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      fileDirectoryLessThan(
    AFileDirectory value, {
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      fileDirectoryBetween(
    AFileDirectory lower,
    AFileDirectory upper, {
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      fileDirectoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileDirectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      fileDirectoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileDirectory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      fileDirectoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileDirectory',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      fileDirectoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileDirectory',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      milliSecondsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'milliSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      orderIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      relativePathEqualTo(
    String value, {
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      relativePathGreaterThan(
    String value, {
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      relativePathLessThan(
    String value, {
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      relativePathBetween(
    String lower,
    String upper, {
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
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

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      relativePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'relativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      relativePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'relativePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      relativePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relativePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterFilterCondition>
      relativePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'relativePath',
        value: '',
      ));
    });
  }
}

extension CSMicActivityQueryObject
    on QueryBuilder<CSMicActivity, CSMicActivity, QFilterCondition> {}

extension CSMicActivityQueryLinks
    on QueryBuilder<CSMicActivity, CSMicActivity, QFilterCondition> {}

extension CSMicActivityQuerySortBy
    on QueryBuilder<CSMicActivity, CSMicActivity, QSortBy> {
  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByActivityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy> sortByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByFileDirectory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByFileDirectoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByMilliSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByMilliSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy> sortByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      sortByRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.desc);
    });
  }
}

extension CSMicActivityQuerySortThenBy
    on QueryBuilder<CSMicActivity, CSMicActivity, QSortThenBy> {
  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByActivityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy> thenByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByFileDirectory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByFileDirectoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByMilliSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByMilliSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy> thenByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.asc);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QAfterSortBy>
      thenByRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.desc);
    });
  }
}

extension CSMicActivityQueryWhereDistinct
    on QueryBuilder<CSMicActivity, CSMicActivity, QDistinct> {
  QueryBuilder<CSMicActivity, CSMicActivity, QDistinct>
      distinctByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activityType');
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QDistinct>
      distinctByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'draftIsarId');
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QDistinct> distinctByFileDirectory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileDirectory',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QDistinct>
      distinctByMilliSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'milliSeconds');
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QDistinct> distinctByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderIndex');
    });
  }

  QueryBuilder<CSMicActivity, CSMicActivity, QDistinct> distinctByRelativePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relativePath', caseSensitive: caseSensitive);
    });
  }
}

extension CSMicActivityQueryProperty
    on QueryBuilder<CSMicActivity, CSMicActivity, QQueryProperty> {
  QueryBuilder<CSMicActivity, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<CSMicActivity, ActivityType, QQueryOperations>
      activityTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activityType');
    });
  }

  QueryBuilder<CSMicActivity, int, QQueryOperations> draftIsarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'draftIsarId');
    });
  }

  QueryBuilder<CSMicActivity, AFileDirectory, QQueryOperations>
      fileDirectoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileDirectory');
    });
  }

  QueryBuilder<CSMicActivity, int, QQueryOperations> milliSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'milliSeconds');
    });
  }

  QueryBuilder<CSMicActivity, int, QQueryOperations> orderIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderIndex');
    });
  }

  QueryBuilder<CSMicActivity, String, QQueryOperations> relativePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relativePath');
    });
  }
}
