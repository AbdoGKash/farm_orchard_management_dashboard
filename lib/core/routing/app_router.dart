import 'package:farm_orchard_management_dashboard/features/dash_board/view/dash_board.dart';
import 'package:farm_orchard_management_dashboard/features/login/view/login.dart';
import 'package:flutter/material.dart';

import 'routers_name.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutersName.login:
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
      case RoutersName.dashBoard:
        return MaterialPageRoute(
          builder: (_) => const DashBoard(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("No Route Found"),
            ),
          ),
        );
    }
  }
}
