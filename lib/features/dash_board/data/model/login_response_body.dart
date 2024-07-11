import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  final bool success;
  final String message;
  final String permissions;
  LoginResponseBody(
      {required this.success,
      required this.message,
      required this.permissions});
  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseBodyToJson(this);
}
