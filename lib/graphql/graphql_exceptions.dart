import 'package:arre_frontend_flutter/utils/utils.dart';

class ArreApiException {
  final String message;
  final String? errorCodeForClient;
  final int statusCode;
  final dynamic response;

  ArreApiException({
    required this.message,
    required this.statusCode,
    this.errorCodeForClient,
    required this.response,
  });

  static ArreApiException? fromHttpResponse(Map data) {
    try {
      final exception = ArreApiException(
        message: data["message"],
        statusCode: data["statusCode"],
        errorCodeForClient: data["errorCodeForClient"],
        response: data,
      );
      return exception;
    } catch (err, st) {
      Utils.reportError(err, st);
      return null;
    }
  }

  @override
  String toString() {
    return "ArreGraphQLException(statusCode: $statusCode; errorCodeForClient:$errorCodeForClient; message: $message;)";
  }
}

abstract class ArreApiStatusCode {
  static const NO_INTERNET = -1;
  static const UNKNOWN = 0;
  static const NOT_FOUND = 404;
}
