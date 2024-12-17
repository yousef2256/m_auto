import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class CustomeDropdown extends StatelessWidget {
  final String labelText;
  final String hintText;
  final List<DropdownMenuItem<String>> items;
  final Function(String?) onChanged;
  const CustomeDropdown({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(8.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            labelText,
            style: TextStyles.text14px700wGrey,
          ),
        ),
        verticalSpace(8.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 4.h),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: DropdownButton<String>(
            value: items.first.value,
            items: items,
            onChanged: onChanged,
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            isExpanded: true,
            underline: const SizedBox(),
            alignment: AlignmentDirectional.centerEnd,
            style: TextStyles.text14px700wGrey,
          ),
        ),
      ],
    );
  }
}
