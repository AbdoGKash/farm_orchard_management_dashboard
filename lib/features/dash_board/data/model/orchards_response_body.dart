import 'package:json_annotation/json_annotation.dart';
part 'orchards_response_body.g.dart';

@JsonSerializable()
class OrchardsResponseBody {
  String? id;
  @JsonKey(name: 'user_id')
  String? userId;
  @JsonKey(name: 'orchard_name')
  String? orchardName;
  @JsonKey(name: 'crop_type')
  String? cropType;
  String? area;
  @JsonKey(name: 'water_level')
  String? waterLevel;
  @JsonKey(name: 'pest_status')
  String? pestStatus;
  @JsonKey(name: 'product_image')
  String? productImage;

  OrchardsResponseBody(
      {this.id,
      this.userId,
      this.orchardName,
      this.cropType,
      this.area,
      this.waterLevel,
      this.pestStatus,
      this.productImage});
  factory OrchardsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$OrchardsResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$OrchardsResponseBodyToJson(this);
}
