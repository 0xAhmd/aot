// dio interceptors

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AppInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      print('➡️ REQUEST: [${options.method}] ${options.uri}');
      print('Headers: ${options.headers}');
      print('Body: ${options.data}');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      print(
        '✅ RESPONSE: [${response.statusCode}] ${response.requestOptions.uri}',
      );
      print('Data: ${response.data}');
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String errorDescription = '';

    if (kDebugMode) {
      print('❌ ERROR: [${err.response?.statusCode}] ${err.requestOptions.uri}');
      print('Message: ${err.message}');
    }

    if (err.type == DioExceptionType.connectionTimeout) {
      errorDescription = "Connection timeout";
    } else if (err.type == DioExceptionType.sendTimeout) {
      errorDescription = "Send timeout";
    } else if (err.type == DioExceptionType.receiveTimeout) {
      errorDescription = "Receive timeout";
    } else if (err.type == DioExceptionType.badResponse) {
      switch (err.response?.statusCode) {
        case 400:
          errorDescription = "Bad request";
          break;
        case 401:
          errorDescription = "Unauthorized request";
          break;
        case 403:
          errorDescription = "Forbidden";
          break;
        case 404:
          errorDescription = "Not found";
          break;
        case 500:
          errorDescription = "Internal server error";
          break;
        default:
          errorDescription =
              "Received invalid status code: ${err.response?.statusCode}";
      }
    } else if (err.type == DioExceptionType.cancel) {
      errorDescription = "Request cancelled";
    } else if (err.type == DioExceptionType.unknown) {
      errorDescription = "Unexpected error occurred";
    }

    // Attach the description to the error
    final customError = DioException(
      requestOptions: err.requestOptions,
      response: err.response,
      type: err.type,
      error: errorDescription.isNotEmpty ? errorDescription : err.message,
    );

    handler.next(customError);
  }
}
