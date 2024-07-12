import 'dart:io';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/network/media_service.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';
import '../arre_files_provider.dart';

///CU - Create and Update

final playlistCuProvider = ChangeNotifierProvider.family
    .autoDispose<PlaylistCUProvider, GPlaylist?>((ref, playlist) {
  return PlaylistCUProvider(playlist);
});

class PlaylistCUProvider with ChangeNotifier {
  final GPlaylist? playlist;
  bool _isPrivate;

  File? _imageFile;
  bool _isSubmitting = false;

  final TextEditingController titleEditingCtrl;

  PlaylistCUProvider(this.playlist)
      : _isPrivate = playlist?.isPrivate ?? true,
        titleEditingCtrl = TextEditingController(text: playlist?.title);

  bool get isSubmitting => _isSubmitting;

  bool get isPrivate => _isPrivate;

  bool get isEdit => playlist != null;

  File? get imageFile => _imageFile;

  Future<void> pickCoverImage({
    required void Function(dynamic error) onError,
  }) async {
    try {
      final pickedFile = await ArreFiles.pickMedia(FileType.image);
      if (pickedFile != null) {
        _imageFile = pickedFile;
        notifyListeners();
      }
    } catch (err, st) {
      onError(err);
      Utils.reportError(err, st);
    }
  }

  void clearMedia() {
    _imageFile = null;
    notifyListeners();
  }

  void changePrivacy() {
    _isPrivate = !_isPrivate;
    notifyListeners();
  }

  Future<String?> _uploadCoverImage() async {
    if (_imageFile != null) {
      return AMediaService.instance.uploadFile(
        file: _imageFile!,
        entity: MediaEntity.BgmThumbnailPicture,
        entityId: playlist?.playlistId,
      );
    }
    return SynchronousFuture(null);
  }

  Future<void> submit({
    required void Function(GPlaylist playlist, String message) onSuccess,
    required void Function(dynamic err) onError,
  }) async {
    if (_isSubmitting) return;
    try {
      _isSubmitting = true;
      notifyListeners();
      String? mediaId;
      String successMessage;
      GPlaylist response;
      mediaId = await _uploadCoverImage();
      if (!titleEditingCtrl.text.isValid) {
        throw ArreIgnoreException("Please enter the title");
      }
      if (isEdit) {
        response = await ApiService.instance.editPlaylist(
          playlistId: playlist!.playlistId,
          title: titleEditingCtrl.text,
          privacy:
              _isPrivate ? PlaylistPrivacy.private : PlaylistPrivacy.public,
          coverImage: mediaId,
        );
        successMessage = "Playlist updated";
      } else {
        response = await ApiService.instance.createPlaylist(
          title: titleEditingCtrl.text,
          privacy:
              _isPrivate ? PlaylistPrivacy.private : PlaylistPrivacy.public,
          coverImage: mediaId,
        );
        successMessage = "Playlist created";
      }

      onSuccess.call(
        response,
        successMessage,
      );
    } catch (err, st) {
      onError.call(err);
      Utils.reportError(err, st);
    } finally {
      _isSubmitting = false;
      notifyListeners();
    }
  }
}
