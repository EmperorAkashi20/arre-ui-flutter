import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/graphql/http_client.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/method_channels.dart';
import 'package:arre_frontend_flutter/providers/push_notification_manager.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_app_links/flutter_facebook_app_links.dart';
import 'package:singular_flutter_sdk/singular.dart';
import 'package:singular_flutter_sdk/singular_config.dart';
import 'package:facebook_app_events/facebook_app_events.dart' as facebook;

class ArreLinkManager {
  static final instance = ArreLinkManager._();
  StreamController<String> _linkController = StreamController.broadcast();
  late Future<String?> _initialLink;
  String? _latestLink;
  StreamSubscription? _linkStreamSub;

  String? initialLandingLink;

  Stream<String> get onLink => _linkController.stream;

  Future<String?> get initialLink => _initialLink;

  ///Use this for navigating on app launch in home screen
  String? get latestLink => _latestLink;

  ArreLinkManager._() {
    _initialLink = getInitialLink();
    _linkController.onListen = () {
      // print("ArreLinkManager _linkController.onListen $_latestLink");
      listenToLinkStream();
    };

    _linkController.onCancel = () {
      // print("ArreLinkManager _linkController.onCancel");
      return _linkStreamSub?.cancel();
    };
  }

  ///Call this only once in main method./
  Future<void> listenToLinkStream() async {
    // print("ArreLinkManager refreshEventStream #1");
    if (_linkController.hasListener) {
      // print("ArreLinkManager refreshEventStream #2");
      await _linkStreamSub?.cancel().catchError((err) {});
      _linkStreamSub =
          ArreMethodChannel.instance.linkStream.listen((event) async {
        final deepLink = await getArreVoiceDeepLink(event);
        // print("ArreMethodChannel.instance.linkStream #2 $event");
        _linkController.add(deepLink);
        _onLinkEvent(deepLink);
      });
    }
  }

  ///Shows ATT system dialog if not shown before
  Future<void> requestAppTracking() async {
    if (!Platform.isIOS) return;
    try {
      if ((await AppTrackingTransparency.trackingAuthorizationStatus) !=
          TrackingStatus.notDetermined) {
        return;
      }
      // final permissionStatus =
      //     await Permission.appTrackingTransparency.request();
      // log("iOS appTrackingTransparency ${permissionStatus.name}");
      final status =
          await AppTrackingTransparency.requestTrackingAuthorization();
      log("iOS appTrackingTransparency ${status.name}");
    } catch (err, st) {
      Utils.reportError(err, st);
    }
  }

  Future<void> initSingular() async {
    final config = SingularConfig(
      'arre_68091efd',
      '08fcfe8f896a3a4ca02af0201f5d5c13',
    );
    config.singularLinksHandler = (params) async {
      // debuggingLogs.add(
      //     "singularLinksHandler ${params.deeplink} ${params.urlParameters} ${params.passthrough}");
      if (params.deeplink != null) {
        final deepLink = await getArreVoiceDeepLink(params.deeplink!);
        _linkController.add(deepLink);
        _onLinkEvent(deepLink);
      }
    };
    await requestAppTracking();
    facebook.FacebookAppEvents().setAdvertiserTracking(enabled: true);
    facebook.FacebookAppEvents().setAutoLogAppEventsEnabled(true);
    config.skAdNetworkEnabled = true;
    // Enable manual conversion value updates
    config.manualSkanConversionManagement = true;
    config.conversionValueUpdatedCallback = (int conversionValue) {
      // print(
      //     'Received DEEP_LINK_DEBUG conversionValueUpdatedCallback: $conversionValue');
    };
    Singular.start(config);
    _setupUninstallTracking();
  }

  Future<void> _setupUninstallTracking() async {
    String? token;
    if (Platform.isIOS || Platform.isMacOS) {
      token = await PushNotificationManager.instance.getApnsToken();
    } else {
      token = await PushNotificationManager.instance.getFcmToken();
    }
    if (token != null) {
      Singular.registerDeviceTokenForUninstall(token);
    }
  }

  ///Parses deep link from the [link]
  ///
  /// For example, if the [link] is https://arrevoice.co/something which is Firebase dynamic link
  /// this method gets the deeplink from the dynamic link
  Future<String> getArreVoiceDeepLink(String link) async {
    try {
      if (link.isValid) {
        initialLandingLink ??= link;
      }
      Uri uri = Uri.parse(link);
      //Parse dynamic link
      if (uri.isScheme("https") && uri.host == "arrevoice.co") {
        final dynLink = await FirebaseDynamicLinks.instance.getDynamicLink(uri);
        final link = dynLink!.link.replace(
          path: dynLink.link.path,
          queryParameters: {
            ...dynLink.link.queryParameters,
            ...dynLink.utmParameters,
          },
        );
        return link.toString();
      } else if ((uri.isScheme("https") || uri.isScheme("arrevoice")) &&
          uri.host == AppConfig.ARRE_LINK_BASE_URL_DOMAIN) {
        return await ApiService.instance.getDeepLink(uri);
      } else if (uri.host.endsWith("sng.link")) {
        final redirect = await AHttpClient.instance
            .getRedirectUrl(uri: uri)
            .catchError((err, st) => uri);
        link = redirect.toString();
      } else if (uri.host.endsWith("arre.link")) {
        final redirect = await ApiService.instance.getDeepLink(uri);
        link = redirect.toString();
      }
      return link;
    } catch (err) {
      return link;
    }
  }

  Future<String?> _getIosClipboardLink() async {
    try {
      final hasCopiedClipboardData =
          arrePref.getBool(PrefKey.HAS_COPIED_CLIPBOARD_DATA_1ST_TIME) ??
              arrePref.authToken != null;
      if (Platform.isIOS && hasCopiedClipboardData != true) {
        final clipboard = (await Clipboard.getData("text/plain"))?.text;
        arrePref.setBool(PrefKey.HAS_COPIED_CLIPBOARD_DATA_1ST_TIME, true);
        if (clipboard == null) throw ArreIgnoreException("No clipboard data");
        final uri = Uri.parse(clipboard);
        if (uri.host.endsWith("arrevoice.com")) {
          return uri.toString();
        }
      }
    } catch (err, st) {
      arrePref.setBool(PrefKey.HAS_COPIED_CLIPBOARD_DATA_1ST_TIME, true);
      log("Some error occurred while parsing clipboard data ", error: err);
      Utils.reportError(err, st);
    }
    return null;
  }

  Future<String?> getInitialLink() async {
    // print("ArreLinkManager getInitialLink");
    try {
      var initialLink = await ArreMethodChannel.instance.getInitialLink();
      if (initialLink == null) {
        initialLink = await _getIosClipboardLink();
      }
      if (initialLink == null) {
        try {
          await requestAppTracking();
          initialLink =
              (await FlutterFacebookAppLinks.initFBLinks()).validValue;
          if (!initialLink.isValid && Platform.isIOS) {
            initialLink =
                (await FlutterFacebookAppLinks.getDeepLink()).validValue;
          }
        } catch (err, st) {
          Utils.reportError(err, st, reason: "FacebookAppLink");
        }
      }
      // if (kDebugMode) {
      //   initialLink = "https://arrevoice.co/z259";
      //   // initialLink = "https://www.arrevoice.com/creator_studio";
      // }
      if (initialLink != null) {
        initialLink = await getArreVoiceDeepLink(initialLink);
      }
      // print("ArreLinkManager initialLink is $initialLink");
      _latestLink ??= initialLink;
      // print("ArreLinkManager _latestLink is $_latestLink");
      return initialLink;
    } catch (err) {
      return null;
    }
  }

  Future<void> _onLinkEvent(String link) async {
    // print("ArreLinkManager _onLinkEvent $link");
    _latestLink = link;
    // debuggingLogs.add("_onLinkEvent $link");
    if (await _initialLink == null) {
      _initialLink = Future.value(link);
    }
  }
}
