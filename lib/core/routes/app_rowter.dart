import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_auto/core/api/dio_consumer.dart';
import 'package:m_auto/core/routes/routes.dart';
import 'package:m_auto/features/home_fetures/logic/home_cubit.dart';
import 'package:m_auto/features/home_fetures/ui/profile_screen.dart';
import 'package:m_auto/features/layout/logic/layout_cubit.dart';
import 'package:m_auto/features/leads_fetures/logic/leads_cubit.dart';
import 'package:m_auto/features/leads_fetures/ui/add_new_lead_screen.dart';
import 'package:m_auto/features/login_fetures/logic/login_cubit.dart';
import 'package:m_auto/features/login_fetures/ui/login_screen.dart';
import 'package:m_auto/features/layout/ui/layout.dart';
import 'package:m_auto/features/notifications/ui/notifications.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(DioConsumer(dio: Dio())),
            child: const LoginScreen(),
          ),
        );
      case Routes.layout:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => LayoutCubit()),
              BlocProvider(
                  create: (context) =>
                      HomeCubit(DioConsumer(dio: Dio()))..homePageData())
            ],
            child: const Layout(),
          ),
        );

      case Routes.notifications:
        return MaterialPageRoute(
          builder: (context) => const Notifications(),
        );

      case Routes.profile:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        );

      case Routes.addNewLead:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) =>
                LeadsCubit(DioConsumer(dio: Dio()))..getCarBrandsAndModels(),
            child: const AddNewLeadScreen(),
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
