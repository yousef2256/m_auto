import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/routes/app_rowter.dart';
import 'package:m_auto/m_auto_app.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MAutoApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
