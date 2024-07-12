import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_user_graph_gql/arre_user_graph_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final topRecommendedUsersProvider = FutureProvider.autoDispose((ref) async {
  final response = await ApiService.instance.getRecommendedUsers();
  if (response.isEmpty) {
    throw ArreException("No creators found");
  }
  final firstTenCreators = response.take(10).toList();
  ref.keepAlive();
  return firstTenCreators;
});

final recommendedCreatorsProvider = ChangeNotifierProvider((ref) {
  return RecommendedCreators();
});

class RecommendedCreators with ChangeNotifier {
  List<GGetRecommendedUsersData_response_data>? _data;
  bool _isLoading = true;
  dynamic _error;

  RecommendedCreators() {
    init();
  }

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _data != null;

  List<GGetRecommendedUsersData_response_data>? get data => _data;

  Future<void> init() async {
    try {
      _isLoading = true;
      _data = await ApiService.instance.getRecommendedUsers();
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  Future<void> removeUser(GGetRecommendedUsersData_response_data user) async {
    _data?.remove(user);
    notifyListeners();
    await ApiService.instance.removeRecommendedUser(user.userId);
    refresh();
  }
}
