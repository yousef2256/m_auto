import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/navigations.dart';
import 'package:m_auto/core/routes/routes.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/core/widgets/custome_small_button.dart';

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
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.addNewLead);
              },
              child: CustomeSmallButton(
                egeInset: 8,
                color: AppColors.primary,
                onTap: () => context.pushNamed(Routes.addNewLead),
                icon: Icon(
                  Icons.add,
                  size: 16.r,
                  color: AppColors.primarywhite,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
