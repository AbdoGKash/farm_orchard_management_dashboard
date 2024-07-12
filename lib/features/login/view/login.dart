import 'package:farm_orchard_management_dashboard/core/helper/app_strings.dart';
import 'package:farm_orchard_management_dashboard/core/helper/image_assets_manger.dart';
import 'package:farm_orchard_management_dashboard/core/theming/text_styel_manger.dart';
import 'package:farm_orchard_management_dashboard/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/custom_material_button.dart';
import 'widget/custom_text_form_field.dart';
import 'widget/forgot_password_and_remember_me.dart';
import 'widget/login_cubit_listner.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width / 2,
            child: Image.asset(
              ImageAssets.login,
              fit: BoxFit.fill,
            )),
        SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text(
                AppStrings.welcomeBackText,
                style: TextStyelManger.font24LightgreyRegular,
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomTextFormField(
                controller: context.read<LoginCubit>().userNameController,
                hintText: AppStrings.userName,
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomTextFormField(
                controller: context.read<LoginCubit>().passwordController,
                hintText: AppStrings.password,
              ),
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                height: 50.h,
              ),
              const ForgotPasswordAndRememberMe(),
              SizedBox(
                height: 50.h,
              ),
              const CustomTextButton(),
              const LoginCubitListner()
            ],
          ),
        )
      ],
    ));
  }
}
