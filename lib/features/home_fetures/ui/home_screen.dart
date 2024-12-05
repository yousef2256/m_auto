import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/home_app_bar.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/your_leads_summery.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              const HomeAppBar(),

              // Your Leads Summary
              verticalSpace(16.h),
              const YourLeadsSummary(),

              // Leads
            ],
          ),
        ),
      ),
    );
  }
}
