import 'package:farm_orchard_management_dashboard/core/helper/app_strings.dart';
import 'package:farm_orchard_management_dashboard/core/helper/image_assets_manger.dart';
import 'package:farm_orchard_management_dashboard/core/theming/text_styel_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../core/theming/color_manger.dart';
import 'dimensional_line.dart';

class FarmOrchardDetails extends StatelessWidget {
  final String orchardNamber;
  final String waterLevel;
  final String area;
  final String cropType;
  final String orchardsImages;

  const FarmOrchardDetails(
      {super.key,
      required this.orchardNamber,
      required this.waterLevel,
      required this.area,
      required this.cropType,
      required this.orchardsImages});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0).w,
      child: SizedBox(
        width: 660.w,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orchardNamber,
                  style: TextStyelManger.font50WhiteRegular,
                ),
                Text(cropType, style: TextStyelManger.font50WhiteRegular),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      area,
                      style: TextStyelManger.font50WhiteRegular,
                    ),
                    Text(
                      AppStrings.feddans,
                      style: TextStyelManger.font20WhiteRegular,
                    ),
                  ],
                ),
                SizedBox(
                  width: 170.w,
                ),
                SizedBox(
                  width: 260.w,
                  height: 260.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset(
                        orchardsImages,
                        width: 105.w,
                      ),
                      SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            showLabels: false,
                            showTicks: false,
                            axisLineStyle: AxisLineStyle(
                              thickness: 0.2,
                              cornerStyle: CornerStyle.bothCurve,
                              color: ColorsManger.white,
                              thicknessUnit: GaugeSizeUnit.factor,
                            ),
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: 70,
                                width: 0.2,
                                color: ColorsManger.green,
                                sizeUnit: GaugeSizeUnit.factor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              endIndent: 30,
              indent: 30,
              height: 1.h,
              color: ColorsManger.darkGrey2,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          ImageAssets.size,
                          width: 45.w,
                          height: 50.h,
                        ),
                        Text(
                          '$waterLevel mm',
                          style: TextStyelManger.font30WhiteRegular,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const DimensionalLine()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 70).w,
                  child: Container(
                    width: 1.w,
                    height: 75.h,
                    color: ColorsManger.darkGrey2,
                  ),
                ),
                Image.asset(
                  ImageAssets.alert,
                  width: 50.w,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  AppStrings.pestStatus,
                  style: TextStyelManger.font30WhiteRegular,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
