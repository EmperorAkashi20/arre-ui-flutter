import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/comment_reply.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postCommentsProvider =
    ChangeNotifierProvider.family<PostCommentsProvider, String>((ref, postId) {
  return PostCommentsProvider(postId);
});
const MAX_COMMENT_LENGTH = 2200;

///Call `init` manually
class PostCommentsProvider
    with ChangeNotifier, OnScroll<Comment>, LoadOnScrollNotification {
  final TextEditingController commentTextEditingCtrl = TextEditingController();
  final String postId;
  Set<String> _currentUserReplyIds = {};
  GLastEvaluatedKeyVPComments? _lastEvaluatedKey;
  dynamic _error;
  List<CommentsUIListItem>? _data;
  bool _isLoading = true;
  Comment? _replyToComment;
  bool _sendingComment = false;
  String? pinnedCommentId, pinnedReplyId;

  PostCommentsProvider(this.postId);

  Comment? get replyToComment => _replyToComment;

  bool get sendingComment => _sendingComment;

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  String get commentDraft => commentTextEditingCtrl.text.trim();

  ///List of [Comment], [Reply] & [ReplyCountInfo]
  List<CommentsUIListItem>? get data => _data;

  dynamic get error => _error;

  List<CommentsUIListItem> _processedCommentList(List<Comment> comments) {
    return comments
        .expand(
          (element) => [
            element,
            if (element.replyCount > 0)
              ReplyCountInfo(
                postId: postId,
                comment: element,
                count: element.replyCount,
                isLoading: false,
                lastEvaluatedKey4Reply: null,
              )
          ],
        )
        .toList();
  }

  Future<void> init({
    String? pinnedCommentId,
    String? pinnedReplyId,
  }) async {
    try {
      this.pinnedReplyId = pinnedReplyId;
      this.pinnedCommentId = pinnedCommentId;
      final response =
          await ApiService.instance.getVoicepodComments(postId: postId);
      _data = _processedCommentList(response.item1);
      _lastEvaluatedKey = response.item2;
      if (pinnedReplyId != null) {
        final replyCountInfo = _data
            ?.whereType<ReplyCountInfo>()
            .firstWhere((element) => element.commentId == pinnedCommentId);
        if (replyCountInfo != null) {
          await loadReplies(replyCountInfo, pinnedReplyId: pinnedReplyId);
        }
      }
    } catch (err) {
      _error = err;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() async {
    await init();
  }

  Future<void> loadReplies(
    ReplyCountInfo replyCountInfo, {
    String? pinnedReplyId,
  }) async {
    if (replyCountInfo.isLoading) return;
    try {
      replyCountInfo.isLoading = true;
      notifyListeners();
      final response = await ApiService.instance.getVoicepodCommentReplies(
        comment: replyCountInfo.comment,
        lastEvaluatedKey: replyCountInfo.lastEvaluatedKey4Reply,
        pinnedReplyId: pinnedReplyId,
      );
      if (_currentUserReplyIds.isNotEmpty) {
        response.item1.removeWhere(
            (element) => _currentUserReplyIds.contains(element.replyId));
      }
      replyCountInfo.lastEvaluatedKey4Reply = response.item2;
      final replyCountIndex = data!.indexOf(replyCountInfo);
      data!.insertAll(replyCountIndex, response.item1);
      // final uniqueIds = Set<String>();
      // data!.retainWhere((element) {
      //   uniqueIds.add();
      // });
      replyCountInfo.count = replyCountInfo.count - response.item1.length;
    } catch (err, st) {
      Utils.reportError(err, st);
    } finally {
      replyCountInfo.isLoading = false;
      notifyListeners();
    }
  }

  void setReplyToComment(Comment? comment) {
    this._replyToComment = comment;
    notifyListeners();
  }

  bool isCommentValid(TextEditingValue textEditValue) {
    final len = textEditValue.text.trim().characters.length;
    return len <= MAX_COMMENT_LENGTH && len > 0;
  }

  Future<void> _sendReply() async {
    final replyToComment = this.replyToComment!;
    final reply = await ApiService.instance.sendPostCommentReply(
      postId: postId,
      body: commentDraft,
      comment: replyToComment,
      commentCreatedAt: "${replyToComment.createdAt.millisecondsSinceEpoch}",
    );
    final indexOfReplyComment = data!.indexOf(replyToComment);
    _data!.insert(indexOfReplyComment + 1, reply);
    _currentUserReplyIds.add(reply.replyId);
  }

  Future<void> _sendComment() async {
    final comment = await ApiService.instance
        .sendPostComment(postId, commentTextEditingCtrl.text.trim());
    _data ??= [];
    _data!.insert(0, comment);
  }

  Future<void> sendCommentOrReply({
    required void Function(dynamic err) onError,
    required void Function(int commentCountDiff) onSuccess,
  }) async {
    if (_sendingComment) return;
    try {
      int commentCountDiff = 0;
      _sendingComment = true;
      notifyListeners();
      if (replyToComment != null) {
        await _sendReply();
      } else {
        await _sendComment();
        commentCountDiff = 1;
      }
      commentTextEditingCtrl.clear();
      _replyToComment = null;
      onSuccess(commentCountDiff);
    } catch (err, st) {
      Utils.reportError(err, st);
      onError(err);
    } finally {
      _sendingComment = false;
      notifyListeners();
    }
  }

  Future<void> deleteCommentOrReply({
    required CommentOrReply commentOrReply,
    required void Function(dynamic err) onError,
    required void Function(int commentCountDiff, String message) onSuccess,
  }) async {
    try {
      final response = await ApiService.instance.deleteCommentOrReply(
        entityType: commentOrReply.entityType,
        entityId: commentOrReply.entityId,
        createdAt: commentOrReply.createdAt,
        postId: postId,
      );
      if (commentOrReply.isComment) {
        _data!.removeWhere(
            (element) => element.commentId == commentOrReply.commentId);
      } else {
        _data!.remove(commentOrReply);
      }
      notifyListeners();
      onSuccess(commentOrReply.isComment ? -1 : 0, response.message);
    } catch (err, st) {
      Utils.reportError(err, st);
      onError(err);
    }
  }

  Future<void> loadHasUserLiked(CommentOrReply commentOrReply) async {
    try {
      commentOrReply.hasCurrentUserLiked =
          await ApiService.instance.hasUserLikedCommentOrReply(
        entityType: commentOrReply.entityType,
        entityId: commentOrReply.entityId,
      );
    } catch (err, st) {
      Utils.reportError(err, st);
    } finally {
      notifyListeners();
    }
  }

  Future<void> toggleLike(CommentOrReply commentOrReply) async {
    int likeDiff = commentOrReply.hasCurrentUserLiked ? -1 : 1;
    try {
      commentOrReply.hasCurrentUserLiked = !commentOrReply.hasCurrentUserLiked;
      commentOrReply.likeCount += likeDiff;
      notifyListeners();
      await ApiService.instance.toggleCommentOrReplyLike(
        entityType: commentOrReply.entityType,
        entityId: commentOrReply.entityId,
        entityCreatedAt: "${commentOrReply.createdAt.millisecondsSinceEpoch}",
        isLiked: commentOrReply.hasCurrentUserLiked,
      );
    } catch (err, st) {
      commentOrReply.likeCount -= likeDiff;
      loadHasUserLiked(commentOrReply);
      Utils.reportError(err, st);
    } finally {
      notifyListeners();
    }
  }

  @override
  Future<List<Comment>> loadNextItems() async {
    if (_lastEvaluatedKey == null) return [];
    final response = await ApiService.instance.getVoicepodComments(
      postId: postId,
      lastEvaluatedKey: _lastEvaluatedKey,
    );
    _data!.addAll(_processedCommentList(response.item1));
    _lastEvaluatedKey = response.item2;
    return response.item1;
  }
}
