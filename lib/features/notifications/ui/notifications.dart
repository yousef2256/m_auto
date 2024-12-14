import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/features/notifications/ui/widgets/search_and_filter.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: TextStyles.text18px600wBlack),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            // search bar & filter
            verticalSpace(15.h),
            const SearchAndFilter(),
            verticalSpace(15.h),

            // today text
            Text('Today', style: TextStyles.text14px400wBlack),
            verticalSpace(15.h),
          ],
        ),
      ),
    );
  }
}
