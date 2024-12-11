import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/navigations.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/routes/routes.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/constets/images_constents.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class HomeAppBar extends StatelessWidget {
  final String name;
  final String plase;

  const HomeAppBar({
    super.key,
    required this.name,
    required this.plase,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 18.w),
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
                foregroundImage: const AssetImage(ImagesConstents.userphoto),
                radius: 30.r,
                backgroundColor: AppColors.primarywhite,
              ),
              horizontalSpace(9.w),

              // column name , location , Sales
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyles.text14px600wBlack),
                  Text(plase, style: TextStyles.text12px600wBlack),
                  Text('Sales', style: TextStyles.text12px600wBlack),
                ],
              ),
            ],
          ),

          // notification icon
          horizontalSpace(16.w),
          IconButton(
            icon: Icon(Icons.notifications_none_outlined, size: 24.r),
            onPressed: () {
              context.pushNamed(Routes.notifications);
            },
          ),
        ],
      ),
    );
  }
}
