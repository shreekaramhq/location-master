// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupModelDto _$GroupModelDtoFromJson(Map<String, dynamic> json) {
  return _GroupModelDto.fromJson(json);
}

/// @nodoc
class _$GroupModelDtoTearOff {
  const _$GroupModelDtoTearOff();

  _GroupModelDto call(
      {required String id,
      required String name,
      required String createdAt,
      required String updatedAt,
      String? description}) {
    return _GroupModelDto(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: description,
    );
  }

  GroupModelDto fromJson(Map<String, Object?> json) {
    return GroupModelDto.fromJson(json);
  }
}

/// @nodoc
const $GroupModelDto = _$GroupModelDtoTearOff();

/// @nodoc
mixin _$GroupModelDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupModelDtoCopyWith<GroupModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupModelDtoCopyWith<$Res> {
  factory $GroupModelDtoCopyWith(
          GroupModelDto value, $Res Function(GroupModelDto) then) =
      _$GroupModelDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String createdAt,
      String updatedAt,
      String? description});
}

/// @nodoc
class _$GroupModelDtoCopyWithImpl<$Res>
    implements $GroupModelDtoCopyWith<$Res> {
  _$GroupModelDtoCopyWithImpl(this._value, this._then);

  final GroupModelDto _value;
  // ignore: unused_field
  final $Res Function(GroupModelDto) _then;

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
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GroupModelDtoCopyWith<$Res>
    implements $GroupModelDtoCopyWith<$Res> {
  factory _$GroupModelDtoCopyWith(
          _GroupModelDto value, $Res Function(_GroupModelDto) then) =
      __$GroupModelDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String createdAt,
      String updatedAt,
      String? description});
}

/// @nodoc
class __$GroupModelDtoCopyWithImpl<$Res>
    extends _$GroupModelDtoCopyWithImpl<$Res>
    implements _$GroupModelDtoCopyWith<$Res> {
  __$GroupModelDtoCopyWithImpl(
      _GroupModelDto _value, $Res Function(_GroupModelDto) _then)
      : super(_value, (v) => _then(v as _GroupModelDto));

  @override
  _GroupModelDto get _value => super._value as _GroupModelDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_GroupModelDto(
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
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupModelDto implements _GroupModelDto {
  const _$_GroupModelDto(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt,
      this.description});

  factory _$_GroupModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_GroupModelDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'GroupModelDto(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupModelDto &&
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
  _$GroupModelDtoCopyWith<_GroupModelDto> get copyWith =>
      __$GroupModelDtoCopyWithImpl<_GroupModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupModelDtoToJson(this);
  }
}

abstract class _GroupModelDto implements GroupModelDto {
  const factory _GroupModelDto(
      {required String id,
      required String name,
      required String createdAt,
      required String updatedAt,
      String? description}) = _$_GroupModelDto;

  factory _GroupModelDto.fromJson(Map<String, dynamic> json) =
      _$_GroupModelDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$GroupModelDtoCopyWith<_GroupModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
