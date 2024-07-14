import 'package:farm_orchard_management_dashboard/core/theming/text_styel_manger.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/view/widget/search_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helper/image_assets_manger.dart';
import '../../../../core/theming/color_manger.dart';
import 'notification_icon.dart';

class CustomBarDashBoard extends StatelessWidget {
  const CustomBarDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SearchFormField(),
        SizedBox(
          width: 900.w,
        ),
        Row(
          children: [
            SvgPicture.asset(ImageAssets.support),
            SizedBox(
              width: 20.w,
            ),
            SvgPicture.asset(ImageAssets.chat)
          ],
        ),
        const Spacer(),
        Row(
          children: [
            const NotificationIcon(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10).w,
              child: Container(
                width: 1.w,
                height: 28.h,
                color: ColorsManger.lighterGrey4,
              ),
            ),
            DropdownButton<String>(
                value: 'Abdo Gamal',
                underline: Container(),
                items: ['Abdo Gamal'].map((String items) {
                  return DropdownMenuItem<String>(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyelManger.font20GreyRegular,
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {}),
            Container(
              padding: const EdgeInsetsDirectional.only(
                  top: 10, bottom: 10, end: 20),
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(ImageAssets.login),
              ),
            )
          ],
        )
      ],
    );
  }
}
