import 'package:farm_orchard_management_dashboard/features/dash_board/data/model/orchards_request_body.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/data/model/orchards_response_body.dart';

import '../../../../core/networking/api_service.dart';

class OrchardsRepo {
  final ApiService _apiService;
  OrchardsRepo(this._apiService);
  Future<OrchardsResponseBody> dashBoard(OrchardsRequestBody userId) async {
    return await _apiService.dashBoard(userId);
  }
}
