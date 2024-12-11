import 'package:dio/dio.dart';
import 'package:m_auto/core/api/api_constents.dart';
import 'package:m_auto/core/helpers/cash_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final storage = CacheHelper();
    final token = await storage.getData(key: ApiKeys.accessToken);
    if (token != null) {
      options.headers[ApiKeys.authorization] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
