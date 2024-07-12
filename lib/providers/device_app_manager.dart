import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/arre_link_manager.dart';
import 'package:arre_frontend_flutter/providers/method_channels.dart';
import 'package:arre_frontend_flutter/providers/push_notification_manager.dart';
import 'package:arre_frontend_flutter/providers/remote_config_manager.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_notification_gql/arre_notification_gql.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:upgrader/upgrader.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:version/version.dart';
import 'package:in_app_update/in_app_update.dart';

enum AppUpdateStatus {
  latest,
  updateAvailable,
  forceUpdateAvailable;
}

class DeviceAppDetails {
  final PackageInfo packageInfo;
  final AndroidDeviceInfo? androidDeviceInfo;
  final IosDeviceInfo? iosDeviceInfo;
  final MacOsDeviceInfo? macOsDeviceInfo;

  String get appVersion => packageInfo.version;

  String get buildNumber => packageInfo.buildNumber;

  String get deviceName =>
      androidDeviceInfo?.device ??
      iosDeviceInfo?.name ??
      macOsDeviceInfo?.computerName ??
      "unknown";

  String get deviceUniqueId =>
      androidDeviceInfo?.id ??
      iosDeviceInfo?.identifierForVendor ??
      macOsDeviceInfo?.systemGUID ??
      "unknown";

  String get manufacturer =>
      "${androidDeviceInfo?.brand ?? iosDeviceInfo?.model ?? macOsDeviceInfo?.model ?? "unknown"}, isPhysicalDevice: ${androidDeviceInfo?.isPhysicalDevice ?? iosDeviceInfo?.isPhysicalDevice ?? "unknown"}";

  String get modelName =>
      androidDeviceInfo?.model ??
      iosDeviceInfo?.utsname.machine ??
      macOsDeviceInfo?.model ??
      "unknown";

  String get operatingSystem => Platform.operatingSystem;

  String get operatingSystemVersion {
    if (androidDeviceInfo != null) {
      final version = androidDeviceInfo!.version;
      return "Android ${version.release}, sdk: ${version.sdkInt}, securityPatch: ${version.securityPatch}, incremental: ${version.incremental}, baseOS: ${version.baseOS}, codename: ${version.codename}";
    } else if (iosDeviceInfo != null) {
      final ios = iosDeviceInfo!;
      return "${ios.systemName} ${ios.systemVersion}";
    } else if (macOsDeviceInfo != null) {
      final macOs = macOsDeviceInfo!;
      return "${macOs.osRelease}";
    }
    throw UnimplementedError();
  }

  DeviceAppDetails.android({
    required this.packageInfo,
    required AndroidDeviceInfo this.androidDeviceInfo,
  })  : this.iosDeviceInfo = null,
        this.macOsDeviceInfo = null;

  DeviceAppDetails.ios({
    required IosDeviceInfo this.iosDeviceInfo,
    required this.packageInfo,
  })  : this.androidDeviceInfo = null,
        this.macOsDeviceInfo = null;

  DeviceAppDetails.macOs({
    required MacOsDeviceInfo this.macOsDeviceInfo,
    required this.packageInfo,
  })  : this.androidDeviceInfo = null,
        this.iosDeviceInfo = null;
}

class AppUpdateDetails {
  final Version currentVersion;
  final Version updateVersion;
  final bool isUpdateIgnored;
  final AppUpdateStatus status;

  AppUpdateDetails({
    required this.currentVersion,
    required this.updateVersion,
    required this.isUpdateIgnored,
    required this.status,
  });
}

final appUpdateFutureProvider = FutureProvider((ref) async {
  final upgrader = Upgrader();
  await upgrader.initialize();
  final minAppVersionConfig =
      await RemoteConfigManager.instance.getMap(RemoteConfigKey.APP_UPDATE);

  if (minAppVersionConfig is! Map) {
    throw Exception(
        "Invalid format for remote config ${RemoteConfigKey.APP_UPDATE}");
  }

  final minVersion =
      Version.parse(minAppVersionConfig[Platform.operatingSystem.toString()]);
  final appstoreVersion = Version.parse(upgrader.currentAppStoreVersion()!);
  final installedVersion = Version.parse(upgrader.currentInstalledVersion()!);

  debugPrint(""
      "appstoreVersion: $appstoreVersion\n"
      "installedVersion: $installedVersion\n"
      "minVersion: $minVersion\n"
      "");
  AppUpdateStatus _updateStatus;
  if (minVersion > installedVersion && appstoreVersion > installedVersion) {
    _updateStatus = AppUpdateStatus.forceUpdateAvailable;
  } else if (appstoreVersion > installedVersion) {
    _updateStatus = AppUpdateStatus.updateAvailable;
  } else {
    _updateStatus = AppUpdateStatus.latest;
  }
  final ignoredUpdateVersion =
      arrePref.getString(PrefKey.IGNORED_APP_UPDATE_VERSION);
  bool isUpdateIgnored = false;
  if (ignoredUpdateVersion != null) {
    isUpdateIgnored = appstoreVersion <= Version.parse(ignoredUpdateVersion);
  }
  // if (kDebugMode) {
  //   return AppUpdateDetails(
  //     currentVersion: installedVersion,
  //     updateVersion: appstoreVersion,
  //     isUpdateIgnored: false,
  //     status: AppUpdateStatus.updateAvailable,
  //   );
  // } else {
  return AppUpdateDetails(
    currentVersion: installedVersion,
    updateVersion: appstoreVersion,
    isUpdateIgnored: isUpdateIgnored,
    status: _updateStatus,
  );
  // }
});

///Device and App versions manager
class DeviceAppManager with _AppRating {
  static final instance = DeviceAppManager._();

  DeviceAppDetails? _deviceAppDetails;

  DeviceAppManager._();

  Future<DeviceAppDetails> get deviceAppDetails => _initDeviceAppDetails();

  void updateApp() {
    InAppUpdate.checkForUpdate().then((value) {
      if (value.updateAvailability == UpdateAvailability.updateAvailable) {
        if (value.immediateUpdateAllowed) {
          InAppUpdate.performImmediateUpdate();
        } else {
          openStore();
        }
      }
    }).catchError((err, st) {
      openStore();
      Utils.reportError(err, st);
    });
  }

  Future<(String?, GlastAppLandingSourceType)> getAppLandingDetails() async {
    await ArreLinkManager.instance.initialLink;
    final initialDynamicLink = ArreLinkManager.instance.initialLandingLink;
    final initialNotification =
        await PushNotificationManager.instance.initialMessage;

    GlastAppLandingSourceType appLandingSource;

    if (initialDynamicLink != null) {
      appLandingSource = GlastAppLandingSourceType.deepLink;
    } else if (initialNotification != null) {
      appLandingSource = GlastAppLandingSourceType.notification;
    } else {
      appLandingSource = GlastAppLandingSourceType.direct;
    }

    return (initialDynamicLink ?? initialNotification, appLandingSource);
  }

  Future<DeviceAppDetails> _initDeviceAppDetails() async {
    if (_deviceAppDetails != null) return _deviceAppDetails!;
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    if (Platform.isAndroid) {
      _deviceAppDetails = DeviceAppDetails.android(
        packageInfo: packageInfo,
        androidDeviceInfo: await deviceInfo.androidInfo,
      );
    } else if (Platform.isIOS) {
      _deviceAppDetails = DeviceAppDetails.ios(
        packageInfo: packageInfo,
        iosDeviceInfo: await deviceInfo.iosInfo,
      );
    } else if (Platform.isMacOS) {
      _deviceAppDetails = DeviceAppDetails.macOs(
        packageInfo: packageInfo,
        macOsDeviceInfo: await deviceInfo.macOsInfo,
      );
    } else {
      throw UnimplementedError(
          "Platform ${Platform.operatingSystem} is not implemented");
    }
    return _deviceAppDetails!;
  }

  ///Call this in _InternalRouter
  Future<void> saveUserDeviceInfo(String userId) async {
    try {
      final appLandingDetails = await getAppLandingDetails();
      final deviceAppDetails = await _initDeviceAppDetails();

      final fcmToken = await PushNotificationManager.instance.getFcmToken();
      final notificationTurnedOnStatus =
          await Permission.notification.status.isGranted;

      // log(
      //     "\nInitial dynamic link: $initialDynamicLink\n"
      //     "Initial notification: $initialNotification\n"
      //     "FCM Token: $fcmToken\n"
      //     "App landing source: $appLandingSource\n"
      //     "User ID: ${arrePref.userId}\n"
      //     "Auth Token: ${arrePref.authToken}\n",
      //     name: "DEVICE_INFORMATION");
      arreAnalytics.setUserProperty(
        UserProperty.BUILD_NUMBER,
        deviceAppDetails.buildNumber,
      );
      arreAnalytics.setUserProperty(
        UserProperty.PLATFORM,
        deviceAppDetails.operatingSystem,
      );
      arreAnalytics.setUserProperty(
        UserProperty.VERSION_NUMBER,
        deviceAppDetails.appVersion,
      );
      await ApiService.instance.saveUserDeviceInformation(
        userId: userId,
        appVersion: deviceAppDetails.appVersion,
        buildNumber: deviceAppDetails.buildNumber,
        appLandingLink: appLandingDetails.$1,
        appLandingSource: appLandingDetails.$2,
        downloadSource: await ArreMethodChannel.instance.getAppInstallSource(),
        notificationTurnedOn: notificationTurnedOnStatus,
        inputDeviceInfo: GinputDeviceInfoBuilder()
          ..fcmToken = fcmToken
          ..deviceName = deviceAppDetails.deviceName
          ..deviceUniqueId = deviceAppDetails.deviceUniqueId
          ..manufacturer = deviceAppDetails.manufacturer
          ..modelName = deviceAppDetails.modelName
          ..operatingSystem = deviceAppDetails.operatingSystem
          ..operatingSystemVersion = deviceAppDetails.operatingSystemVersion,
      );
    } catch (err, st) {
      Utils.reportError(err, st);
    }
  }

  void openStore() {
    if (Platform.isAndroid) {
      Utils.launchURL(
        AppConstants.PLAY_STORE_URL,
        launchMode: LaunchMode.externalNonBrowserApplication,
      );
    } else {
      Utils.launchURL(AppConstants.APP_STORE_URL);
    }
  }
}

mixin _AppRating {
  String _defaultAppRatingMetrics() {
    return jsonEncode({
      "pods_created": 0,
      "pods_listened": 0,
      "has_reviewed": false,
    });
  }

  Future<AppRatingMetric> _incrementAppRatingMetrics(String metricKey) async {
    var metricsStr = arrePref.getString(PrefKey.APP_RATING_METRICS);
    if (metricsStr == null) metricsStr = _defaultAppRatingMetrics();
    final metrics = jsonDecode(metricsStr);
    metrics[metricKey]++;
    await arrePref.setString(PrefKey.APP_RATING_METRICS, jsonEncode(metrics));
    return AppRatingMetric(
      podsCreated: metrics["pods_created"],
      podsListened: metrics["pods_listened"],
      hasReviewed: metrics["has_reviewed"],
    );
  }

  Future<AppRatingMetric> incrementPodCreatedCount() =>
      _incrementAppRatingMetrics("pods_created");

  Future<AppRatingMetric> incrementPodListenedCount() =>
      _incrementAppRatingMetrics("pods_listened");

  Future<void> rateAndReviewApp(AppRatingMetric metrics) async {
    if (metrics.hasReviewed) return;
    if (metrics.podsCreated >= 5 ||
        metrics.podsListened >= 20 &&
            await InAppReview.instance.isAvailable() &&
            arreAnalytics.appState == "foreground") {
      try {
        await InAppReview.instance.requestReview();
        await arrePref.setString(
          PrefKey.APP_RATING_METRICS,
          jsonEncode({
            "pods_created": 0,
            "pods_listened": 0,
            "has_reviewed": true,
          }),
        );
        arreAnalytics.logEvent(
          GAEvent.APP_REVIEW_REQUESTED,
          parameters: {
            "is_request_available": await InAppReview.instance.isAvailable(),
            "pods_created": metrics.podsCreated,
            "pods_listened": metrics.podsListened
          },
        );
      } catch (err, st) {
        final metricsStr = _defaultAppRatingMetrics();
        await arrePref.setString(PrefKey.APP_RATING_METRICS, metricsStr);
        Utils.reportError(err, st, reason: "app_review_failed");
      }
    }
  }
}

class AppRatingMetric {
  final int podsCreated, podsListened;
  final bool hasReviewed;

  AppRatingMetric({
    required this.podsCreated,
    required this.podsListened,
    required this.hasReviewed,
  });
}
