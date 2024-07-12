// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cs_media_attachment.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCSMediaAttachmentCollection on Isar {
  IsarCollection<CSMediaAttachment> get cSMediaAttachments => this.collection();
}

const CSMediaAttachmentSchema = CollectionSchema(
  name: r'csMediaAttachment',
  id: -5121543872730962031,
  properties: {
    r'draftIsarId': PropertySchema(
      id: 0,
      name: r'draftIsarId',
      type: IsarType.long,
    ),
    r'fileDirectory': PropertySchema(
      id: 1,
      name: r'fileDirectory',
      type: IsarType.string,
      enumMap: _CSMediaAttachmentfileDirectoryEnumValueMap,
    ),
    r'mediaRelativePath': PropertySchema(
      id: 2,
      name: r'mediaRelativePath',
      type: IsarType.string,
    ),
    r'mimeType': PropertySchema(
      id: 3,
      name: r'mimeType',
      type: IsarType.string,
    ),
    r'thumbnailRelativePath': PropertySchema(
      id: 4,
      name: r'thumbnailRelativePath',
      type: IsarType.string,
    )
  },
  estimateSize: _cSMediaAttachmentEstimateSize,
  serialize: _cSMediaAttachmentSerialize,
  deserialize: _cSMediaAttachmentDeserialize,
  deserializeProp: _cSMediaAttachmentDeserializeProp,
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
  getId: _cSMediaAttachmentGetId,
  getLinks: _cSMediaAttachmentGetLinks,
  attach: _cSMediaAttachmentAttach,
  version: '3.1.0+1',
);

int _cSMediaAttachmentEstimateSize(
  CSMediaAttachment object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.fileDirectory.name.length * 3;
  bytesCount += 3 + object.mediaRelativePath.length * 3;
  bytesCount += 3 + object.mimeType.length * 3;
  bytesCount += 3 + object.thumbnailRelativePath.length * 3;
  return bytesCount;
}

void _cSMediaAttachmentSerialize(
  CSMediaAttachment object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.draftIsarId);
  writer.writeString(offsets[1], object.fileDirectory.name);
  writer.writeString(offsets[2], object.mediaRelativePath);
  writer.writeString(offsets[3], object.mimeType);
  writer.writeString(offsets[4], object.thumbnailRelativePath);
}

CSMediaAttachment _cSMediaAttachmentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CSMediaAttachment(
    fileDirectory: _CSMediaAttachmentfileDirectoryValueEnumMap[
            reader.readStringOrNull(offsets[1])] ??
        AFileDirectory.ApplicationSupportDirectory,
    mediaRelativePath: reader.readString(offsets[2]),
    mimeType: reader.readString(offsets[3]),
    thumbnailRelativePath: reader.readString(offsets[4]),
  );
  object.draftIsarId = reader.readLong(offsets[0]);
  object.isarId = id;
  return object;
}

P _cSMediaAttachmentDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (_CSMediaAttachmentfileDirectoryValueEnumMap[
              reader.readStringOrNull(offset)] ??
          AFileDirectory.ApplicationSupportDirectory) as P;
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

const _CSMediaAttachmentfileDirectoryEnumValueMap = {
  r'ApplicationSupportDirectory': r'ApplicationSupportDirectory',
  r'ApplicationDocumentsDirectory': r'ApplicationDocumentsDirectory',
};
const _CSMediaAttachmentfileDirectoryValueEnumMap = {
  r'ApplicationSupportDirectory': AFileDirectory.ApplicationSupportDirectory,
  r'ApplicationDocumentsDirectory':
      AFileDirectory.ApplicationDocumentsDirectory,
};

Id _cSMediaAttachmentGetId(CSMediaAttachment object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _cSMediaAttachmentGetLinks(
    CSMediaAttachment object) {
  return [];
}

void _cSMediaAttachmentAttach(
    IsarCollection<dynamic> col, Id id, CSMediaAttachment object) {
  object.isarId = id;
}

extension CSMediaAttachmentByIndex on IsarCollection<CSMediaAttachment> {
  Future<CSMediaAttachment?> getByDraftIsarId(int draftIsarId) {
    return getByIndex(r'draftIsarId', [draftIsarId]);
  }

  CSMediaAttachment? getByDraftIsarIdSync(int draftIsarId) {
    return getByIndexSync(r'draftIsarId', [draftIsarId]);
  }

  Future<bool> deleteByDraftIsarId(int draftIsarId) {
    return deleteByIndex(r'draftIsarId', [draftIsarId]);
  }

  bool deleteByDraftIsarIdSync(int draftIsarId) {
    return deleteByIndexSync(r'draftIsarId', [draftIsarId]);
  }

  Future<List<CSMediaAttachment?>> getAllByDraftIsarId(
      List<int> draftIsarIdValues) {
    final values = draftIsarIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'draftIsarId', values);
  }

  List<CSMediaAttachment?> getAllByDraftIsarIdSync(
      List<int> draftIsarIdValues) {
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

  Future<Id> putByDraftIsarId(CSMediaAttachment object) {
    return putByIndex(r'draftIsarId', object);
  }

  Id putByDraftIsarIdSync(CSMediaAttachment object, {bool saveLinks = true}) {
    return putByIndexSync(r'draftIsarId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDraftIsarId(List<CSMediaAttachment> objects) {
    return putAllByIndex(r'draftIsarId', objects);
  }

  List<Id> putAllByDraftIsarIdSync(List<CSMediaAttachment> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'draftIsarId', objects, saveLinks: saveLinks);
  }
}

extension CSMediaAttachmentQueryWhereSort
    on QueryBuilder<CSMediaAttachment, CSMediaAttachment, QWhere> {
  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhere>
      anyDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'draftIsarId'),
      );
    });
  }
}

extension CSMediaAttachmentQueryWhere
    on QueryBuilder<CSMediaAttachment, CSMediaAttachment, QWhereClause> {
  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
      draftIsarIdEqualTo(int draftIsarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'draftIsarId',
        value: [draftIsarId],
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterWhereClause>
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

extension CSMediaAttachmentQueryFilter
    on QueryBuilder<CSMediaAttachment, CSMediaAttachment, QFilterCondition> {
  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      draftIsarIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'draftIsarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      fileDirectoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileDirectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      fileDirectoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileDirectory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      fileDirectoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileDirectory',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      fileDirectoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileDirectory',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
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

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaRelativePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mediaRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mediaRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mediaRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mediaRelativePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaRelativePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mediaRelativePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mediaRelativePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mimeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mimeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mimeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mimeType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mimeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mimeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mimeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mimeType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mimeType',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      mimeTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mimeType',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnailRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnailRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnailRelativePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumbnailRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumbnailRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumbnailRelativePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumbnailRelativePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailRelativePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterFilterCondition>
      thumbnailRelativePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumbnailRelativePath',
        value: '',
      ));
    });
  }
}

extension CSMediaAttachmentQueryObject
    on QueryBuilder<CSMediaAttachment, CSMediaAttachment, QFilterCondition> {}

extension CSMediaAttachmentQueryLinks
    on QueryBuilder<CSMediaAttachment, CSMediaAttachment, QFilterCondition> {}

extension CSMediaAttachmentQuerySortBy
    on QueryBuilder<CSMediaAttachment, CSMediaAttachment, QSortBy> {
  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByFileDirectory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByFileDirectoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.desc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByMediaRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaRelativePath', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByMediaRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaRelativePath', Sort.desc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByMimeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mimeType', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByMimeTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mimeType', Sort.desc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByThumbnailRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailRelativePath', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      sortByThumbnailRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailRelativePath', Sort.desc);
    });
  }
}

extension CSMediaAttachmentQuerySortThenBy
    on QueryBuilder<CSMediaAttachment, CSMediaAttachment, QSortThenBy> {
  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByDraftIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draftIsarId', Sort.desc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByFileDirectory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByFileDirectoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileDirectory', Sort.desc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByMediaRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaRelativePath', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByMediaRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaRelativePath', Sort.desc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByMimeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mimeType', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByMimeTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mimeType', Sort.desc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByThumbnailRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailRelativePath', Sort.asc);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QAfterSortBy>
      thenByThumbnailRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailRelativePath', Sort.desc);
    });
  }
}

extension CSMediaAttachmentQueryWhereDistinct
    on QueryBuilder<CSMediaAttachment, CSMediaAttachment, QDistinct> {
  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QDistinct>
      distinctByDraftIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'draftIsarId');
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QDistinct>
      distinctByFileDirectory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileDirectory',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QDistinct>
      distinctByMediaRelativePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaRelativePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QDistinct>
      distinctByMimeType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mimeType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CSMediaAttachment, CSMediaAttachment, QDistinct>
      distinctByThumbnailRelativePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thumbnailRelativePath',
          caseSensitive: caseSensitive);
    });
  }
}

extension CSMediaAttachmentQueryProperty
    on QueryBuilder<CSMediaAttachment, CSMediaAttachment, QQueryProperty> {
  QueryBuilder<CSMediaAttachment, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<CSMediaAttachment, int, QQueryOperations> draftIsarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'draftIsarId');
    });
  }

  QueryBuilder<CSMediaAttachment, AFileDirectory, QQueryOperations>
      fileDirectoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileDirectory');
    });
  }

  QueryBuilder<CSMediaAttachment, String, QQueryOperations>
      mediaRelativePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaRelativePath');
    });
  }

  QueryBuilder<CSMediaAttachment, String, QQueryOperations> mimeTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mimeType');
    });
  }

  QueryBuilder<CSMediaAttachment, String, QQueryOperations>
      thumbnailRelativePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumbnailRelativePath');
    });
  }
}
