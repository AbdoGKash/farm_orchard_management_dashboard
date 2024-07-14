import 'package:dio/dio.dart';
import 'package:farm_orchard_management_dashboard/features/dash_board/data/model/orchards_request_body.dart';
import 'package:farm_orchard_management_dashboard/features/login/data/model/login_request_body.dart';
import 'package:farm_orchard_management_dashboard/features/login/data/model/login_response_body.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/dash_board/data/model/orchards_response_body.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginRequestBody);
  @POST(ApiConstants.dashBoard)
  Future<OrchardsResponseBody> dashBoard(@Body() OrchardsRequestBody userId);
}
