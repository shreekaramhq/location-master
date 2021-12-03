import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required String id,
    required String name,
    required String latitude,
    required String longitude,
    required String groupId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? description,
  }) = _LocationModel;

  factory LocationModel.empty() {
    return LocationModel(
      id: const Uuid().v4(),
      name: '',
      latitude: '',
      longitude: '',
      groupId: '',
    );
  }

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
