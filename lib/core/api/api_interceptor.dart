import 'package:dio/dio.dart';
import 'package:m_auto/core/api/api_constents.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiInterceptors extends Interceptor {
  // Request
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    options.headers[ApiKeys.accessToken] =
        await storage.read(key: ApiKeys.accessToken) != null
            ? '${await storage.read(key: ApiKeys.accessToken)}'
            : null;
    super.onRequest(options, handler);
  }
}
