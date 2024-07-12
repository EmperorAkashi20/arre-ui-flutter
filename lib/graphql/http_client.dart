import 'dart:async';
import 'dart:io';

import 'package:arre_frontend_flutter/graphql/graphql_exceptions.dart';
import 'package:arre_frontend_flutter/graphql/network_performance.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/network_logs_provider.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:dio/dio.dart';
import 'package:firebase_performance/firebase_performance.dart';

class AHttpClient {
  static final instance = AHttpClient._();
  final dio = Dio();

  AHttpClient._() {
    dio.interceptors.add(_PerformanceInterceptor());
    if (AppConfig.isDevToolsEnabled) {
      dio.interceptors.add(_LogInterceptor());
    }
  }

  Map<String, String> _getHeaders() {
    final token = arrePref.getString(PrefKey.AUTH_TOKEN);
    return {
      "operating-system": Platform.operatingSystem,
      if (token != null) "Authorization": token,
    };
  }

  Future<Uri> getRedirectUrl({
    required Uri uri,
    bool followRedirects = true,
  }) async {
    try {
      final response = await dio.getUri(
        uri,
        options: Options(followRedirects: followRedirects),
      );
      return response.redirects.last.location;
    } catch (err) {
      throw _handleError(err);
    }
  }

  Future get({
    required String path,
    String baseUrl = "",
    Object? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    try {
      final response = await dio.get(
        "$baseUrl$path",
        data: body,
        queryParameters: queryParameters,
        options: Options(headers: {..._getHeaders(), ...?headers}),
      );
      return response.data;
    } catch (err) {
      throw _handleError(err);
    }
  }

  Future put({
    required String path,
    String baseUrl = "",
    required Object? body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await dio.put(
        "$baseUrl$path",
        data: body,
        options: Options(headers: {..._getHeaders(), ...?headers}),
      );
      return response.data;
    } catch (err) {
      throw _handleError(err);
    }
  }

  Future putFile({
    required String signedUrl,
    required File file,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await dio.put(
        signedUrl,
        data: await file.readAsBytes(),
        options: Options(headers: {
          ...?headers,
          'Content-Length': "${await file.length()}",
          'Connection': 'keep-alive',
        }),
      );
      print("DEBUGGING FILE UPLOAD");
      print("Request URL ${response.requestOptions.uri}");
      print("Request data ${response.requestOptions.data}");
      print("Request data ${response.requestOptions.headers}");
      return response.data;
    } catch (err) {
      throw _handleError(err);
    }
  }

  Future<File> download({
    required Uri uri,
    required File saveToFile,
    void Function(int count, int total)? progressCallback,
  }) async {
    try {
      await dio.downloadUri(
        uri,
        saveToFile.path,
        onReceiveProgress: progressCallback,
      );
      return saveToFile;
    } catch (err) {
      throw _handleError(err);
    }
  }

  Future post({
    required String path,
    required String baseUrl,
    required Object? body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await dio.post(
        "$baseUrl$path",
        data: body,
        options: Options(headers: {..._getHeaders(), ...?headers}),
      );
      return response.data;
    } catch (err) {
      throw _handleError(err);
    }
  }

  Object _handleError(err) {
    if (err is DioException) {
      String? message;
      if (err.response?.data is Map) {
        message = err.response?.data["message"];
      }
      message ??= err.message;
      message ??=
          "Something went wrong [${err.response?.statusCode ?? AExceptionKey.NO_HTTP_STATUS_CODE}]";
      return ArreApiException(
        message: message,
        statusCode: err.response?.statusCode ?? 0,
        response: err.response,
      );
    }
    return ArreException.key(AExceptionKey.HTTP_API_HANDLE_ERROR);
  }
}

class _PerformanceInterceptor extends Interceptor {
  Map<int, HttpMetric> _traces = {};

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final trace = ANetworkPerformance.getHttpTrace(options);
    _traces[trace.hashCode] = trace;
    options.extra["trace_hashcode"] = trace.hashCode;
    await trace.start();
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final traceHashCode = response.requestOptions.extra["trace_hashcode"];
    if (traceHashCode is int) {
      _traces[traceHashCode]?.httpResponseCode = response.statusCode ?? 0;
      _traces[traceHashCode]?.stop();
      _traces.remove(traceHashCode);
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final traceHashCode = err.requestOptions.extra["trace_hashcode"];
    if (traceHashCode is int) {
      _traces[traceHashCode]?.httpResponseCode = -1;
      _traces[traceHashCode]?.stop();
      _traces.remove(traceHashCode);
    }
    super.onError(err, handler);
  }
}

class _LogInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    NetworkLogsProvider.instance.logHttpRequest(options: options);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    NetworkLogsProvider.instance.logHttpResponse(response: response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    NetworkLogsProvider.instance.logHttpError(error: err);
    super.onError(err, handler);
  }
}
