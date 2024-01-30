// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Resource<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data, String? test) loading,
    required TResult Function(String error, T? data) error,
    required TResult Function(T data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data, String? test)? loading,
    TResult? Function(String error, T? data)? error,
    TResult? Function(T data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data, String? test)? loading,
    TResult Function(String error, T? data)? error,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceError<T> value) error,
    required TResult Function(ResourceSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceError<T> value)? error,
    TResult? Function(ResourceSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceError<T> value)? error,
    TResult Function(ResourceSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<T, $Res> {
  factory $ResourceCopyWith(
          Resource<T> value, $Res Function(Resource<T>) then) =
      _$ResourceCopyWithImpl<T, $Res, Resource<T>>;
}

/// @nodoc
class _$ResourceCopyWithImpl<T, $Res, $Val extends Resource<T>>
    implements $ResourceCopyWith<T, $Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResourceInitialCopyWith<T, $Res> {
  factory _$$ResourceInitialCopyWith(_$ResourceInitial<T> value,
          $Res Function(_$ResourceInitial<T>) then) =
      __$$ResourceInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResourceInitialCopyWithImpl<T, $Res>
    extends _$ResourceCopyWithImpl<T, $Res, _$ResourceInitial<T>>
    implements _$$ResourceInitialCopyWith<T, $Res> {
  __$$ResourceInitialCopyWithImpl(
      _$ResourceInitial<T> _value, $Res Function(_$ResourceInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResourceInitial<T> implements ResourceInitial<T> {
  const _$ResourceInitial();

  @override
  String toString() {
    return 'Resource<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResourceInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data, String? test) loading,
    required TResult Function(String error, T? data) error,
    required TResult Function(T data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data, String? test)? loading,
    TResult? Function(String error, T? data)? error,
    TResult? Function(T data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data, String? test)? loading,
    TResult Function(String error, T? data)? error,
    TResult Function(T data)? success,
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
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceError<T> value) error,
    required TResult Function(ResourceSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceError<T> value)? error,
    TResult? Function(ResourceSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceError<T> value)? error,
    TResult Function(ResourceSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ResourceInitial<T> implements Resource<T> {
  const factory ResourceInitial() = _$ResourceInitial<T>;
}

/// @nodoc
abstract class _$$ResourceLoadingCopyWith<T, $Res> {
  factory _$$ResourceLoadingCopyWith(_$ResourceLoading<T> value,
          $Res Function(_$ResourceLoading<T>) then) =
      __$$ResourceLoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, String? test});
}

/// @nodoc
class __$$ResourceLoadingCopyWithImpl<T, $Res>
    extends _$ResourceCopyWithImpl<T, $Res, _$ResourceLoading<T>>
    implements _$$ResourceLoadingCopyWith<T, $Res> {
  __$$ResourceLoadingCopyWithImpl(
      _$ResourceLoading<T> _value, $Res Function(_$ResourceLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? test = freezed,
  }) {
    return _then(_$ResourceLoading<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResourceLoading<T> implements ResourceLoading<T> {
  const _$ResourceLoading({this.data, this.test});

  @override
  final T? data;
  @override
  final String? test;

  @override
  String toString() {
    return 'Resource<$T>.loading(data: $data, test: $test)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceLoading<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.test, test) || other.test == test));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data), test);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceLoadingCopyWith<T, _$ResourceLoading<T>> get copyWith =>
      __$$ResourceLoadingCopyWithImpl<T, _$ResourceLoading<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data, String? test) loading,
    required TResult Function(String error, T? data) error,
    required TResult Function(T data) success,
  }) {
    return loading(data, test);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data, String? test)? loading,
    TResult? Function(String error, T? data)? error,
    TResult? Function(T data)? success,
  }) {
    return loading?.call(data, test);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data, String? test)? loading,
    TResult Function(String error, T? data)? error,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, test);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceError<T> value) error,
    required TResult Function(ResourceSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceError<T> value)? error,
    TResult? Function(ResourceSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceError<T> value)? error,
    TResult Function(ResourceSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResourceLoading<T> implements Resource<T> {
  const factory ResourceLoading({final T? data, final String? test}) =
      _$ResourceLoading<T>;

  T? get data;
  String? get test;
  @JsonKey(ignore: true)
  _$$ResourceLoadingCopyWith<T, _$ResourceLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceErrorCopyWith<T, $Res> {
  factory _$$ResourceErrorCopyWith(
          _$ResourceError<T> value, $Res Function(_$ResourceError<T>) then) =
      __$$ResourceErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error, T? data});
}

/// @nodoc
class __$$ResourceErrorCopyWithImpl<T, $Res>
    extends _$ResourceCopyWithImpl<T, $Res, _$ResourceError<T>>
    implements _$$ResourceErrorCopyWith<T, $Res> {
  __$$ResourceErrorCopyWithImpl(
      _$ResourceError<T> _value, $Res Function(_$ResourceError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = freezed,
  }) {
    return _then(_$ResourceError<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ResourceError<T> implements ResourceError<T> {
  const _$ResourceError({required this.error, this.data});

  @override
  final String error;
  @override
  final T? data;

  @override
  String toString() {
    return 'Resource<$T>.error(error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceError<T> &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceErrorCopyWith<T, _$ResourceError<T>> get copyWith =>
      __$$ResourceErrorCopyWithImpl<T, _$ResourceError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data, String? test) loading,
    required TResult Function(String error, T? data) error,
    required TResult Function(T data) success,
  }) {
    return error(this.error, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data, String? test)? loading,
    TResult? Function(String error, T? data)? error,
    TResult? Function(T data)? success,
  }) {
    return error?.call(this.error, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data, String? test)? loading,
    TResult Function(String error, T? data)? error,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceError<T> value) error,
    required TResult Function(ResourceSuccess<T> value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceError<T> value)? error,
    TResult? Function(ResourceSuccess<T> value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceError<T> value)? error,
    TResult Function(ResourceSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResourceError<T> implements Resource<T> {
  const factory ResourceError({required final String error, final T? data}) =
      _$ResourceError<T>;

  String get error;
  T? get data;
  @JsonKey(ignore: true)
  _$$ResourceErrorCopyWith<T, _$ResourceError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceSuccessCopyWith<T, $Res> {
  factory _$$ResourceSuccessCopyWith(_$ResourceSuccess<T> value,
          $Res Function(_$ResourceSuccess<T>) then) =
      __$$ResourceSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ResourceSuccessCopyWithImpl<T, $Res>
    extends _$ResourceCopyWithImpl<T, $Res, _$ResourceSuccess<T>>
    implements _$$ResourceSuccessCopyWith<T, $Res> {
  __$$ResourceSuccessCopyWithImpl(
      _$ResourceSuccess<T> _value, $Res Function(_$ResourceSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResourceSuccess<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResourceSuccess<T> implements ResourceSuccess<T> {
  const _$ResourceSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'Resource<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceSuccessCopyWith<T, _$ResourceSuccess<T>> get copyWith =>
      __$$ResourceSuccessCopyWithImpl<T, _$ResourceSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data, String? test) loading,
    required TResult Function(String error, T? data) error,
    required TResult Function(T data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data, String? test)? loading,
    TResult? Function(String error, T? data)? error,
    TResult? Function(T data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data, String? test)? loading,
    TResult Function(String error, T? data)? error,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceError<T> value) error,
    required TResult Function(ResourceSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceError<T> value)? error,
    TResult? Function(ResourceSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceError<T> value)? error,
    TResult Function(ResourceSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResourceSuccess<T> implements Resource<T> {
  const factory ResourceSuccess({required final T data}) = _$ResourceSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ResourceSuccessCopyWith<T, _$ResourceSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
