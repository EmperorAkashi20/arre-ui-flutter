import 'dart:async';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_user_graph_gql/arre_user_graph_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recommendedTopicsProvider =
    ChangeNotifierProvider((ref) => RecommendedTopicsProvider());

final userInterestedTopicsProvider =
    ChangeNotifierProvider((ref) => UserInterestedTopicsProvider());

final selectedTopicsProvider =
    StateNotifierProvider<SelectedTopicsNotifier, Set<String>>((ref) {
  return SelectedTopicsNotifier({});
});

class RecommendedTopicsProvider with ChangeNotifier {
  List<GGetAllKeywordsData_response_data>? _data;
  bool _isLoading = true;
  dynamic _error;

  RecommendedTopicsProvider() {
    init();
  }

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _data != null;

  List<GGetAllKeywordsData_response_data>? get data => _data;

  Future<void> init() async {
    try {
      _isLoading = true;
      notifyListeners();
      _data = await ApiService.instance.getAllTopics();
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();
}

class UserInterestedTopicsProvider with ChangeNotifier {
  List<GGetUserInterestedKeywordsData_response_data>? _data;
  bool _isLoading = true;
  bool _disposed = false;
  dynamic _error;

  UserInterestedTopicsProvider() {
    init();
  }

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _data != null;

  List<GGetUserInterestedKeywordsData_response_data>? get data => _data;

  Future<void> init() async {
    try {
      _isLoading = true;
      notifyListeners();
      _data = await ApiService.instance.getUserInterestedTopics();
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }
}

class SelectedTopicsNotifier extends StateNotifier<Set<String>> {
  SelectedTopicsNotifier(Set<String> initialSelectedTopics)
      : super(initialSelectedTopics);

  void addTopic(String topicId) {
    state = {...state, topicId};
  }

  void clearSelectedTopics() {
    try {
      state = {};
    } catch (e) {}
  }

  bool isSelected(String topicId) {
    return state.contains(topicId);
  }
}
