import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  // constructor
  LoginCubit() : super(LoginInitial());

  // controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //remember me
  bool rememberMe = false;
  void changeRememberMe() {
    rememberMe = !rememberMe;
    emit(RememberMeState());
  }

  // login function
}
