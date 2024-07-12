import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_user_feed_gql/arre_user_feed_gql.dart';
import 'package:built_collection/built_collection.dart';

import 'community_pin.dart';

class Post with CommunityPinItem {
  final String postId;
  final String userId;
  final String title;
  final ArreUser? user;
  final String postUrl;
  final BuiltList<String> audioMediaFiles;
  final BuiltList<String> videoMediaFiles;
  final BuiltList<String> imageMediaFiles;
  int playCount;
  int likeCount;
  int commentCount;
  final int? impressionCount;
  final String engagementScore;
  final String createdAt;
  final int duration;
  final String? communityId;

  ///`public` | `private` | `communityOnly`
  final String? visibility;

  final DateTime fetchedAt;

  bool isDeleted = false;

  @override
  String get pinnedCommunityId => communityId!;

  bool get isPrivate => privacy == PostPrivacy.private;

  bool get isPublic => privacy == PostPrivacy.public;

  bool get isCommunityOnly => privacy == PostPrivacy.communityOnly;

  PostPrivacy get privacy {
    switch (visibility) {
      case "private":
        return PostPrivacy.private;
      case "communityOnly":
        return PostPrivacy.communityOnly;
      case "public":
      default:
        return PostPrivacy.public;
    }
  }

  String get audioMediaId => audioMediaFiles.first;

  bool get hasAnyMedia => mediaTypeIsVideo || mediaTypeIsImage;

  bool get mediaTypeIsImage => imageMediaFiles.isNotEmpty;

  bool get mediaTypeIsVideo => videoMediaFiles.isNotEmpty;

  String? get imageMediaId => mediaTypeIsImage ? imageMediaFiles.first : null;

  String? get videoMediaId => mediaTypeIsVideo ? videoMediaFiles.first : null;

  DateTime get createdAtDateTime =>
      DateTime.fromMillisecondsSinceEpoch(int.parse(createdAt));

  Post({
    required this.postId,
    required this.userId,
    required this.title,
    required this.user,
    required this.postUrl,
    required this.audioMediaFiles,
    required this.videoMediaFiles,
    required this.imageMediaFiles,
    required this.playCount,
    required this.likeCount,
    required this.commentCount,
    required this.impressionCount,
    required this.engagementScore,
    required this.createdAt,
    required this.duration,
    required this.visibility,
    required this.communityId,
  }) : fetchedAt = DateTime.now();

  factory Post.fromPinnedPost(
      GPinnedCommunityEntitiesData_response_data__asVoicepod p0) {
    return Post(
      postId: p0.postId,
      userId: p0.userId,
      title: p0.title,
      user: ArreUser.fromPinnedVoicepodUser(p0.user),
      postUrl: p0.postUrl,
      audioMediaFiles: p0.audioMediaFiles,
      videoMediaFiles: p0.videoMediaFiles,
      imageMediaFiles: p0.imageMediaFiles,
      playCount: p0.playCount,
      likeCount: p0.likeCount,
      commentCount: p0.commentCount,
      impressionCount: p0.impressionCount,
      engagementScore: p0.engagementScore,
      createdAt: p0.createdAt.toString(),
      duration: p0.duration,
      visibility: p0.visibility,
      communityId: p0.postCommunityId,
    );
  }

  static Post fromGPostDetails(GPostDetails post) {
    return Post(
      postId: post.postId,
      userId: post.userId,
      title: post.title,
      user: ArreUser.fromGPostDetailsUser(post.user),
      postUrl: post.postUrl,
      audioMediaFiles: post.audioMediaFiles,
      videoMediaFiles: post.videoMediaFiles,
      imageMediaFiles: post.imageMediaFiles,
      playCount: post.playCount,
      likeCount: post.likeCount,
      commentCount: post.commentCount,
      impressionCount: post.impressionCount,
      engagementScore: post.engagementScore,
      createdAt: post.createdAt,
      duration: post.duration,
      visibility: post.visibility,
      communityId: post.communityId,
    );
  }

  Post copyWith({
    int? likeCount,
    int? commentCount,
    int? impressionCount,
    int? playCount,
  }) {
    return Post(
      postId: postId,
      userId: userId,
      title: title,
      user: user,
      postUrl: postUrl,
      audioMediaFiles: audioMediaFiles,
      videoMediaFiles: videoMediaFiles,
      imageMediaFiles: imageMediaFiles,
      playCount: playCount ?? this.playCount,
      likeCount: likeCount ?? this.likeCount,
      commentCount: commentCount ?? this.commentCount,
      impressionCount: impressionCount ?? this.impressionCount,
      engagementScore: engagementScore,
      createdAt: createdAt,
      duration: duration,
      visibility: visibility,
      communityId: communityId,
    );
  }
}
