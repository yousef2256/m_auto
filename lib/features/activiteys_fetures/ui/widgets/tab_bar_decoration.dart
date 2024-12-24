import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/theme/app_colors.dart';

class TabBarDecoration extends StatelessWidget {
  const TabBarDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      decoration: BoxDecoration(
        color: AppColors.contentbackground,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: TabBar(
        indicator: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        unselectedLabelColor: AppColors.primary,
        labelStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0),
        tabs: [
          SizedBox(
            height: 34.h,
            child: const Tab(text: 'All'),
          ),
          SizedBox(
            height: 34.h,
            child: const Tab(text: 'Calls'),
          ),
          SizedBox(
            height: 34.h,
            child: const Tab(text: 'Leads'),
          ),
        ],
      ),
    );
  }
}
