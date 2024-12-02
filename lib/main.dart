import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/bloc_observer.dart';
import 'package:m_auto/core/routes/app_rowter.dart';
import 'package:m_auto/m_auto_app.dart';

void main() {
  // add observer
  Bloc.observer = MyBlocObserver();

  // run app
  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MAutoApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
