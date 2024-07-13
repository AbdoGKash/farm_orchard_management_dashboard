// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orchards_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrchardsResponseBody _$OrchardsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    OrchardsResponseBody(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      orchardName: json['orchard_name'] as String?,
      cropType: json['crop_type'] as String?,
      area: json['area'] as String?,
      waterLevel: json['water_level'] as String?,
      pestStatus: json['pest_status'] as String?,
      productImage: json['product_image'] as String?,
    );

Map<String, dynamic> _$OrchardsResponseBodyToJson(
        OrchardsResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'orchard_name': instance.orchardName,
      'crop_type': instance.cropType,
      'area': instance.area,
      'water_level': instance.waterLevel,
      'pest_status': instance.pestStatus,
      'product_image': instance.productImage,
    };
