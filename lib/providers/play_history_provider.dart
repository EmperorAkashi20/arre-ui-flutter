import 'dart:async';

import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../graphql/api_service.dart';
import '../utils/utils.dart';
import 'audio_player/pod_player_v3.dart';
import 'provider_utils.dart';

final playHistoryProvider = ChangeNotifierProvider.autoDispose((ref) {
  return PlayHistoryProvider(ref);
});

class PlayHistoryProvider
    with
        ChangeNotifier,
        OnScroll<GPostIdAndCreatedAt>,
        LoadOnScrollNotification,
        AutoDisposableProvider
    implements PodPlaylistWithPostIDs {
  final AutoDisposeRef _ref;
  Completer<void>? _initCompleter;

  List<GPostIdAndCreatedAt> _data = [];
  bool _isLoading = true;
  dynamic _error;

  PlayHistoryProvider(this._ref) {
    init();
  }

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _data.length != 0;

  List<GPostIdAndCreatedAt>? get data => _data;

  @override
  Future<void>? get initFuture => _initCompleter?.future;

  @override
  KeepAliveLink keepAlive() => _ref.keepAlive();

  Future<void> init() async {
    if (_initCompleter != null) return _initCompleter!.future;
    _initCompleter = Completer();
    try {
      _isLoading = true;
      resetLoadOnScroll();
      notifyListeners();
      _data = await ApiService.instance.getPlayHistory();
      _initCompleter!.complete(null);
    } catch (e, st) {
      _error = e;
      Utils.reportError(e, st);
      _initCompleter!.completeError(e, st);
    } finally {
      _isLoading = false;
      _initCompleter = null;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  @override
  List<String> get listOfPodIds => data!.map((e) => e.postId!).toList();

  @override
  Future<List<GPostIdAndCreatedAt>> loadNextItems() async {
    final historyData =
        await ApiService.instance.getPlayHistory(after: _data.last.createdAt);
    _data.addAll(historyData);
    return historyData;
  }

  @override
  PodSourceEntity get podSourceEntity => PodSourceEntity.playlist;

  @override
  String get podSourceId => "play_history";

  @override
  Future<List<String>> getNextNPodIds() {
    return onScroll().then((value) => value.map((e) => e.postId!).toList());
  }

  @override
  String? get playlistTitle => "Play history";
}
