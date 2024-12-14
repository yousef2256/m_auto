import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/features/home_fetures/logic/home_cubit.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/leads.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/home_app_bar.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/your_leads_summery.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeDataFelure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: state is HomeDataLoading
              ? const Center(child: CircularProgressIndicator())
              : state is HomeDataSuccess
                  ? SafeArea(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // header
                            HomeAppBar(
                              name: state.user.salespersonName!,
                              plase: state.user.branch!,
                            ),
                            verticalSpace(16),

                            // Your Leads Summary
                            YourLeadsSummary(
                              leadsWonValue: state.user.wonLeads.toString(),
                              lateLeadsValue: state.user.lateLeads.toString(),
                              followUpValue:
                                  state.user.followUpLeads.toString(),
                              totalLeadsValue: state.user.newLeads.toString(),
                            ),
                            verticalSpace(16),

                            // Leads
                            const Leads(),
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("No internet Connection"),
                          // try again button
                          MaterialButton(
                            onPressed: () {
                              context.read<HomeCubit>().homePageData();
                            },
                            child: const Text("Try again"),
                          ),
                        ],
                      ),
                    ),
        );
      },
    );
  }
}
