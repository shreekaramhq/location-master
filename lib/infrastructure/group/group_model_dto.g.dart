// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupModelDto _$$_GroupModelDtoFromJson(Map<String, dynamic> json) =>
    _$_GroupModelDto(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_GroupModelDtoToJson(_$_GroupModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'description': instance.description,
    };
