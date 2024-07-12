import 'dart:async';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/comment_reply.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/providers/communities/community_feed_provider.dart';
import 'package:arre_frontend_flutter/providers/playlist_providers.dart/playlist_details_provider.dart';
import 'package:arre_frontend_flutter/providers/user_playlist_provider.dart';
import 'package:arre_frontend_flutter/screens/playlist_detail_screens/playlist_detail_screens.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/snackbars.dart';
import '../../utils/utils.dart';
import '../post_comments_provider.dart';
import 'post_data_provider.dart';
import 'user_post_relation_provider.dart';

abstract class VoicepodAction {
  static Future<void> applyLikeUnlike(WidgetRef ref, String postId) async {
    final isLiked =
        await ref.read(userPostRelationsProvider).applyLikeUnlike(postId);
    if (isLiked == true) {
      ref.read(postDataProvider).addLikeCount(postId, 1);
    } else if (isLiked == false) {
      ref.read(postDataProvider).addLikeCount(postId, -1);
    }
  }

  ///Returns true if deleted successfully
  static Future<bool> delete(WidgetRef ref, String postId) async {
    try {
      final response = await ApiService.instance.deletePost(postId);
      ref.read(postDataProvider).delete(postId);
      showInfoSnackBar(response.message);
      return true;
    } catch (err, st) {
      showErrorSnackBar(err);
      Utils.reportError(err, st);
      return false;
    }
  }

  static Future<void> sendComment(WidgetRef ref, String postId) async {
    final postCommentsPvd = ref.read(postCommentsProvider(postId));
    postCommentsPvd.sendCommentOrReply(
      onError: (err) => showSnackBarV2(error: err, context: ref.context),
      onSuccess: (commentCountDiff) {
        ref.read(postDataProvider).addCommentCount(postId, commentCountDiff);
        ref.read(userPostRelationsProvider).markAsCommented(postId);
      },
    );
  }

  static void deleteComment(WidgetRef ref, CommentOrReply commentOrReply) {
    final postCommentsPvd =
        ref.read(postCommentsProvider(commentOrReply.postId));
    postCommentsPvd.deleteCommentOrReply(
      commentOrReply: commentOrReply,
      onError: (err) => showSnackBarV2(error: err, context: ref.context),
      onSuccess: (commentCountDiff, message) {
        ref
            .read(postDataProvider)
            .addCommentCount(commentOrReply.postId, commentCountDiff);
        ref.read(userPostRelationsProvider).refresh(commentOrReply.postId);
      },
    );
  }

  static Future<void> saveToDefaultPlaylist(WidgetRef ref, String postId) {
    return ApiService.instance.savePostToDefaultPlaylist(postId).then((value) {
      showInfoSnackBar(
        value.message ?? "Saved",
        action: SnackBarAction(
          label: "Open",
          onPressed: () => ArreNavigator.instance.push(
            AAppPage(
              child:
                  UserPlaylistDetailsScreen(playlistId: value.data!.playlistId),
            ),
          ),
        ),
      );
      //Updating the playlist details
      if (ref.exists(userPlaylistProvider(arrePref.userId!))) {
        final sysGeneratedPlaylist = ref
            .read(userPlaylistProvider(arrePref.userId!))
            .data
            ?.where((element) => element.isSystemGenerated)
            .toList();
        if (sysGeneratedPlaylist == null) return;
        for (var playlist in sysGeneratedPlaylist) {
          if (ref.exists(playlistDetailsProvider(playlist.playlistId))) {
            ref.invalidate(playlistDetailsProvider(playlist.playlistId));
          }
        }
      }
    }).catchError((err, st) {
      showErrorSnackBar(err);
      Utils.reportError(err, st);
    });
  }

  static Future<void> addToPlaylist(
    WidgetRef ref, {
    required String postId,
    required String playlistId,
  }) {
    return ApiService.instance
        .addPostToPlaylist(voicepodId: postId, playlistId: playlistId)
        .then((value) {
      showInfoSnackBar(
        value.message ?? "Saved to playlist",
        action: SnackBarAction(
          label: "Open",
          onPressed: () => ArreNavigator.instance.push(
            AAppPage(
              child:
                  UserPlaylistDetailsScreen(playlistId: value.data!.playlistId),
            ),
          ),
        ),
      );
      //Updating the playlist
      if (ref.exists(playlistDetailsProvider(playlistId))) {
        ref.invalidate(playlistDetailsProvider(playlistId));
      }
    }).catchError((err, st) {
      showErrorSnackBar(err);
      Utils.reportError(err, st);
    });
  }

  static Future<void> remove4mPlaylist(
    WidgetRef ref, {
    required String postId,
    required String playlistId,
  }) {
    return ApiService.instance
        .removePost4mPlaylist(voicepodId: postId, playlistId: playlistId)
        .then((value) {
      ref.read(playlistDetailsProvider(playlistId)).refresh();
      showInfoSnackBar(value.message ?? "Saved to playlist");
    }).catchError((err, st) {
      showErrorSnackBar(err);
    });
  }

  static FutureOr? markPodAsPlayed(
    Ref ref, {
    required String postId,
  }) {
    ApiService.instance
        .markPodAsPlayed(postId, arreAnalytics.appState)
        .then((_) {
      ref.read(postDataProvider).addPlayedCount(postId, 1);
    });
  }

  ///Call this in following scenarios
  /// - Pod play is completed
  /// - Next pod is played
  /// - Previous pod is played
  /// - Player is dismissed
  ///
  /// Note: The API RecordStreamTime should be called only if the playedDuration > 5 sec
  static void recordStreamTime({
    required String postId,
    required int playedDuration,
    required String? playListUniqueUrl,
    required String? screenName,
    int? playingIndex,
  }) {
    if (screenName == GAScreen.VOICEPOD_STORY_SCREEN) {
      ApiService.instance.trackOnboardingPodEngagement(
        postId: postId,
        entityType: "recordStreamtime",
        rank: playingIndex ?? -1,
        durationInSeconds: playedDuration,
      );
    }
    ApiService.instance.recordPodStreamTime(
      voicepodId: postId,
      playedOn: arreAnalytics.appState,
      duration: playedDuration,
      playListUniqueUrl: playListUniqueUrl,
      screenName: screenName,
    );
  }

  static Future<void> pinCommunityPost(
    WidgetRef ref, {
    required Post post,
    required String communityId,
  }) {
    return ref.read(communityFeedProvider(communityId)).pinPost(post);
  }

  static Future<void> unpinCommunityPost(
    WidgetRef ref, {
    required Post post,
    required String communityId,
  }) {
    return ref.read(communityFeedProvider(communityId)).unpinPost(post);
  }

  static Future<String> sendNotification({
    required Post post,
    required String communityId,
  }) {
    return ApiService.instance.triggerCommunityVoicepodNotification(
      communityId: communityId,
      podId: post.postId,
    );
  }
}
