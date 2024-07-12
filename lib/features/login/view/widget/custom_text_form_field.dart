import 'package:farm_orchard_management_dashboard/core/theming/color_manger.dart';
import 'package:farm_orchard_management_dashboard/core/theming/text_styel_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;

  const CustomTextFormField(
      {super.key, this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 552.w,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: ColorsManger.lighterGrey.withOpacity(1), width: 2.0.w),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: ColorsManger.grey.withOpacity(0.5), width: 2.0.w),
            ),
            hintText: hintText,
            hintStyle: TextStyelManger.font20GreyRegular),
      ),
    );
  }
}
