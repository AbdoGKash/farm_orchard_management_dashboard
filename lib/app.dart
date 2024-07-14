import 'package:farm_orchard_management_dashboard/core/routing/app_router.dart';
import 'package:farm_orchard_management_dashboard/core/routing/routers_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FarmOrchardManagementDashboard extends StatelessWidget {
  const FarmOrchardManagementDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(1920, 1080),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutersName.dashBoard,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
