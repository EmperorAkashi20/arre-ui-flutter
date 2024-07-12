import 'package:dio/dio.dart';
import 'package:ferry/ferry.dart';
import 'package:firebase_performance/firebase_performance.dart';

class ANetworkPerformance {
  static HttpMetric getGraphQLTrace(OperationRequest request, String baseUrl) {
    assert(
      request.operation.operationName != null,
      "All the operations should have a name",
    );
    final operationName = request.operation.operationName ?? "UNKNOWN";
    return FirebasePerformance.instance.newHttpMetric(
      "$baseUrl/$operationName",
      HttpMethod.Get,
    );
  }

  static HttpMetric getHttpTrace(RequestOptions request) {
    return FirebasePerformance.instance.newHttpMetric(
      request.uri.toString(),
      HttpMethod.Post,
    );
  }
}
