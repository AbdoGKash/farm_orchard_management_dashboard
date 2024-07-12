import 'package:bloc/bloc.dart';
import 'package:farm_orchard_management_dashboard/features/login/data/model/login_response_body.dart';
import 'package:flutter/material.dart';

import '../../../dash_board/data/repo/login_repo.dart';
import '../../data/model/login_request_body.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginInitial());

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(LoadingState());
    final response = await _loginRepo.login(loginRequestBody);
    emit(SuccessState(response));
  }
}
