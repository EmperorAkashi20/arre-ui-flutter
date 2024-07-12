import 'dart:async';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/utils.dart';

enum OnboardingStep {
  welcomeUser1(1.1,
      "Welcome to Arré Voice! Start your audio journey in just 30 seconds."),
  welcomeUser2(1.2,
      "Welcome to Arré Voice! Start your audio journey in just 30 seconds."),
  voicepodIntro(2, "Create, Share and Listen to 30-second Voicepods."),
  createVoicepod(3, "Create Voicepod"),
  letMeListenFirst(4, "Let me listen first"),
  tryFunPrompts(5, "Not sure what to create? Try with these fun prompts"),
  createAnyTopic(7, "Create on any other topic"),
  playVoicepod(
      9, "Tap the Orange play button to listen to your first ever voicepod! "),
  likeUnlikeVoicepod(10.1, "Liked the voicepod?"),
  guide2ThumbsUpThumbsDown(10.2,
      "Say it with thumbs up or down! Your feedback will help us personalize your experience!"),
  likedVoicepod(11.1, "Yay! Listen to this one now!"),
  liked2Voicepod(11.2, "Okay! Let's find you more voicepods you might like."),
  dislikedVoicepod(12.1, "Oops! Let's try another voicepod."),
  notInteractedWithLikeButtons(
      24.1, "Hey, it looks like you missed this voicepod!"),
  curatingFeedTitle(13.0, "Almost there! Finding Voicepods for you..."),
  firstVoicepodUp(
      15.0, "Yayy, your first voicepod is up! Share it with your friends now!"),
  shareOnSocial(16.0, "Share on Whatsapp, Instagram,Facebook"),
  createProfile2Share(17.0, "Sign up to post on Arré Voice!"),
  signUpWithPhone(19.0, "Sign up with your phone number to start posting."),
  ;

  final double position;

  final String defaultText;

  const OnboardingStep(this.position, this.defaultText);
}

final onboardingProvider = ChangeNotifierProvider((ref) {
  return OnboardingProvider(ref);
});

final onboardingFeedProvider =
    FutureProviderFamily<List<Post>, String>((ref, languages) {
  return ApiService.instance.getOnboardingFeed(languages.split(","));
});
final creatorFlowSampleVoicepodProvider =
    FutureProviderFamily<Post, String>((ref, languages) {
  return ApiService.instance.getCreatorFlowSampleVoicepod(languages.split(","));
});

final storyCaptionsProvider =
    FutureProviderFamily<List<GStoryCaptionInfo>, String>((ref, language) {
  return ApiService.instance
      .getStoryCaptionInfo(languages: language.split(","));
});

final creatorPromptsProvider = FutureProviderFamily<
    List<GGetCreatorStudioPromptsData_response_data>, String>((ref, language) {
  return ApiService.instance.getCreatorStudioPrompts([language]);
});

///Use this for onboarding language and
class OnboardingProvider
    with ChangeNotifier
    implements PodPlaylistWithPostDetails {
  final Ref _ref;
  String? playlistTitle;
  Set<String> languages = {};
  Set<String> likedPods = {};
  Set<String> dislikedPods = {};
  String? speakingLanguage;

  List<Post>? _data;
  Post? creatorFlowSamplePost;
  List<GStoryCaptionInfo>? _captionInfoList;

  List<GStoryCaptionInfo>? get captionInfoList => _captionInfoList;

  OnboardingProvider(this._ref);

  @override
  List<Post> get listOfPods => _data!;

  @override
  PodSourceEntity get podSourceEntity => PodSourceEntity.voicepods_story;

  @override
  Future<void>? get initFuture =>
      _ref.read(onboardingFeedProvider(languages.join(",")).future);

  @override
  String get podSourceId => "onboarding_feed";

  List<Post>? get data => _data;

  bool get hasData => _captionInfoList != null && data != null;

  double get podsReactedProgress => data == null
      ? 0.0
      : (likedPods.length + dislikedPods.length) / data!.length;

  bool get hasResponded2AllPods {
    return hasData &&
        Set.from([...likedPods, ...dislikedPods]).length == data!.length;
  }

  int get totalItems => data?.length ?? 0;

  String getCaptionFor(OnboardingStep step) {
    try {
      return _captionInfoList!
          .firstWhere((element) => element.position == step.position)
          .text;
    } catch (err, st) {
      Utils.reportError(err, st);
      return step.defaultText;
    }
  }

  String? getMediaIdFor(OnboardingStep step) {
    try {
      return _captionInfoList!
          .firstWhere((element) => element.position == step.position)
          .voiceOverMedia;
    } catch (err, st) {
      Utils.reportError(err, st);
      return null;
    }
  }

  Future<void> initStoryCaptions() async {
    if (_captionInfoList?.isNotEmpty == true) {
      return;
    }
    try {
      if (_ref.read(storyCaptionsProvider(languages.join(","))).hasError) {
        _ref.invalidate(storyCaptionsProvider(languages.join(",")));
      }
      _captionInfoList =
          await _ref.read(storyCaptionsProvider(speakingLanguage!).future);
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }

  Future<void> initOnboardingFeed() async {
    if (_data?.isNotEmpty == true) {
      return;
    }
    try {
      if (_ref.read(onboardingFeedProvider(languages.join(","))).hasError) {
        _ref.invalidate(onboardingFeedProvider(languages.join(",")));
      }
      _data =
          await _ref.read(onboardingFeedProvider(languages.join(",")).future);
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }

  Future<void> initCreatorFlowSampleVoicepod() async {
    if (creatorFlowSamplePost != null) {
      return;
    }
    try {
      if (_ref
          .read(creatorFlowSampleVoicepodProvider(languages.join(",")))
          .hasError) {
        _ref.invalidate(creatorFlowSampleVoicepodProvider(languages.join(",")));
      }
      creatorFlowSamplePost = await _ref
          .read(creatorFlowSampleVoicepodProvider(languages.join(",")).future);
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }

  @override
  Future<List<Post>> getNextNPodIds() {
    return SynchronousFuture([]);
  }

  void like(int index, String gesture) {
    likedPods.add(data![index].postId);
    arreAnalytics.logEvent(
      GAEvent.ONB_STORY_LIKED_POD,
      parameters: {
        EventAttribute.POD_ITEM_ID: data![index].postId,
        EventAttribute.GESTURE: gesture,
        EventAttribute.EVENT_COUNT: index,
      },
    );
    if (hasResponded2AllPods) notifyListeners();
    ApiService.instance.trackOnboardingPodEngagement(
      postId: data![index].postId,
      entityType: "like",
      rank: index,
    );
  }

  void dislike(int index, String gesture) {
    dislikedPods.add(data![index].postId);
    arreAnalytics.logEvent(
      GAEvent.ONB_STORY_DISLIKED_POD,
      parameters: {
        EventAttribute.POD_ITEM_ID: data![index].postId,
        EventAttribute.GESTURE: gesture,
        EventAttribute.EVENT_COUNT: index,
      },
    );
    if (hasResponded2AllPods) notifyListeners();
    ApiService.instance.trackOnboardingPodEngagement(
      postId: data![index].postId,
      entityType: "dislike",
      rank: index,
    );
  }

  void trackImpression(int index) {
    ApiService.instance.markPodAsViewed(data![index].postId);
    ApiService.instance.trackOnboardingPodEngagement(
      postId: data![index].postId,
      entityType: "impression",
      rank: index,
    );
  }

  void trackPlay(int index) {
    ApiService.instance.trackOnboardingPodEngagement(
      postId: data![index].postId,
      entityType: "play",
      rank: index,
    );
  }

  bool isLanguageSelected(String value) {
    return languages.contains(value);
  }

  void selectSpeakingLanguage(String value) {
    if (value != speakingLanguage) {
      _data = null;
      _captionInfoList = null;
      creatorFlowSamplePost = null;
      likedPods.clear();
      dislikedPods.clear();
    }
    languages = {value};
    speakingLanguage = value;
    notifyListeners();
    arrePref.setString(PrefKey.SPEAKING_LANG, value);
    arrePref.setStringList(PrefKey.LANGUAGE_PREFERENCES, languages.toList());
    ApiService.instance.updatePreferencesForUser(languages.join(","));
  }
}
