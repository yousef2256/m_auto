import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:m_auto/core/api/api_constents.dart';
import 'package:m_auto/core/api/api_cosumer.dart';
import 'package:m_auto/core/api/api_error_handler.dart';
import 'package:m_auto/features/home_fetures/dart/models/sale_user_modle.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.api) : super(HomeInitial());

  // api consumer
  final ApiConsumer api;

  // get home page data
  homePageData() async {
    emit(HomeDataLoading());
    try {
      final response = await api.post(ApiConstents.userData, data: {});
      emit(HomeDataSuccess(SalesResponse.fromJson(response)));
    } on ApiErrorHandler catch (e) {
      emit(HomeDataFelure(errorMessage: e.errorModel.error));
    }
  }
}
