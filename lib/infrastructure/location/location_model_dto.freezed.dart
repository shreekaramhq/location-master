// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModelDto _$LocationModelDtoFromJson(Map<String, dynamic> json) {
  return _LocationModelDto.fromJson(json);
}

/// @nodoc
class _$LocationModelDtoTearOff {
  const _$LocationModelDtoTearOff();

  _LocationModelDto call(
      {required String id,
      required String name,
      required String latitude,
      required String longitude,
      required String createdAt,
      required String updatedAt,
      String? description}) {
    return _LocationModelDto(
      id: id,
      name: name,
      latitude: latitude,
      longitude: longitude,
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: description,
    );
  }

  LocationModelDto fromJson(Map<String, Object?> json) {
    return LocationModelDto.fromJson(json);
  }
}

/// @nodoc
const $LocationModelDto = _$LocationModelDtoTearOff();

/// @nodoc
mixin _$LocationModelDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
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
      String latitude,
      String longitude,
      String createdAt,
      String updatedAt,
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
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
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
abstract class _$LocationModelDtoCopyWith<$Res>
    implements $LocationModelDtoCopyWith<$Res> {
  factory _$LocationModelDtoCopyWith(
          _LocationModelDto value, $Res Function(_LocationModelDto) then) =
      __$LocationModelDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String latitude,
      String longitude,
      String createdAt,
      String updatedAt,
      String? description});
}

/// @nodoc
class __$LocationModelDtoCopyWithImpl<$Res>
    extends _$LocationModelDtoCopyWithImpl<$Res>
    implements _$LocationModelDtoCopyWith<$Res> {
  __$LocationModelDtoCopyWithImpl(
      _LocationModelDto _value, $Res Function(_LocationModelDto) _then)
      : super(_value, (v) => _then(v as _LocationModelDto));

  @override
  _LocationModelDto get _value => super._value as _LocationModelDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_LocationModelDto(
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
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
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
class _$_LocationModelDto implements _LocationModelDto {
  const _$_LocationModelDto(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.createdAt,
      required this.updatedAt,
      this.description});

  factory _$_LocationModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'LocationModelDto(id: $id, name: $name, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, latitude, longitude,
      createdAt, updatedAt, description);

  @JsonKey(ignore: true)
  @override
  _$LocationModelDtoCopyWith<_LocationModelDto> get copyWith =>
      __$LocationModelDtoCopyWithImpl<_LocationModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelDtoToJson(this);
  }
}

abstract class _LocationModelDto implements LocationModelDto {
  const factory _LocationModelDto(
      {required String id,
      required String name,
      required String latitude,
      required String longitude,
      required String createdAt,
      required String updatedAt,
      String? description}) = _$_LocationModelDto;

  factory _LocationModelDto.fromJson(Map<String, dynamic> json) =
      _$_LocationModelDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$LocationModelDtoCopyWith<_LocationModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
