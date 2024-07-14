import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color_manger.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Icon(
        Icons.notifications,
        size: 20,
        color: ColorsManger.lighterGrey3,
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
            minWidth: 10.w,
            minHeight: 10.h,
          ),
        ),
      )
    ]);
  }
}
