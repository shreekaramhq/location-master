// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupModelDto _$GroupModelDtoFromJson(Map<String, dynamic> json) {
  return _GroupModelDto.fromJson(json);
}

/// @nodoc
mixin _$GroupModelDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  int get locationCount => throw _privateConstructorUsedError;
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
      int locationCount,
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
    Object? locationCount = freezed,
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
      locationCount: locationCount == freezed
          ? _value.locationCount
          : locationCount // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GroupModelDtoCopyWith<$Res>
    implements $GroupModelDtoCopyWith<$Res> {
  factory _$$_GroupModelDtoCopyWith(
          _$_GroupModelDto value, $Res Function(_$_GroupModelDto) then) =
      __$$_GroupModelDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String createdAt,
      String updatedAt,
      int locationCount,
      String? description});
}

/// @nodoc
class __$$_GroupModelDtoCopyWithImpl<$Res>
    extends _$GroupModelDtoCopyWithImpl<$Res>
    implements _$$_GroupModelDtoCopyWith<$Res> {
  __$$_GroupModelDtoCopyWithImpl(
      _$_GroupModelDto _value, $Res Function(_$_GroupModelDto) _then)
      : super(_value, (v) => _then(v as _$_GroupModelDto));

  @override
  _$_GroupModelDto get _value => super._value as _$_GroupModelDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? locationCount = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_GroupModelDto(
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
      locationCount: locationCount == freezed
          ? _value.locationCount
          : locationCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      required this.locationCount,
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
  final int locationCount;
  @override
  final String? description;

  @override
  String toString() {
    return 'GroupModelDto(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, locationCount: $locationCount, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupModelDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.locationCount, locationCount) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(locationCount),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_GroupModelDtoCopyWith<_$_GroupModelDto> get copyWith =>
      __$$_GroupModelDtoCopyWithImpl<_$_GroupModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupModelDtoToJson(
      this,
    );
  }
}

abstract class _GroupModelDto implements GroupModelDto {
  const factory _GroupModelDto(
      {required final String id,
      required final String name,
      required final String createdAt,
      required final String updatedAt,
      required final int locationCount,
      final String? description}) = _$_GroupModelDto;

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
  int get locationCount;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_GroupModelDtoCopyWith<_$_GroupModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateGroupPayload {
  String get name => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateGroupPayloadCopyWith<UpdateGroupPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGroupPayloadCopyWith<$Res> {
  factory $UpdateGroupPayloadCopyWith(
          UpdateGroupPayload value, $Res Function(UpdateGroupPayload) then) =
      _$UpdateGroupPayloadCopyWithImpl<$Res>;
  $Res call({String name, String updatedAt, String? description});
}

/// @nodoc
class _$UpdateGroupPayloadCopyWithImpl<$Res>
    implements $UpdateGroupPayloadCopyWith<$Res> {
  _$UpdateGroupPayloadCopyWithImpl(this._value, this._then);

  final UpdateGroupPayload _value;
  // ignore: unused_field
  final $Res Function(UpdateGroupPayload) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UpdateGroupPayloadCopyWith<$Res>
    implements $UpdateGroupPayloadCopyWith<$Res> {
  factory _$$_UpdateGroupPayloadCopyWith(_$_UpdateGroupPayload value,
          $Res Function(_$_UpdateGroupPayload) then) =
      __$$_UpdateGroupPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String name, String updatedAt, String? description});
}

/// @nodoc
class __$$_UpdateGroupPayloadCopyWithImpl<$Res>
    extends _$UpdateGroupPayloadCopyWithImpl<$Res>
    implements _$$_UpdateGroupPayloadCopyWith<$Res> {
  __$$_UpdateGroupPayloadCopyWithImpl(
      _$_UpdateGroupPayload _value, $Res Function(_$_UpdateGroupPayload) _then)
      : super(_value, (v) => _then(v as _$_UpdateGroupPayload));

  @override
  _$_UpdateGroupPayload get _value => super._value as _$_UpdateGroupPayload;

  @override
  $Res call({
    Object? name = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_UpdateGroupPayload(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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

class _$_UpdateGroupPayload implements _UpdateGroupPayload {
  const _$_UpdateGroupPayload(
      {required this.name, required this.updatedAt, this.description});

  @override
  final String name;
  @override
  final String updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'UpdateGroupPayload(name: $name, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateGroupPayload &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateGroupPayloadCopyWith<_$_UpdateGroupPayload> get copyWith =>
      __$$_UpdateGroupPayloadCopyWithImpl<_$_UpdateGroupPayload>(
          this, _$identity);
}

abstract class _UpdateGroupPayload implements UpdateGroupPayload {
  const factory _UpdateGroupPayload(
      {required final String name,
      required final String updatedAt,
      final String? description}) = _$_UpdateGroupPayload;

  @override
  String get name;
  @override
  String get updatedAt;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateGroupPayloadCopyWith<_$_UpdateGroupPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
