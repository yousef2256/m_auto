import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/bloc_observer.dart';
import 'package:m_auto/core/helpers/cash_helper.dart';
import 'package:m_auto/core/routes/app_rowter.dart';
import 'package:m_auto/m_auto_app.dart';

void main() async {
  // add observer
  Bloc.observer = MyBlocObserver();

  // ensure initialized
  WidgetsFlutterBinding.ensureInitialized();

  // cash helper initialize
  CacheHelper().init();

  // set system ui overlay style
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();

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
