import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locationmaster/modules/location/domain/location_model.dart';
import 'package:uuid/uuid.dart';

part 'location_model_dto.freezed.dart';
part 'location_model_dto.g.dart';

@freezed
class CreateLocationPayload with _$CreateLocationPayload {
  const factory CreateLocationPayload({
    required String name,
    required double latitude,
    required double longitude,
    required String groupId,
    String? description,
  }) = _CreateLocationPayload;
}

@freezed
class UpdateLocationPayload with _$UpdateLocationPayload {
  const factory UpdateLocationPayload({
    required String id,
    required String name,
    // required double latitude,
    // required double longitude,
    // required String groupId,
    String? description,
  }) = _UpdateLocationPayload;
}

extension UpdateLocationPayloadX on UpdateLocationPayload {
  Map<String, Object?> toMap() {
    Map<String, Object?> map = {"id": id, "name": name, 'description': description ?? ""};

    return map;
  }
}

@freezed
class LocationModelDto with _$LocationModelDto {
  const factory LocationModelDto({
    required String id,
    required String name,
    required double latitude,
    required double longitude,
    required String createdAt,
    required String updatedAt,
    required String groupId,
    String? description,
  }) = _LocationModelDto;

  factory LocationModelDto.fromDomain(LocationModel location) {
    return LocationModelDto(
      id: location.id,
      name: location.name,
      latitude: location.latitude,
      longitude: location.longitude,
      description: location.description,
      createdAt: location.createdAt?.toIso8601String() ?? DateTime.now().toIso8601String(),
      updatedAt: location.updatedAt?.toIso8601String() ?? DateTime.now().toIso8601String(),
      groupId: location.groupId,
    );
  }

  factory LocationModelDto.fromCreatePayload(CreateLocationPayload payload) {
    return LocationModelDto(
      id: const Uuid().v4(),
      name: payload.name,
      latitude: payload.latitude,
      longitude: payload.longitude,
      groupId: payload.groupId,
      description: payload.description,
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
    );
  }

  factory LocationModelDto.fromJson(Map<String, dynamic> json) => _$LocationModelDtoFromJson(json);

  factory LocationModelDto.fromMap(Map<String, dynamic> map) {
    return LocationModelDto(
      id: map['id'],
      name: map['name'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      description: map['description'],
      groupId: map['group_id'],
    );
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
      groupId: groupId,
    );
  }

  Map<String, Object?> toMap() {
    Map<String, Object?> map = {
      "id": id,
      "name": name,
      "latitude": latitude,
      "longitude": longitude,
      "created_at": createdAt,
      "updated_at": updatedAt,
      'group_id': groupId,
      'description': description ?? "",
    };

    return map;
  }
}
