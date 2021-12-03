import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locationmaster/domain/group/group_model.dart';

part 'group_model_dto.freezed.dart';
part 'group_model_dto.g.dart';

@freezed
class GroupModelDto with _$GroupModelDto {
  const factory GroupModelDto({
    required String id,
    required String name,
    required String createdAt,
    required String updatedAt,
    String? description,
  }) = _GroupModelDto;

  factory GroupModelDto.fromDomain(GroupModel location) {
    return GroupModelDto(
      id: location.id,
      name: location.name,
      description: location.description,
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
    );
  }

  factory GroupModelDto.fromJson(Map<String, dynamic> json) =>
      _$GroupModelDtoFromJson(json);

  factory GroupModelDto.fromMap(Map<String, dynamic> map) {
    return GroupModelDto(
      id: map['id'],
      name: map['name'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      description: map['description'],
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
    );
  }

  Map<String, Object?> toMap() {
    Map<String, Object?> map = {
      "id": id,
      "name": name,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
    };

    map['description'] = description ?? "";

    return map;
  }
}
