import 'package:farm_orchard_management_dashboard/core/routing/routers_name.dart';
import 'package:farm_orchard_management_dashboard/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubitListner extends StatelessWidget {
  const LoginCubitListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current is LoadingState || current is SuccessState;
      },
      listener: (context, state) {
        if (state is LoadingState) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (state is SuccessState) {
          Navigator.pop(context);
          Navigator.pushNamed(context, RoutersName.dashBoard);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
