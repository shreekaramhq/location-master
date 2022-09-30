// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModelDto _$$_LocationModelDtoFromJson(Map<String, dynamic> json) =>
    _$_LocationModelDto(
      id: json['id'] as String,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      groupId: json['groupId'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_LocationModelDtoToJson(_$_LocationModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'groupId': instance.groupId,
      'description': instance.description,
    };
