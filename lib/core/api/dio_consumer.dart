import 'package:dio/dio.dart';
import 'package:m_auto/core/api/api_cosumer.dart';
import 'package:m_auto/core/api/api_error_handler.dart';
import 'package:m_auto/core/api/api_interceptor.dart';
import 'package:m_auto/core/api/api_constents.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer({required this.dio}) {
    dio.options.baseUrl = ApiConstents.baseUrl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      request: true,
      error: true,
      compact: true,
      maxWidth: 90,
    ));
  }

  // Delete
  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.delete(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExeption(e);
    }
  }

  // Get
  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.get(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExeption(e);
    }
  }

  // Patch
  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.patch(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExeption(e);
    }
  }

  // Post
  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.post(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExeption(e);
    }
  }
}
