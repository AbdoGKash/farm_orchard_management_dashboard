import 'package:farm_orchard_management_dashboard/core/helper/image_assets_manger.dart';
import 'package:farm_orchard_management_dashboard/core/theming/text_styel_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../core/theming/color_manger.dart';
import 'dimensional_line.dart';

class FarmOrchardDetails extends StatelessWidget {
  const FarmOrchardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
      child: SizedBox(
        width: 615.w,
        height: 400.h,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ORCHARD 1',
                  style: TextStyelManger.font50WhiteRegular,
                ),
                Text('Oranges', style: TextStyelManger.font50WhiteRegular),
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
                      '500',
                      style: TextStyelManger.font50WhiteRegular,
                    ),
                    Text(
                      'Feddans',
                      style: TextStyelManger.font25WhiteRegular,
                    ),
                  ],
                ),
                SizedBox(
                  width: 170.w,
                ),
                SizedBox(
                  width: 140,
                  height: 140,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset(
                        ImageAssets.oranges,
                        width: 100.w,
                      ),
                      SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            showLabels: false,
                            showTicks: false,
                            axisLineStyle: const AxisLineStyle(
                              thickness: 0.2,
                              cornerStyle: CornerStyle.bothCurve,
                              color: Colors.white,
                              thicknessUnit: GaugeSizeUnit.factor,
                            ),
                            pointers: const <GaugePointer>[
                              RangePointer(
                                value: 80,
                                width: 0.2,
                                color: Colors.blue,
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
            const Divider(
              endIndent: 30,
              indent: 30,
              height: 1,
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
                          width: 50.w,
                        ),
                        Text(
                          '20 mm',
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
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    width: 1.w,
                    height: 75.h,
                    color: ColorsManger.lighterGrey4,
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
                  "Pest Status",
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
