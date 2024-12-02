import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/theme/app_colors.dart';

class TextStyles {
  // text 22px 700w
  static TextStyle text22px700w = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
  );

  // text 14px 400w
  static TextStyle hintTextStyle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  // text 14px 700w grey
  static TextStyle text14px700wGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.textGrey,
  );

  // text 14px 400w grey
  static TextStyle text14px400wGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textGrey,
  );

  // text 14px 400w black
  static TextStyle text14px400wBlack = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
  );
}