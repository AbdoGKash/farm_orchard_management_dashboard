import 'package:farm_orchard_management_dashboard/core/helper/image_assets_manger.dart';
import 'package:farm_orchard_management_dashboard/core/theming/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widget/farm_orchard_details.dart';
import 'widget/notification_icon.dart';
import 'widget/search_form_field.dart';

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
            child: Row(
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
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: 1.w,
                        height: 28.h,
                        color: ColorsManger.lighterGrey4,
                      ),
                    ),
                    DropdownButton<String>(
                        value: 'Abdo',
                        underline: Container(),
                        items: ['Abdo'].map((String items) {
                          return DropdownMenuItem<String>(
                            value: items,
                            child: Text(
                              items,
                              style: const TextStyle(fontSize: 12.0),
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
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 1010.h,
            color: ColorsManger.lighterGrey2,
            child: Center(
              child: Container(
                  width: 1446.w,
                  height: 534.w,
                  decoration: BoxDecoration(
                      color: ColorsManger.darkGrey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const FarmOrchardDetails(),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            width: 2.w,
                            height: 400.h,
                            color: ColorsManger.white,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          const FarmOrchardDetails(),
                        ],
                      ),
                      Divider(
                        color: ColorsManger.white,
                        thickness: 2,
                        endIndent: 70,
                        indent: 70,
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    ));
  }
}
