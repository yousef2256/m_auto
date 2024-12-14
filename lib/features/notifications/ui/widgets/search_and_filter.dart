import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/widgets/custome_text_feald.dart';

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
        Container(
          padding: EdgeInsets.all(13.r),
          margin: EdgeInsets.only(left: 10.w),
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.onPrimary),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(Icons.filter_list,
              size: 18.r,
              color: Theme.of(context).colorScheme.onPrimary),
        ),
      ],
    );
  }
}
