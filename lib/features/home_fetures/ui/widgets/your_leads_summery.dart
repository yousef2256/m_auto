import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/features/home_fetures/dart/models/sale_user_modle.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/summary_cards_design.dart';

class YourLeadsSummary extends StatelessWidget {
  final SalesResponse? userData;
  const YourLeadsSummary({super.key, this.userData});

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
              const SummaryCardsDesign(
                title: 'Leads won',
                value: '23',
                color: AppColors.summaryCardsGreen,
              ),
              const SummaryCardsDesign(
                title: 'Late Lead',
                value: '0',
                color: AppColors.summaryCardsPink,
              ),
              const SummaryCardsDesign(
                title: 'Follow up',
                value: '9',
                color: AppColors.summaryCardsYellow,
              ),
              const SummaryCardsDesign(
                title: 'Total Leads',
                value: '2',
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
