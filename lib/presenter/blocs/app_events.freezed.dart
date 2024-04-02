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
    required TResult Function() refreshMovies,
    required TResult Function() getFavouriteMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? refreshMovies,
    TResult? Function()? getFavouriteMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? refreshMovies,
    TResult Function()? getFavouriteMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMoviesStarted value) getMovies,
    required TResult Function(RefreshMoviesStarted value) refreshMovies,
    required TResult Function(GetFavouriteMovies value) getFavouriteMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMoviesStarted value)? getMovies,
    TResult? Function(RefreshMoviesStarted value)? refreshMovies,
    TResult? Function(GetFavouriteMovies value)? getFavouriteMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMoviesStarted value)? getMovies,
    TResult Function(RefreshMoviesStarted value)? refreshMovies,
    TResult Function(GetFavouriteMovies value)? getFavouriteMovies,
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
    required TResult Function() refreshMovies,
    required TResult Function() getFavouriteMovies,
  }) {
    return getMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? refreshMovies,
    TResult? Function()? getFavouriteMovies,
  }) {
    return getMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? refreshMovies,
    TResult Function()? getFavouriteMovies,
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
    required TResult Function(RefreshMoviesStarted value) refreshMovies,
    required TResult Function(GetFavouriteMovies value) getFavouriteMovies,
  }) {
    return getMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMoviesStarted value)? getMovies,
    TResult? Function(RefreshMoviesStarted value)? refreshMovies,
    TResult? Function(GetFavouriteMovies value)? getFavouriteMovies,
  }) {
    return getMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMoviesStarted value)? getMovies,
    TResult Function(RefreshMoviesStarted value)? refreshMovies,
    TResult Function(GetFavouriteMovies value)? getFavouriteMovies,
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

/// @nodoc
abstract class _$$RefreshMoviesStartedImplCopyWith<$Res> {
  factory _$$RefreshMoviesStartedImplCopyWith(
          _$RefreshMoviesStartedImpl value, $Res Function(_$RefreshMoviesStartedImpl) then) =
      __$$RefreshMoviesStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshMoviesStartedImplCopyWithImpl<$Res>
    extends _$AppEventsCopyWithImpl<$Res, _$RefreshMoviesStartedImpl>
    implements _$$RefreshMoviesStartedImplCopyWith<$Res> {
  __$$RefreshMoviesStartedImplCopyWithImpl(
      _$RefreshMoviesStartedImpl _value, $Res Function(_$RefreshMoviesStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshMoviesStartedImpl implements RefreshMoviesStarted {
  const _$RefreshMoviesStartedImpl();

  @override
  String toString() {
    return 'AppEvents.refreshMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshMoviesStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function() refreshMovies,
    required TResult Function() getFavouriteMovies,
  }) {
    return refreshMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? refreshMovies,
    TResult? Function()? getFavouriteMovies,
  }) {
    return refreshMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? refreshMovies,
    TResult Function()? getFavouriteMovies,
    required TResult orElse(),
  }) {
    if (refreshMovies != null) {
      return refreshMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMoviesStarted value) getMovies,
    required TResult Function(RefreshMoviesStarted value) refreshMovies,
    required TResult Function(GetFavouriteMovies value) getFavouriteMovies,
  }) {
    return refreshMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMoviesStarted value)? getMovies,
    TResult? Function(RefreshMoviesStarted value)? refreshMovies,
    TResult? Function(GetFavouriteMovies value)? getFavouriteMovies,
  }) {
    return refreshMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMoviesStarted value)? getMovies,
    TResult Function(RefreshMoviesStarted value)? refreshMovies,
    TResult Function(GetFavouriteMovies value)? getFavouriteMovies,
    required TResult orElse(),
  }) {
    if (refreshMovies != null) {
      return refreshMovies(this);
    }
    return orElse();
  }
}

abstract class RefreshMoviesStarted implements AppEvents {
  const factory RefreshMoviesStarted() = _$RefreshMoviesStartedImpl;
}

/// @nodoc
abstract class _$$GetFavouriteMoviesImplCopyWith<$Res> {
  factory _$$GetFavouriteMoviesImplCopyWith(
          _$GetFavouriteMoviesImpl value, $Res Function(_$GetFavouriteMoviesImpl) then) =
      __$$GetFavouriteMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavouriteMoviesImplCopyWithImpl<$Res>
    extends _$AppEventsCopyWithImpl<$Res, _$GetFavouriteMoviesImpl>
    implements _$$GetFavouriteMoviesImplCopyWith<$Res> {
  __$$GetFavouriteMoviesImplCopyWithImpl(
      _$GetFavouriteMoviesImpl _value, $Res Function(_$GetFavouriteMoviesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavouriteMoviesImpl implements GetFavouriteMovies {
  const _$GetFavouriteMoviesImpl();

  @override
  String toString() {
    return 'AppEvents.getFavouriteMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavouriteMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function() refreshMovies,
    required TResult Function() getFavouriteMovies,
  }) {
    return getFavouriteMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? refreshMovies,
    TResult? Function()? getFavouriteMovies,
  }) {
    return getFavouriteMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? refreshMovies,
    TResult Function()? getFavouriteMovies,
    required TResult orElse(),
  }) {
    if (getFavouriteMovies != null) {
      return getFavouriteMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMoviesStarted value) getMovies,
    required TResult Function(RefreshMoviesStarted value) refreshMovies,
    required TResult Function(GetFavouriteMovies value) getFavouriteMovies,
  }) {
    return getFavouriteMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMoviesStarted value)? getMovies,
    TResult? Function(RefreshMoviesStarted value)? refreshMovies,
    TResult? Function(GetFavouriteMovies value)? getFavouriteMovies,
  }) {
    return getFavouriteMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMoviesStarted value)? getMovies,
    TResult Function(RefreshMoviesStarted value)? refreshMovies,
    TResult Function(GetFavouriteMovies value)? getFavouriteMovies,
    required TResult orElse(),
  }) {
    if (getFavouriteMovies != null) {
      return getFavouriteMovies(this);
    }
    return orElse();
  }
}

abstract class GetFavouriteMovies implements AppEvents {
  const factory GetFavouriteMovies() = _$GetFavouriteMoviesImpl;
}
