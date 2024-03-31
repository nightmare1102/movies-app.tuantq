import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class NetworkDio extends DioForNative implements Interceptor {
  final String apiKey;

  NetworkDio._(this.apiKey, BaseOptions options) : super(options);

  factory NetworkDio({
    required String baseUrl,
    required String apiKey,
    Map<String, dynamic> headers = const {},
  }) {
    final BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
      contentType: 'application/json; charset=utf-8',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(minutes: 5),
    );

    final instance = NetworkDio._(apiKey, options);

    instance.interceptors.add(instance);

    return instance;
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }
}
