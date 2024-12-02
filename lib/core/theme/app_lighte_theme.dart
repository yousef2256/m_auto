import 'package:flutter/material.dart';
import 'package:m_auto/core/theme/app_colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: "Rubik",
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: AppColors.primarywhite,
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    tertiary: AppColors.primarybackground,
    onPrimary: AppColors.primarygrey,
  ),
);
