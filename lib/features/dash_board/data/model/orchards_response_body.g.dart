// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orchards_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrchardsResponseBody _$OrchardsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    OrchardsResponseBody(
      orchards: (json['orchards'] as List<dynamic>?)
          ?.map((e) => OrchardsDetils.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrchardsResponseBodyToJson(
        OrchardsResponseBody instance) =>
    <String, dynamic>{
      'orchards': instance.orchards,
    };

OrchardsDetils _$OrchardsDetilsFromJson(Map<String, dynamic> json) =>
    OrchardsDetils(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      orchardName: json['orchard_name'] as String?,
      cropType: json['crop_type'] as String?,
      area: (json['area'] as num?)?.toInt(),
      waterLevel: (json['water_level'] as num?)?.toInt(),
      pestStatus: json['pest_status'] as String?,
    );

Map<String, dynamic> _$OrchardsDetilsToJson(OrchardsDetils instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'orchard_name': instance.orchardName,
      'crop_type': instance.cropType,
      'area': instance.area,
      'water_level': instance.waterLevel,
      'pest_status': instance.pestStatus,
    };
