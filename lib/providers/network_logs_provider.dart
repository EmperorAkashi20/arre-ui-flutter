import 'dart:convert';
import 'dart:math';

import 'package:arre_frontend_flutter/models/network_log.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:dio/dio.dart' as dio;
import 'package:ferry/typed_links.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:isar/isar.dart';

class NetworkLogsProvider {
  static NetworkLogsProvider instance = NetworkLogsProvider._();

  late Isar isar;

  NetworkLogsProvider._();

  Stream<List<NetworkLog>> get logsStream => isar.networkLogs
      .where()
      .sortByCreatedOnDesc()
      .watch(fireImmediately: true);

  Future<void> init() async {
    if (!AppConfig.isDevToolsEnabled) {
      throw Exception("Dev tools not enabled");
    }
    isar = await Isar.open(
      [NetworkLogSchema],
      directory: await ArreFiles.instance.getNetworkLogsDbPathV2(),
      name: "network_logs",
      inspector: true,
    );
    isar.writeTxn(() {
      return isar.networkLogs.put(NetworkLog.sessionDivider(
        name: "SESSION STARTS",
        createdOn: DateTime.now(),
      ));
    });
  }

  Future<void> _writeToDb(NetworkLog networkLog) async {
    ALogger.network(networkLog);
    await isar.writeTxn(() async {
      await isar.networkLogs.put(networkLog);
    });
  }

  void logRequest<T, V>({
    required OperationRequest<T, V> request,
    required HttpMetric trace,
  }) {
    final operation = request.operation.document.definitions.singleWhere(
            (element) =>
                element is OperationDefinitionNode &&
                element.name?.value == request.operation.operationName)
        as OperationDefinitionNode;
    final log = NetworkLog.graphqlRequest(
      name: request.operation.operationName,
      operationType: request.execRequest.type.name,
      variables: jsonEncode(request.execRequest.variables),
      request: printNode(operation),
      headers: "",
      traceHashcode: trace.hashCode,
      createdOn: DateTime.now(),
    );
    _writeToDb(log);
  }

  void logResponse<T, V>({
    required OperationResponse<T, V> response,
    required HttpMetric trace,
  }) {
    final operationName = response.operationRequest.operation.operationName;
    final operation = response.operationRequest.operation.document.definitions
        .singleWhere((element) =>
            element is OperationDefinitionNode &&
            element.name?.value == operationName) as OperationDefinitionNode;
    final log = NetworkLog.graphqlResponse(
      name: response.operationRequest.operation.operationName,
      operationType: response.operationRequest.execRequest.type.name,
      variables: jsonEncode(response.operationRequest.execRequest.variables),
      request: printNode(operation),
      headers: "",
      traceHashcode: trace.hashCode,
      graphqlErrors: response.graphqlErrors?.map((e) => e.toString()).toList(),
      error: response.linkException?.toString(),
      encodedResponse: jsonEncode((response.data as dynamic)?.toJson()),
      createdOn: DateTime.now(),
    );
    _writeToDb(log);
  }

  String getFileSizeString({required int bytes, int decimals = 0}) {
    const suffixes = ["b", "kb", "mb", "gb", "tb"];
    if (bytes == 0) return '0${suffixes[0]}';
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + suffixes[i];
  }

  String? getHttpData(data) {
    if (data is Map) {
      return jsonEncode(data);
    } else if (data is dio.MultipartFile) {
      final obj = {
        "custom_response": "CUSTOM RESPONSE Created by Front end developer",
        "file.size": getFileSizeString(bytes: data.length),
        "file.contentType": data.contentType.toString(),
      };
      return jsonEncode(obj);
    } else if (data != null) {
      return jsonEncode({
        "custom_response": "CUSTOM RESPONSE Created by Front end developer",
        "data-type": data.runtimeType.toString(),
      });
    }
    return null;
  }

  void logHttpRequest<T, V>({
    required dio.RequestOptions options,
  }) {
    final log = NetworkLog.httpRequest(
      name: options.uri.path,
      method: options.method.toUpperCase(),
      data: getHttpData(options.data),
      request: "${options.method.toUpperCase()} ${options.uri}",
      headers: jsonEncode(options.headers),
      traceHashcode: null,
      createdOn: DateTime.now(),
    );
    _writeToDb(log);
  }

  void logHttpResponse<T, V>({
    required dio.Response response,
  }) {
    final log = NetworkLog.httpResponse(
      name: response.requestOptions.uri.path,
      statusCode: response.statusCode,
      method: response.requestOptions.method.toUpperCase(),
      data: getHttpData(response.requestOptions.data),
      request:
          "${response.requestOptions.method.toUpperCase()} ${response.requestOptions.uri}",
      headers: jsonEncode(response.requestOptions.headers),
      traceHashcode: null,
      error: null,
      encodedResponse: getHttpData(response.data),
      createdOn: DateTime.now(),
    );
    _writeToDb(log);
  }

  void logHttpError<T, V>({
    required dio.DioException error,
  }) {
    final log = NetworkLog.httpError(
      name: error.requestOptions.path,
      statusCode: error.response?.statusCode,
      method: error.requestOptions.method.toUpperCase(),
      data: getHttpData(error.requestOptions.data),
      request:
          "${error.requestOptions.method.toUpperCase()} ${error.requestOptions.uri}",
      headers: jsonEncode(error.requestOptions.headers),
      traceHashcode: null,
      encodedResponse: getHttpData(error.response?.data),
      error: error.error.toString(),
      createdOn: DateTime.now(),
    );
    _writeToDb(log);
  }

  void logSocketEvent({required String event, required dynamic data}) {
    final log = NetworkLog.emitSocketEvent(
      name: event,
      variables: data.toString(),
      request: event,
      headers: "",
      createdOn: DateTime.now(),
    );
    _writeToDb(log);
  }

  Future<void> clear() {
    return isar.writeTxn(() {
      return isar.networkLogs.clear();
    });
  }
}
