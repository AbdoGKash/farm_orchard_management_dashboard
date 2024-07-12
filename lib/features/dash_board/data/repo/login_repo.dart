import 'package:farm_orchard_management_dashboard/features/login/data/model/login_response_body.dart';

import '../../../../core/networking/api_service.dart';
import '../../../login/data/model/login_request_body.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);
  Future<LoginResponseBody> login(LoginRequestBody loginRequestBody) async {
    return await _apiService.login(loginRequestBody);
  }
}
