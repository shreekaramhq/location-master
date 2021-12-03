// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupModel _$GroupModelFromJson(Map<String, dynamic> json) {
  return _GroupModel.fromJson(json);
}

/// @nodoc
class _$GroupModelTearOff {
  const _$GroupModelTearOff();

  _GroupModel call(
      {required String id,
      required String name,
      required DateTime createdAt,
      required DateTime updatedAt,
      String? description}) {
    return _GroupModel(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: description,
    );
  }

  GroupModel fromJson(Map<String, Object?> json) {
    return GroupModel.fromJson(json);
  }
}

/// @nodoc
const $GroupModel = _$GroupModelTearOff();

/// @nodoc
mixin _$GroupModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupModelCopyWith<GroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupModelCopyWith<$Res> {
  factory $GroupModelCopyWith(
          GroupModel value, $Res Function(GroupModel) then) =
      _$GroupModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      String? description});
}

/// @nodoc
class _$GroupModelCopyWithImpl<$Res> implements $GroupModelCopyWith<$Res> {
  _$GroupModelCopyWithImpl(this._value, this._then);

  final GroupModel _value;
  // ignore: unused_field
  final $Res Function(GroupModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GroupModelCopyWith<$Res> implements $GroupModelCopyWith<$Res> {
  factory _$GroupModelCopyWith(
          _GroupModel value, $Res Function(_GroupModel) then) =
      __$GroupModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      String? description});
}

/// @nodoc
class __$GroupModelCopyWithImpl<$Res> extends _$GroupModelCopyWithImpl<$Res>
    implements _$GroupModelCopyWith<$Res> {
  __$GroupModelCopyWithImpl(
      _GroupModel _value, $Res Function(_GroupModel) _then)
      : super(_value, (v) => _then(v as _GroupModel));

  @override
  _GroupModel get _value => super._value as _GroupModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_GroupModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupModel implements _GroupModel {
  const _$_GroupModel(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt,
      this.description});

  factory _$_GroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_GroupModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'GroupModel(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, createdAt, updatedAt, description);

  @JsonKey(ignore: true)
  @override
  _$GroupModelCopyWith<_GroupModel> get copyWith =>
      __$GroupModelCopyWithImpl<_GroupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupModelToJson(this);
  }
}

abstract class _GroupModel implements GroupModel {
  const factory _GroupModel(
      {required String id,
      required String name,
      required DateTime createdAt,
      required DateTime updatedAt,
      String? description}) = _$_GroupModel;

  factory _GroupModel.fromJson(Map<String, dynamic> json) =
      _$_GroupModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$GroupModelCopyWith<_GroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
