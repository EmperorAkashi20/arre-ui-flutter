// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cs_import_activity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCSImportActivityCollection on Isar {
  IsarCollection<CSImportActivity> get cSImportActivitys => this.collection();
}

const CSImportActivitySchema = CollectionSchema(
  name: r'CSImportActivity',
  id: 122147664538129743,
  properties: {
    r'activityType': PropertySchema(
      id: 0,
      name: r'activityType',
      type: IsarType.byte,
      enumMap: _CSImportActivityactivityTypeEnumValueMap,
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
      enumMap: _CSImportActivityfileDirectoryEnumValueMap,
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
  estimateSize: _cSImportActivityEstimateSize,
  serialize: _cSImportActivitySerialize,
  deserialize: _cSImportActivityDeserialize,
  deserializeProp: _cSImportActivityDeserializeProp,
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
  getId: _cSImportActivityGetId,
  getLinks: _cSImportActivityGetLinks,
  attach: _cSImportActivityAttach,
  version: '3.1.0+1',
);

int _cSImportActivityEstimateSize(
  CSImportActivity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.fileDirectory.name.length * 3;
  bytesCount += 3 + object.relativePath.length * 3;
  return bytesCount;
}

void _cSImportActivitySerialize(
  CSImportActivity object,
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

CSImportActivity _cSImportActivityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CSImportActivity(
    fileDirectory: _CSImportActivityfileDirectoryValueEnumMap[
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

P _cSImportActivityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_CSImportActivityactivityTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ActivityType.mic) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (_CSImportActivityfileDirectoryValueEnumMap[
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

const _CSImportActivityactivityTypeEnumValueMap = {
  'mic': 0,
  'insertable': 1,
  'imported': 2,
};
const _CSImportActivityactivityTypeValueEnumMap = {
  0: ActivityType.mic,
  1: ActivityType.insertable,
  2: ActivityType.imported,
};
const _CSImportActivityfileDirectoryEnumValueMap = {
  r'ApplicationSupportDirectory': r'ApplicationSupportDirectory',
  r'ApplicationDocumentsDirectory': r'ApplicationDocumentsDirectory',
};
const _CSImportActivityfileDirectoryValueEnumMap = {
  r'ApplicationSupportDirectory': AFileDirectory.ApplicationSupportDirectory,
  r'ApplicationDocumentsDirectory':
      AFileDirectory.ApplicationDocumentsDirectory,
};

Id _cSImportActivityGetId(CSImportActivity object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _cSImportActivityGetLinks(CSImportActivity object) {
  return [];
}

void _cSImportActivityAttach(
    IsarCollection<dynamic> col, Id id, CSImportActivity object) {
  object.isarId = id;
}

extension CSImportActivityQueryWhereSort
    on QueryBuilder<CSImportActivity, CSImportActivity, QWhere> {
  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhere>
      anyDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'draftIsarId'),
      );
    });
  }
}

extension CSImportActivityQueryWhere
    on QueryBuilder<CSImportActivity, CSImportActivity, QWhereClause> {
  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
      draftIsarIdEqualTo(int draftIsarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'draftIsarId',
        value: [draftIsarId],
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterWhereClause>
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

extension CSImportActivityQueryFilter
    on QueryBuilder<CSImportActivity, CSImportActivity, QFilterCondition> {
  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      activityTypeEqualTo(ActivityType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activityType',
        value: value,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      draftIsarIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'draftIsarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      fileDirectoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileDirectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      fileDirectoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileDirectory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      fileDirectoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileDirectory',
        value: '',
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      fileDirectoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileDirectory',
        value: '',
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      milliSecondsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'milliSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      orderIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
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

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      relativePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'relativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      relativePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'relativePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      relativePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relativePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterFilterCondition>
      relativePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'relativePath',
        value: '',
      ));
    });
  }
}

extension CSImportActivityQueryObject
    on QueryBuilder<CSImportActivity, CSImportActivity, QFilterCondition> {}

extension CSImportActivityQueryLinks
    on QueryBuilder<CSImportActivity, CSImportActivity, QFilterCondition> {}

extension CSImportActivityQuerySortBy
    on QueryBuilder<CSImportActivity, CSImportActivity, QSortBy> {
  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByActivityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByFileDirectory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByFileDirectoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByMilliSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByMilliSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      sortByRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.desc);
    });
  }
}

extension CSImportActivityQuerySortThenBy
    on QueryBuilder<CSImportActivity, CSImportActivity, QSortThenBy> {
  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByActivityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByFileDirectory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByFileDirectoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByMilliSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByMilliSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'milliSeconds', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.asc);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QAfterSortBy>
      thenByRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.desc);
    });
  }
}

extension CSImportActivityQueryWhereDistinct
    on QueryBuilder<CSImportActivity, CSImportActivity, QDistinct> {
  QueryBuilder<CSImportActivity, CSImportActivity, QDistinct>
      distinctByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activityType');
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QDistinct>
      distinctByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'draftIsarId');
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QDistinct>
      distinctByFileDirectory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileDirectory',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QDistinct>
      distinctByMilliSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'milliSeconds');
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QDistinct>
      distinctByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderIndex');
    });
  }

  QueryBuilder<CSImportActivity, CSImportActivity, QDistinct>
      distinctByRelativePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relativePath', caseSensitive: caseSensitive);
    });
  }
}

extension CSImportActivityQueryProperty
    on QueryBuilder<CSImportActivity, CSImportActivity, QQueryProperty> {
  QueryBuilder<CSImportActivity, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<CSImportActivity, ActivityType, QQueryOperations>
      activityTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activityType');
    });
  }

  QueryBuilder<CSImportActivity, int, QQueryOperations> draftIsarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'draftIsarId');
    });
  }

  QueryBuilder<CSImportActivity, AFileDirectory, QQueryOperations>
      fileDirectoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileDirectory');
    });
  }

  QueryBuilder<CSImportActivity, int, QQueryOperations> milliSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'milliSeconds');
    });
  }

  QueryBuilder<CSImportActivity, int, QQueryOperations> orderIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderIndex');
    });
  }

  QueryBuilder<CSImportActivity, String, QQueryOperations>
      relativePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relativePath');
    });
  }
}
