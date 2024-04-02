// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieDetailState {
  bool get isFavMovie => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res, MovieDetailState>;

  @useResult
  $Res call({bool isFavMovie});
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res, $Val extends MovieDetailState>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavMovie = null,
  }) {
    return _then(_value.copyWith(
      isFavMovie: null == isFavMovie
          ? _value.isFavMovie
          : isFavMovie // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStatesImplCopyWith<$Res> implements $MovieDetailStateCopyWith<$Res> {
  factory _$$AppStatesImplCopyWith(_$AppStatesImpl value, $Res Function(_$AppStatesImpl) then) =
      __$$AppStatesImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({bool isFavMovie});
}

/// @nodoc
class __$$AppStatesImplCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$AppStatesImpl>
    implements _$$AppStatesImplCopyWith<$Res> {
  __$$AppStatesImplCopyWithImpl(_$AppStatesImpl _value, $Res Function(_$AppStatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavMovie = null,
  }) {
    return _then(_$AppStatesImpl(
      isFavMovie: null == isFavMovie
          ? _value.isFavMovie
          : isFavMovie // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppStatesImpl implements _AppStates {
  const _$AppStatesImpl({this.isFavMovie = false});

  @override
  @JsonKey()
  final bool isFavMovie;

  @override
  String toString() {
    return 'MovieDetailState(isFavMovie: $isFavMovie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStatesImpl &&
            (identical(other.isFavMovie, isFavMovie) || other.isFavMovie == isFavMovie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavMovie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStatesImplCopyWith<_$AppStatesImpl> get copyWith =>
      __$$AppStatesImplCopyWithImpl<_$AppStatesImpl>(this, _$identity);
}

abstract class _AppStates implements MovieDetailState {
  const factory _AppStates({final bool isFavMovie}) = _$AppStatesImpl;

  @override
  bool get isFavMovie;

  @override
  @JsonKey(ignore: true)
  _$$AppStatesImplCopyWith<_$AppStatesImpl> get copyWith => throw _privateConstructorUsedError;
}
