import 'package:farm_orchard_management_dashboard/core/helper/app_strings.dart';
import 'package:farm_orchard_management_dashboard/core/theming/color_manger.dart';
import 'package:farm_orchard_management_dashboard/core/theming/text_styel_manger.dart';
import 'package:farm_orchard_management_dashboard/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 87.h,
      minWidth: 534.w,
      onPressed: () {
        context.read<LoginCubit>().emitLoginState(context);
      },
      color: ColorsManger.grey.withOpacity(1),
      child: Text(
        AppStrings.login,
        style: TextStyelManger.font24WhiteRegular,
      ),
    );
  }
}
