import 'package:farm_orchard_management_dashboard/features/login/data/model/login_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/login_repo.dart';
import '../../data/model/login_request_body.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginCubit(this._loginRepo) : super(LoginInitial());

  void emitLoginState(BuildContext context) async {
    emit(LoadingState());
    final response = await _loginRepo.login(LoginRequestBody(
        username: context.read<LoginCubit>().userNameController.text.toString(),
        password:
            context.read<LoginCubit>().passwordController.text.toString()));
    if (response.success == true) {
      emit(SuccessState(response));
    } else {
      emit(ErrorState());
    }
  }
}
