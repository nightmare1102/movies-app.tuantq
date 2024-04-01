// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMoviesStarted value) getMovies,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMoviesStarted value)? getMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMoviesStarted value)? getMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventsCopyWith<$Res> {
  factory $AppEventsCopyWith(AppEvents value, $Res Function(AppEvents) then) =
      _$AppEventsCopyWithImpl<$Res, AppEvents>;
}

/// @nodoc
class _$AppEventsCopyWithImpl<$Res, $Val extends AppEvents> implements $AppEventsCopyWith<$Res> {
  _$AppEventsCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMoviesStartedImplCopyWith<$Res> {
  factory _$$GetMoviesStartedImplCopyWith(
          _$GetMoviesStartedImpl value, $Res Function(_$GetMoviesStartedImpl) then) =
      __$$GetMoviesStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMoviesStartedImplCopyWithImpl<$Res>
    extends _$AppEventsCopyWithImpl<$Res, _$GetMoviesStartedImpl>
    implements _$$GetMoviesStartedImplCopyWith<$Res> {
  __$$GetMoviesStartedImplCopyWithImpl(
      _$GetMoviesStartedImpl _value, $Res Function(_$GetMoviesStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMoviesStartedImpl implements GetMoviesStarted {
  const _$GetMoviesStartedImpl();

  @override
  String toString() {
    return 'AppEvents.getMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMoviesStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
  }) {
    return getMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
  }) {
    return getMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    required TResult orElse(),
  }) {
    if (getMovies != null) {
      return getMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMoviesStarted value) getMovies,
  }) {
    return getMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMoviesStarted value)? getMovies,
  }) {
    return getMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMoviesStarted value)? getMovies,
    required TResult orElse(),
  }) {
    if (getMovies != null) {
      return getMovies(this);
    }
    return orElse();
  }
}

abstract class GetMoviesStarted implements AppEvents {
  const factory GetMoviesStarted() = _$GetMoviesStartedImpl;
}
