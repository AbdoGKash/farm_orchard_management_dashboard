import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manger.dart';

class TextStyelManger {
  static TextStyle font24LightgreyRegular = TextStyle(
    fontSize: 24.sp,
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    color: ColorsManger.lightGrey.withOpacity(0.5),
  );
  static TextStyle font20GreyRegular = TextStyle(
    fontSize: 20.sp,
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    color: ColorsManger.grey.withOpacity(1),
  );
  static TextStyle font11GreyRegular = TextStyle(
    fontSize: 11.sp,
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    color: ColorsManger.grey.withOpacity(1),
  );
  static TextStyle font20WhiteRegular = TextStyle(
    fontSize: 20.sp,
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    color: ColorsManger.white.withOpacity(1),
  );
  static TextStyle font24WhiteRegular = TextStyle(
    fontSize: 24.sp,
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    color: ColorsManger.white.withOpacity(1),
  );
  static TextStyle font15LighterGrey3Regular = TextStyle(
    fontSize: 15.sp,
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    color: ColorsManger.lighterGrey3.withOpacity(1),
  );
  static TextStyle font50WhiteRegular = TextStyle(
    fontSize: 50.sp,
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    color: ColorsManger.white.withOpacity(1),
  );
  static TextStyle font25WhiteRegular = TextStyle(
    fontSize: 25.sp,
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    color: ColorsManger.white.withOpacity(1),
  );
  static TextStyle font30WhiteRegular = TextStyle(
    fontSize: 30.sp,
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    color: ColorsManger.white.withOpacity(1),
  );
}

class FontConstants {
  static const String fontFamily = "SourceSans3";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}
