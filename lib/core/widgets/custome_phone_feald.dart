import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class CustomePhoneField extends StatelessWidget {
  final String lableText;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final List<DropdownMenuItem<String>>? dropdownItems;
  final bool showTextField;
  final bool? isReadOnly;
  final Function(String?)? onChanged;
  final String? selectedValue;
  const CustomePhoneField({
    super.key,
    required this.lableText,
    required this.hintText,
    this.controller,
    this.textInputType,
    this.textInputAction,
    this.obscureText = false,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding,
    this.dropdownItems,
    this.showTextField = true,
    this.isReadOnly = false,
    this.onChanged,
    this.selectedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(10.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            lableText,
            style: TextStyles.text14px700wGrey,
          ),
        ),
        verticalSpace(8.h),
        IntlPhoneField(
          controller: controller,
          initialValue: selectedValue,
          onChanged: (phone) {
            if (onChanged != null) {
              onChanged!(phone.number);
            }
          },
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyles.text14px400wGrey,
            contentPadding: EdgeInsets.symmetric(vertical: 15.h),
            fillColor: Theme.of(context).colorScheme.surface,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          dropdownTextStyle: TextStyles.text14px400wGrey,
        ),
      ],
    );
  }
}
