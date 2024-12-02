import 'package:flutter/material.dart';
import 'package:m_auto/core/routes/routes.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const Placeholder(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => const Placeholder(),
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
