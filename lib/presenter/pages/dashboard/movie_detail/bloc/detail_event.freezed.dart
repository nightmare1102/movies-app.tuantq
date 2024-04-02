// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailMovieEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) toggleFavouriteMovie,
    required TResult Function(String id) getStateFavouriteMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? toggleFavouriteMovie,
    TResult? Function(String id)? getStateFavouriteMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? toggleFavouriteMovie,
    TResult Function(String id)? getStateFavouriteMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFavouriteMovie value) toggleFavouriteMovie,
    required TResult Function(GetStateFavouriteMovie value) getStateFavouriteMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleFavouriteMovie value)? toggleFavouriteMovie,
    TResult? Function(GetStateFavouriteMovie value)? getStateFavouriteMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFavouriteMovie value)? toggleFavouriteMovie,
    TResult Function(GetStateFavouriteMovie value)? getStateFavouriteMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailMovieEventCopyWith<DetailMovieEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailMovieEventCopyWith<$Res> {
  factory $DetailMovieEventCopyWith(DetailMovieEvent value, $Res Function(DetailMovieEvent) then) =
      _$DetailMovieEventCopyWithImpl<$Res, DetailMovieEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DetailMovieEventCopyWithImpl<$Res, $Val extends DetailMovieEvent>
    implements $DetailMovieEventCopyWith<$Res> {
  _$DetailMovieEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToggleFavouriteMovieImplCopyWith<$Res>
    implements $DetailMovieEventCopyWith<$Res> {
  factory _$$ToggleFavouriteMovieImplCopyWith(
          _$ToggleFavouriteMovieImpl value, $Res Function(_$ToggleFavouriteMovieImpl) then) =
      __$$ToggleFavouriteMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ToggleFavouriteMovieImplCopyWithImpl<$Res>
    extends _$DetailMovieEventCopyWithImpl<$Res, _$ToggleFavouriteMovieImpl>
    implements _$$ToggleFavouriteMovieImplCopyWith<$Res> {
  __$$ToggleFavouriteMovieImplCopyWithImpl(
      _$ToggleFavouriteMovieImpl _value, $Res Function(_$ToggleFavouriteMovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ToggleFavouriteMovieImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleFavouriteMovieImpl implements ToggleFavouriteMovie {
  const _$ToggleFavouriteMovieImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DetailMovieEvent.toggleFavouriteMovie(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavouriteMovieImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavouriteMovieImplCopyWith<_$ToggleFavouriteMovieImpl> get copyWith =>
      __$$ToggleFavouriteMovieImplCopyWithImpl<_$ToggleFavouriteMovieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) toggleFavouriteMovie,
    required TResult Function(String id) getStateFavouriteMovie,
  }) {
    return toggleFavouriteMovie(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? toggleFavouriteMovie,
    TResult? Function(String id)? getStateFavouriteMovie,
  }) {
    return toggleFavouriteMovie?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? toggleFavouriteMovie,
    TResult Function(String id)? getStateFavouriteMovie,
    required TResult orElse(),
  }) {
    if (toggleFavouriteMovie != null) {
      return toggleFavouriteMovie(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFavouriteMovie value) toggleFavouriteMovie,
    required TResult Function(GetStateFavouriteMovie value) getStateFavouriteMovie,
  }) {
    return toggleFavouriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleFavouriteMovie value)? toggleFavouriteMovie,
    TResult? Function(GetStateFavouriteMovie value)? getStateFavouriteMovie,
  }) {
    return toggleFavouriteMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFavouriteMovie value)? toggleFavouriteMovie,
    TResult Function(GetStateFavouriteMovie value)? getStateFavouriteMovie,
    required TResult orElse(),
  }) {
    if (toggleFavouriteMovie != null) {
      return toggleFavouriteMovie(this);
    }
    return orElse();
  }
}

abstract class ToggleFavouriteMovie implements DetailMovieEvent {
  const factory ToggleFavouriteMovie(final String id) = _$ToggleFavouriteMovieImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ToggleFavouriteMovieImplCopyWith<_$ToggleFavouriteMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStateFavouriteMovieImplCopyWith<$Res>
    implements $DetailMovieEventCopyWith<$Res> {
  factory _$$GetStateFavouriteMovieImplCopyWith(
          _$GetStateFavouriteMovieImpl value, $Res Function(_$GetStateFavouriteMovieImpl) then) =
      __$$GetStateFavouriteMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetStateFavouriteMovieImplCopyWithImpl<$Res>
    extends _$DetailMovieEventCopyWithImpl<$Res, _$GetStateFavouriteMovieImpl>
    implements _$$GetStateFavouriteMovieImplCopyWith<$Res> {
  __$$GetStateFavouriteMovieImplCopyWithImpl(
      _$GetStateFavouriteMovieImpl _value, $Res Function(_$GetStateFavouriteMovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetStateFavouriteMovieImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetStateFavouriteMovieImpl implements GetStateFavouriteMovie {
  const _$GetStateFavouriteMovieImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DetailMovieEvent.getStateFavouriteMovie(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStateFavouriteMovieImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStateFavouriteMovieImplCopyWith<_$GetStateFavouriteMovieImpl> get copyWith =>
      __$$GetStateFavouriteMovieImplCopyWithImpl<_$GetStateFavouriteMovieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) toggleFavouriteMovie,
    required TResult Function(String id) getStateFavouriteMovie,
  }) {
    return getStateFavouriteMovie(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? toggleFavouriteMovie,
    TResult? Function(String id)? getStateFavouriteMovie,
  }) {
    return getStateFavouriteMovie?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? toggleFavouriteMovie,
    TResult Function(String id)? getStateFavouriteMovie,
    required TResult orElse(),
  }) {
    if (getStateFavouriteMovie != null) {
      return getStateFavouriteMovie(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFavouriteMovie value) toggleFavouriteMovie,
    required TResult Function(GetStateFavouriteMovie value) getStateFavouriteMovie,
  }) {
    return getStateFavouriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleFavouriteMovie value)? toggleFavouriteMovie,
    TResult? Function(GetStateFavouriteMovie value)? getStateFavouriteMovie,
  }) {
    return getStateFavouriteMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFavouriteMovie value)? toggleFavouriteMovie,
    TResult Function(GetStateFavouriteMovie value)? getStateFavouriteMovie,
    required TResult orElse(),
  }) {
    if (getStateFavouriteMovie != null) {
      return getStateFavouriteMovie(this);
    }
    return orElse();
  }
}

abstract class GetStateFavouriteMovie implements DetailMovieEvent {
  const factory GetStateFavouriteMovie(final String id) = _$GetStateFavouriteMovieImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetStateFavouriteMovieImplCopyWith<_$GetStateFavouriteMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
