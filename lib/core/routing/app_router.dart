import 'package:dio/dio.dart';
import 'package:farm_orchard_management_dashboard/core/networking/api_service.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/data/repo/login_repo.dart';
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
            create: (context) => LoginCubit(LoginRepo(ApiService(Dio()))),
            child: const Login(),
          ),
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
