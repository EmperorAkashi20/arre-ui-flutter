// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSearchHistoryItemCollection on Isar {
  IsarCollection<SearchHistoryItem> get searchHistoryItems => this.collection();
}

const SearchHistoryItemSchema = CollectionSchema(
  name: r'SearchHistoryItem',
  id: 7309085037371405047,
  properties: {
    r'searchQuery': PropertySchema(
      id: 0,
      name: r'searchQuery',
      type: IsarType.string,
    ),
    r'updatedOn': PropertySchema(
      id: 1,
      name: r'updatedOn',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _searchHistoryItemEstimateSize,
  serialize: _searchHistoryItemSerialize,
  deserialize: _searchHistoryItemDeserialize,
  deserializeProp: _searchHistoryItemDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _searchHistoryItemGetId,
  getLinks: _searchHistoryItemGetLinks,
  attach: _searchHistoryItemAttach,
  version: '3.1.0+1',
);

int _searchHistoryItemEstimateSize(
  SearchHistoryItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.searchQuery;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _searchHistoryItemSerialize(
  SearchHistoryItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.searchQuery);
  writer.writeDateTime(offsets[1], object.updatedOn);
}

SearchHistoryItem _searchHistoryItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SearchHistoryItem();
  object.id = id;
  object.searchQuery = reader.readStringOrNull(offsets[0]);
  object.updatedOn = reader.readDateTimeOrNull(offsets[1]);
  return object;
}

P _searchHistoryItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _searchHistoryItemGetId(SearchHistoryItem object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _searchHistoryItemGetLinks(
    SearchHistoryItem object) {
  return [];
}

void _searchHistoryItemAttach(
    IsarCollection<dynamic> col, Id id, SearchHistoryItem object) {
  object.id = id;
}

extension SearchHistoryItemQueryWhereSort
    on QueryBuilder<SearchHistoryItem, SearchHistoryItem, QWhere> {
  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SearchHistoryItemQueryWhere
    on QueryBuilder<SearchHistoryItem, SearchHistoryItem, QWhereClause> {
  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterWhereClause>
      idBetween(
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
}

extension SearchHistoryItemQueryFilter
    on QueryBuilder<SearchHistoryItem, SearchHistoryItem, QFilterCondition> {
  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'searchQuery',
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'searchQuery',
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchQuery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'searchQuery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'searchQuery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'searchQuery',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'searchQuery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'searchQuery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'searchQuery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'searchQuery',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchQuery',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      searchQueryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'searchQuery',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      updatedOnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedOn',
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      updatedOnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedOn',
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      updatedOnEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedOn',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      updatedOnGreaterThan(
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

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      updatedOnLessThan(
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

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterFilterCondition>
      updatedOnBetween(
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

extension SearchHistoryItemQueryObject
    on QueryBuilder<SearchHistoryItem, SearchHistoryItem, QFilterCondition> {}

extension SearchHistoryItemQueryLinks
    on QueryBuilder<SearchHistoryItem, SearchHistoryItem, QFilterCondition> {}

extension SearchHistoryItemQuerySortBy
    on QueryBuilder<SearchHistoryItem, SearchHistoryItem, QSortBy> {
  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy>
      sortBySearchQuery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchQuery', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy>
      sortBySearchQueryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchQuery', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy>
      sortByUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedOn', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy>
      sortByUpdatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedOn', Sort.desc);
    });
  }
}

extension SearchHistoryItemQuerySortThenBy
    on QueryBuilder<SearchHistoryItem, SearchHistoryItem, QSortThenBy> {
  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy>
      thenBySearchQuery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchQuery', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy>
      thenBySearchQueryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchQuery', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy>
      thenByUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedOn', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QAfterSortBy>
      thenByUpdatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedOn', Sort.desc);
    });
  }
}

extension SearchHistoryItemQueryWhereDistinct
    on QueryBuilder<SearchHistoryItem, SearchHistoryItem, QDistinct> {
  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QDistinct>
      distinctBySearchQuery({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchQuery', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SearchHistoryItem, SearchHistoryItem, QDistinct>
      distinctByUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedOn');
    });
  }
}

extension SearchHistoryItemQueryProperty
    on QueryBuilder<SearchHistoryItem, SearchHistoryItem, QQueryProperty> {
  QueryBuilder<SearchHistoryItem, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SearchHistoryItem, String?, QQueryOperations>
      searchQueryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchQuery');
    });
  }

  QueryBuilder<SearchHistoryItem, DateTime?, QQueryOperations>
      updatedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedOn');
    });
  }
}
