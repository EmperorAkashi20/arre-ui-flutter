import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

import '../models/network_log.dart';

///Error: 1 red

abstract class ALogger {
  static Logger _defaultLogger = Logger();

  static const _NETWORK_REQUEST = kDebugMode;
  static const _NETWORK_RESPONSE = kDebugMode;
  static const _NETWORK_ERROR = kDebugMode;
  static const _ANALYTICS = kDebugMode;
  static const _DEFAULT = kDebugMode;

  // static Logger _networkLogger = Logger(
  //     printer: PrettyPrinter(
  //   colors: true,
  // ));

  /// Network
  /// Request: 5, i
  /// Response: 13, d
  /// Response Error: 13, e 👹
  static Logger _networkLogger = Logger(
    printer: PrettyPrinter(
      colors: true,
      levelColors: {
        Level.info: AnsiColor.fg(5),
        Level.debug: AnsiColor.fg(13),
        Level.error: AnsiColor.fg(13),
      },
      levelEmojis: {
        Level.info: "",
        Level.debug: "",
        Level.error: "👹",
      },
      excludePaths: [""],
    ),
  );

  /// Analytics
  /// 214: i screen view 📱
  /// 216: d user property set 👩🏼
  /// 216: w global param set
  /// 220: f GA Event 👆
  static Logger _analyticsLogger = Logger(
    printer: PrettyPrinter(
      colors: true,
      levelColors: {
        Level.info: AnsiColor.fg(214),
        Level.debug: AnsiColor.fg(216),
        Level.warning: AnsiColor.fg(216),
        Level.fatal: AnsiColor.fg(220),
      },
      levelEmojis: {
        Level.info: "📱",
        Level.debug: "👩🏼",
        Level.warning: "",
        Level.fatal: "👆"
      },
      excludePaths: [""],
      lineLength: 100,
    ),
  );

  static void network(NetworkLog log) {
    if (log.hasError() && _NETWORK_ERROR) {
      _networkLogger.e(log.toString());
    } else {
      switch (log.logType) {
        case NetworkLogType.graphqlRequest:
        case NetworkLogType.sessionDivider:
        case NetworkLogType.httpRequest:
        case NetworkLogType.socketEventEmit:
          if (_NETWORK_REQUEST) {
            _networkLogger.i(log.toString());
          }
          break;
        case NetworkLogType.graphqlResponse:
        case NetworkLogType.httpResponse:
        case NetworkLogType.socketEventListen:
          if (_NETWORK_RESPONSE) {
            _networkLogger.d(log.toString());
          }
          break;
        case NetworkLogType.httpError:
          if (_NETWORK_ERROR) {
            _networkLogger.e(log.toString());
          }
      }
    }
  }

  static void gaScreen(String message) {
    if (!_ANALYTICS) return;

    _analyticsLogger.i(message);
  }

  static void gaEvent(String message) {
    if (!_ANALYTICS) return;

    _analyticsLogger.f(message);
  }

  static void gaUserProperty(String message) {
    if (!_ANALYTICS) return;

    _analyticsLogger.d(message);
  }

  static void gaGlobalEventProperty(String message) {
    if (!_ANALYTICS) return;

    _analyticsLogger.w(message);
  }

  static void i(dynamic message) {
    if (!_DEFAULT) return;

    _defaultLogger.i(message);
  }

  static void d(dynamic message) {
    if (!_DEFAULT) return;

    _defaultLogger.d(message);
  }

  static void e(dynamic message, [StackTrace? stackTrace]) {
    if (!_DEFAULT) return;

    _defaultLogger.e(message, stackTrace: stackTrace);
  }
}
