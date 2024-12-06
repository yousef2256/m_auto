import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class YourLeadsSummary extends StatelessWidget {
  const YourLeadsSummary({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primarybackground,
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ],
    );
  }
}
