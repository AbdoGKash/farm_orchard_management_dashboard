import 'package:farm_orchard_management_dashboard/core/helper/app_strings.dart';
import 'package:farm_orchard_management_dashboard/core/theming/color_manger.dart';
import 'package:farm_orchard_management_dashboard/core/theming/text_styel_manger.dart';
import 'package:flutter/material.dart';

// Refactor
class ForgotPasswordAndRememberMe extends StatefulWidget {
  const ForgotPasswordAndRememberMe({super.key});

  @override
  State<ForgotPasswordAndRememberMe> createState() =>
      _ForgotPasswordAndRememberMeState();
}

class _ForgotPasswordAndRememberMeState
    extends State<ForgotPasswordAndRememberMe> {
  bool _isRemember = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Checkbox(
                activeColor: ColorsManger.grey.withOpacity(1),
                checkColor: ColorsManger.white,
                value: _isRemember,
                onChanged: (value) {
                  setState(() {
                    _isRemember = value!;
                  });
                }),
            Text(
              AppStrings.rememberMe,
              style: TextStyelManger.font20GreyRegular,
            ),
          ],
        ),
        Text(AppStrings.forgotPassword,
            style: TextStyelManger.font20GreyRegular)
      ],
    );
  }
}
