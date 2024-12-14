import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:m_auto/core/api/api_constents.dart';
import 'package:m_auto/core/api/api_cosumer.dart';
import 'package:m_auto/core/api/api_error_handler.dart';
import 'package:m_auto/features/home_fetures/dart/models/sales_person_home_endpoint_constents.dart';

import 'package:m_auto/features/home_fetures/dart/models/sales_person_home_model.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.api) : super(HomeInitial());

  // api consumer
  final ApiConsumer api;

  // sales person home model
  SalesPersonHomeModel? salesPersonHomeModel;

  // get home page data
  homePageData() async {
    emit(HomeDataLoading());
    try {
      final response = await api.post(ApiConstents.userData, data: {});
      final result =
          SalesPersonHomeModel.fromJson(response[HomeModelConstants.result]);
      salesPersonHomeModel = result;
      emit(HomeDataSuccess(result));
    } on ApiErrorHandler catch (e) {
      emit(HomeDataFelure(errorMessage: e.errorModel.error));
    } catch (e) {
      emit(HomeDataFelure(errorMessage: e.toString()));
    }
  }
}
