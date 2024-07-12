part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

class LoadingState extends LoginState {}

class SuccessState extends LoginState {
  final LoginResponseBody loginResponseBody;
  SuccessState(this.loginResponseBody);
}

class ErrorState extends LoginState {
  final String error;
  ErrorState(this.error);
}
