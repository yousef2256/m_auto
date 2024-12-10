class SaleUserModle {
  final String? salespersonName;
  final String? branch;
  final int? newNotifications;
  final int? newLeads;
  final int? lateLeads;
  final int? wonLeads;
  final int? followUpLeads;
  final bool? userStatus;
  final LatestLeadModel? latestLeads;
  final dynamic leadsToAcceptOrReject;

  SaleUserModle({
    this.salespersonName,
    this.branch,
    this.newNotifications,
    this.newLeads,
    this.lateLeads,
    this.wonLeads,
    this.followUpLeads,
    this.userStatus,
    this.latestLeads,
    this.leadsToAcceptOrReject,
  });

  factory SaleUserModle.fromJson(Map<String, dynamic> json) {
    return SaleUserModle(
      salespersonName: json['salesperson_name'],
      branch: json['branch'],
      newNotifications: json['new_notifications'],
      newLeads: json['new_leads'],
      lateLeads: json['late_leads'],
      wonLeads: json['won_leads'],
      followUpLeads: json['follow_up_leads'],
      userStatus: json['user_status'],
      latestLeads: LatestLeadModel.fromJson(json['latest_leads']),
      leadsToAcceptOrReject: json['leads_to_accept_or_reject'],
    );
  }
}

class LatestLeadModel {
  final int? id;
  final String? name;
  final String? customerName;
  final String? customerPhone;
  final String? stage;
  final String? stageAr;
  final bool? carBrand;
  final bool? carBrandAr;
  final bool? carModel;
  final bool? carModelAr;
  final String? createDate;

  LatestLeadModel({
    this.id,
    this.name,
    this.customerName,
    this.customerPhone,
    this.stage,
    this.stageAr,
    this.carBrand,
    this.carBrandAr,
    this.carModel,
    this.carModelAr,
    this.createDate,
  });

  factory LatestLeadModel.fromJson(Map<String, dynamic> json) {
    return LatestLeadModel(
      id: json['id'],
      name: json['name'],
      customerName: json['cutsomer_name'],
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
}
