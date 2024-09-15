import 'package:dio/dio.dart';
import 'package:flutter_fake_shop/core/network/dio_interceptor.dart';
import 'package:flutter_fake_shop/core/network/dio_logger.dart';

class DioFactory {
  final String _baseUrl;

  DioFactory(this._baseUrl);

  BaseOptions _createBaseOptions() => BaseOptions(
        baseUrl: _baseUrl,
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
      );

  Dio create() => Dio(_createBaseOptions())
    ..interceptors.addAll(
      <Interceptor>[
        DioLogger(),
        DioInterceptor(),
      ],
    );
}
