// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
class _$LocationModelTearOff {
  const _$LocationModelTearOff();

  _LocationModel call(
      {required String id,
      required String name,
      required String latitude,
      required String longitude,
      required String groupId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? description}) {
    return _LocationModel(
      id: id,
      name: name,
      latitude: latitude,
      longitude: longitude,
      groupId: groupId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: description,
    );
  }

  LocationModel fromJson(Map<String, Object?> json) {
    return LocationModel.fromJson(json);
  }
}

/// @nodoc
const $LocationModel = _$LocationModelTearOff();

/// @nodoc
mixin _$LocationModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String latitude,
      String longitude,
      String groupId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  final LocationModel _value;
  // ignore: unused_field
  final $Res Function(LocationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? groupId = freezed,
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
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$LocationModelCopyWith(
          _LocationModel value, $Res Function(_LocationModel) then) =
      __$LocationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String latitude,
      String longitude,
      String groupId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res>
    implements _$LocationModelCopyWith<$Res> {
  __$LocationModelCopyWithImpl(
      _LocationModel _value, $Res Function(_LocationModel) _then)
      : super(_value, (v) => _then(v as _LocationModel));

  @override
  _LocationModel get _value => super._value as _LocationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? groupId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_LocationModel(
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
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  const _$_LocationModel(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.groupId,
      this.createdAt,
      this.updatedAt,
      this.description});

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String groupId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'LocationModel(id: $id, name: $name, latitude: $latitude, longitude: $longitude, groupId: $groupId, createdAt: $createdAt, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, latitude, longitude,
      groupId, createdAt, updatedAt, description);

  @JsonKey(ignore: true)
  @override
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      __$LocationModelCopyWithImpl<_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {required String id,
      required String name,
      required String latitude,
      required String longitude,
      required String groupId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? description}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get groupId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
