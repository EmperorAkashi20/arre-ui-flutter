import 'dart:async';

import 'package:arre_frontend_flutter/models/src/search_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../local_db/local_db.dart';
import '../../utils/utils.dart';

final searchProvider = ChangeNotifierProvider.autoDispose((ref) {
  return SearchProvider();
});

class SearchProvider with ChangeNotifier {
  bool _isLoading = false;
  bool _hasTextValueChanged = false;
  bool _isActive = false;
  dynamic _error;

  StreamSubscription? _dbChangesSub;
  List<SearchHistoryItem> _recentSearches = [];
  final searchFocusNode = FocusNode();

  TextEditingController searchStringController = TextEditingController();

  SearchProvider() {
    _init();
    searchFocusNode.addListener(() {
      notifyListeners();
    });
  }

  bool get hasTextValueChanged => _hasTextValueChanged;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _recentSearches.length != 0;

  bool get isActive => _isActive;

  List<SearchHistoryItem>? get recentSearches => _recentSearches;

  dynamic get error => _error;

  Future<void> saveSearchHistory(SearchHistoryItem searchHistory) async {
    try {
      await ArreLocalDb.instance.writeTxn((isar) async {
        await isar.searchHistoryItems.put(searchHistory);
      });
    } catch (err, st) {
      Utils.reportError(err, st);
    } finally {
      notifyListeners();
    }
  }

  Future<void> _init() async {
    await _initializeSearchHistory();
    final _searchHistoryCollection =
        await ArreLocalDb.instance.getCollection<SearchHistoryItem>();
    _dbChangesSub =
        _searchHistoryCollection.watchLazy().listen(_onSearchDbChange);
    await fetchSearchHistory();
    notifyListeners();
  }

  Future<void> _initializeSearchHistory() {
    return ArreLocalDb.instance.readTxn((isar) async {
      _recentSearches =
          await isar.searchHistoryItems.where().sortByUpdatedOn().findAll();
    });
  }

  Future<void> _onSearchDbChange(_) async {
    await _initializeSearchHistory();
    notifyListeners();
  }

  Future<void> fetchSearchHistory() async {
    try {
      _isLoading = true;
      notifyListeners();
      return await ArreLocalDb.instance.readTxn((isar) async {
        _recentSearches = await isar.searchHistoryItems
            .where()
            .sortByUpdatedOnDesc()
            .findAll();
      });
    } catch (err, st) {
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> deleteSingleSearch(int id) async {
    try {
      return await ArreLocalDb.instance.writeTxn((isar) async {
        await isar.searchHistoryItems.delete(id);
      });
    } catch (err, st) {
      Utils.reportError(err, st);
    } finally {
      notifyListeners();
    }
  }

  Future<void> deleteAllSearches() async {
    try {
      _isLoading = true;
      notifyListeners();
      return await ArreLocalDb.instance.writeTxn((isar) async {
        await isar.searchHistoryItems.clear();
      });
    } catch (err, st) {
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> deleteDuplicateValuesFromDb() async {
    try {
      return await ArreLocalDb.instance.writeTxn((isar) async {
        await isar.searchHistoryItems
            .filter()
            .group((q) => q.searchQueryEqualTo(searchStringController.text))
            .deleteAll();
      });
    } catch (err, st) {
      Utils.reportError(err, st);
    } finally {
      notifyListeners();
    }
  }

  textValueChanged() {
    if (_hasTextValueChanged == false) {
      _hasTextValueChanged = !_hasTextValueChanged;
    }
  }

  changeActiveStatue() {
    _isActive = !_isActive;
  }

  @override
  void dispose() {
    _dbChangesSub?.cancel();
    searchFocusNode.dispose();
    super.dispose();
  }
}
