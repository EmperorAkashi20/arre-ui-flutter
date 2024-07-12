import 'dart:async';
import 'dart:io';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/network_performance.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/network_logs_provider.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_exec/gql_exec.dart';
import "package:gql_http_link/gql_http_link.dart";
import 'package:connectivity_plus/connectivity_plus.dart';
import 'graphql_exceptions.dart';

class ArreGraphQLClient {
  late ArreAuthLink arreAuthLink;

  static ArreGraphQLClient instance = ArreGraphQLClient._();

  ArreGraphQLClient._();

  void init() {
    arreAuthLink = ArreAuthLink();
  }

  Client getClient(String baseUrl) {
    return Client(link: arreAuthLink.concat(HttpLink(baseUrl)));
  }

  Future<void> _resolveLinkException<T, V>(
      OperationResponse<T, V> response) async {
    LinkException linkException = response.linkException!;
    if (linkException is HttpLinkServerException) {
      throw ArreApiException(
        statusCode: linkException.response.statusCode,
        message:
            linkException.response.reasonPhrase ?? "Internal server error [4]",
        response: response,
      );
    } else if (linkException is ServerException) {
      final connection = await (Connectivity().checkConnectivity());
      if (connection == ConnectivityResult.none) {
        throw ArreApiException(
          message: "No Internet",
          statusCode: ArreApiStatusCode.NO_INTERNET,
          response: response,
        );
      }
      final originalExc = linkException.originalException;
      if (originalExc is SocketException) {
        final errorCode = originalExc.osError?.errorCode;
        if (Platform.isIOS && errorCode == 8) {
          throw ArreApiException(
            message: "No Internet [$errorCode]",
            statusCode: ArreApiStatusCode.NO_INTERNET,
            response: response,
          );
        }
        throw ArreApiException(
          message:
              "${originalExc.message} [${originalExc.osError?.errorCode ?? ""}]",
          statusCode: ArreApiStatusCode.NO_INTERNET,
          response: response,
        );
      }
      throw ArreApiException(
        message: "Oops! Something went wrong",
        statusCode: ArreApiStatusCode.NO_INTERNET,
        response: response,
      );
    } else if (linkException is HttpLinkParserException) {
      throw ArreApiException(
        message:
            linkException.response.reasonPhrase ?? "Internal server error [5]",
        statusCode: linkException.response.statusCode,
        response: response,
      );
    } else if (linkException is HttpLinkServerException) {
      throw ArreApiException(
        message: linkException.response.body,
        statusCode: linkException.response.statusCode,
        response: response,
      );
    } else {
      throw ArreApiException(
        message: "Something went wrong",
        statusCode: ArreApiStatusCode.UNKNOWN,
        response: response,
      );
    }
  }

  Future<void> _resolveError<T, V>(
    OperationResponse<T, V> response,
    Map<String, dynamic>? Function(OperationResponse<T, V> response)
        dataPointer,
  ) async {
    final responseMap = dataPointer.call(response);
    if (response.linkException != null) {
      await _resolveLinkException(response);
    } else if (response.graphqlErrors?.isNotEmpty ?? false) {
      throw ArreApiException(
        message: "Internal Server Error [1]",
        statusCode: 1,
        response: response,
      );
    } else if (responseMap == null) {
      throw ArreApiException(
        message: "Internal Server Error [0]",
        statusCode: 0,
        response: response,
      );
    } else if (responseMap["error"] == true ||
        (responseMap["response"] is Map &&
            responseMap["response"]?['error'] == true)) {
      throw ArreApiException(
        message: responseMap['message'] ??
            responseMap['response']?['message'] ??
            "Internal Server Error [2]",
        statusCode: responseMap["response"]["statusCode"] ?? 2,
        errorCodeForClient: responseMap["response"]["errorCodeForClient"],
        response: response,
      );
    } else if (responseMap["response"] is Map &&
        responseMap["response"]["status"] is bool &&
        !responseMap["response"]["status"]) {
      throw ArreApiException(
        message:
            responseMap["response"]['message'] ?? "Internal Server Error [3]",
        statusCode: 3,
        response: response,
      );
    }
  }

  Future<OperationResponse<T, V>> request<T, V>(
    OperationRequest<T, V> request, {
    required Map<String, dynamic>? Function(OperationResponse<T, V> response)
        dataPointer,
    required String baseUrl,
    bool needsOnboarding = false,
  }) async {
    if (needsOnboarding) {
      // ALogger.d("${request.operation.operationName} Needs Onboarding ");
      await ProviderScope.containerOf(ArreNavigator.instance.context)
          .read(ensureOnboarded.future);
    }
    final client = getClient(baseUrl);
    final trace = ANetworkPerformance.getGraphQLTrace(request, baseUrl);
    try {
      await trace.start();
      if (AppConfig.isDevToolsEnabled) {
        NetworkLogsProvider.instance.logRequest(request: request, trace: trace);
      }
      final result = await client.request<T, V>(request).first;
      if (AppConfig.isDevToolsEnabled) {
        NetworkLogsProvider.instance
            .logResponse(response: result, trace: trace);
      }
      await _resolveError(result, dataPointer);
      trace.httpResponseCode = 200;
      return result;
    } on ArreApiException catch (err, st) {
      _printError(request, err, st);
      if (err.statusCode == 401) {
        await Utils.logout(
          toastMessage: "Session timeout",
          isSessionExpired: true,
        );
        // await ProviderScope.containerOf(ArreNavigator.instance.context)
        //     .refresh(ensureAuthenticated.future);
        // await ProviderScope.containerOf(ArreNavigator.instance.context)
        //     .refresh(ensureLanguagesSelected.future);
        // return this.request(
        //   request,
        //   dataPointer: dataPointer,
        //   baseUrl: baseUrl,
        // );
      } else if (err.errorCodeForClient == "accessDeniedForGuestUser" &&
          !Utils.isUserOnboarded) {
        await ProviderScope.containerOf(ArreNavigator.instance.context)
            .read(ensureOnboarded.future);
        return this.request(
          request,
          dataPointer: dataPointer,
          baseUrl: baseUrl,
        );
      }
      trace.httpResponseCode = err.statusCode;
      rethrow;
    } catch (err, st) {
      _printError(request, err, st);
      trace.httpResponseCode = 499;
      rethrow;
    } finally {
      trace.stop();
    }
  }

  void _printError(OperationRequest request, err, st) {
    ALogger.e("Error ${request.operation.operationName} $err", st);
  }
}

class ArreAuthLink extends Link {
  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    final token = arrePref.getString(PrefKey.AUTH_TOKEN);
    final req = request.updateContextEntry<HttpLinkHeaders>(
      (headers) => HttpLinkHeaders(
        headers: <String, String>{
          ...headers?.headers ?? <String, String>{},
          if (token != null) 'authorization': token,
          "operating-system": Platform.operatingSystem,
        },
      ),
    );
    yield* forward!(req);
  }
}
