import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/features/activiteys_fetures/ui/widgets/tab_bar_decoration.dart';

class ActivitysScreen extends StatelessWidget {
  const ActivitysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('All Activities', style: TextStyles.text18px600wBlack),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60.h),
            child: const TabBarDecoration(),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('All'),
            ),
            Center(
              child: Text('Calls'),
            ),
            Center(
              child: Text('Leads'),
            ),
          ],
        ),
      ),
    );
  }
}
