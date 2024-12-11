class SalesResponse {
  final String jsonrpc;
  final dynamic id;
  final Result result;

  SalesResponse({
    required this.jsonrpc,
    this.id,
    required this.result,
  });

  factory SalesResponse.fromJson(Map<String, dynamic> json) {
    return SalesResponse(
      jsonrpc: json['jsonrpc'],
      id: json['id'],
      result: Result.fromJson(json['result']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'jsonrpc': jsonrpc,
      'id': id,
      'result': result.toJson(),
    };
  }
}

class Result {
  final String salespersonName;
  final String branch;
  final int newNotifications;
  final int newLeads;
  final int lateLeads;
  final int wonLeads;
  final int followUpLeads;
  final bool userStatus;
  final List<LatestLead> latestLeads;
  final List<dynamic> leadsToAcceptOrReject;

  Result({
    required this.salespersonName,
    required this.branch,
    required this.newNotifications,
    required this.newLeads,
    required this.lateLeads,
    required this.wonLeads,
    required this.followUpLeads,
    required this.userStatus,
    required this.latestLeads,
    required this.leadsToAcceptOrReject,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      salespersonName: json['salesperson_name'],
      branch: json['branch'],
      newNotifications: json['new_notifications'],
      newLeads: json['new_leads'],
      lateLeads: json['late_leads'],
      wonLeads: json['won_leads'],
      followUpLeads: json['follow_up_leads'],
      userStatus: json['user_status'],
      latestLeads: (json['latest_leads'] as List)
          .map((lead) => LatestLead.fromJson(lead))
          .toList(),
      leadsToAcceptOrReject: json['leads_to_accept_or_reject'] ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'salesperson_name': salespersonName,
      'branch': branch,
      'new_notifications': newNotifications,
      'new_leads': newLeads,
      'late_leads': lateLeads,
      'won_leads': wonLeads,
      'follow_up_leads': followUpLeads,
      'user_status': userStatus,
      'latest_leads': latestLeads.map((lead) => lead.toJson()).toList(),
      'leads_to_accept_or_reject': leadsToAcceptOrReject,
    };
  }
}

class LatestLead {
  final int id;
  final String name;
  final String cutsomerName;
  final String customerPhone;
  final String stage;
  final String stageAr;
  final dynamic carBrand;
  final dynamic carBrandAr;
  final dynamic carModel;
  final dynamic carModelAr;
  final String createDate;

  LatestLead({
    required this.id,
    required this.name,
    required this.cutsomerName,
    required this.customerPhone,
    required this.stage,
    required this.stageAr,
    this.carBrand,
    this.carBrandAr,
    this.carModel,
    this.carModelAr,
    required this.createDate,
  });

  factory LatestLead.fromJson(Map<String, dynamic> json) {
    return LatestLead(
      id: json['id'],
      name: json['name'],
      cutsomerName: json['cutsomer_name'],
      customerPhone: json['customer_phone'],
      stage: json['stage'],
      stageAr: json['stage_ar'],
      carBrand: json['car_brand'],
      carBrandAr: json['car_brand_ar'],
      carModel: json['car_model'],
      carModelAr: json['car_model_ar'],
      createDate: json['create_date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'cutsomer_name': cutsomerName,
      'customer_phone': customerPhone,
      'stage': stage,
      'stage_ar': stageAr,
      'car_brand': carBrand,
      'car_brand_ar': carBrandAr,
      'car_model': carModel,
      'car_model_ar': carModelAr,
      'create_date': createDate,
    };
  }
}

