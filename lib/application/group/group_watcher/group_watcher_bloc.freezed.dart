// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupWatcherEventTearOff {
  const _$GroupWatcherEventTearOff();

  _GetGroups getGroups() {
    return const _GetGroups();
  }

  _AddGroup addGroup(GroupModel groupModel) {
    return _AddGroup(
      groupModel,
    );
  }
}

/// @nodoc
const $GroupWatcherEvent = _$GroupWatcherEventTearOff();

/// @nodoc
mixin _$GroupWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(GroupModel groupModel) addGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(GroupModel groupModel)? addGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(GroupModel groupModel)? addGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroups value) getGroups,
    required TResult Function(_AddGroup value) addGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_AddGroup value)? addGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_AddGroup value)? addGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupWatcherEventCopyWith<$Res> {
  factory $GroupWatcherEventCopyWith(
          GroupWatcherEvent value, $Res Function(GroupWatcherEvent) then) =
      _$GroupWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupWatcherEventCopyWithImpl<$Res>
    implements $GroupWatcherEventCopyWith<$Res> {
  _$GroupWatcherEventCopyWithImpl(this._value, this._then);

  final GroupWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(GroupWatcherEvent) _then;
}

/// @nodoc
abstract class _$GetGroupsCopyWith<$Res> {
  factory _$GetGroupsCopyWith(
          _GetGroups value, $Res Function(_GetGroups) then) =
      __$GetGroupsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGroupsCopyWithImpl<$Res>
    extends _$GroupWatcherEventCopyWithImpl<$Res>
    implements _$GetGroupsCopyWith<$Res> {
  __$GetGroupsCopyWithImpl(_GetGroups _value, $Res Function(_GetGroups) _then)
      : super(_value, (v) => _then(v as _GetGroups));

  @override
  _GetGroups get _value => super._value as _GetGroups;
}

/// @nodoc

class _$_GetGroups implements _GetGroups {
  const _$_GetGroups();

  @override
  String toString() {
    return 'GroupWatcherEvent.getGroups()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetGroups);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(GroupModel groupModel) addGroup,
  }) {
    return getGroups();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(GroupModel groupModel)? addGroup,
  }) {
    return getGroups?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(GroupModel groupModel)? addGroup,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroups value) getGroups,
    required TResult Function(_AddGroup value) addGroup,
  }) {
    return getGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_AddGroup value)? addGroup,
  }) {
    return getGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_AddGroup value)? addGroup,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups(this);
    }
    return orElse();
  }
}

abstract class _GetGroups implements GroupWatcherEvent {
  const factory _GetGroups() = _$_GetGroups;
}

/// @nodoc
abstract class _$AddGroupCopyWith<$Res> {
  factory _$AddGroupCopyWith(_AddGroup value, $Res Function(_AddGroup) then) =
      __$AddGroupCopyWithImpl<$Res>;
  $Res call({GroupModel groupModel});

  $GroupModelCopyWith<$Res> get groupModel;
}

/// @nodoc
class __$AddGroupCopyWithImpl<$Res>
    extends _$GroupWatcherEventCopyWithImpl<$Res>
    implements _$AddGroupCopyWith<$Res> {
  __$AddGroupCopyWithImpl(_AddGroup _value, $Res Function(_AddGroup) _then)
      : super(_value, (v) => _then(v as _AddGroup));

  @override
  _AddGroup get _value => super._value as _AddGroup;

  @override
  $Res call({
    Object? groupModel = freezed,
  }) {
    return _then(_AddGroup(
      groupModel == freezed
          ? _value.groupModel
          : groupModel // ignore: cast_nullable_to_non_nullable
              as GroupModel,
    ));
  }

  @override
  $GroupModelCopyWith<$Res> get groupModel {
    return $GroupModelCopyWith<$Res>(_value.groupModel, (value) {
      return _then(_value.copyWith(groupModel: value));
    });
  }
}

/// @nodoc

class _$_AddGroup implements _AddGroup {
  const _$_AddGroup(this.groupModel);

  @override
  final GroupModel groupModel;

  @override
  String toString() {
    return 'GroupWatcherEvent.addGroup(groupModel: $groupModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddGroup &&
            (identical(other.groupModel, groupModel) ||
                other.groupModel == groupModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupModel);

  @JsonKey(ignore: true)
  @override
  _$AddGroupCopyWith<_AddGroup> get copyWith =>
      __$AddGroupCopyWithImpl<_AddGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(GroupModel groupModel) addGroup,
  }) {
    return addGroup(groupModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(GroupModel groupModel)? addGroup,
  }) {
    return addGroup?.call(groupModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(GroupModel groupModel)? addGroup,
    required TResult orElse(),
  }) {
    if (addGroup != null) {
      return addGroup(groupModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroups value) getGroups,
    required TResult Function(_AddGroup value) addGroup,
  }) {
    return addGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_AddGroup value)? addGroup,
  }) {
    return addGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_AddGroup value)? addGroup,
    required TResult orElse(),
  }) {
    if (addGroup != null) {
      return addGroup(this);
    }
    return orElse();
  }
}

abstract class _AddGroup implements GroupWatcherEvent {
  const factory _AddGroup(GroupModel groupModel) = _$_AddGroup;

  GroupModel get groupModel;
  @JsonKey(ignore: true)
  _$AddGroupCopyWith<_AddGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GroupWatcherStateTearOff {
  const _$GroupWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  GroupsLoading loading() {
    return const GroupsLoading();
  }

  GroupsEmpty empty() {
    return const GroupsEmpty();
  }

  GroupsLoaded groupsLoaded(List<GroupModel> groups) {
    return GroupsLoaded(
      groups,
    );
  }

  GroupsError error(String message) {
    return GroupsError(
      message,
    );
  }
}

/// @nodoc
const $GroupWatcherState = _$GroupWatcherStateTearOff();

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
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GroupWatcherStateCopyWithImpl<$Res>
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
    return 'GroupWatcherState.initial()';
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
abstract class $GroupsLoadingCopyWith<$Res> {
  factory $GroupsLoadingCopyWith(
          GroupsLoading value, $Res Function(GroupsLoading) then) =
      _$GroupsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupsLoadingCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements $GroupsLoadingCopyWith<$Res> {
  _$GroupsLoadingCopyWithImpl(
      GroupsLoading _value, $Res Function(GroupsLoading) _then)
      : super(_value, (v) => _then(v as GroupsLoading));

  @override
  GroupsLoading get _value => super._value as GroupsLoading;
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
        (other.runtimeType == runtimeType && other is GroupsLoading);
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
abstract class $GroupsEmptyCopyWith<$Res> {
  factory $GroupsEmptyCopyWith(
          GroupsEmpty value, $Res Function(GroupsEmpty) then) =
      _$GroupsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupsEmptyCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements $GroupsEmptyCopyWith<$Res> {
  _$GroupsEmptyCopyWithImpl(
      GroupsEmpty _value, $Res Function(GroupsEmpty) _then)
      : super(_value, (v) => _then(v as GroupsEmpty));

  @override
  GroupsEmpty get _value => super._value as GroupsEmpty;
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
        (other.runtimeType == runtimeType && other is GroupsEmpty);
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
abstract class $GroupsLoadedCopyWith<$Res> {
  factory $GroupsLoadedCopyWith(
          GroupsLoaded value, $Res Function(GroupsLoaded) then) =
      _$GroupsLoadedCopyWithImpl<$Res>;
  $Res call({List<GroupModel> groups});
}

/// @nodoc
class _$GroupsLoadedCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements $GroupsLoadedCopyWith<$Res> {
  _$GroupsLoadedCopyWithImpl(
      GroupsLoaded _value, $Res Function(GroupsLoaded) _then)
      : super(_value, (v) => _then(v as GroupsLoaded));

  @override
  GroupsLoaded get _value => super._value as GroupsLoaded;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(GroupsLoaded(
      groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
    ));
  }
}

/// @nodoc

class _$GroupsLoaded implements GroupsLoaded {
  const _$GroupsLoaded(this.groups);

  @override
  final List<GroupModel> groups;

  @override
  String toString() {
    return 'GroupWatcherState.groupsLoaded(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroupsLoaded &&
            const DeepCollectionEquality().equals(other.groups, groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groups));

  @JsonKey(ignore: true)
  @override
  $GroupsLoadedCopyWith<GroupsLoaded> get copyWith =>
      _$GroupsLoadedCopyWithImpl<GroupsLoaded>(this, _$identity);

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
  const factory GroupsLoaded(List<GroupModel> groups) = _$GroupsLoaded;

  List<GroupModel> get groups;
  @JsonKey(ignore: true)
  $GroupsLoadedCopyWith<GroupsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsErrorCopyWith<$Res> {
  factory $GroupsErrorCopyWith(
          GroupsError value, $Res Function(GroupsError) then) =
      _$GroupsErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$GroupsErrorCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements $GroupsErrorCopyWith<$Res> {
  _$GroupsErrorCopyWithImpl(
      GroupsError _value, $Res Function(GroupsError) _then)
      : super(_value, (v) => _then(v as GroupsError));

  @override
  GroupsError get _value => super._value as GroupsError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(GroupsError(
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
            other is GroupsError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $GroupsErrorCopyWith<GroupsError> get copyWith =>
      _$GroupsErrorCopyWithImpl<GroupsError>(this, _$identity);

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
  const factory GroupsError(String message) = _$GroupsError;

  String get message;
  @JsonKey(ignore: true)
  $GroupsErrorCopyWith<GroupsError> get copyWith =>
      throw _privateConstructorUsedError;
}
