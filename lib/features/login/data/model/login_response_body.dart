import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  bool? success;
  String? message;
  String? username;
  String? permissions;
  LoginResponseBody(
      {required this.success,
      required this.message,
      required this.permissions,
      required this.username});
  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseBodyToJson(this);
}
