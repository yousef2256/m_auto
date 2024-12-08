import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class Leads extends StatelessWidget {
  const Leads({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // title
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Leads', style: TextStyles.text16px600wBlack),
            Container(
              padding: EdgeInsets.all(9.r),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(Icons.add, size: 16.r, color: AppColors.primarywhite),
            ),
          ],
        ),

        // leads list
        verticalSpace(16.h),
        Container(
          decoration: BoxDecoration(
            color: AppColors.primarybackground,
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ],
    );
  }
}
