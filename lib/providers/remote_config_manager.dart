import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

import '../utils/utils.dart';

class RemoteConfigManager {
  static final instance = RemoteConfigManager._();

  late Future<void> init = _initFuture();

  RemoteConfigManager._();

  FirebaseRemoteConfig get _remoteConfig => FirebaseRemoteConfig.instance;

  Future<void> _initFuture() async {
    await _remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 2),
    ));
    await _remoteConfig.fetchAndActivate();
    await _remoteConfig.ensureInitialized();
  }

  Future<Map?> getMap(String key) async {
    try {
      await init.catchError((err) => _initFuture());
      final config = _remoteConfig.getString(key);
      final value = jsonDecode(config);
      return value;
    } catch (err, st) {
      Utils.reportError(err, st);
      return null;
    }
  }

  Future<String> getString(String key, String defaultValue) async {
    try {
      if (key == RemoteConfigKey.ONBOARDING_FLOW && kDebugMode) {
        // return "creatorFlow";
        // return "listenerFlow";
      }
      await init.catchError((err) => _initFuture());
      final value = _remoteConfig.getString(key);
      return value;
    } catch (err, st) {
      Utils.reportError(err, st);
      return defaultValue;
    }
  }

  bool shouldShowPostTimestamp() {
    try {
      final remoteConfig = FirebaseRemoteConfig.instance;
      final value = remoteConfig.getBool(RemoteConfigKey.SHOW_POST_TIMESTAMP);
      return value;
    } catch (err, st) {
      Utils.reportError(err, st);
      return true;
    }
  }
}

abstract class RemoteConfigKey {
  ///Json value
  ///
  ///{"ios":120,"android":120}
  static const APP_UPDATE = "app_update_v0";

  static const SHOW_POST_TIMESTAMP = "show_post_timestamp_v0";

  static const VOICECLUB_SECTION_TITLE = "voiceclub_section_title";

  ///Possible values - `listenerFlow` or `creatorFlow`
  static const ONBOARDING_FLOW = "onboarding_flow";
}
