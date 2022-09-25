// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stream_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StreamResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) created,
    required TResult Function(T? value) updated,
    required TResult Function(String value) deleted,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamResultCreated<T> value) created,
    required TResult Function(StreamResultUpdated<T> value) updated,
    required TResult Function(StreamResultDeleted<T> value) deleted,
    required TResult Function(StreamResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamResultCopyWith<T, $Res> {
  factory $StreamResultCopyWith(
          StreamResult<T> value, $Res Function(StreamResult<T>) then) =
      _$StreamResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$StreamResultCopyWithImpl<T, $Res>
    implements $StreamResultCopyWith<T, $Res> {
  _$StreamResultCopyWithImpl(this._value, this._then);

  final StreamResult<T> _value;
  // ignore: unused_field
  final $Res Function(StreamResult<T>) _then;
}

/// @nodoc
abstract class _$$StreamResultCreatedCopyWith<T, $Res> {
  factory _$$StreamResultCreatedCopyWith(_$StreamResultCreated<T> value,
          $Res Function(_$StreamResultCreated<T>) then) =
      __$$StreamResultCreatedCopyWithImpl<T, $Res>;
  $Res call({T? value});
}

/// @nodoc
class __$$StreamResultCreatedCopyWithImpl<T, $Res>
    extends _$StreamResultCopyWithImpl<T, $Res>
    implements _$$StreamResultCreatedCopyWith<T, $Res> {
  __$$StreamResultCreatedCopyWithImpl(_$StreamResultCreated<T> _value,
      $Res Function(_$StreamResultCreated<T>) _then)
      : super(_value, (v) => _then(v as _$StreamResultCreated<T>));

  @override
  _$StreamResultCreated<T> get _value =>
      super._value as _$StreamResultCreated<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StreamResultCreated<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$StreamResultCreated<T> implements StreamResultCreated<T> {
  _$StreamResultCreated(this.value);

  @override
  final T? value;

  @override
  String toString() {
    return 'StreamResult<$T>.created(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamResultCreated<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$StreamResultCreatedCopyWith<T, _$StreamResultCreated<T>> get copyWith =>
      __$$StreamResultCreatedCopyWithImpl<T, _$StreamResultCreated<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) created,
    required TResult Function(T? value) updated,
    required TResult Function(String value) deleted,
    required TResult Function(Error value) error,
  }) {
    return created(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
  }) {
    return created?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamResultCreated<T> value) created,
    required TResult Function(StreamResultUpdated<T> value) updated,
    required TResult Function(StreamResultDeleted<T> value) deleted,
    required TResult Function(StreamResultError<T> value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class StreamResultCreated<T> implements StreamResult<T> {
  factory StreamResultCreated(final T? value) = _$StreamResultCreated<T>;

  T? get value;
  @JsonKey(ignore: true)
  _$$StreamResultCreatedCopyWith<T, _$StreamResultCreated<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StreamResultUpdatedCopyWith<T, $Res> {
  factory _$$StreamResultUpdatedCopyWith(_$StreamResultUpdated<T> value,
          $Res Function(_$StreamResultUpdated<T>) then) =
      __$$StreamResultUpdatedCopyWithImpl<T, $Res>;
  $Res call({T? value});
}

/// @nodoc
class __$$StreamResultUpdatedCopyWithImpl<T, $Res>
    extends _$StreamResultCopyWithImpl<T, $Res>
    implements _$$StreamResultUpdatedCopyWith<T, $Res> {
  __$$StreamResultUpdatedCopyWithImpl(_$StreamResultUpdated<T> _value,
      $Res Function(_$StreamResultUpdated<T>) _then)
      : super(_value, (v) => _then(v as _$StreamResultUpdated<T>));

  @override
  _$StreamResultUpdated<T> get _value =>
      super._value as _$StreamResultUpdated<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StreamResultUpdated<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$StreamResultUpdated<T> implements StreamResultUpdated<T> {
  _$StreamResultUpdated(this.value);

  @override
  final T? value;

  @override
  String toString() {
    return 'StreamResult<$T>.updated(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamResultUpdated<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$StreamResultUpdatedCopyWith<T, _$StreamResultUpdated<T>> get copyWith =>
      __$$StreamResultUpdatedCopyWithImpl<T, _$StreamResultUpdated<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) created,
    required TResult Function(T? value) updated,
    required TResult Function(String value) deleted,
    required TResult Function(Error value) error,
  }) {
    return updated(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
  }) {
    return updated?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamResultCreated<T> value) created,
    required TResult Function(StreamResultUpdated<T> value) updated,
    required TResult Function(StreamResultDeleted<T> value) deleted,
    required TResult Function(StreamResultError<T> value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class StreamResultUpdated<T> implements StreamResult<T> {
  factory StreamResultUpdated(final T? value) = _$StreamResultUpdated<T>;

  T? get value;
  @JsonKey(ignore: true)
  _$$StreamResultUpdatedCopyWith<T, _$StreamResultUpdated<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StreamResultDeletedCopyWith<T, $Res> {
  factory _$$StreamResultDeletedCopyWith(_$StreamResultDeleted<T> value,
          $Res Function(_$StreamResultDeleted<T>) then) =
      __$$StreamResultDeletedCopyWithImpl<T, $Res>;
  $Res call({String value});
}

/// @nodoc
class __$$StreamResultDeletedCopyWithImpl<T, $Res>
    extends _$StreamResultCopyWithImpl<T, $Res>
    implements _$$StreamResultDeletedCopyWith<T, $Res> {
  __$$StreamResultDeletedCopyWithImpl(_$StreamResultDeleted<T> _value,
      $Res Function(_$StreamResultDeleted<T>) _then)
      : super(_value, (v) => _then(v as _$StreamResultDeleted<T>));

  @override
  _$StreamResultDeleted<T> get _value =>
      super._value as _$StreamResultDeleted<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StreamResultDeleted<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StreamResultDeleted<T> implements StreamResultDeleted<T> {
  _$StreamResultDeleted(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'StreamResult<$T>.deleted(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamResultDeleted<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$StreamResultDeletedCopyWith<T, _$StreamResultDeleted<T>> get copyWith =>
      __$$StreamResultDeletedCopyWithImpl<T, _$StreamResultDeleted<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) created,
    required TResult Function(T? value) updated,
    required TResult Function(String value) deleted,
    required TResult Function(Error value) error,
  }) {
    return deleted(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
  }) {
    return deleted?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamResultCreated<T> value) created,
    required TResult Function(StreamResultUpdated<T> value) updated,
    required TResult Function(StreamResultDeleted<T> value) deleted,
    required TResult Function(StreamResultError<T> value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class StreamResultDeleted<T> implements StreamResult<T> {
  factory StreamResultDeleted(final String value) = _$StreamResultDeleted<T>;

  String get value;
  @JsonKey(ignore: true)
  _$$StreamResultDeletedCopyWith<T, _$StreamResultDeleted<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StreamResultErrorCopyWith<T, $Res> {
  factory _$$StreamResultErrorCopyWith(_$StreamResultError<T> value,
          $Res Function(_$StreamResultError<T>) then) =
      __$$StreamResultErrorCopyWithImpl<T, $Res>;
  $Res call({Error value});
}

/// @nodoc
class __$$StreamResultErrorCopyWithImpl<T, $Res>
    extends _$StreamResultCopyWithImpl<T, $Res>
    implements _$$StreamResultErrorCopyWith<T, $Res> {
  __$$StreamResultErrorCopyWithImpl(_$StreamResultError<T> _value,
      $Res Function(_$StreamResultError<T>) _then)
      : super(_value, (v) => _then(v as _$StreamResultError<T>));

  @override
  _$StreamResultError<T> get _value => super._value as _$StreamResultError<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StreamResultError<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$StreamResultError<T> implements StreamResultError<T> {
  _$StreamResultError(this.value);

  @override
  final Error value;

  @override
  String toString() {
    return 'StreamResult<$T>.error(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamResultError<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$StreamResultErrorCopyWith<T, _$StreamResultError<T>> get copyWith =>
      __$$StreamResultErrorCopyWithImpl<T, _$StreamResultError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) created,
    required TResult Function(T? value) updated,
    required TResult Function(String value) deleted,
    required TResult Function(Error value) error,
  }) {
    return error(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
  }) {
    return error?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? created,
    TResult Function(T? value)? updated,
    TResult Function(String value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamResultCreated<T> value) created,
    required TResult Function(StreamResultUpdated<T> value) updated,
    required TResult Function(StreamResultDeleted<T> value) deleted,
    required TResult Function(StreamResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamResultCreated<T> value)? created,
    TResult Function(StreamResultUpdated<T> value)? updated,
    TResult Function(StreamResultDeleted<T> value)? deleted,
    TResult Function(StreamResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StreamResultError<T> implements StreamResult<T> {
  factory StreamResultError(final Error value) = _$StreamResultError<T>;

  Error get value;
  @JsonKey(ignore: true)
  _$$StreamResultErrorCopyWith<T, _$StreamResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
