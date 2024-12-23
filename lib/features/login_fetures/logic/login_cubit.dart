import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_auto/core/api/api_constents.dart';
import 'package:m_auto/core/api/api_cosumer.dart';
import 'package:m_auto/core/api/api_error_handler.dart';
import 'package:m_auto/core/helpers/cash_helper.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  // constructor
  LoginCubit(this.api) : super(LoginInitial());

  // form key
  final formKey = GlobalKey<FormState>();

  // controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Shared prefereneces or Secure Storage

  final storage = CacheHelper();

  // api consumer
  final ApiConsumer api;

  //remember me
  bool rememberMe = false;
  void changeRememberMe() {
    rememberMe = !rememberMe;
    emit(RememberMeState());
  }

  // Show Password
  bool showPassword = false;
  void changeShowPassword() {
    showPassword = !showPassword;
    emit(ShowPasswordState());
  }

  // Login
  signIn() async {
    emit(SignInLoadingState());
    try {
      final response = await api.post(ApiConstents.login, data: {
        ApiKeys.jsonrpc: "2.0 ",
        ApiKeys.params: {
          ApiKeys.username: emailController.text,
          ApiKeys.password: passwordController.text,
        }
      });
      final result = response[ApiKeys.result];
      if (result != null && result is Map<String, dynamic>) {
        if (result[ApiKeys.accessToken] != null &&
            result[ApiKeys.refreshToken] != null) {
          await storage.saveData(
              key: ApiKeys.accessToken, value: result[ApiKeys.accessToken]);
          await storage.saveData(
              key: ApiKeys.refreshToken, value: result[ApiKeys.refreshToken]);
          emit(SignInSuccess());
        } else {
          emit(SignInFailure(
              errorMessage: 'Plese check your email and password'));
        }
      }
    } on ApiErrorHandler catch (e) {
      emit(SignInFailure(errorMessage: e.errorModel.error));
    }
  }
}
