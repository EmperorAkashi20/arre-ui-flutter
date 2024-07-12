import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_user_feed_gql/arre_user_feed_gql.dart';
import 'package:equatable/equatable.dart';

class ArreUser extends Equatable {
  final String userId;
  final String username;
  final String? profilePictureMediaId;

  ArreUser({
    required this.userId,
    required this.username,
    required this.profilePictureMediaId,
  });

  static ArreUser? fromPinnedVoicepodUser(
      GPinnedCommunityEntitiesData_response_data__asVoicepod_user? user) {
    if (user == null) return null;
    return ArreUser(
      userId: user.userId,
      username: user.username,
      profilePictureMediaId: user.profilePictureMediaId,
    );
  }

  static ArreUser? fromGPostDetailsUser(GPostDetails_user? user) {
    if (user == null) return null;
    return ArreUser(
      userId: user.userId,
      username: user.username,
      profilePictureMediaId: user.profilePictureMediaId,
    );
  }

  @override
  List<Object?> get props => [userId];
}

class ArreUserWithExtra<T> extends ArreUser {
  final T value;

  ArreUserWithExtra({
    required super.userId,
    required super.username,
    required super.profilePictureMediaId,
    required this.value,
  });
}
