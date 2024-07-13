part of 'orchards_cubit.dart';

@immutable
sealed class OrchardsState {}

final class OrchardsInitial extends OrchardsState {}

class LoadingState extends OrchardsState {}

class SuccessState extends OrchardsState {
  final OrchardsResponseBody orchardsResponseBody;
  SuccessState(this.orchardsResponseBody);
}

class ErrorState extends OrchardsState {
  ErrorState();
}
