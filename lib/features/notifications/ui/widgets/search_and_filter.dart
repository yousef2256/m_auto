import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/widgets/custome_small_button.dart';
import 'package:m_auto/core/widgets/custome_text_feald.dart';

import '../../../../core/theme/app_colors.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomeTextFeald(
            hintText: 'Search',
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
            prefixIcon: Icon(Icons.search,
                color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),

        // filter button
        CustomeSmallButton(
          onTap: () {},
          borderColor: AppColors.primarygrey,
          icon:
              Icon(Icons.filter_list, size: 18.r, color: AppColors.primarygrey),
        ),
      ],
    );
  }
}
