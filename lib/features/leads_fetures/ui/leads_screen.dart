import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/navigations.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/routes/routes.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/core/widgets/custome_button.dart';

class LeadsScreen extends StatelessWidget {
  const LeadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // pebples Icon
              Icon(
                Icons.people,
                color: Theme.of(context).colorScheme.primary,
                size: 92.r,
              ),
              verticalSpace(10.h),
              Text(
                'No Leads have been created yet',
                style: TextStyles.text18px600wBlack,
              ),
              verticalSpace(10.h),
              Text(
                'start adding leads now',
                style: TextStyles.text14px700wGrey,
              ),

              // spacer
              verticalSpace(20.h),

              // add new lead button
              CustomeButton(
                text: 'Add new lead',
                onPressed: () {
                  context.pushNamed(Routes.addNewLead);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
