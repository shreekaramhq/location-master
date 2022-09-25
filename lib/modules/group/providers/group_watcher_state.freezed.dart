// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_watcher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GroupModel> groups) groupsLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsEmpty value) empty,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupWatcherStateCopyWith<$Res> {
  factory $GroupWatcherStateCopyWith(
          GroupWatcherState value, $Res Function(GroupWatcherState) then) =
      _$GroupWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupWatcherStateCopyWithImpl<$Res>
    implements $GroupWatcherStateCopyWith<$Res> {
  _$GroupWatcherStateCopyWithImpl(this._value, this._then);

  final GroupWatcherState _value;
  // ignore: unused_field
  final $Res Function(GroupWatcherState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GroupWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GroupModel> groups) groupsLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsEmpty value) empty,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GroupWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$GroupsLoadingCopyWith<$Res> {
  factory _$$GroupsLoadingCopyWith(
          _$GroupsLoading value, $Res Function(_$GroupsLoading) then) =
      __$$GroupsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupsLoadingCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements _$$GroupsLoadingCopyWith<$Res> {
  __$$GroupsLoadingCopyWithImpl(
      _$GroupsLoading _value, $Res Function(_$GroupsLoading) _then)
      : super(_value, (v) => _then(v as _$GroupsLoading));

  @override
  _$GroupsLoading get _value => super._value as _$GroupsLoading;
}

/// @nodoc

class _$GroupsLoading implements GroupsLoading {
  const _$GroupsLoading();

  @override
  String toString() {
    return 'GroupWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GroupModel> groups) groupsLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsEmpty value) empty,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GroupsLoading implements GroupWatcherState {
  const factory GroupsLoading() = _$GroupsLoading;
}

/// @nodoc
abstract class _$$GroupsEmptyCopyWith<$Res> {
  factory _$$GroupsEmptyCopyWith(
          _$GroupsEmpty value, $Res Function(_$GroupsEmpty) then) =
      __$$GroupsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupsEmptyCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements _$$GroupsEmptyCopyWith<$Res> {
  __$$GroupsEmptyCopyWithImpl(
      _$GroupsEmpty _value, $Res Function(_$GroupsEmpty) _then)
      : super(_value, (v) => _then(v as _$GroupsEmpty));

  @override
  _$GroupsEmpty get _value => super._value as _$GroupsEmpty;
}

/// @nodoc

class _$GroupsEmpty implements GroupsEmpty {
  const _$GroupsEmpty();

  @override
  String toString() {
    return 'GroupWatcherState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GroupModel> groups) groupsLoaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsEmpty value) empty,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupsError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class GroupsEmpty implements GroupWatcherState {
  const factory GroupsEmpty() = _$GroupsEmpty;
}

/// @nodoc
abstract class _$$GroupsLoadedCopyWith<$Res> {
  factory _$$GroupsLoadedCopyWith(
          _$GroupsLoaded value, $Res Function(_$GroupsLoaded) then) =
      __$$GroupsLoadedCopyWithImpl<$Res>;
  $Res call({List<GroupModel> groups});
}

/// @nodoc
class __$$GroupsLoadedCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements _$$GroupsLoadedCopyWith<$Res> {
  __$$GroupsLoadedCopyWithImpl(
      _$GroupsLoaded _value, $Res Function(_$GroupsLoaded) _then)
      : super(_value, (v) => _then(v as _$GroupsLoaded));

  @override
  _$GroupsLoaded get _value => super._value as _$GroupsLoaded;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_$GroupsLoaded(
      groups == freezed
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
    ));
  }
}

/// @nodoc

class _$GroupsLoaded implements GroupsLoaded {
  const _$GroupsLoaded(final List<GroupModel> groups) : _groups = groups;

  final List<GroupModel> _groups;
  @override
  List<GroupModel> get groups {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'GroupWatcherState.groupsLoaded(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsLoaded &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  _$$GroupsLoadedCopyWith<_$GroupsLoaded> get copyWith =>
      __$$GroupsLoadedCopyWithImpl<_$GroupsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GroupModel> groups) groupsLoaded,
    required TResult Function(String message) error,
  }) {
    return groupsLoaded(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
    TResult Function(String message)? error,
  }) {
    return groupsLoaded?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (groupsLoaded != null) {
      return groupsLoaded(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsEmpty value) empty,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupsError value) error,
  }) {
    return groupsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
  }) {
    return groupsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
    required TResult orElse(),
  }) {
    if (groupsLoaded != null) {
      return groupsLoaded(this);
    }
    return orElse();
  }
}

abstract class GroupsLoaded implements GroupWatcherState {
  const factory GroupsLoaded(final List<GroupModel> groups) = _$GroupsLoaded;

  List<GroupModel> get groups;
  @JsonKey(ignore: true)
  _$$GroupsLoadedCopyWith<_$GroupsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupsErrorCopyWith<$Res> {
  factory _$$GroupsErrorCopyWith(
          _$GroupsError value, $Res Function(_$GroupsError) then) =
      __$$GroupsErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$GroupsErrorCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements _$$GroupsErrorCopyWith<$Res> {
  __$$GroupsErrorCopyWithImpl(
      _$GroupsError _value, $Res Function(_$GroupsError) _then)
      : super(_value, (v) => _then(v as _$GroupsError));

  @override
  _$GroupsError get _value => super._value as _$GroupsError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$GroupsError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GroupsError implements GroupsError {
  const _$GroupsError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GroupWatcherState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$GroupsErrorCopyWith<_$GroupsError> get copyWith =>
      __$$GroupsErrorCopyWithImpl<_$GroupsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GroupModel> groups) groupsLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GroupModel> groups)? groupsLoaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsEmpty value) empty,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsEmpty value)? empty,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GroupsError implements GroupWatcherState {
  const factory GroupsError(final String message) = _$GroupsError;

  String get message;
  @JsonKey(ignore: true)
  _$$GroupsErrorCopyWith<_$GroupsError> get copyWith =>
      throw _privateConstructorUsedError;
}
