import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class CustomeDripdownAndTextFeald extends StatelessWidget {
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
  const CustomeDripdownAndTextFeald({
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            children: [
              DropdownButton<String>(
                value: '+20', // Default value
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                underline: const SizedBox(),
                items: dropdownItems ??
                    [
                      const DropdownMenuItem(
                        value: '+20',
                        child: Text('🇪🇬 +20'),
                      ),
                      const DropdownMenuItem(
                        value: '+966',
                        child: Text('🇸🇦 +966'),
                      ),
                      const DropdownMenuItem(
                        value: '+971',
                        child: Text('🇦🇪 +971'),
                      ),
                    ],
                onChanged: (value) {
                  /// TODO Handle country code change
                },
              ),
              if (showTextField)
                Expanded(
                  child: TextFormField(
                    readOnly: isReadOnly!,
                    validator: validator,
                    controller: controller,
                    keyboardType: textInputType,
                    textInputAction: textInputAction,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      prefixIcon: prefixIcon,
                      suffixIcon: suffixIcon,
                      hintText: hintText,
                      hintStyle: TextStyles.text14px400wGrey,
                      contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                      fillColor: Theme.of(context).colorScheme.surface,
                      filled: true,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
