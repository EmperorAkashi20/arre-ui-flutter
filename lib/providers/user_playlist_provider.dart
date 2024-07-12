import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/utils.dart';

///This providers all the [GPlaylist] of user [UserPlaylistProvider.userId]
final userPlaylistProvider = ChangeNotifierProvider.autoDispose
    .family<UserPlaylistProvider, String>((ref, userId) {
  if (userId == arrePref.userId) {
    ref.keepAlive();
  }
  return UserPlaylistProvider(userId);
});

class UserPlaylistProvider
    with ChangeNotifier, OnScroll<GPlaylist>, LoadOnScrollNotification {
  final String userId;
  List<GPlaylist>? _data;
  dynamic _error;
  bool _isLoading = true;
  late PlaylistPrivacy privacy;

  UserPlaylistProvider(this.userId) {
    privacy = userId == arrePref.userId
        ? PlaylistPrivacy.both
        : PlaylistPrivacy.public;
    init();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<GPlaylist>? get data => _data;

  dynamic get error => _error;

  Future<void> init() async {
    try {
      _isLoading = true;
      resetLoadOnScroll();
      notifyListeners();
      _data = await ApiService.instance.getPlaylistByUserId(
        userId,
        privacy: privacy,
      );
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
  Future<List<GPlaylist>> loadNextItems() async {
    final playlist = await ApiService.instance.getPlaylistByUserId(
      userId,
      after: _data!.last.createdOn,
      privacy: privacy,
    );
    _data!.addAll(playlist);
    return playlist;
  }
}
