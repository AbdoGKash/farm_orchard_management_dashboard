import 'package:json_annotation/json_annotation.dart';
part 'orchards_request_body.g.dart';

@JsonSerializable()
class OrchardsRequestBody {
  @JsonKey(name: 'user_id')
  String? userId;
  OrchardsRequestBody({required this.userId});
  factory OrchardsRequestBody.fromJson(Map<String, dynamic> json) =>
      _$OrchardsRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$OrchardsRequestBodyToJson(this);
}
