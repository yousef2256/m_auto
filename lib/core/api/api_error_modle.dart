import 'package:m_auto/core/api/api_constents.dart';

class ApiErrorModel {
  final String? jsonrpc;
  final String? id;
  final String error;

  ApiErrorModel({
    required this.jsonrpc,
    this.id,
    required this.error,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    final result = json[ApiKeys.result] ?? {}; 
    return ApiErrorModel(
      jsonrpc: json[ApiKeys.jsonrpc],
      id: json[ApiKeys.id],
      error: result[ApiKeys.error] ?? 'Unknown error', 
    );
  }
}