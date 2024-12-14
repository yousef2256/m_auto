import 'package:m_auto/features/home_fetures/dart/models/latest_lead_model.dart';
import 'package:m_auto/features/home_fetures/dart/models/sales_person_home_endpoint_constents.dart';

class SalesPersonHomeModel {
  final String? salespersonName;
  final String? branch;
  final int? newNotifications;
  final int? newLeads;
  final int? lateLeads;
  final int? wonLeads;
  final int? followUpLeads;
  final List<LatestLeadModel>? latestLead;

  SalesPersonHomeModel({
    required this.salespersonName,
    required this.branch,
    required this.newNotifications,
    required this.newLeads,
    required this.lateLeads,
    required this.wonLeads,
    required this.followUpLeads,
    required this.latestLead,
  });

  factory SalesPersonHomeModel.fromJson(Map<String, dynamic> jsonData) =>
      SalesPersonHomeModel(
        salespersonName: jsonData[HomeModelConstants.salespersonName],
        branch: jsonData[HomeModelConstants.branch],
        newNotifications: jsonData[HomeModelConstants.newNotifications],
        newLeads: jsonData[HomeModelConstants.newLeads],
        lateLeads: jsonData[HomeModelConstants.lateLeads],
        wonLeads: jsonData[HomeModelConstants.wonLeads],
        followUpLeads: jsonData[HomeModelConstants.followUpLeads],
        latestLead: List.from(jsonData[HomeModelConstants.latestLeads])
            .map((e) => LatestLeadModel.fromJson(e))
            .toList(),
      );
}
