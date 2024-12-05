import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_auto/core/api/dio_consumer.dart';
import 'package:m_auto/core/routes/routes.dart';
import 'package:m_auto/features/layout/logic/cubit/layout_cubit.dart';
import 'package:m_auto/features/login_fetures/logic/cubit/login_cubit.dart';
import 'package:m_auto/features/login_fetures/ui/login_screen.dart';
import 'package:m_auto/features/layout/ui/layout.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const Placeholder(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(DioConsumer(dio: Dio())),
            child: const LoginScreen(),
          ),
        );
      case Routes.layout:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LayoutCubit(),
            child: const Layout(),
          ),
        );

      // Default Route if no route is defined
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No Route Defined for ${settings.name}')),
          ),
        );
    }
  }
}
