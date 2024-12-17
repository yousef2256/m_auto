import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class CustomeTextFeald extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final EdgeInsets? contentPadding;
  final String? labelText;
  final bool? isRequired;
  final Widget? leftDropdown;
  final bool? isReadOnly;

  const CustomeTextFeald({
    super.key,
    required this.hintText,
    this.controller,
    this.textInputType,
    this.textInputAction,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.contentPadding,
    this.labelText,
    this.isRequired = false,
    this.leftDropdown,
    this.isReadOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) verticalSpace(10.h),
        if (labelText != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              labelText!,
              style: TextStyles.text14px700wGrey,
            ),
          ),
        if (labelText != null) verticalSpace(8.h),
        Row(
          children: [
            if (leftDropdown != null) ...[
              leftDropdown!,
              SizedBox(width: 8.w),
            ],
            Expanded(
              child: TextFormField(
                validator: validator,
                controller: controller,
                keyboardType: textInputType,
                textInputAction: textInputAction,
                obscureText: obscureText,
                readOnly: isReadOnly!,
                decoration: InputDecoration(
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon,
                  hintText: hintText,
                  hintStyle: TextStyles.text14px400wGrey,
                  contentPadding: contentPadding ??
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 18.w),
                  fillColor: Theme.of(context).colorScheme.surface,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
