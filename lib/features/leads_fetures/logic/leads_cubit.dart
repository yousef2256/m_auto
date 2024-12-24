import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:m_auto/core/api/api_constents.dart';
import 'package:m_auto/core/api/api_cosumer.dart';
import 'package:m_auto/core/api/api_error_handler.dart';
import 'package:m_auto/features/leads_fetures/data/models/car_brands_and_models.dart';
import 'package:meta/meta.dart';

part 'leads_state.dart';

class LeadsCubit extends Cubit<LeadsState> {
  LeadsCubit(this.api) : super(LeadsInitial());

  // controllers
  final TextEditingController customerNameController = TextEditingController();
  final TextEditingController customerPhoneController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final ApiConsumer api;

  // Add this variable to store selected country code
  String selectedCountryCode = '+20'; // Default to Egypt code

  // Add this method to handle country code changes
  void updateCountryCode(String? code) {
    if (code != null) {
      selectedCountryCode = code;
    }
  }

  // Add these variables
  int? selectedBrandId;
  int? selectedModelId;

  // Add this method
  void updateSelectedBrand(int brandId) {
    selectedBrandId = brandId;
    selectedModelId = null; // Reset model selection when brand changes
    emit(BrandSelected(brandId));
  }

  // add new lead
  addNewLead() async {
    emit(AddNewLeadLoading());
    try {
      final response = await api.post(ApiConstents.addNewLead, data: {
        ApiKeys.jsonrpc: "2.0",
        ApiKeys.params: {
          ApiKeys.customerName: customerNameController.text,
          // country code + phone number
          ApiKeys.customerPhone: customerPhoneController.text,
          ApiKeys.carBrandId: selectedBrandId, // Use selected brand ID
          ApiKeys.carModelId: selectedModelId, // Use selected model ID
          ApiKeys.notes: notesController.text,
          ApiKeys.budget: 2000000,
          //optional data
          ApiKeys.buyMethod: "Installment",
          ApiKeys.installmentProviderId: 1,
          ApiKeys.installmentWay: "Bank",
          ApiKeys.bankApprove: true,
          ApiKeys.downPayment: 200000,
          ApiKeys.foriegnCurrency: false,
          ApiKeys.depositType: "Cash",
          ApiKeys.carColorId: 1,
          ApiKeys.carCategoryId: [1],
        }
      });
      final result = response[ApiKeys.result];
      emit(AddNewLeadSuccess(result));
    } on ApiErrorHandler catch (e) {
      emit(AddNewLeadFailure(errorMessage: e.errorModel.error));
    } catch (e) {
      emit(AddNewLeadFailure(errorMessage: e.toString()));
    }
  }

  // Add this to store the brands list
  List<CarBrandsAndModels> carBrands = [];

  // get car brands and models
  getCarBrandsAndModels() async {
    emit(GetCarBrandsAndModelsLoading());
    try {
      final response =
          await api.post(ApiConstents.carModelsAndBrands, data: {});
      final List<dynamic> resultList = response[ApiKeys.result];
      carBrands =
          resultList.map((e) => CarBrandsAndModels.fromJson(e)).toList();
      emit(GetCarBrandsAndModelsSuccess(carBrands));
      print('carBrand ============================== $carBrands');
    } on ApiErrorHandler catch (e) {
      emit(GetCarBrandsAndModelsFailure(errorMessage: e.errorModel.error));
    } catch (e) {
      emit(GetCarBrandsAndModelsFailure(errorMessage: e.toString()));
    }
  }
}
