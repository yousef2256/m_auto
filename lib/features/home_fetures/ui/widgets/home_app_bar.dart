import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 24.w),
      decoration: BoxDecoration(
        color: AppColors.contentbackground,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // cercular avatar
          Row(
            children: [
              CircleAvatar(
                radius: 30.r,
                backgroundColor: AppColors.primary,

                /// TODO: add image from api
              ),
              horizontalSpace(7.w),

              // column name , location , Sales
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mohammed Ahmed', style: TextStyles.text14px600wBlack),
                  Text('New York, NY', style: TextStyles.text12px600wBlack),
                  Text('Sales: 100,000', style: TextStyles.text12px600wBlack),
                ],
              ),
            ],
          ),

          // notification icon
          horizontalSpace(16.w),
          Icon(Icons.notifications_none_outlined, size: 24.r),
        ],
      ),
    );
  }
}
