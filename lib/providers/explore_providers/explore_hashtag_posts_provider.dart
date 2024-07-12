import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_user_feed_gql/arre_user_feed_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
import '../../utils/utils.dart';

final exploreHashtagPostProvider = ChangeNotifierProvider.autoDispose
    .family<ExploreHashtagPostProvider, String>((ref, hashtagId) {
  return ExploreHashtagPostProvider(ref, hashtagId);
});

// final exploreTopCreatorProvider = FutureProvider.autoDispose((ref) async {
//   final response = await ApiService.instance.listTopCreators();
//   if (response.isEmpty) {
//     throw ArreException("No Top creators found");
//   }
//   ref.keepAlive();
//   return response;
// });

final exploreDynamicCardsProvider = FutureProvider.autoDispose((ref) async {
  final response = await ApiService.instance.getDynamicCards();
  if (response.isEmpty) {
    throw ArreException("No dynamic cards found");
  }
  ref.keepAlive();
  return response;
});

final exploreTopHashtagProvider = FutureProvider.autoDispose((ref) async {
  final response = await ApiService.instance.listTopHashtags();
  if (response.isEmpty) {
    throw ArreException("No Hashtags found");
  }
  ref.keepAlive();
  return response;
});

class ExploreHashtagPostProvider
    with ChangeNotifier, AutoDisposableProvider
    implements PodPlaylistWithPostIDs {
  final AutoDisposeRef<ExploreHashtagPostProvider> _ref;
  final String hashtagId;
  List<GListTopPostsByHashTagIdData_response_data>? _data;
  dynamic _error;
  bool _isLoading = true;

  ExploreHashtagPostProvider(this._ref, this.hashtagId) {
    init();
  }

  @override
  KeepAliveLink keepAlive() => _ref.keepAlive();

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  @override
  Future<void>? get initFuture => null;

  List<GListTopPostsByHashTagIdData_response_data>? get data => _data;

  dynamic get error => _error;

  @override
  String get playlistTitle => "$hashtagId";

  Future<void> init() async {
    try {
      _data = await ApiService.instance.listTopPostsByHashTagId(hashtagId);
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
  List<String> get listOfPodIds => _data!.map((e) => e.voicepodId).toList();

  @override
  PodSourceEntity get podSourceEntity => PodSourceEntity.hashtagList;

  @override
  String get podSourceId => "$hashtagId";

  @override
  Future<List<String>> getNextNPodIds() {
    return SynchronousFuture([]);
  }
}
