import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class SummaryCardsDesign extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  const SummaryCardsDesign({
    super.key,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.w),
        height: 65.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value, style: TextStyles.text16px600wBlack),
            Text(title, style: TextStyles.text10px400wBlack),
          ],
        ),
      ),
    );
  }
}
