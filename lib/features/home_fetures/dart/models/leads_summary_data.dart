import 'dart:ui';

import 'package:flutter/material.dart';

class LeadsSummaryData {
  final String title;
  final String count;
  final Color color;

  LeadsSummaryData({
    required this.title,
    required this.count,
    required this.color,
  });

  static List<LeadsSummaryData> leadsSummaryData = [
    LeadsSummaryData(
      title: 'Leads won',
      count: "23",
      color: const Color(0xFFD0FFCF),
    ),
    LeadsSummaryData(
      title: 'Late Leads',
      count: "0",
      color: const Color(0xFFFFE7F0),
    ),
    LeadsSummaryData(
      title: 'Follow up',
      count: "9",
      color: const Color(0xFFFFEACF),
    ),
    LeadsSummaryData(
      title: 'New Leads',
      count: "2",
      color: const Color(0xFFCFF9FF),
    ),
  ];
}
