import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'group_model.freezed.dart';
part 'group_model.g.dart';

@freezed
class GroupModel with _$GroupModel {
  const factory GroupModel({
    required String id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? description,
  }) = _GroupModel;

  factory GroupModel.empty() {
    return GroupModel(
      id: const Uuid().v4(),
      name: '',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      description: "",
    );
  }

  factory GroupModel.fromJson(Map<String, dynamic> json) =>
      _$GroupModelFromJson(json);
}
