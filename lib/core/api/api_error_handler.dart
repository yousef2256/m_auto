import 'package:dio/dio.dart';
import 'package:m_auto/core/api/api_error_modle.dart';

class ApiErrorHandler implements Exception {
  /// The error model that contains the error message and code.
  final ApiErrorModel errorModel;
  ApiErrorHandler({required this.errorModel});
}

// Handle Dio Exeption
void handleDioExeption(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ApiErrorHandler(
          errorModel: ApiErrorModel.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ApiErrorHandler(
          errorModel: ApiErrorModel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw ApiErrorHandler(
          errorModel: ApiErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ApiErrorHandler(
          errorModel: ApiErrorModel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      throw ApiErrorHandler(
          errorModel: ApiErrorModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ApiErrorHandler(
          errorModel: ApiErrorModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw ApiErrorHandler(
          errorModel: ApiErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400:
          throw ApiErrorHandler(
              errorModel: ApiErrorModel.fromJson(e.response!.data));
        case 401:
          throw ApiErrorHandler(
              errorModel: ApiErrorModel.fromJson(e.response!.data));
        case 403:
          throw ApiErrorHandler(
              errorModel: ApiErrorModel.fromJson(e.response!.data));
        case 404:
          throw ApiErrorHandler(
              errorModel: ApiErrorModel.fromJson(e.response!.data));
        case 409:
          throw ApiErrorHandler(
              errorModel: ApiErrorModel.fromJson(e.response!.data));
        case 422:
          throw ApiErrorHandler(
              errorModel: ApiErrorModel.fromJson(e.response!.data));
        case 504:
          throw ApiErrorHandler(
              errorModel: ApiErrorModel.fromJson(e.response!.data));
      }
  }
}
