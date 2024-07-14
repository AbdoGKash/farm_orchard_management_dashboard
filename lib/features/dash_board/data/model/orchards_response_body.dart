import 'package:farm_orchard_management_dashboard/core/helper/image_assets_manger.dart';
import 'package:json_annotation/json_annotation.dart';
part 'orchards_response_body.g.dart';

@JsonSerializable()
class OrchardsResponseBody {
  List<OrchardsDetils>? orchards;

  OrchardsResponseBody({this.orchards});

  factory OrchardsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$OrchardsResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$OrchardsResponseBodyToJson(this);
}

@JsonSerializable()
class OrchardsDetils {
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'orchard_name')
  String? orchardName;
  @JsonKey(name: 'crop_type')
  String? cropType;
  int? area;
  @JsonKey(name: 'water_level')
  int? waterLevel;
  @JsonKey(name: 'pest_status')
  String? pestStatus;

  OrchardsDetils(
      {this.id,
      this.userId,
      this.orchardName,
      this.cropType,
      this.area,
      this.waterLevel,
      this.pestStatus});
  factory OrchardsDetils.fromJson(Map<String, dynamic> json) =>
      _$OrchardsDetilsFromJson(json);
  Map<String, dynamic> toJson() => _$OrchardsDetilsToJson(this);
}

// Local
List orchardsImages = [
  ImageAssets.lemon,
  ImageAssets.oranges,
];
