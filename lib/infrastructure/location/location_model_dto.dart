import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locationmaster/domain/location/location_model.dart';

part 'location_model_dto.freezed.dart';
part 'location_model_dto.g.dart';

@freezed
class LocationModelDto with _$LocationModelDto {
  const factory LocationModelDto({
    required String id,
    required String name,
    required String latitude,
    required String longitude,
    required String createdAt,
    required String updatedAt,
    String? description,
  }) = _LocationModelDto;

  factory LocationModelDto.fromDomain(LocationModel location) {
    return LocationModelDto(
      id: location.id,
      name: location.name,
      latitude: location.latitude,
      longitude: location.longitude,
      description: location.description,
      createdAt: location.createdAt.toIso8601String(),
      updatedAt: location.updatedAt.toIso8601String(),
    );
  }

  factory LocationModelDto.fromJson(Map<String, dynamic> json) =>
      _$LocationModelDtoFromJson(json);

  factory LocationModelDto.fromMap(Map<String, dynamic> map) {
    return LocationModelDto(
        id: map['id'],
        name: map['name'],
        latitude: map['latitude'],
        longitude: map['longitude'],
        createdAt: map['createdAt'],
        updatedAt: map['updatedAt'],
        description: map['description']);
  }
}

extension LocationModelDtoX on LocationModelDto {
  LocationModel toDomain() {
    return LocationModel(
      id: id,
      name: name,
      latitude: latitude,
      longitude: longitude,
      description: description,
      createdAt: DateTime.parse(createdAt),
      updatedAt: DateTime.parse(updatedAt),
    );
  }

  Map<String, Object?> toMap() {
    Map<String, Object?> map = {
      "id": id,
      "name": name,
      "latitude": latitude,
      "longitude": longitude,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
    };

    map['description'] = description ?? "";

    return map;
  }
}
