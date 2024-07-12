import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/arre_link_manager.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/communities/community_chats_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_provider.dart';
import 'package:arre_frontend_flutter/screens/future_loader_dialog.dart';
import 'package:arre_frontend_flutter/screens/settings/my_account_settings.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:intl/intl.dart';
import 'package:mime/mime.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../arre_routing/routing.dart';
import '../graphql/graphql_exceptions.dart';
import '../models/src/arre_exceptions.dart';

import '../network/real_time_session.dart';
import 'Firebase Analytics/firebase_analytics_service.dart';
import 'app_constants.dart';
import 'arre_preferences.dart';
export 'Firebase Analytics/firebase_analytics_service.dart' show EntityType;

enum ShareableApp {
  whatsapp("Whatsapp"),
  x("X");

  const ShareableApp(this.name);

  final String name;

  String get _prefKey {
    switch (this) {
      case ShareableApp.whatsapp:
        return PrefKey.HAS_WHATSAPP_INSTALLED;
      case ShareableApp.x:
        return PrefKey.HAS_X_INSTALLED;
    }
  }

  bool? get isInstalled => arrePref.getBool(_prefKey);

  Future<void> setInstallStatus(bool isInstalled) =>
      arrePref.setBool(_prefKey, isInstalled);

  String getLaunchUrl(String message) {
    switch (this) {
      case ShareableApp.whatsapp:
        return "whatsapp://send?text=${Uri.encodeQueryComponent(message)}";
      case ShareableApp.x:
        return "twitter://post?message=${Uri.encodeQueryComponent(message)}";
    }
  }
}

extension ValidString on String? {
  bool get isValid => this != null && this!.trim().isNotEmpty;

  String? get validValue =>
      this != null && this!.trim().isNotEmpty ? this!.trim() : null;
}

extension ValidMap<T, S> on Map<T, S>? {
  bool get isValid => this != null && this!.isNotEmpty;

  Map<T, S>? get validValue => this != null && this!.isNotEmpty ? this : null;
}

extension AList<T> on List<T> {
  List<T> joinSeparator(T separator) {
    Iterator<T> iterator = this.iterator;
    if (!iterator.moveNext()) return [];
    var first = iterator.current;
    if (!iterator.moveNext()) return [first];
    var buffer = [first];
    do {
      buffer.add(separator);
      buffer.add(iterator.current);
    } while (iterator.moveNext());
    return buffer;
  }
}

extension ArreString on String {
  String get singleLine {
    return this.replaceAll(RegExp(r'\n+'), " ");
  }
}

extension ArreNumbers on int {
  //we are not showing 1.0k/2.0k/5.0k instead 1k 2k 5k but showing 1.1k
  String get shortify {
    if (this >= 1000000) {
      var millionPart = (this / 1000000).toStringAsFixed(1);
      return millionPart.endsWith('.0')
          ? millionPart.substring(0, millionPart.length - 2) + 'M'
          : millionPart + 'M';
    } else if (this >= 1000) {
      var thousandPart = (this / 1000).toStringAsFixed(1);
      return thousandPart.endsWith('.0')
          ? thousandPart.substring(0, thousandPart.length - 2) + 'k'
          : thousandPart + 'k';
    }
    return "$this";
  }

  String get formatWithCommas {
    return this.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        );
  }

  String getLabel({
    required String zero,
    required String one,
    required String many,
  }) {
    return {
          0: zero,
          1: one,
        }[this] ??
        many;
  }
}

extension NumExtension on int {
  String toStringAsFixedDigits(int digits) {
    final prefix = List.filled(digits - this.toString().length, "0").join();
    return "$prefix$this";
  }
}

final _twitterUsernameRegex = RegExp(r"^(\w){1,15}$");
final _linkedinUsernameRegex = RegExp(r"^[a-zA-Z0-9-]{3,100}$");
final _instaUsernameRegex = RegExp(r"^(\w(?:(?:\w|\.(?!\.)){0,28}\w)?)$");

abstract class Utils {
  static bool _isLoggingOut = false;
  static final appScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>(
      debugLabel: "App Scaffold Messenger Key");

  static ScaffoldMessengerState get scaffoldMessenger {
    if (!ArreNavigator.instance.internalRoutesVisibilityNotifier.value) {
      return ScaffoldMessenger.of(ArreNavigator.instance.context);
    }
    return (appScaffoldMessengerKey.currentState ??
        ScaffoldMessenger.of(ArreNavigator.instance.context));
  }

  static void launchURL(
    String url, {
    LaunchMode launchMode = LaunchMode.platformDefault,
  }) async {
    arreAnalytics.logEvent(
      GAEvent.LAUNCH_URL,
      parameters: {
        EventAttribute.ENTITY_TYPE: "url",
        EventAttribute.ENTITY_ID: url
      },
    );
    final deepLink = await ArreLinkManager.instance.getArreVoiceDeepLink(url);
    if (ArreRouteInfoParser.instance.isValidAppLocation(deepLink)) {
      ArreNavigator.instance.pushRouteLocation(deepLink);
      return;
    }
    if (await canLaunchUrl(Uri.parse(url))) {
      try {
        await launchUrl(Uri.parse(url), mode: launchMode);
      } catch (e) {
        Fluttertoast.showToast(msg: 'Could not launch $url');
        log('Could not launch url $url', name: "Utils", error: e);
        throw 'Could not launch $url';
      }
    } else {
      Fluttertoast.showToast(msg: 'Can not launch $url');
      log('Can not launch url $url', name: "Utils");
    }
  }

  static bool get isUserOnboarded =>
      arrePref.getBool(PrefKey.IS_ONBOARDING_COMPLETE) == true;

  static void reportError(
    dynamic err,
    StackTrace? st, {
    dynamic reason,
    Iterable<Object>? information,
  }) {
    if (err is ArreIgnoreException) return;
    ALogger.e(err, st);
    if (err is ArreException) {
      FirebaseCrashlytics.instance.recordError(
        err,
        st,
        reason: reason ?? err.reason,
        information: information ?? err.information,
        printDetails: false,
      );
    } else {
      FirebaseCrashlytics.instance.recordError(
        err,
        st,
        printDetails: false,
        reason: reason,
        information: information ?? const [],
      );
    }
    // if (kReleaseMode) {
    // } else {
    //   debugPrint('reportError: $err');
    //   debugPrint('reportStackTrace: $st');
    // }
    //add additional error reporting logic
  }

  static String? getFullName({String? firstName, String? lastName}) {
    if (firstName.isValid && lastName.isValid) {
      return '$firstName $lastName';
    } else if (firstName.isValid) {
      return firstName;
    } else if (lastName.isValid) {
      return lastName;
    } else {
      return null;
    }
  }

  static (String?, String?) parseFullName(String? name) {
    name = name?.trim();
    String? firstName, lastName;
    final names = name?.split(" ");
    if ((names?.length ?? 0) <= 1) {
      lastName = null;
    } else {
      lastName = names?.skip(1).join(" ");
    }
    firstName = names?.firstOrNull;
    return (firstName, lastName);
  }

  static Future<String> getUsername() async {
    return arrePref.getString(PrefKey.USER_NAME) ?? '';
  }

  static getTimeStamp() {
    final dateTimeFormat = new DateFormat('yyyy-MM-dd hh:mm:ss');
    return dateTimeFormat.format(DateTime.now());
  }

  static getFormattedTimeStamp() {
    String timestamp = getTimeStamp();
    return timestamp.replaceAll(' ', '_').replaceAll(':', '-');
  }

  ///We will create conversationId based on both userIds if it's a direct messaging otherwise it will be a 20 char nanoId,
  ///we are doing this intentionally so that we can get the conversation between two people by combining their ids,
  ///this is required if one user going to the conversation by clicking dm icon cta anywhere in the app(only for dm not for group)
  static Future<String> getConversationId(String receiverId) async {
    await ArreNavigator.instance.ensureOnboardedFuture;
    final sortedUserIds = [receiverId, arrePref.userId!]..sort();
    return sortedUserIds.join(":");
  }

  static String getUserId4mConversationId(String conversationId) {
    final userIds = conversationId.split(":");
    userIds.remove(arrePref.userId);
    return userIds.single;
  }

  static Future<void> logout({
    String? toastMessage,
    bool isSessionExpired = false,
  }) async {
    if (_isLoggingOut) return;
    _isLoggingOut = true;
    await showFutureLoaderDialog(() async {
      ARealTimeSession.instance.disconnect();
      await PodPlayerV3.instance.stop();
      try {
        // ProviderScope.containerOf(ArreNavigator.instance.context)
        //   ..invalidate(ensureAuthenticated)
        //   ..invalidate(ensureLanguagesSelected)
        //   ..invalidate(ensureOnboarded)
        //   ..invalidate(loginProvider);
        if (arrePref.userId != null && !isSessionExpired) {
          try {
            await ApiService.instance.logOut(arrePref.userId!);
          } catch (err) {
            //Ignore
          }
        }
        await FirebaseMessaging.instance.deleteToken();
        if (toastMessage != null) {
          Fluttertoast.showToast(
              msg: toastMessage,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.grey,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      } catch (err) {
        log("Error processing logout request", error: err);
      } finally {
        await arrePref.clear([
          PrefKey.HAS_COPIED_CLIPBOARD_DATA_1ST_TIME,
          PrefKey.LANGUAGE_PREFERENCES,
          PrefKey.USER_NAME,
          PrefKey.CAN_SHOW_COMMUNITY_INTRO_BANNER,
        ]);
      }
    }());
    ArreNavigator.instance.refresh();
    _isLoggingOut = false;
  }

  static Future uploadmedia(String url, File file) async {
    //headers: {"Content-Type": "image/jpg"}
    final mime = lookupMimeType(file.path);

    //print(" mimme "+ mime.toString());

    Uri uri = Uri.parse(url);
    var response = await put(uri,
        body: file.readAsBytesSync(),
        headers: {"Content-Type": mime!, "Content-Disposition": "inline"});

    print("new file upload system " + response.toString());
  }

  static String getMessage4mError(error) {
    if (error is ArreApiException) {
      return error.message;
    } else if (error is ArreException) {
      return error.message;
    }
    return 'Something went wrong!';
  }

  static String readableDateTime(DateTime? updatedOn) {
    return DateFormat.yMMMd().format(updatedOn!);
  }

  static String ddMMyy(DateTime? updatedOn) {
    return DateFormat.yMMMd().format(updatedOn!);
  }

  static String relativeReadableDate(DateTime updatedOn) {
    final now = DateTime.now();
    String? readableDate;
    if (updatedOn.year == now.year && updatedOn.month == now.month) {
      if (updatedOn.day == now.day) {
        readableDate = "Today";
      } else if (updatedOn.day == now.day - 1) {
        readableDate = "Yesterday";
      }
    }
    readableDate ??= DateFormat.yMMMd().format(updatedOn);
    return readableDate;
  }

  static String readableDuration(Duration? duration) {
    if (duration == null) return "";
    final min = duration.inMinutes;
    final secs = duration.inSeconds % 60;
    return "${min < 10 ? "0" : ""}$min:${secs < 10 ? "0" : ""}$secs";
  }

  static String relativeTime(DateTime? date) {
    Duration diff = DateTime.now().difference(date!);

    String timeString = "";

    final locale = LocaleEn();

    if (diff.inMinutes.abs() == 0) {
      timeString = "few sec ago";
    } else if (diff.inMinutes.abs() < 45) {
      timeString = locale.minutes.replaceFirst('%i', '${diff.inMinutes.abs()}');
    } else if (diff.inHours.abs() <= 1) {
      timeString = "1h ago";
    } else if (diff.inHours.abs() < 22) {
      timeString = locale.hours.replaceFirst('%i', '${diff.inHours.abs()}');
    } else if (diff.inDays.abs() <= 1) {
      timeString = "1d ago";
    } else if (diff.inDays.abs() < 7) {
      timeString = locale.days.replaceFirst('%i', '${diff.inDays.abs()}');
    } else {
      return readableDateTime(date);
    }

    return timeString;
  }

  static void copyToClipboard(String text) {
    Clipboard.setData(new ClipboardData(text: text)).then((value) {
      Fluttertoast.showToast(msg: AppConstants.copyToClipboard);
    }).catchError((onError) {
      Fluttertoast.showToast(
          msg: AppConstants.copyToClipboardFiled + onError.toString());
    });
  }

  static Future<void> checkShareableAppInstallStatus(String message) async {
    for (var app in ShareableApp.values) {
      final canLaunch = await canLaunchUrlString(app.getLaunchUrl(message))
          .catchError((err) => false);
      await app.setInstallStatus(canLaunch);
    }
  }

  static Future<bool> shareOnApp({
    required ShareableApp app,
    required String entityId,
    required EntityType entityType,
    required String text,
  }) async {
    try {
      await launchUrlString(app.getLaunchUrl(text));
      ApiService.instance
          .trackShare(
        entityId: entityId,
        entityType: entityType.name,
        sharedOn: app.name,
        sharedActionStatus: "launched_url",
        sharedType: "text",
      )
          .catchError((err, st) {
        reportError(err, st);
      });
      arreAnalytics.logEvent(GAEvent.TRACK_ENTITY_SHARE, parameters: {
        EventAttribute.ENTITY_ID: entityId,
        EventAttribute.ENTITY_TYPE: entityType.name,
        EventAttribute.SHARED_ON: app.name,
        EventAttribute.SHARED_ACTION_STATUS: "launched_url",
        EventAttribute.SHARED_TYPE: "text",
      });
      return true;
    } catch (err) {
      return share(entityId: entityId, entityType: entityType, text: text);
    }
  }

  static Future<bool> share({
    required String entityId,
    required EntityType entityType,
    required String text,
    String? subject,
    List<File>? files,
  }) async {
    ShareResult shareResult;
    String shareType;
    if (files != null) {
      shareType = "media";
      shareResult = await Share.shareXFiles(
        files.map((e) => XFile(e.path)).toList(),
        subject: subject,
        text: Platform.isIOS ? null : text,
      );
    } else {
      shareType = "text";
      shareResult = await Share.shareWithResult(text, subject: subject);
    }
    ApiService.instance
        .trackShare(
      entityId: entityId,
      entityType: entityType.name,
      sharedOn: shareResult.raw,
      sharedActionStatus: shareResult.status.name,
      sharedType: shareType,
    )
        .catchError((err, st) {
      reportError(err, st);
    });
    arreAnalytics.logEvent(GAEvent.TRACK_ENTITY_SHARE, parameters: {
      EventAttribute.ENTITY_ID: entityId,
      EventAttribute.ENTITY_TYPE: entityType.name,
      EventAttribute.SHARED_ON: shareResult.raw,
      EventAttribute.SHARED_ACTION_STATUS: shareResult.status.name,
      EventAttribute.SHARED_TYPE: shareType,
    });
    return shareResult.status == ShareResultStatus.success;
  }

  static Future<void> copy2Clipboard({
    required String entityId,
    required EntityType entityType,
    required String text,
    String? errorMessage,
    required BuildContext context,
  }) async {
    await Clipboard.setData(ClipboardData(text: text));
    showSnackBarMessageV2(context: context, message: "Copied");
    ApiService.instance
        .trackShare(
      entityId: entityId,
      entityType: entityType.name,
      sharedOn: "link_copied",
      sharedActionStatus: "success",
      sharedType: "text",
    )
        .catchError((err, st) {
      reportError(err, st);
    });
    arreAnalytics.logEvent(GAEvent.TRACK_ENTITY_SHARE, parameters: {
      EventAttribute.ENTITY_ID: entityId,
      EventAttribute.ENTITY_TYPE: entityType.name,
      EventAttribute.SHARED_ON: "link_copied",
      EventAttribute.SHARED_ACTION_STATUS: "success",
      EventAttribute.SHARED_TYPE: "text",
    });
  }

  static Future<bool> checkInternetConnection() async {
    bool _isConnected = true;
    // bool _isConnectionTimeOut = true;
    try {
      final response = await InternetAddress.lookup('www.google.com');
      if (response.isNotEmpty) {
        _isConnected = true;
      }
    } on SocketException {
      _isConnected = false;
    } on TimeoutException {
      // _isConnectionTimeOut = false;
    }

    return _isConnected;
  }

  static Future<Map<String, bool>> checkSlowInternetConnection() async {
    Map<String, bool> connectKey = {
      AppConstants.isConnected: true,
      AppConstants.isConnectionTimeOut: false
    };
    try {
      final response = await InternetAddress.lookup('www.google.com');
      if (response.isNotEmpty) {
        connectKey["isConnected"] = true;
        connectKey["isConnectionTimeOut"] = false;
      }
    } on SocketException {
      connectKey["isConnected"] = false;
      connectKey["isConnectionTimeOut"] = false;
    } on TimeoutException {
      connectKey["isConnectionTimeOut"] = true;
    }

    return connectKey;
  }

  ///Currently cropping with Ratio 16:9
  ///
  /// If crop is successful, returns the cropped image path
  static Future<String?> getCroppedImage(
    String imagePath, {
    double ratioX = 16,
    double ratioY = 9,
    bool disableRotation = false,
    String title = "Adjust thumbnail",
  }) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: imagePath,
      aspectRatioPresets: [CropAspectRatioPreset.ratio16x9],
      aspectRatio: CropAspectRatio(ratioX: ratioX, ratioY: ratioY),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: title,
          toolbarColor: AColors.BgLight,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.ratio16x9,
          lockAspectRatio: true,
          hideBottomControls: disableRotation,
        ),
        IOSUiSettings(
          title: 'Adjust thumbnail',
          aspectRatioLockEnabled: true,
          resetAspectRatioEnabled: false,
          rotateButtonsHidden: disableRotation,
        ),
      ],
    );

    if (croppedFile != null) {
      await File(croppedFile.path).exists();
    }

    return croppedFile?.path;
  }

  static bool isValidInstaUsername(String? text) {
    if (!text.isValid) return false;
    return _instaUsernameRegex.hasMatch(text!);
  }

  ///[text] can be instagram url or username
  static String? parseInstaUsername(String? text) {
    if (isValidInstaUsername(text) || text == null) return text;
    final uri = Uri.tryParse(text);
    if (uri != null &&
        uri.host.endsWith("instagram.com") &&
        uri.pathSegments.isNotEmpty &&
        _instaUsernameRegex.hasMatch(uri.pathSegments.first)) {
      return uri.pathSegments.first;
    }
    return null;
  }

  static String getInstaAccountUrl(String username) {
    return "https://instagram.com/$username";
  }

  static String getTwitterAccountUrl(String username) {
    return "https://twitter.com/$username";
  }

  static String getLinkedInAccountUrl(String username) {
    return "https://www.linkedin.com/in/$username/";
  }

  ///[text] can be twitter url or username
  static bool isValidTwitterUsername(String? text) {
    if (!text.isValid) return false;
    return _twitterUsernameRegex.hasMatch(text!);
  }

  static bool isValidLinkedInUsername(String? text) {
    if (!text.isValid) return false;
    return _linkedinUsernameRegex.hasMatch(text!);
  }

  ///[text] can be twitter url or username
  static String? parseTwitterUsername(String? text) {
    if (isValidTwitterUsername(text) || text == null) return text;
    final uri = Uri.tryParse(text);
    if (uri != null &&
        uri.host.endsWith("twitter.com") &&
        uri.pathSegments.isNotEmpty &&
        _twitterUsernameRegex.hasMatch(uri.pathSegments.first)) {
      return uri.pathSegments.first;
    }
    return null;
  }

  ///[text] can be linkedin url or username
  static String? parseLinkedInUsername(String? text) {
    if (isValidLinkedInUsername(text) || text == null) return text;
    final uri = Uri.tryParse(text);
    if (uri != null &&
        uri.host.endsWith("linkedin.com") &&
        uri.pathSegments.length > 1 &&
        _linkedinUsernameRegex.hasMatch(uri.pathSegments[1])) {
      return uri.pathSegments[1];
    }
    return null;
  }

  ///This will return whether pods can be auto-played on opening the voicepod/playlist screen
  ///
  /// This will also show snack bar message for first time returning null
  ///
  /// Note: Use this as last condition in the `if`
  static bool canAutoPlay() {
    final autoPlayStatus = arrePref.getBool(PrefKey.IS_AUTO_PLAY_ON);
    if (autoPlayStatus == null) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        showSnackBar(
          content: Text("You can disable the autoplay from app settings"),
          action: SnackBarAction(
            label: "Open Settings",
            onPressed: () {
              ArreNavigator.instance.push(AAppPage(child: AccountSettings()));
            },
          ),
        );
      });
      arrePref.setBool(PrefKey.IS_AUTO_PLAY_ON, true);
    }
    return autoPlayStatus != false;
  }

  static String? getCommunityId4mChatId(WidgetRef ref, String chatId) {
    if (ref.exists(chatDetailsProvider(chatId))) {
      final data = ref.read(chatDetailsProvider(chatId)).valueOrNull;
      if (data != null) {
        return data.communityId;
      }
    }
    return null;
  }

  static String? getUserCommunityRole(WidgetRef ref, String communityId,
      {bool listen = true}) {
    if (ref.exists(communityProvider(communityId))) {
      final data = ref.read(communityProvider(communityId)).data;
      if (data != null) {
        if (data.isAdmin) {
          return "admin";
        } else if (data.isMember) {
          return "member";
        } else {
          return "non_member";
        }
      }
    }

    if (ref.exists(communityRoleProvider(communityId))) {
      final data = ref.read(communityRoleProvider(communityId)).valueOrNull;
      if (data != null) {
        if (data.role.isValid) {
          return data.role;
        } else {
          return "non_member";
        }
      }
    }

    if (listen) {
      ref.watch(communityRoleProvider(communityId));
    }

    return null;
  }
}

class LocaleEn {
  final String _localeString;

  String get localeString => _localeString;

  LocaleEn([this._localeString = "en"]);

  String get minutes => '%im ago';

  String get hours => '%ih ago';

  String get days => '%id ago';

  String get aMonth => 'a month ago';

  String get months => '%i months ago';

  String get aYear => 'a year';

  String get years => '%i years ago';

  String get futureIdentifier => 'in';

  String get pastIdentifier => 'ago';
}
