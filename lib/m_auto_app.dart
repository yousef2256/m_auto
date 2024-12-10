import 'package:flutter/material.dart';
import 'package:m_auto/core/routes/app_rowter.dart';
import 'package:m_auto/core/routes/routes.dart';
import 'package:m_auto/core/theme/app_lighte_theme.dart';

class MAutoApp extends StatelessWidget {
  final AppRouter appRouter;
  const MAutoApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.generateRouter,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.login,
      title: 'M Auto',
      theme: lightTheme,
    );
  }
}
