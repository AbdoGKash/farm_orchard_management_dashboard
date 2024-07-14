import 'package:bloc/bloc.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/data/model/orchards_request_body.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/data/model/orchards_response_body.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/data/repo/orchards_repo.dart';
import 'package:flutter/material.dart';

part 'orchards_state.dart';

class OrchardsCubit extends Cubit<OrchardsState> {
  final OrchardsRepo orchardsRepo;
  OrchardsCubit(this.orchardsRepo) : super(OrchardsInitial());
  void emitOrchardsState() async {
    emit(LoadingOrchardsState());
    final response =
        await orchardsRepo.dashBoard(OrchardsRequestBody(userId: '1'));
    emit(SuccessOrchardsState(response));
  }
}
