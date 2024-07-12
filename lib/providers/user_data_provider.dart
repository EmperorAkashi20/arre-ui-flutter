import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userShortDataProvider =
    ChangeNotifierProvider((ref) => UserShortDataProvider());

class UserShortDataProvider with ChangeNotifier {
  Map<String, ArreUser?> _data = {};
  Map<String, Future<ArreUser?>> _fetchingUsers = {};
  Map<String, dynamic> _errors = {};

  bool hasData(String id) => _data[id] is ArreUser;

  ArreUser? getData(String id) => _data[id];

  bool isLoading(String id) => _fetchingUsers.containsKey(id);

  bool get isFetchingOrHasData => _data.isNotEmpty;

  ///Call this in the initState of the Feed widget
  Future<ArreUser?> fetchData(
    String userId, {
    bool force = false,
  }) {
    if (hasData(userId) && !force) {
      return Future.value(getData(userId));
    } else if (_fetchingUsers.containsKey(userId) && !force) {
      return _fetchingUsers[userId]!;
    } else {
      var fetchingFuture = ApiService.instance
          .getUserShortDetails(userId)
          .then<ArreUser?>((value) {
        _data[userId] = value;
        _errors.remove(userId);
        return value;
      }).catchError((err, st) {
        _data.remove(userId);
        _errors[userId] = err;
        Utils.reportError(err, st);
        return null;
      }).whenComplete(() {
        _fetchingUsers.remove(userId);
        notifyListeners();
      });

      if (_errors[userId] == null) {
        _fetchingUsers[userId] = fetchingFuture;
      }
      return fetchingFuture;
    }
  }

  void refresh(String userId) => fetchData(userId, force: true);
}
