import 'dart:async';
import 'dart:developer';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:visibility_detector/visibility_detector.dart';

///The key set for Visibility widget
class PostVisibilityKey with EquatableMixin {
  final String postId;
  final String title;
  final bool isVideo;

  PostVisibilityKey({
    required this.postId,
    required this.title,
    required this.isVideo,
  });

  factory PostVisibilityKey.fromPostData(Post postData) {
    return PostVisibilityKey(
      postId: postData.postId,
      title: postData.title,
      isVideo: postData.mediaTypeIsVideo,
    );
  }

  @override
  List<Object?> get props => [postId, isVideo];
}

class PostVisibilityProvider with ChangeNotifier {
  static PostVisibilityProvider instance = PostVisibilityProvider._();
  Timer? _mostVisibleSearchTimer;

  PostVisibilityProvider._() {
    // if (kDebugMode) {
    //   curSpotlightPost.addListener(() {
    //     final mostVisible = curSpotlightPost.value;
        // log("MOST VISIBLE\n ${mostVisible?.title}}\n");
      // });
    // }
    ArreNavigator.instance.internalRoutesVisibilityNotifier
        .addListener(_onInternalRoutesVisibilityChange);
  }

  bool get isInternalRouterVisible => ArreNavigator.instance.internalRoutesVisibilityNotifier.value;

  Map<PostVisibilityKey, VisibilityInfo> _visibilityInfo = {};
  final curSpotlightPost = ValueNotifier<PostVisibilityKey?>(null);
  List<PostVisibilityKey> impressions = [];

  void _onInternalRoutesVisibilityChange() {
    if (curSpotlightPost.value != null && !isInternalRouterVisible) {
      curSpotlightPost.value = null;
    }
  }

  void setVisibilityInfo(VisibilityInfo info) {
    final post = (info.key as ValueKey).value as PostVisibilityKey;
    _visibilityInfo[post] = info;
    if (info.visibleBounds.height == 0) {
      _findSpotlightVideo();
      curSpotlightPost.notifyListeners();
      _visibilityInfo.remove(post);
    }
    if (_mostVisibleSearchTimer?.isActive != true) {
      _mostVisibleSearchTimer?.cancel();
      _mostVisibleSearchTimer = Timer(
        Duration(milliseconds: 300),
        _findMostVisibleItems,
      );
    }
  }

  void _findMostVisibleItems() {
    _findSpotlightVideo();
    _visibilityInfo.forEach((key, value) {
      if (value.visibleFraction >= 0.3 && !impressions.contains(key)) {
        // log("Impressions: ${key.title}\n");
        impressions.add(key);
        ApiService.instance
            .markPodAsViewed(key.postId)
            .then((value) => log("$value ${key.title}", name: "IMPRESSION"));
      }
    });

    if (impressions.length > 100) {
      impressions.removeRange(0, 50);
    }
  }

  void _findSpotlightVideo() {
    if (!isInternalRouterVisible) return;
    VisibilityInfo? mostVisible;
    for (var entry in _visibilityInfo.entries) {
      if (entry.value.visibleFraction < 0.4) continue;
      if (!entry.key.isVideo) continue;
      if (mostVisible == null) {
        mostVisible = entry.value;
        continue;
      }
      if (mostVisible.visibleFraction < entry.value.visibleFraction) {
        mostVisible = entry.value;
        continue;
      }
    }
    curSpotlightPost.value = (mostVisible?.key as ValueKey?)?.value;
  }

  void setInvisible(PostVisibilityKey post) {
    if (curSpotlightPost.value == post) {
      curSpotlightPost.value = null;
    }
  }
}
