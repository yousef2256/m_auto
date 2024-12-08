import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:m_auto/core/api/api_constents.dart';

class ApiInterceptors extends Interceptor {
  // Request
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      const storage = FlutterSecureStorage();
      final token = await storage.read(key: ApiKeys.accessToken);
      if (token != null) {
        options.headers[ApiKeys.authorization] = '$token';
        print('token===============================: $token');
      }
      handler.next(options);
    } catch (error) {
      handler.reject(
        DioException(
          requestOptions: options,
          error: error.toString(),
        ),
      );
    }
  }

  //error
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Get the dio instance
      final dio = Dio();

      // Get refresh token from storage
      const storage = FlutterSecureStorage();
      final refreshToken = await storage.read(key: ApiKeys.refreshToken);

      if (refreshToken != null) {
        try {
          // Try to refresh the token
          final response = await dio.post(ApiConstents.login, data: {
            ApiKeys.jsonrpc: "2.0",
            ApiKeys.params: {
              ApiKeys.refreshToken: refreshToken,
            }
          });

          if (response.data[ApiKeys.result] != null) {
            final newAccessToken =
                response.data[ApiKeys.result][ApiKeys.accessToken];
            final newRefreshToken =
                response.data[ApiKeys.result][ApiKeys.refreshToken];

            // Save new tokens
            await storage.write(
                key: ApiKeys.accessToken, value: newAccessToken);
            await storage.write(
                key: ApiKeys.refreshToken, value: newRefreshToken);

            // Retry original request with new token
            final opts = Options(
              method: err.requestOptions.method,
              headers: {ApiKeys.authorization: 'Bearer $newAccessToken'},
            );
            final response2 = await dio.request(
              err.requestOptions.path,
              options: opts,
              data: err.requestOptions.data,
              queryParameters: err.requestOptions.queryParameters,
            );
            return handler.resolve(response2);
          }
        } catch (e) {
          print('Token refresh failed: $e');
        }
      }
    }
    return handler.next(err);
  }
}
