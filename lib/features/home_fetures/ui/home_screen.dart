import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/features/home_fetures/logic/cubit/home_cubit.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/leads.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/home_app_bar.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/your_leads_summery.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // header
                  const HomeAppBar(),
                  verticalSpace(16),

                  // Your Leads Summary
                  const YourLeadsSummary(),
                  verticalSpace(16),

                  // Leads
                  const Leads(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
