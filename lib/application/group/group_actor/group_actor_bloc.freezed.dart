// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupActorEventTearOff {
  const _$GroupActorEventTearOff();

  _Started started() {
    return const _Started();
  }

  _CreateGroup createGroup(GroupModel group) {
    return _CreateGroup(
      group,
    );
  }

  _DeleteGroup deleteGroup(String groupId) {
    return _DeleteGroup(
      groupId,
    );
  }
}

/// @nodoc
const $GroupActorEvent = _$GroupActorEventTearOff();

/// @nodoc
mixin _$GroupActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GroupModel group) createGroup,
    required TResult Function(String groupId) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GroupModel group)? createGroup,
    TResult Function(String groupId)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GroupModel group)? createGroup,
    TResult Function(String groupId)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupActorEventCopyWith<$Res> {
  factory $GroupActorEventCopyWith(
          GroupActorEvent value, $Res Function(GroupActorEvent) then) =
      _$GroupActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupActorEventCopyWithImpl<$Res>
    implements $GroupActorEventCopyWith<$Res> {
  _$GroupActorEventCopyWithImpl(this._value, this._then);

  final GroupActorEvent _value;
  // ignore: unused_field
  final $Res Function(GroupActorEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$GroupActorEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'GroupActorEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GroupModel group) createGroup,
    required TResult Function(String groupId) deleteGroup,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GroupModel group)? createGroup,
    TResult Function(String groupId)? deleteGroup,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GroupModel group)? createGroup,
    TResult Function(String groupId)? deleteGroup,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GroupActorEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$CreateGroupCopyWith<$Res> {
  factory _$CreateGroupCopyWith(
          _CreateGroup value, $Res Function(_CreateGroup) then) =
      __$CreateGroupCopyWithImpl<$Res>;
  $Res call({GroupModel group});

  $GroupModelCopyWith<$Res> get group;
}

/// @nodoc
class __$CreateGroupCopyWithImpl<$Res>
    extends _$GroupActorEventCopyWithImpl<$Res>
    implements _$CreateGroupCopyWith<$Res> {
  __$CreateGroupCopyWithImpl(
      _CreateGroup _value, $Res Function(_CreateGroup) _then)
      : super(_value, (v) => _then(v as _CreateGroup));

  @override
  _CreateGroup get _value => super._value as _CreateGroup;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_CreateGroup(
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupModel,
    ));
  }

  @override
  $GroupModelCopyWith<$Res> get group {
    return $GroupModelCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$_CreateGroup implements _CreateGroup {
  const _$_CreateGroup(this.group);

  @override
  final GroupModel group;

  @override
  String toString() {
    return 'GroupActorEvent.createGroup(group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGroup &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  _$CreateGroupCopyWith<_CreateGroup> get copyWith =>
      __$CreateGroupCopyWithImpl<_CreateGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GroupModel group) createGroup,
    required TResult Function(String groupId) deleteGroup,
  }) {
    return createGroup(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GroupModel group)? createGroup,
    TResult Function(String groupId)? deleteGroup,
  }) {
    return createGroup?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GroupModel group)? createGroup,
    TResult Function(String groupId)? deleteGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class _CreateGroup implements GroupActorEvent {
  const factory _CreateGroup(GroupModel group) = _$_CreateGroup;

  GroupModel get group;
  @JsonKey(ignore: true)
  _$CreateGroupCopyWith<_CreateGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteGroupCopyWith<$Res> {
  factory _$DeleteGroupCopyWith(
          _DeleteGroup value, $Res Function(_DeleteGroup) then) =
      __$DeleteGroupCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$DeleteGroupCopyWithImpl<$Res>
    extends _$GroupActorEventCopyWithImpl<$Res>
    implements _$DeleteGroupCopyWith<$Res> {
  __$DeleteGroupCopyWithImpl(
      _DeleteGroup _value, $Res Function(_DeleteGroup) _then)
      : super(_value, (v) => _then(v as _DeleteGroup));

  @override
  _DeleteGroup get _value => super._value as _DeleteGroup;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_DeleteGroup(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteGroup implements _DeleteGroup {
  const _$_DeleteGroup(this.groupId);

  @override
  final String groupId;

  @override
  String toString() {
    return 'GroupActorEvent.deleteGroup(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteGroup &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  _$DeleteGroupCopyWith<_DeleteGroup> get copyWith =>
      __$DeleteGroupCopyWithImpl<_DeleteGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GroupModel group) createGroup,
    required TResult Function(String groupId) deleteGroup,
  }) {
    return deleteGroup(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GroupModel group)? createGroup,
    TResult Function(String groupId)? deleteGroup,
  }) {
    return deleteGroup?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GroupModel group)? createGroup,
    TResult Function(String groupId)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
  }) {
    return deleteGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
  }) {
    return deleteGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(this);
    }
    return orElse();
  }
}

abstract class _DeleteGroup implements GroupActorEvent {
  const factory _DeleteGroup(String groupId) = _$_DeleteGroup;

  String get groupId;
  @JsonKey(ignore: true)
  _$DeleteGroupCopyWith<_DeleteGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GroupActorStateTearOff {
  const _$GroupActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  GroupLoading loading() {
    return const GroupLoading();
  }

  GroupError error(String message) {
    return GroupError(
      message,
    );
  }

  GroupDeleting deleting() {
    return const GroupDeleting();
  }
}

/// @nodoc
const $GroupActorState = _$GroupActorStateTearOff();

/// @nodoc
mixin _$GroupActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() deleting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GroupLoading value) loading,
    required TResult Function(GroupError value) error,
    required TResult Function(GroupDeleting value) deleting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupActorStateCopyWith<$Res> {
  factory $GroupActorStateCopyWith(
          GroupActorState value, $Res Function(GroupActorState) then) =
      _$GroupActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupActorStateCopyWithImpl<$Res>
    implements $GroupActorStateCopyWith<$Res> {
  _$GroupActorStateCopyWithImpl(this._value, this._then);

  final GroupActorState _value;
  // ignore: unused_field
  final $Res Function(GroupActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GroupActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GroupActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() deleting,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
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
    required TResult Function(GroupLoading value) loading,
    required TResult Function(GroupError value) error,
    required TResult Function(GroupDeleting value) deleting,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GroupActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $GroupLoadingCopyWith<$Res> {
  factory $GroupLoadingCopyWith(
          GroupLoading value, $Res Function(GroupLoading) then) =
      _$GroupLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupLoadingCopyWithImpl<$Res>
    extends _$GroupActorStateCopyWithImpl<$Res>
    implements $GroupLoadingCopyWith<$Res> {
  _$GroupLoadingCopyWithImpl(
      GroupLoading _value, $Res Function(GroupLoading) _then)
      : super(_value, (v) => _then(v as GroupLoading));

  @override
  GroupLoading get _value => super._value as GroupLoading;
}

/// @nodoc

class _$GroupLoading implements GroupLoading {
  const _$GroupLoading();

  @override
  String toString() {
    return 'GroupActorState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GroupLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() deleting,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
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
    required TResult Function(GroupLoading value) loading,
    required TResult Function(GroupError value) error,
    required TResult Function(GroupDeleting value) deleting,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GroupLoading implements GroupActorState {
  const factory GroupLoading() = _$GroupLoading;
}

/// @nodoc
abstract class $GroupErrorCopyWith<$Res> {
  factory $GroupErrorCopyWith(
          GroupError value, $Res Function(GroupError) then) =
      _$GroupErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$GroupErrorCopyWithImpl<$Res> extends _$GroupActorStateCopyWithImpl<$Res>
    implements $GroupErrorCopyWith<$Res> {
  _$GroupErrorCopyWithImpl(GroupError _value, $Res Function(GroupError) _then)
      : super(_value, (v) => _then(v as GroupError));

  @override
  GroupError get _value => super._value as GroupError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(GroupError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GroupError implements GroupError {
  const _$GroupError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GroupActorState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroupError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $GroupErrorCopyWith<GroupError> get copyWith =>
      _$GroupErrorCopyWithImpl<GroupError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() deleting,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
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
    required TResult Function(GroupLoading value) loading,
    required TResult Function(GroupError value) error,
    required TResult Function(GroupDeleting value) deleting,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GroupError implements GroupActorState {
  const factory GroupError(String message) = _$GroupError;

  String get message;
  @JsonKey(ignore: true)
  $GroupErrorCopyWith<GroupError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDeletingCopyWith<$Res> {
  factory $GroupDeletingCopyWith(
          GroupDeleting value, $Res Function(GroupDeleting) then) =
      _$GroupDeletingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupDeletingCopyWithImpl<$Res>
    extends _$GroupActorStateCopyWithImpl<$Res>
    implements $GroupDeletingCopyWith<$Res> {
  _$GroupDeletingCopyWithImpl(
      GroupDeleting _value, $Res Function(GroupDeleting) _then)
      : super(_value, (v) => _then(v as GroupDeleting));

  @override
  GroupDeleting get _value => super._value as GroupDeleting;
}

/// @nodoc

class _$GroupDeleting implements GroupDeleting {
  const _$GroupDeleting();

  @override
  String toString() {
    return 'GroupActorState.deleting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GroupDeleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() deleting,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
  }) {
    return deleting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? deleting,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(GroupLoading value) loading,
    required TResult Function(GroupError value) error,
    required TResult Function(GroupDeleting value) deleting,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupError value)? error,
    TResult Function(GroupDeleting value)? deleting,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class GroupDeleting implements GroupActorState {
  const factory GroupDeleting() = _$GroupDeleting;
}
