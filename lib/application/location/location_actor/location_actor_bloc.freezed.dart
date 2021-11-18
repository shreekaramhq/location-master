// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationActorEventTearOff {
  const _$LocationActorEventTearOff();

  _SaveLocation saveLocation(LocationModel locationModel) {
    return _SaveLocation(
      locationModel,
    );
  }

  _DeleteLocation deleteLocation(String locationId) {
    return _DeleteLocation(
      locationId,
    );
  }
}

/// @nodoc
const $LocationActorEvent = _$LocationActorEventTearOff();

/// @nodoc
mixin _$LocationActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel locationModel) saveLocation,
    required TResult Function(String locationId) deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String locationId)? deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String locationId)? deleteLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveLocation value) saveLocation,
    required TResult Function(_DeleteLocation value) deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SaveLocation value)? saveLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLocation value)? saveLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationActorEventCopyWith<$Res> {
  factory $LocationActorEventCopyWith(
          LocationActorEvent value, $Res Function(LocationActorEvent) then) =
      _$LocationActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationActorEventCopyWithImpl<$Res>
    implements $LocationActorEventCopyWith<$Res> {
  _$LocationActorEventCopyWithImpl(this._value, this._then);

  final LocationActorEvent _value;
  // ignore: unused_field
  final $Res Function(LocationActorEvent) _then;
}

/// @nodoc
abstract class _$SaveLocationCopyWith<$Res> {
  factory _$SaveLocationCopyWith(
          _SaveLocation value, $Res Function(_SaveLocation) then) =
      __$SaveLocationCopyWithImpl<$Res>;
  $Res call({LocationModel locationModel});

  $LocationModelCopyWith<$Res> get locationModel;
}

/// @nodoc
class __$SaveLocationCopyWithImpl<$Res>
    extends _$LocationActorEventCopyWithImpl<$Res>
    implements _$SaveLocationCopyWith<$Res> {
  __$SaveLocationCopyWithImpl(
      _SaveLocation _value, $Res Function(_SaveLocation) _then)
      : super(_value, (v) => _then(v as _SaveLocation));

  @override
  _SaveLocation get _value => super._value as _SaveLocation;

  @override
  $Res call({
    Object? locationModel = freezed,
  }) {
    return _then(_SaveLocation(
      locationModel == freezed
          ? _value.locationModel
          : locationModel // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }

  @override
  $LocationModelCopyWith<$Res> get locationModel {
    return $LocationModelCopyWith<$Res>(_value.locationModel, (value) {
      return _then(_value.copyWith(locationModel: value));
    });
  }
}

/// @nodoc

class _$_SaveLocation implements _SaveLocation {
  const _$_SaveLocation(this.locationModel);

  @override
  final LocationModel locationModel;

  @override
  String toString() {
    return 'LocationActorEvent.saveLocation(locationModel: $locationModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveLocation &&
            (identical(other.locationModel, locationModel) ||
                other.locationModel == locationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationModel);

  @JsonKey(ignore: true)
  @override
  _$SaveLocationCopyWith<_SaveLocation> get copyWith =>
      __$SaveLocationCopyWithImpl<_SaveLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel locationModel) saveLocation,
    required TResult Function(String locationId) deleteLocation,
  }) {
    return saveLocation(locationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String locationId)? deleteLocation,
  }) {
    return saveLocation?.call(locationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String locationId)? deleteLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(locationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveLocation value) saveLocation,
    required TResult Function(_DeleteLocation value) deleteLocation,
  }) {
    return saveLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SaveLocation value)? saveLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
  }) {
    return saveLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLocation value)? saveLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(this);
    }
    return orElse();
  }
}

abstract class _SaveLocation implements LocationActorEvent {
  const factory _SaveLocation(LocationModel locationModel) = _$_SaveLocation;

  LocationModel get locationModel;
  @JsonKey(ignore: true)
  _$SaveLocationCopyWith<_SaveLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteLocationCopyWith<$Res> {
  factory _$DeleteLocationCopyWith(
          _DeleteLocation value, $Res Function(_DeleteLocation) then) =
      __$DeleteLocationCopyWithImpl<$Res>;
  $Res call({String locationId});
}

/// @nodoc
class __$DeleteLocationCopyWithImpl<$Res>
    extends _$LocationActorEventCopyWithImpl<$Res>
    implements _$DeleteLocationCopyWith<$Res> {
  __$DeleteLocationCopyWithImpl(
      _DeleteLocation _value, $Res Function(_DeleteLocation) _then)
      : super(_value, (v) => _then(v as _DeleteLocation));

  @override
  _DeleteLocation get _value => super._value as _DeleteLocation;

  @override
  $Res call({
    Object? locationId = freezed,
  }) {
    return _then(_DeleteLocation(
      locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteLocation implements _DeleteLocation {
  const _$_DeleteLocation(this.locationId);

  @override
  final String locationId;

  @override
  String toString() {
    return 'LocationActorEvent.deleteLocation(locationId: $locationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteLocation &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationId);

  @JsonKey(ignore: true)
  @override
  _$DeleteLocationCopyWith<_DeleteLocation> get copyWith =>
      __$DeleteLocationCopyWithImpl<_DeleteLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel locationModel) saveLocation,
    required TResult Function(String locationId) deleteLocation,
  }) {
    return deleteLocation(locationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String locationId)? deleteLocation,
  }) {
    return deleteLocation?.call(locationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String locationId)? deleteLocation,
    required TResult orElse(),
  }) {
    if (deleteLocation != null) {
      return deleteLocation(locationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveLocation value) saveLocation,
    required TResult Function(_DeleteLocation value) deleteLocation,
  }) {
    return deleteLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SaveLocation value)? saveLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
  }) {
    return deleteLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLocation value)? saveLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
    required TResult orElse(),
  }) {
    if (deleteLocation != null) {
      return deleteLocation(this);
    }
    return orElse();
  }
}

abstract class _DeleteLocation implements LocationActorEvent {
  const factory _DeleteLocation(String locationId) = _$_DeleteLocation;

  String get locationId;
  @JsonKey(ignore: true)
  _$DeleteLocationCopyWith<_DeleteLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationActorStateTearOff {
  const _$LocationActorStateTearOff();

  Initial initial() {
    return const Initial();
  }

  IsLoading loading() {
    return const IsLoading();
  }

  IsDeleting deleting() {
    return const IsDeleting();
  }

  IsSaving saving() {
    return const IsSaving();
  }

  IsError error(String message) {
    return IsError(
      message,
    );
  }
}

/// @nodoc
const $LocationActorState = _$LocationActorStateTearOff();

/// @nodoc
mixin _$LocationActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleting,
    required TResult Function() saving,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsLoading value) loading,
    required TResult Function(IsDeleting value) deleting,
    required TResult Function(IsSaving value) saving,
    required TResult Function(IsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationActorStateCopyWith<$Res> {
  factory $LocationActorStateCopyWith(
          LocationActorState value, $Res Function(LocationActorState) then) =
      _$LocationActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationActorStateCopyWithImpl<$Res>
    implements $LocationActorStateCopyWith<$Res> {
  _$LocationActorStateCopyWithImpl(this._value, this._then);

  final LocationActorState _value;
  // ignore: unused_field
  final $Res Function(LocationActorState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$LocationActorStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'LocationActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleting,
    required TResult Function() saving,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsLoading value) loading,
    required TResult Function(IsDeleting value) deleting,
    required TResult Function(IsSaving value) saving,
    required TResult Function(IsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LocationActorState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $IsLoadingCopyWith<$Res> {
  factory $IsLoadingCopyWith(IsLoading value, $Res Function(IsLoading) then) =
      _$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsLoadingCopyWithImpl<$Res>
    extends _$LocationActorStateCopyWithImpl<$Res>
    implements $IsLoadingCopyWith<$Res> {
  _$IsLoadingCopyWithImpl(IsLoading _value, $Res Function(IsLoading) _then)
      : super(_value, (v) => _then(v as IsLoading));

  @override
  IsLoading get _value => super._value as IsLoading;
}

/// @nodoc

class _$IsLoading implements IsLoading {
  const _$IsLoading();

  @override
  String toString() {
    return 'LocationActorState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleting,
    required TResult Function() saving,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsLoading value) loading,
    required TResult Function(IsDeleting value) deleting,
    required TResult Function(IsSaving value) saving,
    required TResult Function(IsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class IsLoading implements LocationActorState {
  const factory IsLoading() = _$IsLoading;
}

/// @nodoc
abstract class $IsDeletingCopyWith<$Res> {
  factory $IsDeletingCopyWith(
          IsDeleting value, $Res Function(IsDeleting) then) =
      _$IsDeletingCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsDeletingCopyWithImpl<$Res>
    extends _$LocationActorStateCopyWithImpl<$Res>
    implements $IsDeletingCopyWith<$Res> {
  _$IsDeletingCopyWithImpl(IsDeleting _value, $Res Function(IsDeleting) _then)
      : super(_value, (v) => _then(v as IsDeleting));

  @override
  IsDeleting get _value => super._value as IsDeleting;
}

/// @nodoc

class _$IsDeleting implements IsDeleting {
  const _$IsDeleting();

  @override
  String toString() {
    return 'LocationActorState.deleting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IsDeleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleting,
    required TResult Function() saving,
    required TResult Function(String message) error,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
  }) {
    return deleting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsLoading value) loading,
    required TResult Function(IsDeleting value) deleting,
    required TResult Function(IsSaving value) saving,
    required TResult Function(IsError value) error,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class IsDeleting implements LocationActorState {
  const factory IsDeleting() = _$IsDeleting;
}

/// @nodoc
abstract class $IsSavingCopyWith<$Res> {
  factory $IsSavingCopyWith(IsSaving value, $Res Function(IsSaving) then) =
      _$IsSavingCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsSavingCopyWithImpl<$Res>
    extends _$LocationActorStateCopyWithImpl<$Res>
    implements $IsSavingCopyWith<$Res> {
  _$IsSavingCopyWithImpl(IsSaving _value, $Res Function(IsSaving) _then)
      : super(_value, (v) => _then(v as IsSaving));

  @override
  IsSaving get _value => super._value as IsSaving;
}

/// @nodoc

class _$IsSaving implements IsSaving {
  const _$IsSaving();

  @override
  String toString() {
    return 'LocationActorState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IsSaving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleting,
    required TResult Function() saving,
    required TResult Function(String message) error,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsLoading value) loading,
    required TResult Function(IsDeleting value) deleting,
    required TResult Function(IsSaving value) saving,
    required TResult Function(IsError value) error,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class IsSaving implements LocationActorState {
  const factory IsSaving() = _$IsSaving;
}

/// @nodoc
abstract class $IsErrorCopyWith<$Res> {
  factory $IsErrorCopyWith(IsError value, $Res Function(IsError) then) =
      _$IsErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$IsErrorCopyWithImpl<$Res> extends _$LocationActorStateCopyWithImpl<$Res>
    implements $IsErrorCopyWith<$Res> {
  _$IsErrorCopyWithImpl(IsError _value, $Res Function(IsError) _then)
      : super(_value, (v) => _then(v as IsError));

  @override
  IsError get _value => super._value as IsError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(IsError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsError implements IsError {
  const _$IsError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LocationActorState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IsError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $IsErrorCopyWith<IsError> get copyWith =>
      _$IsErrorCopyWithImpl<IsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleting,
    required TResult Function() saving,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleting,
    TResult Function()? saving,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsLoading value) loading,
    required TResult Function(IsDeleting value) deleting,
    required TResult Function(IsSaving value) saving,
    required TResult Function(IsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsLoading value)? loading,
    TResult Function(IsDeleting value)? deleting,
    TResult Function(IsSaving value)? saving,
    TResult Function(IsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class IsError implements LocationActorState {
  const factory IsError(String message) = _$IsError;

  String get message;
  @JsonKey(ignore: true)
  $IsErrorCopyWith<IsError> get copyWith => throw _privateConstructorUsedError;
}
