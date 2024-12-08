import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:m_auto/core/api/api_constents.dart';
import 'package:m_auto/core/api/api_cosumer.dart';
import 'package:m_auto/core/api/api_error_handler.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.api) : super(HomeInitial());

  // api consumer
  final ApiConsumer api;

  // get user data
  Future<dynamic> getUserData() async {
    try {
      final response = await api.get(ApiConstents.userData, data: {});
    } on ApiErrorHandler catch (e) {
      print('error===============================: ${e.errorModel.error}');
      emit(HomeFailure(e.errorModel.error));
    }
  }
}
