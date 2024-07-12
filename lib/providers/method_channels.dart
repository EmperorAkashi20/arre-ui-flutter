import 'package:flutter/services.dart';

class ArreMethodChannel {
  static final instance = ArreMethodChannel._();

  ArreMethodChannel._();

  final _linkEventChannel = EventChannel("link_manager.arre_voice/events");
  final _methodChannel = MethodChannel("arre_voice/method");

  Stream<String> get linkStream {
    // print("ArreMethodChannel linkStream ${_linkEventChannel.hashCode}");
    return _linkEventChannel.receiveBroadcastStream().cast<String>();
  }

  Future<String?> getInitialLink() {
    return _methodChannel
        .invokeMethod<String>("ARRE_PLATFORM_CHANNEL#initialLink")
        .timeout(Duration(seconds: 5));
  }

  Future<String?> getAppInstallSource() {
    return _methodChannel
        .invokeMethod<String>("ARRE_PLATFORM_CHANNEL#appInstallSource")
        .timeout(Duration(seconds: 5));
  }
}
