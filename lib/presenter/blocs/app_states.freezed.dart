// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppStates {
  AppStatus get status => throw _privateConstructorUsedError;

  List<Movie> get movies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStatesCopyWith<AppStates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStatesCopyWith<$Res> {
  factory $AppStatesCopyWith(AppStates value, $Res Function(AppStates) then) =
      _$AppStatesCopyWithImpl<$Res, AppStates>;

  @useResult
  $Res call({AppStatus status, List<Movie> movies});
}

/// @nodoc
class _$AppStatesCopyWithImpl<$Res, $Val extends AppStates> implements $AppStatesCopyWith<$Res> {
  _$AppStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? movies = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStatesImplCopyWith<$Res> implements $AppStatesCopyWith<$Res> {
  factory _$$AppStatesImplCopyWith(_$AppStatesImpl value, $Res Function(_$AppStatesImpl) then) =
      __$$AppStatesImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({AppStatus status, List<Movie> movies});
}

/// @nodoc
class __$$AppStatesImplCopyWithImpl<$Res> extends _$AppStatesCopyWithImpl<$Res, _$AppStatesImpl>
    implements _$$AppStatesImplCopyWith<$Res> {
  __$$AppStatesImplCopyWithImpl(_$AppStatesImpl _value, $Res Function(_$AppStatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? movies = null,
  }) {
    return _then(_$AppStatesImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$AppStatesImpl implements _AppStates {
  const _$AppStatesImpl({this.status = AppStatus.initial, final List<Movie> movies = const []})
      : _movies = movies;

  @override
  @JsonKey()
  final AppStatus status;
  final List<Movie> _movies;

  @override
  @JsonKey()
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'AppStates(status: $status, movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStatesImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStatesImplCopyWith<_$AppStatesImpl> get copyWith =>
      __$$AppStatesImplCopyWithImpl<_$AppStatesImpl>(this, _$identity);
}

abstract class _AppStates implements AppStates {
  const factory _AppStates({final AppStatus status, final List<Movie> movies}) = _$AppStatesImpl;

  @override
  AppStatus get status;

  @override
  List<Movie> get movies;

  @override
  @JsonKey(ignore: true)
  _$$AppStatesImplCopyWith<_$AppStatesImpl> get copyWith => throw _privateConstructorUsedError;
}
