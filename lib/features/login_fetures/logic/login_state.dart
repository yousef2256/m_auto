part of 'login_cubit.dart';

abstract class LoginState {}

// initial state
class LoginInitial extends LoginState {}

// remember me state
class RememberMeState extends LoginState {}

// show password state
class ShowPasswordState extends LoginState {}

// sign in Starus
class SignInLoadingState extends LoginState {}

class SignInSuccess extends LoginState {}

class SignInFailure extends LoginState {
  final String errorMessage;
  SignInFailure({required this.errorMessage});
}
