import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final communityLangProvider = FutureProvider.family<List<String>, String>(
  (ref, communityId) {
    return ApiService.instance.getCommunityLanguages(communityId);
  },
);



final communityLangDataProvider =
    ChangeNotifierProvider((ref) => CommunityLanguageDataProvider());

class CommunityLanguageDataProvider with ChangeNotifier {
  Map<String, List<String>?> _data = {};
  Map<String, Future<List<String>?>> _fetchingCommunityLanguages = {};
  Map<String, dynamic> _errors = {};

  bool hasData(String id) => _data[id] is List<String>;

  List<String>? getData(String id) => _data[id];

  bool isLoading(String id) => _fetchingCommunityLanguages.containsKey(id);

  bool get isFetchingOrHasData => _data.isNotEmpty;

  ///Call this in the initState of the Feed widget
  Future<List<String>?> fetchData(
    String communityId, {
    bool force = false,
  }) {
    if (hasData(communityId) && !force) {
      return Future.value(getData(communityId));
    } else if (_fetchingCommunityLanguages.containsKey(communityId) && !force) {
      return _fetchingCommunityLanguages[communityId]!;
    } else {
      var fetchingFuture = ApiService.instance
          .getCommunityLanguages(communityId)
          .then<List<String>?>((value) {
        _data[communityId] = value;
        _errors.remove(communityId);
        return value;
      }).catchError((err, st) {
        _data.remove(communityId);
        _errors[communityId] = err;
        Utils.reportError(err, st);
        return null;
      }).whenComplete(() {
        _fetchingCommunityLanguages.remove(communityId);
        notifyListeners();
      });

      if (_errors[communityId] == null) {
        _fetchingCommunityLanguages[communityId] = fetchingFuture;
      }
      return fetchingFuture;
    }
  }

  void refresh(String communityId) => fetchData(communityId, force: true);
}
