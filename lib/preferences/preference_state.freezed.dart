// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'preference_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreferenceState {
  AppTheme get theme => throw _privateConstructorUsedError;
  bool get isFirstInstall => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreferenceStateCopyWith<PreferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceStateCopyWith<$Res> {
  factory $PreferenceStateCopyWith(
          PreferenceState value, $Res Function(PreferenceState) then) =
      _$PreferenceStateCopyWithImpl<$Res>;
  $Res call({AppTheme theme, bool isFirstInstall});
}

/// @nodoc
class _$PreferenceStateCopyWithImpl<$Res>
    implements $PreferenceStateCopyWith<$Res> {
  _$PreferenceStateCopyWithImpl(this._value, this._then);

  final PreferenceState _value;
  // ignore: unused_field
  final $Res Function(PreferenceState) _then;

  @override
  $Res call({
    Object? theme = freezed,
    Object? isFirstInstall = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      isFirstInstall: isFirstInstall == freezed
          ? _value.isFirstInstall
          : isFirstInstall // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PreferenceStateCopyWith<$Res>
    implements $PreferenceStateCopyWith<$Res> {
  factory _$$_PreferenceStateCopyWith(
          _$_PreferenceState value, $Res Function(_$_PreferenceState) then) =
      __$$_PreferenceStateCopyWithImpl<$Res>;
  @override
  $Res call({AppTheme theme, bool isFirstInstall});
}

/// @nodoc
class __$$_PreferenceStateCopyWithImpl<$Res>
    extends _$PreferenceStateCopyWithImpl<$Res>
    implements _$$_PreferenceStateCopyWith<$Res> {
  __$$_PreferenceStateCopyWithImpl(
      _$_PreferenceState _value, $Res Function(_$_PreferenceState) _then)
      : super(_value, (v) => _then(v as _$_PreferenceState));

  @override
  _$_PreferenceState get _value => super._value as _$_PreferenceState;

  @override
  $Res call({
    Object? theme = freezed,
    Object? isFirstInstall = freezed,
  }) {
    return _then(_$_PreferenceState(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      isFirstInstall: isFirstInstall == freezed
          ? _value.isFirstInstall
          : isFirstInstall // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PreferenceState implements _PreferenceState {
  const _$_PreferenceState({required this.theme, required this.isFirstInstall});

  @override
  final AppTheme theme;
  @override
  final bool isFirstInstall;

  @override
  String toString() {
    return 'PreferenceState(theme: $theme, isFirstInstall: $isFirstInstall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferenceState &&
            const DeepCollectionEquality().equals(other.theme, theme) &&
            const DeepCollectionEquality()
                .equals(other.isFirstInstall, isFirstInstall));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(theme),
      const DeepCollectionEquality().hash(isFirstInstall));

  @JsonKey(ignore: true)
  @override
  _$$_PreferenceStateCopyWith<_$_PreferenceState> get copyWith =>
      __$$_PreferenceStateCopyWithImpl<_$_PreferenceState>(this, _$identity);
}

abstract class _PreferenceState implements PreferenceState {
  const factory _PreferenceState(
      {required final AppTheme theme,
      required final bool isFirstInstall}) = _$_PreferenceState;

  @override
  AppTheme get theme;
  @override
  bool get isFirstInstall;
  @override
  @JsonKey(ignore: true)
  _$$_PreferenceStateCopyWith<_$_PreferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}
