part of arre_audio_player;

sealed class PodPlayerSource {
  String? get playlistTitle => null;
}

sealed class ScrollablePodPlayerSource {
  Future<void>? get initFuture => null;

  String get podSourceId;

  PodSourceEntity get podSourceEntity;
}

abstract class PodPlaylistWithPostIDs
    implements PodPlayerSource, ScrollablePodPlayerSource {
  ///Can be id or search-keyword

  List<String> get listOfPodIds;

  PodSourceEntity get podSourceEntity;

  Future<List<String>> getNextNPodIds();
}

abstract class PodPlaylistWithPostDetails
    implements PodPlayerSource, ScrollablePodPlayerSource {
  List<Post> get listOfPods;

  PodSourceEntity get podSourceEntity;

  Future<List<Post>> getNextNPodIds();
}

class CreatorFlowSamplePod implements PodPlayerSource {
  final Post post;

  CreatorFlowSamplePod(this.post);

  int get playingIndex => 0;

  @override
  String? get playlistTitle => throw UnimplementedError();
}

class UserBioPodSource implements PodPlayerSource {
  final String audioMediaId;
  final String userId;
  final String username;
  final String? profilePictureMediaId;

  UserBioPodSource({
    required this.audioMediaId,
    required this.userId,
    required this.username,
    required this.profilePictureMediaId,
  });

  @override
  String? get playlistTitle => null;
}

class CommunityBioPodSource implements PodPlayerSource {
  final String audioMediaId;
  final String communityId;
  final String name;
  final String? profilePictureMediaId;

  CommunityBioPodSource({
    required this.audioMediaId,
    required this.communityId,
    required this.name,
    required this.profilePictureMediaId,
  });

  @override
  String? get playlistTitle => null;
}

mixin AutoDisposableProvider {
  ///This is to keep auto disposable providers alive when it's playing
  KeepAliveLink? keepAlive();
}
