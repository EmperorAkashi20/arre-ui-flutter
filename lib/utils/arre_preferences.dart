import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

final arrePref = ArrePreferences._();

class ArrePreferences {
  ArrePreferences._();

  late SharedPreferences _preferences;

  ///Initializes the [_preferences], to be called in main before using any preferences
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  //Some main user properties getters are listed for quick access
  String? get authToken => getString(PrefKey.AUTH_TOKEN);

  String? get userId => getString(PrefKey.USER_ID);

  String? get userName => getString(PrefKey.USER_NAME);

  /// Reads a value from persistent storage, throwing an exception if it's not a
  /// bool.
  bool? getBool(String key) {
    return _preferences.getBool(key);
  }

  /// Reads a value from persistent storage, throwing an exception if it's not
  /// an int.
  int? getInt(String key) {
    return _preferences.getInt(key);
  }

  /// Reads a value from persistent storage, throwing an exception if it's not a
  /// String.
  String? getString(String key) {
    return _preferences.getString(key);
  }

  /// Reads a value from persistent storage, throwing an exception if it's not a
  /// List<String>.
  List<String>? getStringList(String key) {
    return _preferences.getStringList(key);
  }

  /// Reads a value of any type from persistent storage.
  Object? get(String key) => _preferences.get(key);

  /// Reads a value from persistent storage, throwing an exception if it's not a
  /// double.
  double? getDouble(String key) => _preferences.getDouble(key);

  /// Saves a boolean [value] to persistent storage in the background.
  Future<bool> setBool(String key, bool? value) {
    log('setBool $key: $value', name: 'ARRE_PREFERENCES');
    if (value == null) return remove(key);
    return _preferences.setBool(key, value);
  }

  /// Saves an integer [value] to persistent storage in the background.
  Future<bool> setInt(String key, int value) {
    log('setInt $key: $value', name: 'ARRE_PREFERENCES');
    return _preferences.setInt(key, value);
  }

  /// Saves a string [value] to persistent storage in the background.
  ///
  /// Note: Due to limitations in Android's SharedPreferences,
  /// values cannot start with any one of the following:
  ///
  /// - 'VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu'
  /// - 'VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy'
  /// - 'VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu'
  Future<bool> setString(String key, String? value) {
    log('setString $key: $value', name: 'ARRE_PREFERENCES');
    if (value == null) return remove(key);
    return _preferences.setString(key, value);
  }

  /// Saves an integer [value] to persistent storage in the background.
  Future<bool> setStringList(String key, List<String> value) {
    log('setStringList $key: $value', name: 'ARRE_PREFERENCES');
    return _preferences.setStringList(key, value);
  }

  /// Saves a double [value] to persistent storage in the background.
  /// Android doesn't support storing doubles, so it will be stored as a float.
  Future<bool> setDouble(String key, double value) =>
      _preferences.setDouble(key, value);

  //checking the key for existance
  bool containsKey(String key) => _preferences.containsKey(key);

  /// Removes an entry from persistent storage.
  Future<bool> remove(String key) {
    return _preferences.remove(key);
  }

  Future<void> clear(List<String> exceptKeys) async {
    Map<String, dynamic> exceptions = {};
    for (var key in exceptKeys) {
      exceptions[key] = get(key);
    }
    await _preferences.clear();
    for (var entry in exceptions.entries) {
      final value = entry.value;
      if (value is String) {
        await setString(entry.key, value);
      } else if (value is int) {
        await setInt(entry.key, value);
      } else if (value is double) {
        await setDouble(entry.key, value);
      } else if (value is bool) {
        await setBool(entry.key, value);
      } else if (value is List<String>) {
        await setStringList(entry.key, value);
      }
    }
  }
}

abstract class PrefKey {
  /// String
  /// Use-case: Logged in user's user id
  static const USER_ID = 'uniqueUserId';

  /// String
  /// Use-case: Determines whether user is authenticated, can be a guest user also
  static const AUTH_TOKEN = 'accessTokenNew';

  static const ONBOARDING_FLOW = 'onboarding_flow';

  /// String
  /// Use-case: Easy access to username of the logged in user,
  /// can be used for easy re-login after logout
  static const USER_NAME = 'userName';

  ///String
  ///Use-case: Determines whether a user logged in with phone number or is a guest user
  static const PHONE_NUMBER = 'phone_number';

  /// String
  /// Use-case: Easy access to profile pic of the logged in user,
  /// can be used for easy re-login after logout
  static const PROFILE_PICTURE_MEDIA_ID = 'profile_picture_media_id';

  ///String
  ///Use-case: Check if the user have selected speaking language
  static const SPEAKING_LANG = 'SPEAKING_LANG';

  ///List<String>
  ///Use-case: Storing user selected languages
  static const LANGUAGE_PREFERENCES = 'language_preferences';

  ///Bool
  ///
  /// Use-case: Whether to show add languages sheet after the onboarding is complete
  static const CAN_SHOW_ADD_LANG_SHEET = "can_show_add_lang_sheet";

  ///String
  ///Use-case: to show confeti animation when the status is changed from unmoderated to normal
  static const MODERATION_STATUS = "moderationStatus";

  /// String
  /// Use-case:
  static const FCM_TOKEN = 'fcmToken';

  static const IS_ONBOARDING_COMPLETE = "onBoardingCompleteFlag";

  static const REQUESTED_FOR_MORE_INVITES = "requested_for_more_invites";

  /// Bool
  /// Use-case: decide whether to show profile completion nudge. set it to true when user dismisses the nudge
  static const HAS_DISMISSED_PROFILE_COMPLETE_NUDGE =
      "has_dismissed_profile_complete_nudge";

  ///String
  ///Use-case: Storing the Moods data offline
  static const MOODS_DATA_V1 = "moods_data_v1";

  ///Bool
  static const RESPONSE_SELECTED_NL_DEV = "response_selected_nl_dev";

  ///Bool
  static const REQUESTS_SELECTED_NL_DEV = "requests_selected_nl_dev";

  ///Bool
  ///Use-case: User installs the app on iOS with some deeplink. Use the clipboard data only for the first time after install
  static const HAS_COPIED_CLIPBOARD_DATA_1ST_TIME =
      "has_copied_clipboard_data_1st_time";

  ///Bool
  ///Use-case: Auto play pods when user lands on playlist or voicepod screens through link or notification
  ///
  /// Default: ON
  /// ON - true/null
  /// OFF - false
  static const IS_AUTO_PLAY_ON = "is_auto_play_on";

  ///Use-case: showing the added BgMusic pop, only for first time music appiled.
  static const HAS_SHOWN_AUTO_BG_SNACKBAR = "has_shown_auto_bg_snackbar";

  ///Bool
  ///Just storing to get it faster synchronously next time, used while sharing pod after created
  static const HAS_X_INSTALLED = "has_x_installed";

  ///Bool
  ///Just storing to get it faster synchronously next time, used while sharing pod after created
  static const HAS_WHATSAPP_INSTALLED = "has_whatsapp_installed";

  ///String
  ///Storing user's invite link, since the login/signup is done at a later stage
  static const INVITE_LINK = "invite_link";

  //Bool
  ///Use-case: for first time recognising the topic-selected popup - only once
  static const IS_TOPICS_SELECTED = "is_topics_selected";

  ///jsonEncoded String
  ///Use-case: We'll keep number of pods created and listened in current device.
  ///If any of the metrics cross x/y we ask for in app rate & review
  ///
  /// Default state:
  /// ```
  /// {
  ///   "pods_created" : 0,
  ///   "pods_listened" : 0,
  ///   "has_reviewed" : false
  /// }
  /// ```
  static const APP_RATING_METRICS = "app_rating_metrics";

  ///String
  ///When user clicks dismisses the app update, we store dismissed app update version
  static const IGNORED_APP_UPDATE_VERSION = "ignored_app_update_version";

  ///Bool
  ///When user slides left/right in the pod player bar to play next or previous pod
  static const POD_GESTURE_USED = "pod_gesture_used";

  ///Int
  ///Number of communities recommended in the last app session
  ///
  /// This is useful for showing loader. If the last fetched count is 0, we can skip showing loader
  static const REC_COMMUNITIES_COUNT = "rec_communities_count";

  ///Int
  ///Number of communities current user is part of, in the last app session
  ///
  /// This is useful for showing loader. If the last fetched count is 0, we can skip showing loader
  static const MY_COMMUNITIES_COUNT = "my_communities_count";

  ///Bool
  ///
  /// One time showing the community introduction banner
  static const CAN_SHOW_COMMUNITY_INTRO_BANNER =
      "can_show_community_intro_banner";
}
