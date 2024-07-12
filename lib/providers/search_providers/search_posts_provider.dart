import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../graphql/api_service.dart';
import '../../utils/utils.dart';
import '../audio_player/pod_player_v3.dart';

final searchPostsProvider =
    ChangeNotifierProvider.autoDispose((ref) => SearchPostsProvider(ref));

class SearchPostsProvider
    with ChangeNotifier, AutoDisposableProvider
    implements PodPlaylistWithPostIDs {
  String? playingKeyword;
  String? _searchKeyword;
  final AutoDisposeRef _ref;
  List<String>? _data = [];
  dynamic _error;
  bool _isLoading = false;

  SearchPostsProvider(this._ref);

  bool get hasData => _data!.isNotEmpty;

  String? get searchKeyword => _searchKeyword;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<String>? get data => _data;

  dynamic get error => _error;

  @override
  Future<void>? get initFuture => null;

  @override
  KeepAliveLink keepAlive() => _ref.keepAlive();

  Future<void> fetchPosts(String searchString) async {
    try {
      _searchKeyword = searchString;
      _isLoading = true;
      _data = [];
      notifyListeners();
      _data = await ApiService.instance.searchPosts(searchString);
    } catch (err, st) {
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  @override
  List<String> get listOfPodIds => _data!.cast<String>();

  @override
  PodSourceEntity get podSourceEntity => PodSourceEntity.hashtagList;

  @override
  String get podSourceId => "search_keyword: $playingKeyword";

  @override
  Future<List<String>> getNextNPodIds() {
    return SynchronousFuture([]);
  }

  @override
  String? get playlistTitle => "'$playingKeyword'  Search results";
}
