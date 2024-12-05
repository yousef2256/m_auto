import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor {
  // Request
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('Request: ${options.method} ${options.path}');
    super.onRequest(options, handler);
  }
}
