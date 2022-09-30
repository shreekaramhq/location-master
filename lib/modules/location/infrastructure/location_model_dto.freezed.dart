// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateLocationPayload {
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateLocationPayloadCopyWith<CreateLocationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLocationPayloadCopyWith<$Res> {
  factory $CreateLocationPayloadCopyWith(CreateLocationPayload value,
          $Res Function(CreateLocationPayload) then) =
      _$CreateLocationPayloadCopyWithImpl<$Res>;
  $Res call(
      {String name,
      double latitude,
      double longitude,
      String groupId,
      String? description});
}

/// @nodoc
class _$CreateLocationPayloadCopyWithImpl<$Res>
    implements $CreateLocationPayloadCopyWith<$Res> {
  _$CreateLocationPayloadCopyWithImpl(this._value, this._then);

  final CreateLocationPayload _value;
  // ignore: unused_field
  final $Res Function(CreateLocationPayload) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? groupId = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateLocationPayloadCopyWith<$Res>
    implements $CreateLocationPayloadCopyWith<$Res> {
  factory _$$_CreateLocationPayloadCopyWith(_$_CreateLocationPayload value,
          $Res Function(_$_CreateLocationPayload) then) =
      __$$_CreateLocationPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      double latitude,
      double longitude,
      String groupId,
      String? description});
}

/// @nodoc
class __$$_CreateLocationPayloadCopyWithImpl<$Res>
    extends _$CreateLocationPayloadCopyWithImpl<$Res>
    implements _$$_CreateLocationPayloadCopyWith<$Res> {
  __$$_CreateLocationPayloadCopyWithImpl(_$_CreateLocationPayload _value,
      $Res Function(_$_CreateLocationPayload) _then)
      : super(_value, (v) => _then(v as _$_CreateLocationPayload));

  @override
  _$_CreateLocationPayload get _value =>
      super._value as _$_CreateLocationPayload;

  @override
  $Res call({
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? groupId = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_CreateLocationPayload(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CreateLocationPayload implements _CreateLocationPayload {
  const _$_CreateLocationPayload(
      {required this.name,
      required this.latitude,
      required this.longitude,
      required this.groupId,
      this.description});

  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String groupId;
  @override
  final String? description;

  @override
  String toString() {
    return 'CreateLocationPayload(name: $name, latitude: $latitude, longitude: $longitude, groupId: $groupId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateLocationPayload &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_CreateLocationPayloadCopyWith<_$_CreateLocationPayload> get copyWith =>
      __$$_CreateLocationPayloadCopyWithImpl<_$_CreateLocationPayload>(
          this, _$identity);
}

abstract class _CreateLocationPayload implements CreateLocationPayload {
  const factory _CreateLocationPayload(
      {required final String name,
      required final double latitude,
      required final double longitude,
      required final String groupId,
      final String? description}) = _$_CreateLocationPayload;

  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get groupId;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_CreateLocationPayloadCopyWith<_$_CreateLocationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateLocationPayload {
  String get id => throw _privateConstructorUsedError;
  String get name =>
      throw _privateConstructorUsedError; // required double latitude,
// required double longitude,
// required String groupId,
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateLocationPayloadCopyWith<UpdateLocationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateLocationPayloadCopyWith<$Res> {
  factory $UpdateLocationPayloadCopyWith(UpdateLocationPayload value,
          $Res Function(UpdateLocationPayload) then) =
      _$UpdateLocationPayloadCopyWithImpl<$Res>;
  $Res call({String id, String name, String? description});
}

/// @nodoc
class _$UpdateLocationPayloadCopyWithImpl<$Res>
    implements $UpdateLocationPayloadCopyWith<$Res> {
  _$UpdateLocationPayloadCopyWithImpl(this._value, this._then);

  final UpdateLocationPayload _value;
  // ignore: unused_field
  final $Res Function(UpdateLocationPayload) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UpdateLocationPayloadCopyWith<$Res>
    implements $UpdateLocationPayloadCopyWith<$Res> {
  factory _$$_UpdateLocationPayloadCopyWith(_$_UpdateLocationPayload value,
          $Res Function(_$_UpdateLocationPayload) then) =
      __$$_UpdateLocationPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String? description});
}

/// @nodoc
class __$$_UpdateLocationPayloadCopyWithImpl<$Res>
    extends _$UpdateLocationPayloadCopyWithImpl<$Res>
    implements _$$_UpdateLocationPayloadCopyWith<$Res> {
  __$$_UpdateLocationPayloadCopyWithImpl(_$_UpdateLocationPayload _value,
      $Res Function(_$_UpdateLocationPayload) _then)
      : super(_value, (v) => _then(v as _$_UpdateLocationPayload));

  @override
  _$_UpdateLocationPayload get _value =>
      super._value as _$_UpdateLocationPayload;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_UpdateLocationPayload(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateLocationPayload implements _UpdateLocationPayload {
  const _$_UpdateLocationPayload(
      {required this.id, required this.name, this.description});

  @override
  final String id;
  @override
  final String name;
// required double latitude,
// required double longitude,
// required String groupId,
  @override
  final String? description;

  @override
  String toString() {
    return 'UpdateLocationPayload(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateLocationPayload &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateLocationPayloadCopyWith<_$_UpdateLocationPayload> get copyWith =>
      __$$_UpdateLocationPayloadCopyWithImpl<_$_UpdateLocationPayload>(
          this, _$identity);
}

abstract class _UpdateLocationPayload implements UpdateLocationPayload {
  const factory _UpdateLocationPayload(
      {required final String id,
      required final String name,
      final String? description}) = _$_UpdateLocationPayload;

  @override
  String get id;
  @override
  String get name;
  @override // required double latitude,
// required double longitude,
// required String groupId,
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateLocationPayloadCopyWith<_$_UpdateLocationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModelDto _$LocationModelDtoFromJson(Map<String, dynamic> json) {
  return _LocationModelDto.fromJson(json);
}

/// @nodoc
mixin _$LocationModelDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelDtoCopyWith<LocationModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelDtoCopyWith<$Res> {
  factory $LocationModelDtoCopyWith(
          LocationModelDto value, $Res Function(LocationModelDto) then) =
      _$LocationModelDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      double latitude,
      double longitude,
      String createdAt,
      String updatedAt,
      String groupId,
      String? description});
}

/// @nodoc
class _$LocationModelDtoCopyWithImpl<$Res>
    implements $LocationModelDtoCopyWith<$Res> {
  _$LocationModelDtoCopyWithImpl(this._value, this._then);

  final LocationModelDto _value;
  // ignore: unused_field
  final $Res Function(LocationModelDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupId = freezed,
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
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationModelDtoCopyWith<$Res>
    implements $LocationModelDtoCopyWith<$Res> {
  factory _$$_LocationModelDtoCopyWith(
          _$_LocationModelDto value, $Res Function(_$_LocationModelDto) then) =
      __$$_LocationModelDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      double latitude,
      double longitude,
      String createdAt,
      String updatedAt,
      String groupId,
      String? description});
}

/// @nodoc
class __$$_LocationModelDtoCopyWithImpl<$Res>
    extends _$LocationModelDtoCopyWithImpl<$Res>
    implements _$$_LocationModelDtoCopyWith<$Res> {
  __$$_LocationModelDtoCopyWithImpl(
      _$_LocationModelDto _value, $Res Function(_$_LocationModelDto) _then)
      : super(_value, (v) => _then(v as _$_LocationModelDto));

  @override
  _$_LocationModelDto get _value => super._value as _$_LocationModelDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupId = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_LocationModelDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
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
class _$_LocationModelDto implements _LocationModelDto {
  const _$_LocationModelDto(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.createdAt,
      required this.updatedAt,
      required this.groupId,
      this.description});

  factory _$_LocationModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String groupId;
  @override
  final String? description;

  @override
  String toString() {
    return 'LocationModelDto(id: $id, name: $name, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, groupId: $groupId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationModelDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_LocationModelDtoCopyWith<_$_LocationModelDto> get copyWith =>
      __$$_LocationModelDtoCopyWithImpl<_$_LocationModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelDtoToJson(
      this,
    );
  }
}

abstract class _LocationModelDto implements LocationModelDto {
  const factory _LocationModelDto(
      {required final String id,
      required final String name,
      required final double latitude,
      required final double longitude,
      required final String createdAt,
      required final String updatedAt,
      required final String groupId,
      final String? description}) = _$_LocationModelDto;

  factory _LocationModelDto.fromJson(Map<String, dynamic> json) =
      _$_LocationModelDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get groupId;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_LocationModelDtoCopyWith<_$_LocationModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
