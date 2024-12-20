class ApiConstents {
  // Base Url
  static const String baseUrl = 'https://mek.div-systems.com/';

  // End Points
  static const String login = 'api/login';
  static const String userData = 'api/salesperson/home';
  static const String addNewLead = 'api/create_lead';
  static const String carModelsAndBrands = 'api/car_brands_models';
}

class ApiKeys {
  static const String result = 'result';
  static const String error = 'error';
  static const String jsonrpc = 'jsonrpc';
  static const String id = 'id';
  static const String params = 'params';
  static const String isSalesperson = 'is_salesperson';
  static const String isBranchManager = 'is_branch_manager';
  static const String isDirector = 'is_director';
  static const String authorization = 'Authorization';
  static const String salespersonName = 'salesperson_name';

  // add new lead
  static const String customerName = 'customer_name';
  static const String customerPhone = 'customer_phone';
  static const String carBrandId = 'car_brand_id';
  static const String carModelId = 'car_model_id';
  static const String notes = 'notes';
  static const String budget = 'budget';
  static const String buyMethod = 'buy_method';
  static const String installmentProviderId = 'installment_provider_id';
  static const String installmentWay = 'installment_way';
  static const String bankApprove = 'bank_approve';
  static const String downPayment = 'down_payment';
  static const String foriegnCurrency = 'foriegn_currency';
  static const String depositType = 'deposit_type';
  static const String carColorId = 'car_color_id';
  static const String carCategoryId = 'car_category_id';

  // tokens
  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';

  // Email And Password
  static const String username = 'username';
  static const String password = 'password';
}
