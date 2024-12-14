import 'package:m_auto/features/home_fetures/dart/models/sales_person_home_endpoint_constents.dart';

class LatestLeadModel {
  final int? id;
  final String? name;
  final String? catigoryName;
  final String? catigoryPhone;
  final String? stage;
  final String? carDate;

  LatestLeadModel({
    required this.id,
    required this.name,
    required this.catigoryName,
    required this.catigoryPhone,
    required this.stage,
    required this.carDate,
  });

  factory LatestLeadModel.fromJson(Map<String, dynamic> jsonDate) =>
      LatestLeadModel(
          id: jsonDate[HomeModelConstants.leadId],
          name: jsonDate[HomeModelConstants.leadName],
          catigoryName: jsonDate[HomeModelConstants.customerName],
          catigoryPhone: jsonDate[HomeModelConstants.customerPhone],
          stage: jsonDate[HomeModelConstants.stage],
          carDate: jsonDate[HomeModelConstants.createDate]);
}
