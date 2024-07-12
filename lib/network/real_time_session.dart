import 'dart:async';

import 'package:arre_frontend_flutter/graphql/socket_client.dart';
import 'package:arre_frontend_flutter/graphql/socket_service.dart';
import 'package:arre_frontend_flutter/providers/device_app_manager.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_notification_gql/arre_notification_gql.dart';
import 'package:flutter/material.dart';

class ARealTimeSession with WidgetsBindingObserver {
  Timer? _disconnectTimer;
  StreamSubscription? _unAuthorizedEventSub;
  static ARealTimeSession instance = ARealTimeSession._();
  StreamSubscription<void>? _connectStreamSub;

  ARealTimeSession._();

  void init() async {
    WidgetsBinding.instance.addObserver(this);
    ArreSocketClient.instance.connect();
    _connectStreamSub?.cancel();
    _connectStreamSub = ArreSocketClient.instance.onConnect().listen((event) {
      _emitUserCameOnline();
    });
    _unAuthorizedEventSub?.cancel();
    _unAuthorizedEventSub =
        ASocketService.onUnauthorizedConnection().listen((event) {
      Utils.logout();
    });
  }

  void _emitUserCameOnline() async {
    try {
      final appLandingDetails = await DeviceAppManager.instance
          .getAppLandingDetails()
          .catchError((err) => (null, GlastAppLandingSourceType.direct));

      ASocketService.userCameOnline(
        appLandingLink: appLandingDetails.$1,
        appLandingSource: appLandingDetails.$2.name,
      );
    } catch (e, st) {
      ALogger.e(e);
      Utils.reportError(e, st);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _disconnectTimer?.cancel();
      ArreSocketClient.instance.connect();
    } else if (state == AppLifecycleState.paused) {
      _disconnectTimer?.cancel();
      _disconnectTimer = Timer(Duration(seconds: 10), () {
        if (WidgetsBinding.instance.lifecycleState ==
            AppLifecycleState.paused) {
          ArreSocketClient.instance.disconnect();
        }
      });
    }
  }

  void disconnect() {
    _connectStreamSub?.cancel();
    _unAuthorizedEventSub?.cancel();
    ArreSocketClient.instance.disconnect();
    WidgetsBinding.instance.removeObserver(this);
  }
}
