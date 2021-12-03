// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationWatcherEventTearOff {
  const _$LocationWatcherEventTearOff();

  _GetLocation getLocation(String groupId) {
    return _GetLocation(
      groupId,
    );
  }

  _GetLocations getLocations() {
    return const _GetLocations();
  }
}

/// @nodoc
const $LocationWatcherEvent = _$LocationWatcherEventTearOff();

/// @nodoc
mixin _$LocationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) getLocation,
    required TResult Function() getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? getLocation,
    TResult Function()? getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? getLocation,
    TResult Function()? getLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocation value) getLocation,
    required TResult Function(_GetLocations value) getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLocation value)? getLocation,
    TResult Function(_GetLocations value)? getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocation value)? getLocation,
    TResult Function(_GetLocations value)? getLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationWatcherEventCopyWith<$Res> {
  factory $LocationWatcherEventCopyWith(LocationWatcherEvent value,
          $Res Function(LocationWatcherEvent) then) =
      _$LocationWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationWatcherEventCopyWithImpl<$Res>
    implements $LocationWatcherEventCopyWith<$Res> {
  _$LocationWatcherEventCopyWithImpl(this._value, this._then);

  final LocationWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(LocationWatcherEvent) _then;
}

/// @nodoc
abstract class _$GetLocationCopyWith<$Res> {
  factory _$GetLocationCopyWith(
          _GetLocation value, $Res Function(_GetLocation) then) =
      __$GetLocationCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$GetLocationCopyWithImpl<$Res>
    extends _$LocationWatcherEventCopyWithImpl<$Res>
    implements _$GetLocationCopyWith<$Res> {
  __$GetLocationCopyWithImpl(
      _GetLocation _value, $Res Function(_GetLocation) _then)
      : super(_value, (v) => _then(v as _GetLocation));

  @override
  _GetLocation get _value => super._value as _GetLocation;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_GetLocation(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetLocation implements _GetLocation {
  const _$_GetLocation(this.groupId);

  @override
  final String groupId;

  @override
  String toString() {
    return 'LocationWatcherEvent.getLocation(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetLocation &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  _$GetLocationCopyWith<_GetLocation> get copyWith =>
      __$GetLocationCopyWithImpl<_GetLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) getLocation,
    required TResult Function() getLocations,
  }) {
    return getLocation(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? getLocation,
    TResult Function()? getLocations,
  }) {
    return getLocation?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? getLocation,
    TResult Function()? getLocations,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocation value) getLocation,
    required TResult Function(_GetLocations value) getLocations,
  }) {
    return getLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLocation value)? getLocation,
    TResult Function(_GetLocations value)? getLocations,
  }) {
    return getLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocation value)? getLocation,
    TResult Function(_GetLocations value)? getLocations,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation(this);
    }
    return orElse();
  }
}

abstract class _GetLocation implements LocationWatcherEvent {
  const factory _GetLocation(String groupId) = _$_GetLocation;

  String get groupId;
  @JsonKey(ignore: true)
  _$GetLocationCopyWith<_GetLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetLocationsCopyWith<$Res> {
  factory _$GetLocationsCopyWith(
          _GetLocations value, $Res Function(_GetLocations) then) =
      __$GetLocationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetLocationsCopyWithImpl<$Res>
    extends _$LocationWatcherEventCopyWithImpl<$Res>
    implements _$GetLocationsCopyWith<$Res> {
  __$GetLocationsCopyWithImpl(
      _GetLocations _value, $Res Function(_GetLocations) _then)
      : super(_value, (v) => _then(v as _GetLocations));

  @override
  _GetLocations get _value => super._value as _GetLocations;
}

/// @nodoc

class _$_GetLocations implements _GetLocations {
  const _$_GetLocations();

  @override
  String toString() {
    return 'LocationWatcherEvent.getLocations()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetLocations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) getLocation,
    required TResult Function() getLocations,
  }) {
    return getLocations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? getLocation,
    TResult Function()? getLocations,
  }) {
    return getLocations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? getLocation,
    TResult Function()? getLocations,
    required TResult orElse(),
  }) {
    if (getLocations != null) {
      return getLocations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocation value) getLocation,
    required TResult Function(_GetLocations value) getLocations,
  }) {
    return getLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLocation value)? getLocation,
    TResult Function(_GetLocations value)? getLocations,
  }) {
    return getLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocation value)? getLocation,
    TResult Function(_GetLocations value)? getLocations,
    required TResult orElse(),
  }) {
    if (getLocations != null) {
      return getLocations(this);
    }
    return orElse();
  }
}

abstract class _GetLocations implements LocationWatcherEvent {
  const factory _GetLocations() = _$_GetLocations;
}

/// @nodoc
class _$LocationWatcherStateTearOff {
  const _$LocationWatcherStateTearOff();

  InitialLocations initial() {
    return const InitialLocations();
  }

  LocationsLoading loading() {
    return const LocationsLoading();
  }

  LocationsEmpty empty() {
    return const LocationsEmpty();
  }

  Locations locations(List<LocationModel> locations) {
    return Locations(
      locations,
    );
  }

  LocationsError error() {
    return const LocationsError();
  }
}

/// @nodoc
const $LocationWatcherState = _$LocationWatcherStateTearOff();

/// @nodoc
mixin _$LocationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<LocationModel> locations) locations,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocations value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsEmpty value) empty,
    required TResult Function(Locations value) locations,
    required TResult Function(LocationsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationWatcherStateCopyWith<$Res> {
  factory $LocationWatcherStateCopyWith(LocationWatcherState value,
          $Res Function(LocationWatcherState) then) =
      _$LocationWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationWatcherStateCopyWithImpl<$Res>
    implements $LocationWatcherStateCopyWith<$Res> {
  _$LocationWatcherStateCopyWithImpl(this._value, this._then);

  final LocationWatcherState _value;
  // ignore: unused_field
  final $Res Function(LocationWatcherState) _then;
}

/// @nodoc
abstract class $InitialLocationsCopyWith<$Res> {
  factory $InitialLocationsCopyWith(
          InitialLocations value, $Res Function(InitialLocations) then) =
      _$InitialLocationsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialLocationsCopyWithImpl<$Res>
    extends _$LocationWatcherStateCopyWithImpl<$Res>
    implements $InitialLocationsCopyWith<$Res> {
  _$InitialLocationsCopyWithImpl(
      InitialLocations _value, $Res Function(InitialLocations) _then)
      : super(_value, (v) => _then(v as InitialLocations));

  @override
  InitialLocations get _value => super._value as InitialLocations;
}

/// @nodoc

class _$InitialLocations implements InitialLocations {
  const _$InitialLocations();

  @override
  String toString() {
    return 'LocationWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialLocations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<LocationModel> locations) locations,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
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
    required TResult Function(InitialLocations value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsEmpty value) empty,
    required TResult Function(Locations value) locations,
    required TResult Function(LocationsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLocations implements LocationWatcherState {
  const factory InitialLocations() = _$InitialLocations;
}

/// @nodoc
abstract class $LocationsLoadingCopyWith<$Res> {
  factory $LocationsLoadingCopyWith(
          LocationsLoading value, $Res Function(LocationsLoading) then) =
      _$LocationsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsLoadingCopyWithImpl<$Res>
    extends _$LocationWatcherStateCopyWithImpl<$Res>
    implements $LocationsLoadingCopyWith<$Res> {
  _$LocationsLoadingCopyWithImpl(
      LocationsLoading _value, $Res Function(LocationsLoading) _then)
      : super(_value, (v) => _then(v as LocationsLoading));

  @override
  LocationsLoading get _value => super._value as LocationsLoading;
}

/// @nodoc

class _$LocationsLoading implements LocationsLoading {
  const _$LocationsLoading();

  @override
  String toString() {
    return 'LocationWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocationsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<LocationModel> locations) locations,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
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
    required TResult Function(InitialLocations value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsEmpty value) empty,
    required TResult Function(Locations value) locations,
    required TResult Function(LocationsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationsLoading implements LocationWatcherState {
  const factory LocationsLoading() = _$LocationsLoading;
}

/// @nodoc
abstract class $LocationsEmptyCopyWith<$Res> {
  factory $LocationsEmptyCopyWith(
          LocationsEmpty value, $Res Function(LocationsEmpty) then) =
      _$LocationsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsEmptyCopyWithImpl<$Res>
    extends _$LocationWatcherStateCopyWithImpl<$Res>
    implements $LocationsEmptyCopyWith<$Res> {
  _$LocationsEmptyCopyWithImpl(
      LocationsEmpty _value, $Res Function(LocationsEmpty) _then)
      : super(_value, (v) => _then(v as LocationsEmpty));

  @override
  LocationsEmpty get _value => super._value as LocationsEmpty;
}

/// @nodoc

class _$LocationsEmpty implements LocationsEmpty {
  const _$LocationsEmpty();

  @override
  String toString() {
    return 'LocationWatcherState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocationsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<LocationModel> locations) locations,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocations value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsEmpty value) empty,
    required TResult Function(Locations value) locations,
    required TResult Function(LocationsError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class LocationsEmpty implements LocationWatcherState {
  const factory LocationsEmpty() = _$LocationsEmpty;
}

/// @nodoc
abstract class $LocationsCopyWith<$Res> {
  factory $LocationsCopyWith(Locations value, $Res Function(Locations) then) =
      _$LocationsCopyWithImpl<$Res>;
  $Res call({List<LocationModel> locations});
}

/// @nodoc
class _$LocationsCopyWithImpl<$Res>
    extends _$LocationWatcherStateCopyWithImpl<$Res>
    implements $LocationsCopyWith<$Res> {
  _$LocationsCopyWithImpl(Locations _value, $Res Function(Locations) _then)
      : super(_value, (v) => _then(v as Locations));

  @override
  Locations get _value => super._value as Locations;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(Locations(
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc

class _$Locations implements Locations {
  const _$Locations(this.locations);

  @override
  final List<LocationModel> locations;

  @override
  String toString() {
    return 'LocationWatcherState.locations(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Locations &&
            const DeepCollectionEquality().equals(other.locations, locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locations));

  @JsonKey(ignore: true)
  @override
  $LocationsCopyWith<Locations> get copyWith =>
      _$LocationsCopyWithImpl<Locations>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<LocationModel> locations) locations,
    required TResult Function() error,
  }) {
    return locations(this.locations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
  }) {
    return locations?.call(this.locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (locations != null) {
      return locations(this.locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocations value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsEmpty value) empty,
    required TResult Function(Locations value) locations,
    required TResult Function(LocationsError value) error,
  }) {
    return locations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
  }) {
    return locations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) {
    if (locations != null) {
      return locations(this);
    }
    return orElse();
  }
}

abstract class Locations implements LocationWatcherState {
  const factory Locations(List<LocationModel> locations) = _$Locations;

  List<LocationModel> get locations;
  @JsonKey(ignore: true)
  $LocationsCopyWith<Locations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsErrorCopyWith<$Res> {
  factory $LocationsErrorCopyWith(
          LocationsError value, $Res Function(LocationsError) then) =
      _$LocationsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsErrorCopyWithImpl<$Res>
    extends _$LocationWatcherStateCopyWithImpl<$Res>
    implements $LocationsErrorCopyWith<$Res> {
  _$LocationsErrorCopyWithImpl(
      LocationsError _value, $Res Function(LocationsError) _then)
      : super(_value, (v) => _then(v as LocationsError));

  @override
  LocationsError get _value => super._value as LocationsError;
}

/// @nodoc

class _$LocationsError implements LocationsError {
  const _$LocationsError();

  @override
  String toString() {
    return 'LocationWatcherState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocationsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<LocationModel> locations) locations,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<LocationModel> locations)? locations,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocations value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsEmpty value) empty,
    required TResult Function(Locations value) locations,
    required TResult Function(LocationsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocations value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsEmpty value)? empty,
    TResult Function(Locations value)? locations,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationsError implements LocationWatcherState {
  const factory LocationsError() = _$LocationsError;
}
