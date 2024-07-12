// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_log.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNetworkLogCollection on Isar {
  IsarCollection<NetworkLog> get networkLogs => this.collection();
}

const NetworkLogSchema = CollectionSchema(
  name: r'NetworkLog',
  id: 6358510314865777097,
  properties: {
    r'createdOn': PropertySchema(
      id: 0,
      name: r'createdOn',
      type: IsarType.dateTime,
    ),
    r'encodedResponse': PropertySchema(
      id: 1,
      name: r'encodedResponse',
      type: IsarType.string,
    ),
    r'error': PropertySchema(
      id: 2,
      name: r'error',
      type: IsarType.string,
    ),
    r'graphqlErrors': PropertySchema(
      id: 3,
      name: r'graphqlErrors',
      type: IsarType.stringList,
    ),
    r'headers': PropertySchema(
      id: 4,
      name: r'headers',
      type: IsarType.string,
    ),
    r'isRequest': PropertySchema(
      id: 5,
      name: r'isRequest',
      type: IsarType.bool,
    ),
    r'logType': PropertySchema(
      id: 6,
      name: r'logType',
      type: IsarType.byte,
      enumMap: _NetworkLoglogTypeEnumValueMap,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'operationType': PropertySchema(
      id: 8,
      name: r'operationType',
      type: IsarType.string,
    ),
    r'request': PropertySchema(
      id: 9,
      name: r'request',
      type: IsarType.string,
    ),
    r'requestWords': PropertySchema(
      id: 10,
      name: r'requestWords',
      type: IsarType.stringList,
    ),
    r'statusCode': PropertySchema(
      id: 11,
      name: r'statusCode',
      type: IsarType.long,
    ),
    r'traceHashcode': PropertySchema(
      id: 12,
      name: r'traceHashcode',
      type: IsarType.long,
    ),
    r'variables': PropertySchema(
      id: 13,
      name: r'variables',
      type: IsarType.string,
    )
  },
  estimateSize: _networkLogEstimateSize,
  serialize: _networkLogSerialize,
  deserialize: _networkLogDeserialize,
  deserializeProp: _networkLogDeserializeProp,
  idName: r'id',
  indexes: {
    r'createdOn': IndexSchema(
      id: -2233607959267706691,
      name: r'createdOn',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'createdOn',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'requestWords': IndexSchema(
      id: -5052009589395930251,
      name: r'requestWords',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'requestWords',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _networkLogGetId,
  getLinks: _networkLogGetLinks,
  attach: _networkLogAttach,
  version: '3.1.0+1',
);

int _networkLogEstimateSize(
  NetworkLog object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.encodedResponse;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.error;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.graphqlErrors;
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
  bytesCount += 3 + object.headers.length * 3;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.operationType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.request.length * 3;
  bytesCount += 3 + object.requestWords.length * 3;
  {
    for (var i = 0; i < object.requestWords.length; i++) {
      final value = object.requestWords[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.variables;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _networkLogSerialize(
  NetworkLog object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdOn);
  writer.writeString(offsets[1], object.encodedResponse);
  writer.writeString(offsets[2], object.error);
  writer.writeStringList(offsets[3], object.graphqlErrors);
  writer.writeString(offsets[4], object.headers);
  writer.writeBool(offsets[5], object.isRequest);
  writer.writeByte(offsets[6], object.logType.index);
  writer.writeString(offsets[7], object.name);
  writer.writeString(offsets[8], object.operationType);
  writer.writeString(offsets[9], object.request);
  writer.writeStringList(offsets[10], object.requestWords);
  writer.writeLong(offsets[11], object.statusCode);
  writer.writeLong(offsets[12], object.traceHashcode);
  writer.writeString(offsets[13], object.variables);
}

NetworkLog _networkLogDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NetworkLog(
    createdOn: reader.readDateTime(offsets[0]),
    encodedResponse: reader.readStringOrNull(offsets[1]),
    error: reader.readStringOrNull(offsets[2]),
    graphqlErrors: reader.readStringList(offsets[3]),
    headers: reader.readString(offsets[4]),
    logType:
        _NetworkLoglogTypeValueEnumMap[reader.readByteOrNull(offsets[6])] ??
            NetworkLogType.socketEventEmit,
    name: reader.readStringOrNull(offsets[7]),
    operationType: reader.readStringOrNull(offsets[8]),
    request: reader.readString(offsets[9]),
    statusCode: reader.readLongOrNull(offsets[11]),
    traceHashcode: reader.readLongOrNull(offsets[12]),
    variables: reader.readStringOrNull(offsets[13]),
  );
  object.id = id;
  return object;
}

P _networkLogDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (_NetworkLoglogTypeValueEnumMap[reader.readByteOrNull(offset)] ??
          NetworkLogType.socketEventEmit) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringList(offset) ?? []) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _NetworkLoglogTypeEnumValueMap = {
  'socketEventEmit': 0,
  'socketEventListen': 1,
  'sessionDivider': 2,
  'graphqlRequest': 3,
  'graphqlResponse': 4,
  'httpRequest': 5,
  'httpResponse': 6,
  'httpError': 7,
};
const _NetworkLoglogTypeValueEnumMap = {
  0: NetworkLogType.socketEventEmit,
  1: NetworkLogType.socketEventListen,
  2: NetworkLogType.sessionDivider,
  3: NetworkLogType.graphqlRequest,
  4: NetworkLogType.graphqlResponse,
  5: NetworkLogType.httpRequest,
  6: NetworkLogType.httpResponse,
  7: NetworkLogType.httpError,
};

Id _networkLogGetId(NetworkLog object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _networkLogGetLinks(NetworkLog object) {
  return [];
}

void _networkLogAttach(IsarCollection<dynamic> col, Id id, NetworkLog object) {
  object.id = id;
}

extension NetworkLogQueryWhereSort
    on QueryBuilder<NetworkLog, NetworkLog, QWhere> {
  QueryBuilder<NetworkLog, NetworkLog, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhere> anyCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'createdOn'),
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhere> anyRequestWordsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'requestWords'),
      );
    });
  }
}

extension NetworkLogQueryWhere
    on QueryBuilder<NetworkLog, NetworkLog, QWhereClause> {
  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> createdOnEqualTo(
      DateTime createdOn) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'createdOn',
        value: [createdOn],
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> createdOnNotEqualTo(
      DateTime createdOn) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdOn',
              lower: [],
              upper: [createdOn],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdOn',
              lower: [createdOn],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdOn',
              lower: [createdOn],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdOn',
              lower: [],
              upper: [createdOn],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> createdOnGreaterThan(
    DateTime createdOn, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'createdOn',
        lower: [createdOn],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> createdOnLessThan(
    DateTime createdOn, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'createdOn',
        lower: [],
        upper: [createdOn],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause> createdOnBetween(
    DateTime lowerCreatedOn,
    DateTime upperCreatedOn, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'createdOn',
        lower: [lowerCreatedOn],
        includeLower: includeLower,
        upper: [upperCreatedOn],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause>
      requestWordsElementEqualTo(String requestWordsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'requestWords',
        value: [requestWordsElement],
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause>
      requestWordsElementNotEqualTo(String requestWordsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'requestWords',
              lower: [],
              upper: [requestWordsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'requestWords',
              lower: [requestWordsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'requestWords',
              lower: [requestWordsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'requestWords',
              lower: [],
              upper: [requestWordsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause>
      requestWordsElementGreaterThan(
    String requestWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'requestWords',
        lower: [requestWordsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause>
      requestWordsElementLessThan(
    String requestWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'requestWords',
        lower: [],
        upper: [requestWordsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause>
      requestWordsElementBetween(
    String lowerRequestWordsElement,
    String upperRequestWordsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'requestWords',
        lower: [lowerRequestWordsElement],
        includeLower: includeLower,
        upper: [upperRequestWordsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause>
      requestWordsElementStartsWith(String RequestWordsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'requestWords',
        lower: [RequestWordsElementPrefix],
        upper: ['$RequestWordsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause>
      requestWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'requestWords',
        value: [''],
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterWhereClause>
      requestWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'requestWords',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'requestWords',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'requestWords',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'requestWords',
              upper: [''],
            ));
      }
    });
  }
}

extension NetworkLogQueryFilter
    on QueryBuilder<NetworkLog, NetworkLog, QFilterCondition> {
  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> createdOnEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdOn',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      createdOnGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdOn',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> createdOnLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdOn',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> createdOnBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdOn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'encodedResponse',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'encodedResponse',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encodedResponse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'encodedResponse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'encodedResponse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'encodedResponse',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'encodedResponse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'encodedResponse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'encodedResponse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'encodedResponse',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encodedResponse',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      encodedResponseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'encodedResponse',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'error',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'error',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'error',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'error',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> errorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'error',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      errorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'error',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'graphqlErrors',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'graphqlErrors',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'graphqlErrors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'graphqlErrors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'graphqlErrors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'graphqlErrors',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'graphqlErrors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'graphqlErrors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'graphqlErrors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'graphqlErrors',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'graphqlErrors',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'graphqlErrors',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'graphqlErrors',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'graphqlErrors',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'graphqlErrors',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'graphqlErrors',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'graphqlErrors',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      graphqlErrorsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'graphqlErrors',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> headersEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      headersGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> headersLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> headersBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'headers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> headersStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> headersEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> headersContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> headersMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'headers',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> headersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headers',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      headersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'headers',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> isRequestEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isRequest',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> logTypeEqualTo(
      NetworkLogType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logType',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      logTypeGreaterThan(
    NetworkLogType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'logType',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> logTypeLessThan(
    NetworkLogType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'logType',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> logTypeBetween(
    NetworkLogType lower,
    NetworkLogType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'logType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameEqualTo(
    String? value, {
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

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameGreaterThan(
    String? value, {
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

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameLessThan(
    String? value, {
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

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameContains(
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

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'operationType',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'operationType',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'operationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'operationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'operationType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'operationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'operationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'operationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'operationType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operationType',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      operationTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'operationType',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> requestEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'request',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'request',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> requestLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'request',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> requestBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'request',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> requestStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'request',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> requestEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'request',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> requestContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'request',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> requestMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'request',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> requestIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'request',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'request',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'requestWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'requestWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'requestWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'requestWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'requestWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'requestWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'requestWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'requestWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'requestWords',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'requestWords',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'requestWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'requestWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'requestWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'requestWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'requestWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      requestWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'requestWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      statusCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'statusCode',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      statusCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'statusCode',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> statusCodeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      statusCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      statusCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> statusCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'statusCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      traceHashcodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'traceHashcode',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      traceHashcodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'traceHashcode',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      traceHashcodeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'traceHashcode',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      traceHashcodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'traceHashcode',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      traceHashcodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'traceHashcode',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      traceHashcodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'traceHashcode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      variablesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'variables',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      variablesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'variables',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> variablesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'variables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      variablesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'variables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> variablesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'variables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> variablesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'variables',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      variablesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'variables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> variablesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'variables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> variablesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'variables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition> variablesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'variables',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      variablesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'variables',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterFilterCondition>
      variablesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'variables',
        value: '',
      ));
    });
  }
}

extension NetworkLogQueryObject
    on QueryBuilder<NetworkLog, NetworkLog, QFilterCondition> {}

extension NetworkLogQueryLinks
    on QueryBuilder<NetworkLog, NetworkLog, QFilterCondition> {}

extension NetworkLogQuerySortBy
    on QueryBuilder<NetworkLog, NetworkLog, QSortBy> {
  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByCreatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByEncodedResponse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encodedResponse', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy>
      sortByEncodedResponseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encodedResponse', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByError() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByErrorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByHeaders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headers', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByHeadersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headers', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByIsRequest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRequest', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByIsRequestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRequest', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByLogType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logType', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByLogTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logType', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByOperationType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operationType', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByOperationTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operationType', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByRequest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'request', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByRequestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'request', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByTraceHashcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'traceHashcode', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByTraceHashcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'traceHashcode', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByVariables() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'variables', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> sortByVariablesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'variables', Sort.desc);
    });
  }
}

extension NetworkLogQuerySortThenBy
    on QueryBuilder<NetworkLog, NetworkLog, QSortThenBy> {
  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByCreatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByEncodedResponse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encodedResponse', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy>
      thenByEncodedResponseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encodedResponse', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByError() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByErrorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByHeaders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headers', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByHeadersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headers', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByIsRequest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRequest', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByIsRequestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRequest', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByLogType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logType', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByLogTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logType', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByOperationType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operationType', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByOperationTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operationType', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByRequest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'request', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByRequestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'request', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByTraceHashcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'traceHashcode', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByTraceHashcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'traceHashcode', Sort.desc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByVariables() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'variables', Sort.asc);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QAfterSortBy> thenByVariablesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'variables', Sort.desc);
    });
  }
}

extension NetworkLogQueryWhereDistinct
    on QueryBuilder<NetworkLog, NetworkLog, QDistinct> {
  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdOn');
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByEncodedResponse(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'encodedResponse',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByError(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'error', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByGraphqlErrors() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'graphqlErrors');
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByHeaders(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'headers', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByIsRequest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isRequest');
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByLogType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logType');
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByOperationType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'operationType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByRequest(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'request', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByRequestWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'requestWords');
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statusCode');
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByTraceHashcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'traceHashcode');
    });
  }

  QueryBuilder<NetworkLog, NetworkLog, QDistinct> distinctByVariables(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'variables', caseSensitive: caseSensitive);
    });
  }
}

extension NetworkLogQueryProperty
    on QueryBuilder<NetworkLog, NetworkLog, QQueryProperty> {
  QueryBuilder<NetworkLog, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NetworkLog, DateTime, QQueryOperations> createdOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdOn');
    });
  }

  QueryBuilder<NetworkLog, String?, QQueryOperations>
      encodedResponseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'encodedResponse');
    });
  }

  QueryBuilder<NetworkLog, String?, QQueryOperations> errorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'error');
    });
  }

  QueryBuilder<NetworkLog, List<String>?, QQueryOperations>
      graphqlErrorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'graphqlErrors');
    });
  }

  QueryBuilder<NetworkLog, String, QQueryOperations> headersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'headers');
    });
  }

  QueryBuilder<NetworkLog, bool, QQueryOperations> isRequestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isRequest');
    });
  }

  QueryBuilder<NetworkLog, NetworkLogType, QQueryOperations> logTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logType');
    });
  }

  QueryBuilder<NetworkLog, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<NetworkLog, String?, QQueryOperations> operationTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'operationType');
    });
  }

  QueryBuilder<NetworkLog, String, QQueryOperations> requestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'request');
    });
  }

  QueryBuilder<NetworkLog, List<String>, QQueryOperations>
      requestWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'requestWords');
    });
  }

  QueryBuilder<NetworkLog, int?, QQueryOperations> statusCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statusCode');
    });
  }

  QueryBuilder<NetworkLog, int?, QQueryOperations> traceHashcodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'traceHashcode');
    });
  }

  QueryBuilder<NetworkLog, String?, QQueryOperations> variablesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'variables');
    });
  }
}
