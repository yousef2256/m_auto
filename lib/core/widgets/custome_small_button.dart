import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeSmallButton extends StatelessWidget {
  final Function() onTap;
  final Color? color;
  final Color? borderColor;
  final Widget icon;
  final int? egeInset;

  const CustomeSmallButton({
    super.key,
    required this.onTap,
    this.color,
    required this.icon,
    this.borderColor,
    this.egeInset = 13,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(egeInset!.r),
        margin: EdgeInsets.only(left: 10.w),
        decoration: BoxDecoration(
          color: color ?? Colors.transparent,
          border: Border.all(color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: icon,
      ),
    );
  }
}
