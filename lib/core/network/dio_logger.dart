import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioLogger extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final RequestOptions options = err.requestOptions;
    final String requestPath = '${options.baseUrl}${options.path}';

    if (kDebugMode) {
      print('${options.method} request => $requestPath');
      print(
          'Error: ${err.response?.statusCode?.toString()}, Message: ${err.message}');
    }

    return super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String requestPath =
        '${options.baseUrl}${options.path}?${options.queryParameters}?${options.data}?${options.headers}}';

    if (kDebugMode) {
      print('${options.method} request => $requestPath');
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      print('StatusCode: ${response.statusCode}');
    }

    return super.onResponse(response, handler);
  }
}
