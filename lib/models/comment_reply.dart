import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';

abstract class CommentsUIListItem {
  final String commentId;

  CommentsUIListItem(this.commentId);
}

abstract class CommentOrReply implements CommentsUIListItem {
  final String postId;
  final String commentId;
  final String userId;
  final String body;
  final DateTime createdAt;
  final String status;
  int likeCount;
  final bool isPinned;

  String get entityType;

  bool get isComment => entityType == "comment";

  String get entityId;

  ///Set this using API [hasUserLikedReplyOrComment]. default value is false
  bool? _hasCurrentUserLiked;

  bool get hasCurrentUserLiked => _hasCurrentUserLiked ?? false;

  bool get isLikeDataFetched => _hasCurrentUserLiked != null;

  set hasCurrentUserLiked(bool? value) {
    _hasCurrentUserLiked = value;
  }

  CommentOrReply({
    required this.postId,
    required this.commentId,
    required this.userId,
    required this.body,
    required this.likeCount,
    required this.createdAt,
    required this.status,
    required this.isPinned,
  });
}

class Comment extends CommentOrReply {
  final int replyCount;

  @override
  String get entityType => "comment";

  @override
  String get entityId => commentId;

  factory Comment.fromGVPComment(GVPComment comment) {
    return Comment(
      commentId: comment.commentId,
      postId: comment.postId,
      userId: comment.userId,
      body: comment.body,
      likeCount: comment.likeCount,
      replyCount: comment.replyCount,
      createdAt:
          DateTime.fromMillisecondsSinceEpoch(int.parse(comment.createdAt)),
      status: comment.status.name,
      isPinned: comment.isPinned == true,
    );
  }

  Comment({
    required super.commentId,
    required super.postId,
    required super.userId,
    required super.body,
    required super.likeCount,
    required super.createdAt,
    required this.replyCount,
    required super.status,
    required super.isPinned,
  });
}

class Reply extends CommentOrReply {
  final Comment comment;
  final String replyId;

  @override
  String get entityType => "reply";

  @override
  String get entityId => replyId;

  ///Set this using API [hasUserLikedReplyOrComment]. default value is false
  bool? _hasCurrentUserLiked;

  bool get hasCurrentUserLiked => _hasCurrentUserLiked ?? false;

  set hasCurrentUserLiked(bool? value) {
    _hasCurrentUserLiked = value;
  }

  factory Reply.fromGVPCommentReply(GVPCommentReply reply, Comment comment) {
    return Reply(
      replyId: reply.replyId,
      commentId: reply.commentId,
      postId: reply.postId,
      userId: reply.userId,
      body: reply.body,
      likeCount: reply.likeCount,
      createdAt:
          DateTime.fromMillisecondsSinceEpoch(int.parse(reply.createdAt)),
      status: reply.status.name,
      comment: comment,
      isPinned: reply.isPinned == true,
    );
  }

  Reply({
    required this.replyId,
    required super.commentId,
    required super.postId,
    required super.userId,
    required super.body,
    required super.likeCount,
    required super.createdAt,
    required super.status,
    required this.comment,
    required super.isPinned,
  });
}

class ReplyCountInfo implements CommentsUIListItem {
  final String postId;
  final Comment comment;

  String get commentId => comment.commentId;
  int count;
  GLastEvaluatedKeyVPCommentReply? lastEvaluatedKey4Reply;
  bool isLoading;

  ReplyCountInfo({
    required this.postId,
    required this.comment,
    required this.count,
    required this.isLoading,
    required this.lastEvaluatedKey4Reply,
  });
}
