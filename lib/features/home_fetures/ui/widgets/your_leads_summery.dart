import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/features/home_fetures/dart/models/sales_person_home_model.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/summary_cards_design.dart';

class YourLeadsSummary extends StatelessWidget {
  final SalesPersonHomeModel? userData;
  final String leadsWonValue;
  final String lateLeadsValue;
  final String followUpValue;
  final String totalLeadsValue;
  const YourLeadsSummary({
    super.key,
    this.userData,
    required this.leadsWonValue,
    required this.lateLeadsValue,
    required this.followUpValue,
    required this.totalLeadsValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Text('Your Leads Summary', style: TextStyles.text14px600wBlack),

        // summary
        verticalSpace(16.h),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primarybackground,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              horizontalSpace(6.w),
              SummaryCardsDesign(
                title: 'Leads won',
                value: leadsWonValue,
                color: AppColors.summaryCardsGreen,
              ),
              SummaryCardsDesign(
                title: 'Late Lead',
                value: lateLeadsValue,
                color: AppColors.summaryCardsPink,
              ),
              SummaryCardsDesign(
                title: 'Follow up',
                value: followUpValue,
                color: AppColors.summaryCardsYellow,
              ),
              SummaryCardsDesign(
                title: 'Total Leads',
                value: totalLeadsValue,
                color: AppColors.summaryCardsBlue,
              ),
              horizontalSpace(6.w),
            ],
          ),
        ),
      ],
    );
  }
}
