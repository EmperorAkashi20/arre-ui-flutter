import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../graphql/api_service.dart';
import '../../utils/utils.dart';

final searchUsersProvider =
    ChangeNotifierProvider.autoDispose((ref) => SearchUsersProvider());

class SearchUsersProvider with ChangeNotifier {
  List<String>? _data = [];
  dynamic _error;
  bool _isLoading = false;

  bool get hasData => _data!.isNotEmpty;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<String>? get data => _data;

  dynamic get error => _error;

  fetchUsers(String searchString) async {
    try {
      _isLoading = true;
      _data = [];
      notifyListeners();
      _data = await ApiService.instance.searchUsers(searchString);
    } catch (err, st) {
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
