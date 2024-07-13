import 'package:farm_orchard_management_dashboard/core/helper/app_strings.dart';
import 'package:farm_orchard_management_dashboard/core/theming/color_manger.dart';
import 'package:farm_orchard_management_dashboard/core/theming/text_styel_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFormField extends StatelessWidget {
  const SearchFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30).w,
      child: Container(
        width: 395.w,
        height: 39.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: ColorsManger.lighterGrey2,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: Icon(
              Icons.search,
              size: 15,
              color: ColorsManger.lighterGrey3,
            ),
            hintText: AppStrings.search,
            hintStyle: TextStyelManger.font15LighterGrey3Regular,
            contentPadding: const EdgeInsets.symmetric(vertical: 22.0),
          ),
        ),
      ),
    );
  }
}
