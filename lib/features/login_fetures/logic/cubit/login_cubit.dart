import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_auto/core/api/api_constents.dart';
import 'package:m_auto/core/api/api_cosumer.dart';
import 'package:m_auto/core/api/api_error_handler.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  // constructor
  LoginCubit(this.api) : super(LoginInitial());

  // form key
  final formKey = GlobalKey<FormState>();
  // controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
        ApiKeys.email: emailController.text,
        ApiKeys.password: passwordController.text,
      });
      emit(SignInSuccess());
    } on ApiErrorHandler catch (e) {
      emit(SignInFailure(errorMessage: e.errorModel.error));
    }
  }
}
