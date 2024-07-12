import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

import '../utils/utils.dart';

const _LOG = "PUSH_NOTIFICATION_MANAGER";

extension FCMArreRouteLocation on RemoteMessage {
  String? get redirectUrl => data["redirectUrl"];
}

class PushNotificationManager {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  late StreamController<String> _notificationStreamCtrl;

  Future<String?>? _initialMessage;
  StreamSubscription<RemoteMessage>? _foregroundMessageSub,
      _backgroundMessageSub;
  static final instance = PushNotificationManager._();

  PushNotificationManager._() {
    _notificationStreamCtrl = StreamController.broadcast();
  }

  Future<String?>? get initialMessage => _initialMessage;

  Stream<String> get notificationStream => _notificationStreamCtrl.stream;

  Future<String?> getApnsToken() {
    return FirebaseMessaging.instance.getAPNSToken();
  }

  Future<String?> getFcmToken() {
    return FirebaseMessaging.instance.getToken();
  }

  ///Call this when user clicks on notification from any state of the app
  Future<void> trackPushNotificationImpression(Map? data) async {
    final notificationId = data?["notificationId"];
    if (notificationId != null) {
      await ApiService.instance.trackPushNotificationImpression(notificationId);
    }
  }

  ///Call this in main function
  Future<void> init() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _initialMessage = FirebaseMessaging.instance
        .getInitialMessage()
        .then((value) => value?.redirectUrl)
        .catchError((err) => null)
        .whenComplete(() {
      _backgroundMessageSub ??= FirebaseMessaging.onMessageOpenedApp
          .listen(_onBackgroundNotification);
    });
    _foregroundMessageSub ??=
        FirebaseMessaging.onMessage.listen(_onForegroundNotification);

    FirebaseMessaging.onBackgroundMessage((message) async {
      print("FirebaseMessaging.onBackgroundMessage call");
      await _onBackgroundNotification;
    });
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const initializationSettingsAndroid =
        AndroidInitializationSettings('drawable/ic_notification');
    final initializationSettingsDarwin = DarwinInitializationSettings(
      requestBadgePermission: false,
      requestAlertPermission: false,
      requestSoundPermission: false,
    );
    final initializationSettingsLinux =
        LinuxInitializationSettings(defaultActionName: 'Open notification');
    final initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwin,
        macOS: initializationSettingsDarwin,
        linux: initializationSettingsLinux);
    await flutterLocalNotificationsPlugin
        .initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    )
        .catchError((err, st) {
      Utils.reportError(err, st);
      return null;
    });
  }

  void onDidReceiveNotificationResponse(NotificationResponse details) {
    if (details.payload == null) return;
    final payload = jsonDecode(details.payload!);
    if (payload["redirectUrl"] is String) {
      _notificationStreamCtrl.add(payload["redirectUrl"]);
    }
    trackPushNotificationImpression(payload);
  }

  Future<void> _onForegroundNotification(RemoteMessage message) async {
    DarwinNotificationDetails? iosNotificationDetails;
    ByteArrayAndroidBitmap? largeIcon;

    log("Foreground Notification \n${message.data}", name: _LOG);
    try {
      if (message.notification?.android?.imageUrl != null) {
        final http.Response response = await http
            .get(Uri.parse(message.notification!.android!.imageUrl.toString()));
        largeIcon = ByteArrayAndroidBitmap.fromBase64String(
            base64Encode(response.bodyBytes));
        //---no more using styleInformation in <AndroidNotificationDetails>----
        // bigPictureStyleInformation = BigPictureStyleInformation(
        //   ByteArrayAndroidBitmap.fromBase64String(
        //     base64Encode(response.bodyBytes),
        //   ),
        // );
      }

      if (message.notification?.apple?.imageUrl != null) {
        String imagePath = await ArreFiles.instance.downloadAndSaveImageFromUrl(
            message.notification!.apple!.imageUrl!);
        iosNotificationDetails = DarwinNotificationDetails(attachments: [
          DarwinNotificationAttachment(
            imagePath,
            hideThumbnail: false,
          ),
        ]);
      }
    } catch (err, st) {
      Utils.reportError(err, st);
    }

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'default',
      'Arré Voice Default',
      channelDescription: 'General notifications',
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
      ticker: 'ticker',
      icon: "drawable/ic_notification",
      color: AColors.tealPrimary,
      largeIcon: largeIcon,
      // styleInformation: bigPictureStyleInformation, //use this when big-expand-image is needed in push notification
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: iosNotificationDetails,
    );
    await flutterLocalNotificationsPlugin.show(
      message.hashCode,
      message.notification?.title,
      message.notification?.body,
      notificationDetails,
      payload: jsonEncode(message.data),
    );
  }

  void _onBackgroundNotification(RemoteMessage message) {
    log("Background Notification \n${message.data}", name: _LOG);
    trackPushNotificationImpression(message.data);
    final redirectUrl = message.data["redirectUrl"];
    if (redirectUrl != null) {
      _notificationStreamCtrl.add(redirectUrl);
    }
  }

  void clear() {
    _foregroundMessageSub?.cancel();
    _backgroundMessageSub?.cancel();
    FirebaseMessaging.instance.deleteToken();
  }

  Future<void> showDebugNotification({
    required String title,
    required String body,
    String redirectUrl = "/debug",
  }) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'default',
      'Arré Voice Default',
      channelDescription: 'General notifications',
      importance: Importance.max,
      priority: Priority.max,
      category: AndroidNotificationCategory.message,
      ticker: 'ticker',
      icon: "drawable/ic_notification",
      color: AColors.tealPrimary,
      playSound: true,
      enableVibration: true,
    );

    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await flutterLocalNotificationsPlugin.show(
      title.hashCode,
      title,
      body,
      notificationDetails,
      payload: jsonEncode({"redirectUrl": redirectUrl}),
    );
  }

  ///[onclickRedirectTo] - pass the screen's location
  void showForegroundNotification({
    required String title,
    required String body,
    required String onclickRedirectTo,
  }) {
    flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          'default',
          'Arré Voice Default',
          ongoing: true,
          priority: Priority.low,
          visibility: NotificationVisibility.secret,
          importance: Importance.min,
          autoCancel: false,
          category: AndroidNotificationCategory.service,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      payload: jsonEncode(
        {"redirectUrl": onclickRedirectTo},
      ),
    );
  }
}
