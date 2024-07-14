import 'package:farm_orchard_management_dashboard/core/routing/routers_name.dart';
import 'package:farm_orchard_management_dashboard/core/theming/color_manger.dart';
import 'package:farm_orchard_management_dashboard/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/app_strings.dart';

class LoginCubitListner extends StatelessWidget {
  const LoginCubitListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current is LoadingState ||
            current is SuccessState ||
            current is ErrorState;
      },
      listener: (context, state) {
        if (state is LoadingState) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(
                color: ColorsManger.grey,
              ),
            ),
          );
        }
        if (state is SuccessState) {
          Navigator.pop(context);
          Navigator.pushNamed(context, RoutersName.dashBoard);
        }
        if (state is ErrorState) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: Icon(
                Icons.error,
                color: ColorsManger.red,
                size: 32,
              ),
              content: const Text(
                AppStrings.error,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    AppStrings.ok,
                  ),
                ),
              ],
            ),
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
