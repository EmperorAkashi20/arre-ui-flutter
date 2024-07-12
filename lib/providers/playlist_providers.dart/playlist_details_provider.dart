import 'dart:async';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
import '../../utils/utils.dart';
import '../audio_player/pod_player_v3.dart';

///This providers all the details of Playlist [PlaylistDetailsProvider.playlistId]
final playlistDetailsProvider = ChangeNotifierProvider.autoDispose
    .family<PlaylistDetailsProvider, String>((ref, playlistId) {
  return PlaylistDetailsProvider(ref, playlistId);
});

class PlaylistDetailsProvider
    with ChangeNotifier, AutoDisposableProvider
    implements PodPlaylistWithPostIDs {
  final AutoDisposeRef<PlaylistDetailsProvider> _ref;
  Completer<void>? _initCompleter;
  final String playlistId;
  GPlaylist? _data;
  dynamic _error;
  bool _isLoading = true;

  PlaylistDetailsProvider(this._ref, this.playlistId) {
    // attachLoadOnScroll();
    init();
  }

  @override
  List<String> get listOfPodIds => _data!.listOfPosts.toList();

  @override
  PodSourceEntity get podSourceEntity => PodSourceEntity.playlist;

  @override
  String get podSourceId => playlistId;

  @override
  Future<void>? get initFuture => _initCompleter?.future;

  @override
  KeepAliveLink keepAlive() => _ref.keepAlive();

  void setInitialData(GPlaylist? playlist) {
    _data ??= playlist;
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  GPlaylist? get data => _data;

  dynamic get error => _error;

  Future<void> init() async {
    if (_initCompleter != null) return _initCompleter!.future;
    _initCompleter = Completer();
    try {
      _isLoading = true;
      notifyListeners();
      _data = await ApiService.instance.getPlaylistDetails(playlistId);
      _initCompleter!.complete(null);
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
      _initCompleter!.completeError(err, st);
    } finally {
      _isLoading = false;
      _initCompleter = null;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  @override
  Future<List<String>> getNextNPodIds() {
    return SynchronousFuture([]);
  }

  @override
  String? get playlistTitle => data?.title;
}
