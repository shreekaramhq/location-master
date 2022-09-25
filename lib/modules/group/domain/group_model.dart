// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'group_model.freezed.dart';
part 'group_model.g.dart';

@freezed
class GroupModel with _$GroupModel {
  factory GroupModel({
    required String id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int locationCount,
    String? description,
  }) = _GroupModel;

  factory GroupModel.empty() {
    final now = DateTime.now();

    return GroupModel(
      id: const Uuid().v4(),
      name: '',
      createdAt: now,
      updatedAt: now,
      description: "",
      locationCount: 0,
    );
  }

  factory GroupModel.fromJson(Map<String, dynamic> json) => _$GroupModelFromJson(json);
}
