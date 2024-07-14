import 'package:farm_orchard_management_dashboard/core/dependency_injection.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/logic/cubit/orchards_cubit.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/view/dash_board.dart';
import 'package:farm_orchard_management_dashboard/features/login/logic/cubit/login_cubit.dart';
import 'package:farm_orchard_management_dashboard/features/login/view/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routers_name.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutersName.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const Login(),
          ),
        );
      case RoutersName.dashBoard:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<OrchardsCubit>()..emitOrchardsState(),
            child: const DashBoard(),
          ),
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
