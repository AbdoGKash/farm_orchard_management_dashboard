import 'package:farm_orchard_management_dashboard/core/helper/image_assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/color_manger.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset(
        ImageAssets.notification,
      ),
      Positioned(
        right: 0,
        top: 0,
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: ColorsManger.orange,
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: BoxConstraints(
            minWidth: 11.w,
            minHeight: 11.h,
          ),
        ),
      )
    ]);
  }
}
