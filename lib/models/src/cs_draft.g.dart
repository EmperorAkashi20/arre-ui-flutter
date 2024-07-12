// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cs_draft.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCSDraftCollection on Isar {
  IsarCollection<CSDraft> get cSDrafts => this.collection();
}

const CSDraftSchema = CollectionSchema(
  name: r'CSDraft',
  id: -7668956107845007630,
  properties: {
    r'communityId': PropertySchema(
      id: 0,
      name: r'communityId',
      type: IsarType.string,
    ),
    r'fileName': PropertySchema(
      id: 1,
      name: r'fileName',
      type: IsarType.string,
    ),
    r'hashTags': PropertySchema(
      id: 2,
      name: r'hashTags',
      type: IsarType.stringList,
    ),
    r'languageId': PropertySchema(
      id: 3,
      name: r'languageId',
      type: IsarType.string,
    ),
    r'postPrivacyV2': PropertySchema(
      id: 4,
      name: r'postPrivacyV2',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 5,
      name: r'title',
      type: IsarType.string,
    ),
    r'updatedOn': PropertySchema(
      id: 6,
      name: r'updatedOn',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _cSDraftEstimateSize,
  serialize: _cSDraftSerialize,
  deserialize: _cSDraftDeserialize,
  deserializeProp: _cSDraftDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cSDraftGetId,
  getLinks: _cSDraftGetLinks,
  attach: _cSDraftAttach,
  version: '3.1.0+1',
);

int _cSDraftEstimateSize(
  CSDraft object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.communityId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fileName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.hashTags;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.languageId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.postPrivacyV2;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _cSDraftSerialize(
  CSDraft object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.communityId);
  writer.writeString(offsets[1], object.fileName);
  writer.writeStringList(offsets[2], object.hashTags);
  writer.writeString(offsets[3], object.languageId);
  writer.writeString(offsets[4], object.postPrivacyV2);
  writer.writeString(offsets[5], object.title);
  writer.writeDateTime(offsets[6], object.updatedOn);
}

CSDraft _cSDraftDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CSDraft(
    fileName: reader.readStringOrNull(offsets[1]),
    hashTags: reader.readStringList(offsets[2]),
    isarId: id,
    languageId: reader.readStringOrNull(offsets[3]),
    postPrivacyV2: reader.readStringOrNull(offsets[4]),
    title: reader.readStringOrNull(offsets[5]),
    updatedOn: reader.readDateTimeOrNull(offsets[6]),
  );
  object.communityId = reader.readStringOrNull(offsets[0]);
  return object;
}

P _cSDraftDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cSDraftGetId(CSDraft object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _cSDraftGetLinks(CSDraft object) {
  return [];
}

void _cSDraftAttach(IsarCollection<dynamic> col, Id id, CSDraft object) {
  object.isarId = id;
}

extension CSDraftQueryWhereSort on QueryBuilder<CSDraft, CSDraft, QWhere> {
  QueryBuilder<CSDraft, CSDraft, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CSDraftQueryWhere on QueryBuilder<CSDraft, CSDraft, QWhereClause> {
  QueryBuilder<CSDraft, CSDraft, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterWhereClause> isarIdNotEqualTo(
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

  QueryBuilder<CSDraft, CSDraft, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterWhereClause> isarIdBetween(
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
}

extension CSDraftQueryFilter
    on QueryBuilder<CSDraft, CSDraft, QFilterCondition> {
  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'communityId',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'communityId',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'communityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'communityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'communityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'communityId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'communityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'communityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'communityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'communityId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> communityIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'communityId',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition>
      communityIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'communityId',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fileName',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fileName',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fileName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileName',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> fileNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileName',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hashTags',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hashTags',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition>
      hashTagsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashTags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition>
      hashTagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hashTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hashTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hashTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hashTags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition>
      hashTagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashTags',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition>
      hashTagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hashTags',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hashTags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hashTags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hashTags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hashTags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition>
      hashTagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hashTags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> hashTagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hashTags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'languageId',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'languageId',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'languageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'languageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'languageId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'languageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'languageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'languageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'languageId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageId',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> languageIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'languageId',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> postPrivacyV2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'postPrivacyV2',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition>
      postPrivacyV2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'postPrivacyV2',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> postPrivacyV2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postPrivacyV2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition>
      postPrivacyV2GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postPrivacyV2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> postPrivacyV2LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postPrivacyV2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> postPrivacyV2Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postPrivacyV2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> postPrivacyV2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'postPrivacyV2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> postPrivacyV2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'postPrivacyV2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> postPrivacyV2Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'postPrivacyV2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> postPrivacyV2Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'postPrivacyV2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> postPrivacyV2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postPrivacyV2',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition>
      postPrivacyV2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'postPrivacyV2',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> updatedOnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedOn',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> updatedOnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedOn',
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> updatedOnEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedOn',
        value: value,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> updatedOnGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedOn',
        value: value,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> updatedOnLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedOn',
        value: value,
      ));
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterFilterCondition> updatedOnBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedOn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CSDraftQueryObject
    on QueryBuilder<CSDraft, CSDraft, QFilterCondition> {}

extension CSDraftQueryLinks
    on QueryBuilder<CSDraft, CSDraft, QFilterCondition> {}

extension CSDraftQuerySortBy on QueryBuilder<CSDraft, CSDraft, QSortBy> {
  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByCommunityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'communityId', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByCommunityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'communityId', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByFileName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByFileNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByLanguageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageId', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByLanguageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageId', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByPostPrivacyV2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postPrivacyV2', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByPostPrivacyV2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postPrivacyV2', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedOn', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> sortByUpdatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedOn', Sort.desc);
    });
  }
}

extension CSDraftQuerySortThenBy
    on QueryBuilder<CSDraft, CSDraft, QSortThenBy> {
  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByCommunityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'communityId', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByCommunityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'communityId', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByFileName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByFileNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByLanguageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageId', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByLanguageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageId', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByPostPrivacyV2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postPrivacyV2', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByPostPrivacyV2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postPrivacyV2', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedOn', Sort.asc);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QAfterSortBy> thenByUpdatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedOn', Sort.desc);
    });
  }
}

extension CSDraftQueryWhereDistinct
    on QueryBuilder<CSDraft, CSDraft, QDistinct> {
  QueryBuilder<CSDraft, CSDraft, QDistinct> distinctByCommunityId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'communityId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QDistinct> distinctByFileName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QDistinct> distinctByHashTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashTags');
    });
  }

  QueryBuilder<CSDraft, CSDraft, QDistinct> distinctByLanguageId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'languageId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QDistinct> distinctByPostPrivacyV2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postPrivacyV2',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSDraft, CSDraft, QDistinct> distinctByUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedOn');
    });
  }
}

extension CSDraftQueryProperty
    on QueryBuilder<CSDraft, CSDraft, QQueryProperty> {
  QueryBuilder<CSDraft, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<CSDraft, String?, QQueryOperations> communityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'communityId');
    });
  }

  QueryBuilder<CSDraft, String?, QQueryOperations> fileNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileName');
    });
  }

  QueryBuilder<CSDraft, List<String>?, QQueryOperations> hashTagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashTags');
    });
  }

  QueryBuilder<CSDraft, String?, QQueryOperations> languageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'languageId');
    });
  }

  QueryBuilder<CSDraft, String?, QQueryOperations> postPrivacyV2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postPrivacyV2');
    });
  }

  QueryBuilder<CSDraft, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<CSDraft, DateTime?, QQueryOperations> updatedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedOn');
    });
  }
}
