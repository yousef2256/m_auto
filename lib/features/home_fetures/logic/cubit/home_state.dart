part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeDataLoading extends HomeState {}

final class HomeDataSuccess extends HomeState {
  final SaleUserModle saleUserModle;
  HomeDataSuccess(this.saleUserModle);
}

final class HomeDataFelure extends HomeState {
  final String errorMessage;

  HomeDataFelure({required this.errorMessage});
}
