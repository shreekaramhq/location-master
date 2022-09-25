import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locationmaster/modules/group/domain/group_model.dart';

part 'group_model_dto.freezed.dart';
part 'group_model_dto.g.dart';

@freezed
class GroupModelDto with _$GroupModelDto {
  const factory GroupModelDto({
    required String id,
    required String name,
    required String createdAt,
    required String updatedAt,
    required int locationCount,
    String? description,
  }) = _GroupModelDto;

  factory GroupModelDto.fromDomain(GroupModel groupModel) {
    return GroupModelDto(
      id: groupModel.id,
      name: groupModel.name,
      locationCount: 0,
      description: groupModel.description,
      createdAt: groupModel.createdAt.toIso8601String(),
      updatedAt: groupModel.updatedAt.toIso8601String(),
    );
  }
  factory GroupModelDto.fromJson(Map<String, dynamic> json) => _$GroupModelDtoFromJson(json);

  factory GroupModelDto.fromMap(Map<String, dynamic> map) {
    return GroupModelDto(
      id: map['id'],
      name: map['name'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      description: map['description'],
      locationCount: map['location_count'] ?? 0,
    );
  }
}

extension GroupModelDtoX on GroupModelDto {
  GroupModel toDomain() {
    return GroupModel(
      id: id,
      name: name,
      description: description,
      createdAt: DateTime.parse(createdAt),
      updatedAt: DateTime.parse(updatedAt),
      locationCount: locationCount,
    );
  }

  Map<String, Object?> toMap() {
    Map<String, Object?> map = {
      "id": id,
      "name": name,
      "created_at": createdAt,
      "updated_at": updatedAt,
      "description": description ?? ""
    };

    return map;
  }
}

///
@freezed
class UpdateGroupPayload with _$UpdateGroupPayload {
  const factory UpdateGroupPayload({
    required String name,
    required String updatedAt,
    String? description,
  }) = _UpdateGroupPayload;
}

extension UpdateGroupX on UpdateGroupPayload {
  Map<String, Object?> toMap() {
    Map<String, Object?> map = {
      "name": name,
      "updated_at": updatedAt,
      "description": description ?? ""
    };

    return map;
  }
}
