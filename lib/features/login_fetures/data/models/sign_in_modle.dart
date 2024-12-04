import 'package:m_auto/core/api/api_constents.dart';

class SignInModel {
  final String jsonrpc;
  final String accessToken;
  final String refreshToken;
  final bool isSalesperson;
  final bool isBranchManager;
  final bool isDirector;

  SignInModel({
    required this.jsonrpc,
    required this.accessToken,
    required this.refreshToken,
    required this.isSalesperson,
    required this.isBranchManager,
    required this.isDirector,
  });

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        jsonrpc: json[ApiKeys.jsonrpc],
        accessToken: json[ApiKeys.accessToken],
        refreshToken: json[ApiKeys.refreshToken],
        isSalesperson: json[ApiKeys.isSalesperson],
        isBranchManager: json[ApiKeys.isBranchManager],
        isDirector: json[ApiKeys.isDirector],
      );
}
