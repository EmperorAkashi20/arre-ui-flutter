import 'dart:convert';

import 'package:isar/isar.dart';

part 'network_log.g.dart';

@collection
class NetworkLog {
  Id id = Isar.autoIncrement;
  @enumerated
  final NetworkLogType logType;
  final String? name;
  final String? operationType;
  final String? variables;
  final String request;
  final String headers;
  final int? traceHashcode;
  final String? encodedResponse;
  final String? error;
  final int? statusCode;

  // final String? linkException;
  final List<String>? graphqlErrors;

  @Index()
  final DateTime createdOn;

  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get requestWords => Isar.splitWords(request);

  NetworkLog({
    required this.logType,
    required this.name,
    required this.operationType,
    required this.variables,
    required this.request,
    required this.headers,
    required this.traceHashcode,
    required this.encodedResponse,
    required this.error,
    required this.graphqlErrors,
    required this.statusCode,
    // required this.linkException,
    required this.createdOn,
  });

  NetworkLog.graphqlRequest({
    required this.name,
    required this.operationType,
    required this.variables,
    required this.request,
    required this.headers,
    required this.traceHashcode,
    required this.createdOn,
    // required this.linkException,
  })  : logType = NetworkLogType.graphqlRequest,
        statusCode = null,
        graphqlErrors = null,
        error = null,
        encodedResponse = null;

  NetworkLog.httpRequest({
    required this.name,
    required String method,
    required String? data,
    required this.request,
    required this.headers,
    required this.traceHashcode,
    required this.createdOn,
    // required this.linkException,
  })  : logType = NetworkLogType.httpRequest,
        statusCode = null,
        graphqlErrors = null,
        error = null,
        encodedResponse = null,
        operationType = method,
        variables = data;

  NetworkLog.httpResponse({
    required this.name,
    required String method,
    required String? data,
    required this.request,
    required this.headers,
    required this.traceHashcode,
    required this.encodedResponse,
    required this.createdOn,
    required this.statusCode,
    required this.error,
    // required this.linkException,
  })  : logType = NetworkLogType.httpResponse,
        operationType = method,
        variables = data,
        graphqlErrors = null;

  NetworkLog.httpError({
    required this.name,
    required String method,
    required String? data,
    required this.request,
    required this.headers,
    required this.traceHashcode,
    required this.encodedResponse,
    required this.createdOn,
    required this.error,
    required this.statusCode,
    // required this.linkException,
  })  : logType = NetworkLogType.httpResponse,
        operationType = method,
        graphqlErrors = null,
        variables = data;

  NetworkLog.graphqlResponse({
    required this.name,
    required this.operationType,
    required this.variables,
    required this.request,
    required this.headers,
    required this.traceHashcode,
    required this.graphqlErrors,
    required this.error,
    required String this.encodedResponse,
    required this.createdOn,
    // required this.linkException,
  })  : logType = NetworkLogType.graphqlResponse,
        statusCode = null;

  NetworkLog.sessionDivider({
    required this.name,
    required this.createdOn,
  })  : logType = NetworkLogType.sessionDivider,
        statusCode = null,
        operationType = null,
        variables = null,
        request = "",
        headers = "",
        traceHashcode = null,
        graphqlErrors = null,
        error = null,
        encodedResponse = null;

  NetworkLog.emitSocketEvent({
    required this.name,
    required this.variables,
    required this.request,
    required this.headers,
    required this.createdOn,
  })  : logType = NetworkLogType.socketEventEmit,
        traceHashcode = null,
        operationType = "EMIT_EVENT",
        statusCode = null,
        encodedResponse = null,
        error = null,
        graphqlErrors = null;

  bool get isRequest => logType.isRequest == true;

  bool hasError() {
    try {
      if (isRequest) {
        return false;
      }
      if (graphqlErrors != null || error != null) {
        return true;
      }
      if (statusCode.toString().startsWith("2")) {
        return false;
      }
      Map decodedResponse = jsonDecode(encodedResponse!);
      final hasError = decodedResponse.values.any((element) {
        if (element is! Map) return false;
        return (element)["error"] == true;
      });
      return hasError;
    } catch (err) {
      return true;
    }
  }

  @override
  String toString() {
    var str = StringBuffer();
    str.writeln("NETWORK LOG ($logType)");
    str.writeln("$request");
    if (variables != null) {
      str.writeln("Variables");
      str.writeln(JsonEncoder.withIndent(" ").convert(jsonDecode(variables!)));
    }
    if (hasError()) {
      str.writeln("ERROR");
      str.writeln("${error ?? graphqlErrors}");
    }
    if (encodedResponse != null) {
      str.writeln("Response");
      str.writeln(
          JsonEncoder.withIndent(" ").convert(jsonDecode(encodedResponse!)));
    }

    return str.toString();
  }
}

enum NetworkLogType {
  socketEventEmit(isRequest: true, isResponse: false),
  socketEventListen(isRequest: false, isResponse: true),
  sessionDivider(isRequest: null, isResponse: null),
  graphqlRequest(isRequest: true, isResponse: false),
  graphqlResponse(isRequest: false, isResponse: true),
  httpRequest(isRequest: true, isResponse: false),
  httpResponse(isRequest: false, isResponse: true),
  httpError(isRequest: null, isResponse: null);

  const NetworkLogType({required this.isRequest, required this.isResponse});

  final bool? isRequest, isResponse;
  // imageError,
  // restApiRequest,
  // restApiResponse
}
