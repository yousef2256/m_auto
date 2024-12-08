part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeSuccess extends HomeState {
  final dynamic response;
  HomeSuccess(this.response);
}

final class HomeFailure extends HomeState {
  final String? errorMessage;
  HomeFailure(this.errorMessage);
}
