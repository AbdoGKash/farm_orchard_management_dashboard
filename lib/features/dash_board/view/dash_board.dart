import 'package:farm_orchard_management_dashboard/core/theming/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widget/custom_bar_dash_board.dart';
import 'widget/bloc_builder_orchards_details.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              color: ColorsManger.white,
              width: MediaQuery.sizeOf(context).width,
              height: 70.h,
              child: const CustomBarDashBoard()),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 1010.h,
            color: ColorsManger.lighterGrey2,
            child: Center(
              child: Container(
                  width: 1500.w,
                  height: 600.h,
                  decoration: BoxDecoration(
                      color: ColorsManger.darkGrey,
                      borderRadius: BorderRadius.circular(10)),
                  child: const BlocBuilderOrchardsDetails()),
            ),
          )
        ],
      ),
    ));
  }
}
