// ignore_for_file: non_constant_identifier_names

import 'package:intl/intl.dart';

abstract class AppConfig {
  /// Possible values: `dev` and `prod`
  ///
  /// `flutter run --dart-define=env=dev`
  static const ENV = String.fromEnvironment('env', defaultValue: 'prod');
  static const DEV_TOOLS_ENABLED =
      String.fromEnvironment('dev_tools_enabled', defaultValue: 'false');

  static const isDev = ENV == 'dev';

  static const isDevToolsEnabled = DEV_TOOLS_ENABLED == "true";

  static const isProd = ENV == 'prod';

  static const PLAYLIST_SERVICE = ENV == "prod"
      ? "https://api-services.arredigital.co/playlists"
      : "https://dev-api-services.arredigital.co/playlists";

  static const NOTIFICATION_BASE_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/notification-manage"
      : "https://dev-api-services.arredigital.co/notification-manage";

  static const REFERRAL_BASE_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/referral"
      : "https://dev-api-services.arredigital.co/referral";

  static const POST_MANAGE_BASE_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/post-manage"
      : "https://dev-api-services.arredigital.co/post-manage";

  static const X_API_KEY = ENV == "prod"
      ? "0dc32f2e-eeaf-4a92-a129-08011f139cd7"
      : "ae79f9f1-08ef-4b88-92ca-f52f444114c1";

  static const USER_MANAGE_BASE_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/user-manage"
      : "https://dev-api-services.arredigital.co/user-manage";

  static const USER_FEED_BASE_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/user-feed"
      : "https://dev-api-services.arredigital.co/user-feed";

  static const MEDIA_BASE_URL_DOMAIN = ENV == "prod"
      ? "service-media-manage.arredigital.co"
      : "dev-service-media-manage.arredigital.co";

  static const REAL_TIME_SESSION_BASE_URL = ENV == "prod"
      ? "https://service-realtime.arredigital.co"
      : "https://dev-service-realtime.arredigital.co";

  static const MEDIA_BASE_URL = "https://$MEDIA_BASE_URL_DOMAIN";

  static const ARRE_LINK_BASE_URL_DOMAIN =
      ENV == "prod" ? "arre.link" : "dev.arre.link";

  static const ARRE_LINK_BASE_URL = "https://$ARRE_LINK_BASE_URL_DOMAIN";

  static const USER_GRAPH_BASE_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/user-graph"
      : "https://dev-api-services.arredigital.co/user-graph";

  static const SEARCH_SERVICE_BASE_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/search"
      : "https://dev-api-services.arredigital.co/search";

  static const CREATOR_ANALYTICS_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/creator-analytics"
      : "https://dev-api-services.arredigital.co/creator-analytics";

  static const DIRECT_MESSAGES_BASE_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/direct-messages"
      : "https://dev-api-services.arredigital.co/direct-messages";

  static const COMMUNITY_MANAGE_URL = ENV == "prod"
      ? "https://api-services.arredigital.co/community-manage"
      : "https://dev-api-services.arredigital.co/community-manage";

// _configuration[ENV]!['user_manage_base_url']!;
}

class AppConstants {
  static const PLAY_STORE_URL =
      "https://play.google.com/store/apps/details?id=com.arre.voice";
  static const APP_STORE_URL =
      "https://apps.apple.com/in/app/arr%C3%A9-voice/id1615378103";
  static const sampleImage = "https://source.unsplash.com/user/c_v_r/100x100";
  static bool isDebug = true;
  static final String AUTHORIZATION = "Authorization";
  static final String TOKEN = "Token";
  static final bool isMock = true;

  static final String accesstokennew = "accessTokenNew";

  static const String FEED_ALL = "all";
  static const String FEED_THREAD = "threads";
  static const String FEED_SUGGESTED = "suggested";
  static const String FEED_ROOMS = "rooms";
  static const String FEED_SERVICES = "services";
  static const String FEED_HOSTED = "hosted";
  static const String FEED_LIKED = "liked";
  static const String FEED_JOINED = "joined";
  static const String Finish = "Finish";
  static const String Skip = "Skip";
  static const String FEED_JOINED3 = "joined";
  static const String FEED_LATEST = "recency";
  static const String FEED_SURPRISE_ME = "surpriseMe";

  // static const String TERMS_AND_CONDITION_URL =
  //     "https://dev-api.arredigital.co/rest/terms-conditions";
  // static const String PRIVACY_POLICIES_URL =
  //     "https://dev-api.arredigital.co/rest/privacy-policy";
  // static const String COMMUNITY_GUIDELINES_URL =
  //     "https://dev-api.arredigital.co/rest/community-guideline";

  // static const String RULES_AND_REGULATION_URL =
  //     "https://dev-api.arredigital.co/rest/rules-regulation";

  //static AudioPlayer audioplayer = AudioPlayer();

  static bool minidockervisibility = false;
  static double minidockermargin = 0;
  static const String isAvatar_Image = "image";
  static const String isAvatar_Avatar = "avatar";
  static const String isAvatar_Default = "default";

  static const String DISCUSSION_RECORDED_PATH = "Discussion Recorded Path";
  static const String DISCUSSION_EDITED_PATH = "Edited Recorded Path";
  static const String CHOSEN_BG_INDEX = "chosenbgIndex";
  static const String CHOSEN_PITCH_INDEX = "chosenpitchIndex";

  static const String CHOSEN_PITCH_ID = "CHOSEN_PITCH_ID";
  static const String CHOSEN_BG_ID = "CHOSEN_BG_ID";
  static const String INVITE_BUTTON_STATUS = "invitebuttonstatus";

  static final String USER_PROFILE_PICTURE_PATH = "USER_PROFILE_PICTURE";
  static final String USER_PROFILE_SAVED_ID = "USER_PROFILE_SAVED_ID";
  static final String DATABSE_PATH = "arredatabase.db";

  static final String beepSoundUrl =
      "https://www.soundjay.com/buttons/sounds/beep-01a.mp3";

  //X-API-KEY
  // static final String ENV_DEV_XAPI_KEY = "ae79f9f1-08ef-4b88-92ca-f52f444114c1";
  // static final String ENV_QA_XAPI_KEY = "f97d6014-5b4a-4bd6-a151-a99f387067c5";
  // static final String ENV_UAT_XAPI_KEY = "bccb3cd8-7fa0-4058-b476-044dd0512fd2";
  // static final String ENV_PROD_XAPI_KEY =
  //     "0dc32f2e-eeaf-4a92-a129-08011f139cd7";

  //API
  // static final String ENV_QA_API = "https://qa-api.arredigital.co/graphql";

  // static final String ENV_QA_API =
  //     "https://a814-122-180-180-26.ngrok.io/graphql";

  // static final String ENV_QA_API =
  //     "https://6ff9-2405-201-300f-a0ab-3961-eb81-566-a168.ngrok.io/graphql";
  // static final String ENV_DEV_API =
  //     "https://dev-api-new.arredigital.co/graphql";
  // static final String ENV_DEV_API_INVITE =
  //     "https://dev-service-referral.arredigital.co/graphql";
  // static final String NOTIFICATION_DEV_API =
  //     'https://dev-service-notification-manage.arredigital.co';

  // static final String ENV_DEV_API_AUTH =
  //     "https://dev-service-user-manage.arredigital.co/graphql";
  // static final String ENV_DEV_API_REFERRAL =
  //     "https://dev-service-referral.arredigital.co/graphql";

  // static final String ENV_DEV_API =

  // static final String ENV_UAT_API = "https://uat-api.arredigital.co/graphql";
  // static final String ENV_UAT_API =
  //     "https://uat-api-new.arredigital.co/graphql";

  // static final String ENV_DEV_API = "https://f328-2409-4070-411e-383a-f454-913f-c32b-de38.ngrok.io/graphql";

  // static final String ENV_PROD_API = "https://api-new.arredigital.co/graphql";

  // static final String ENV_PROD_API = "https://7404-2405-201-300f-a011-4430-e471-e73e-1e67.ngrok.io/graphql";
  static final DateFormat dateFormat =
      new DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");

  static final DateFormat dateFormat2 =
      new DateFormat("yyyy-MM-dd HH:mm:ss.SSS");

  static final DateFormat dateFormatNoSeconds =
      new DateFormat("yyyy-MM-dd HH:mm:ss");

  static final testingText =
      "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  static final String HelpCentreCategoryVoicepods = "voicepods";
  static final String HelpCentreCategoryAccountSettings = "account_settings";
  static final String HelpCentreCategoryContent = "content";
  static final String HelpCentreCategoryNotifications = "notifications";
  static final String HelpCentreCategoryAccessibility = "accessibility";
  static final String HelpCentreCategoryPrivacySafety = "privacy_safety";
  static final String HelpCentreCategoryExplore = "explore";
  static final String HelpCentreCategoryBio = "bio";
  static final String HelpCentreCategoryPodfeed = "podfeed";
  static final String HelpCentreCategorySoundAndVoiceAssistance =
      "sound_voice_assistance";
  static final String keyCustomfeedText =
      "Listen to all the latest pods or just the ones from your favourite creators. You choose!";

  // "This lets you Customize your feed\non the bases of Latest pods and\nPersonalized Pods";
  // static final String keyMicText =
  //     "Record a Voicepod, add background\nscore, add a description, and share it\nwith your audience.";
  static final String keyMicText =
      "Record a clip, add effects, write a description. Voila! You have a perfect voice pod.";

  // static final String keyInviteText =
  //     "Invite your friends and family\nto the Arré Voice platform from this\nfeature.";
  static final String keyInviteText =
      "We’re strictly against gatekeeping:P Invite your friends & family on the app with this feature.";

  // static final String keySearchText =
  //     "This feature lets you experience a\nvariety of content based on what's\ntrending and from popular creators.";
  static final String keySearchText =
      "Discover trending content and voice pods by popular creators here!";
  static final String keySavedText =
      "This lets you save a Voicepod so that\nyou don't loose it and you can enjoy\nit anytime again.";

  // static final String keyPodrollText =
  //     "Create or check podrolls by\nbundling voicepods based on your\ninterest.";
  static final String keyPodrollText =
      "Playlists are old news! Curate your own list of voice pods to make a ‘Podroll’!";
  static final String CustomizeFeed = "Customize Feed";
  static final String CreateVoicepod = "Create a Voicepod";
  static final String InviteUsers = "Invite Users";
  static final String ExplorePage = "Explore Page";
  static final String SaveVoicepod = "Save a Voicepod";
  static final String Podrolls = "Podrolls";
  static final String CreateNew = "Create New";
  static final String SavedPods = "Saved Pods";
  static final String RecentlyPlayed = "Recently Played";
  static final String Madeforyou = "Made for you";
  static final String keyCreateNewx =
      "Bundle your favourtite pods to\ncreate new podroll";
  static final String keyMysavedx =
      "Check all the pods you have saved in\nthis podroll";
  static final String keyRecentlyPlayedx =
      "Check pods you have recently\nplayed in this section";
  static final String keyMadeforyoux =
      "Check podrolls we've created based\non your interest in this section";
  static final String InviteContacts = "Invite Contacts";
  static final String Waitlist = "Waitlist";
  static final String FollowContacts = "Follow Contacts";
  static final String keyExpandInvite =
      "Invite people from your contacts to\nthe Arré Voice platform.";
  static final String keyWaitlist =
      "Share Invite with your contacts saved\non your device.";
  static final String keyFollowContacts =
      "Follow people from your contacts\non Arré Voice platform.";
  static const String ClickedNotificationsId = "clickedNotificationsId";
  static const String CountOfNotificationsOpened = "CountOfNotificationsOpened";
  static const String playButtonTapsCount = "playButtonTapsCount";
  static const String podrollplayButtonTapsCount = "podrollplayButtonTapsCount";
  static const String TrendingPodrollsPlayedOnExplorePage =
      "TrendingPodrollsPlayedOnExplorePage";
  static const String HashtagsPlayedOnExplorePage =
      "HashtagsPlayedOnExplorePage";
  static const String MFYpodrollsPlayedOnExplorePage =
      "MFYpodrollsPlayedOnExplorePage";
  static const String darkmodeButtonTapsCount = "darkmodeButtonTapsCount";
  static const String darkmodeToggleUsedSettings = "darkmodeToggleUsedSettings";
  static const String noofInvitelinkSucessfulValidations =
      "InvitelinkValidations_sucessful";
  static const String noofInvitelinkUnSucessfulValidations =
      "InvitelinkValidations_unsucessful";
  static const String completelyListenedVoicepods =
      "completelyListenedVoicepods";
  static const String CountOfVoicepodFullyPlayed = "CountOfVoicepodFullyPlayed";
  static const String username = "username";
  static const String environment = "environment";
  static const String youHaveSucesslogout = 'You have successfully logged out';
  static const String youHaveSucesslogoutTemporarily =
      'Your account is temporarily deactivated';
  static const String youHaveSucesslogoutPermanently =
      'Your account is permanently deleted. Please wait for 30 days to create an account again or write to support';
  static const String youHaveSucesslogoutPermanentlyTwo =
      'Your account is permanently deleted. If you have change of heart, contact support to restore your account within 30 days. Post that, have a fresh start.';
  static const String unableToLogout = "Unable to logout";
  static const String somethingWrong = "Something went wrong!";
  static const String copyToClipboard = "Copied to clipboard";
  static const String copyToClipboardFiled = "Copied to clipboard Failed ";
  static const String microphonePermissions =
      "You need to allow microphone permission to speak, please go to settings and give the permission";
  static const String isConnected = "isConnected";
  static const String isConnectionTimeOut = "isConnectionTimeOut";
  static const String languages = "languages";
  static const String categories = "categories";
  static const String shareVia = "Share via";
  static const String fcmToken = "fcmToken";
  static const String voicepodDrafts = "voicepodDrafts";
  static const String OtherUserFollowed = "OtherUserFollowed";
  static const String LandedOnHomefeed = "LandedOnHomefeed";
  static const String DarkmodeToggleUsedHomefeed = "DarkmodeToggleUsedHomefeed";
  static const String autologoutevent = "testlogoutevent2";
  static const String newTokenGenerated = "newTokenGenerated";
  static const String GetstartedClicked = "GetstartedClicked";
  static const String alreadyHaveInvite = "alreadyHaveInvite";
  static const String requestInstaInvite = "requestInstaInvite";
  static const String NextOnInviteLink = "NextOnInviteLink";
  static const String LoginClicked = "LoginClicked";
  static const String CountOfInvitesSent = "CountOfInvitesSent";
  static const String onSkip = "pagename_onSkip";
  static const String onProceed = "pagename_onProceed";
  static const String impression = "impression";
  static const String onProceedAvatarPage = "onProceedAvatarPage";
  static const String onProceedFaceVerifyPage = "onProceedFaceVerifyPage";
  static const String FaceVerificationSuccess = "FaceVerificationSuccess";
  static const String FaceVerifyPage = "FaceVerifyPage";
  static const String onProceedPronounPage = "onProceedPronounPage";
  static const String onProceedPhoneNoPage = "onProceedPhoneNoPage";
  static const String onProceedOTPPage = "onProceedOTPPage";
  static const String onProceedLanguagePage = "onProceedLanguagePage";
  static const String onProceedCatagoryPage = "onProceedCatagoryPage";
  static const String onProceedUploadProfile = "onProceedUploadProfile";
  static const String interestToggleClicked = "interestToggleClicked";
  static const String AlmostDone = "AlmostDOne";
  static const String addedProfilePicture = "addedProfilePicture";
  static const String onProceedaddedProfilePicture =
      "onProceedaddedProfilePicture";
  static const String onProceedonBoardSyncContact = "onProceedSyncContact";
  static const String onProceedUsernamePage = "onProceedUsernamePage";
  static const String onProceedOnboardPeopleFollow =
      "onProceedOnboardPeopleFollow";
  static const String onProceedInvitedByPage = "onProceedInvitedByPage";
  static const String onSkipFaceVerifyPage = "onSkipFaceVerifyPage";
  static const String onSkipPronounPage = "onSkipPronounPage";
  static const String onSkipLanguagePage = "onSkipLanguagePage";
  static const String onSkipCatagoryPage = "onSkipCatagoryPage";
  static const String onSkipUploadProfile = "onSkipUploadProfile";
  static const String onSkipOnBoardSyncContact = "onSkipOnBoardSyncContact";
  static const String onSkipFindYourTribePage = "onSkipFindYourTribePage";
  static const String onSkipOnboardPeopleFollow = "onSkipOnboardPeopleFollow";
  static const String profilepicChanged = "profilepicChanged";
  static const String followersgained = "followersgained";
  static const String otheruserprofilevisited = "otheruserprofilevisited";
  static const String addedLanguagesWhileOnboarding =
      "addedLanguagesWhileOnboarding";
  static const String addedCategoriesWhileOnboarding =
      "addedCategoriesWhileOnboarding";
  static const String JoinAsWomen = "JoinAsWomen";
  static const String WhatsappOptInError = "Whatsapp_OptIN_error";
  static const String PlayAllUsedMFY = "PlayAllUsedMFY";
  static const String PlayAllUsed = "PlayAllUsed";
  static const String diwaliProfileFrameUpdated = "diwaliProfileFrameUpdated";
  static const String NoofBGFXused = "NoofBGFXused";
  static const String surpriseMeOpened = "surpriseMeOpened";
  static const String addedCategoriesFromHomefeed =
      "addedCategoriesFromHomefeed";
  static const String removedCategoriesFromHomefeed =
      "removedCategoriesFromHomefeed";
  static const String addedLanguagesFromHomefeed = "addedLanguagesFromHomefeed";
  static const String removedLanguagesFromHomefeed =
      "removedLanguagesFromHomefeed";
  static const String OtherUserSearched = "OtherUserSearched";
  static const String VoicepodsSearched = "VoicepodsSearched";
  static const String timesPodrollInExplorePagePlayed =
      "timesPodrollInExplorePagePlayed";
  static const String PlayAllUsedHashtags = "PlayAllUsedHashtags";
  static const String PlayAllUsedTP = "PlayAllUsedTP";
  static const String landedOnExplorePage = "landedOnExplorePage";
  static const String sessionexpired = "Session expired. Please login.";
}
