part of 'orchards_cubit.dart';

@immutable
sealed class OrchardsState {}

final class OrchardsInitial extends OrchardsState {}

class LoadingOrchardsState extends OrchardsState {}

class SuccessOrchardsState extends OrchardsState {
  final OrchardsResponseBody orchardsResponseBody;
  SuccessOrchardsState(this.orchardsResponseBody);
}

// class ErrorOrchardsState extends OrchardsState {}
