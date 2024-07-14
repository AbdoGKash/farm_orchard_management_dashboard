import 'package:farm_orchard_management_dashboard/core/helper/app_strings.dart';
import 'package:farm_orchard_management_dashboard/core/theming/text_styel_manger.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/view/widget/farm_orchard_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color_manger.dart';
import '../../data/model/orchards_response_body.dart';
import '../../logic/cubit/orchards_cubit.dart';

class BlocBuilderOrchardsDetails extends StatelessWidget {
  const BlocBuilderOrchardsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrchardsCubit, OrchardsState>(
      buildWhen: (previous, current) {
        return current is LoadingOrchardsState ||
            current is SuccessOrchardsState;
      },
      builder: (context, state) {
        if (state is LoadingOrchardsState) {
          return Center(
            child: Text(
              AppStrings.loading,
              style: TextStyelManger.font30WhiteRegular,
            ),
          );
        }
        if (state is SuccessOrchardsState) {
          var data = state.orchardsResponseBody.orchards;
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50, bottom: 20).w,
                  height: 490.w,
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 2.w,
                          height: 1.h,
                          color: ColorsManger.darkGrey2,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return FarmOrchardDetails(
                          cropType: data![index].cropType.toString(),
                          orchardNamber: data[index].orchardName.toString(),
                          waterLevel: data[index].waterLevel.toString(),
                          area: data[index].area.toString(),
                          orchardsImages: orchardsImages[index],
                        );
                      }),
                ),
                Divider(
                  thickness: 2,
                  endIndent: 70.w,
                  indent: 70.w,
                  color: ColorsManger.white,
                )
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
