part of 'leads_cubit.dart';

@immutable
sealed class LeadsState {}

final class LeadsInitial extends LeadsState {}

// add new lead
final class AddNewLeadLoading extends LeadsState {}

final class AddNewLeadSuccess extends LeadsState {
  AddNewLeadSuccess(this.result);
  final dynamic result;
}

final class AddNewLeadFailure extends LeadsState {
  AddNewLeadFailure({required this.errorMessage});
  final String errorMessage;
}

// get car brands and models
final class GetCarBrandsAndModelsLoading extends LeadsState {}

final class GetCarBrandsAndModelsSuccess extends LeadsState {
  GetCarBrandsAndModelsSuccess(this.result);
  final List<CarBrandsAndModels> result;
}

final class GetCarBrandsAndModelsFailure extends LeadsState {
  GetCarBrandsAndModelsFailure({required this.errorMessage});
  final String errorMessage;
}

// brand selected
class BrandSelected extends LeadsState {
  final int brandId;

  BrandSelected(this.brandId);
}
