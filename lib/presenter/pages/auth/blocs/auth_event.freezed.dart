// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() getInfoUser,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? getInfoUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen

  <

  TResult

  extends

  Object?

  >

  (

  {

  TResult

  Function

  (

  )

  ?

  loggedIn

  ,

  TResult

  Function

  (

  )

  ?

  loggedOut

  ,

  TResult

  Function

  (

  )

  ?

  getInfoUser

  ,

  required

  TResult

  orElse

  (

  )

  ,
}) =>
throw
_privateConstructorUsedError;

@optionalTypeArgs
TResult map<TResult extends Object?>({
  required TResult Function(AuthLoggedIn value) loggedIn,
  required TResult Function(AuthLoggedOut value) loggedOut,
  required TResult Function(AuthGetInfoUser value) getInfoUser,
}) =>
    throw _privateConstructorUsedError;

@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
  TResult? Function(AuthLoggedIn value)? loggedIn,
  TResult? Function(AuthLoggedOut value)? loggedOut,
  TResult? Function(AuthGetInfoUser value)? getInfoUser,
}) =>
    throw _privateConstructorUsedError;
@optionalTypeArgs
TResult maybeMap
<
TResult extends Object?>(
{
TResult
Function
(
AuthLoggedIn
value
)
?
loggedIn
,
TResult
Function
(
AuthLoggedOut
value
)
?
loggedOut
,
TResult
Function
(
AuthGetInfoUser
value
)
?
getInfoUser
,
required
TResult
orElse(),
}) =>
throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
_$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
implements $AuthEventCopyWith<$Res> {
_$AuthEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
final $Val _value;
// ignore: unused_field
final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthLoggedInImplCopyWith<$Res> {
factory _$$AuthLoggedInImplCopyWith(
_$AuthLoggedInImpl value, $Res Function(_$AuthLoggedInImpl) then) =
__$$AuthLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoggedInImplCopyWithImpl<$Res>
extends _$AuthEventCopyWithImpl<$Res, _$AuthLoggedInImpl>
implements _$$AuthLoggedInImplCopyWith<$Res> {
__$$AuthLoggedInImplCopyWithImpl(
_$AuthLoggedInImpl _value, $Res Function(_$AuthLoggedInImpl) _then)
    : super(_value, _then);
}

/// @nodoc

class _$AuthLoggedInImpl implements AuthLoggedIn {
const _$AuthLoggedInImpl();

@override
String toString() {
return 'AuthEvent.loggedIn()';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType && other is _$AuthLoggedInImpl);
}

@override
int get hashCode => runtimeType.hashCode;

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loggedIn,
required TResult Function() loggedOut,
required TResult Function() getInfoUser,
}) {
return loggedIn();
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loggedIn,
TResult? Function()? loggedOut,
TResult? Function()? getInfoUser,
}) {
return loggedIn?.call();
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loggedIn,
TResult Function()? loggedOut,
TResult Function()? getInfoUser,
required TResult orElse(),
}) {
if (loggedIn != null) {
return loggedIn();
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(AuthLoggedIn value) loggedIn,
required TResult Function(AuthLoggedOut value) loggedOut,
required TResult Function(AuthGetInfoUser value) getInfoUser,
}) {
return loggedIn(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(AuthLoggedIn value)? loggedIn,
TResult? Function(AuthLoggedOut value)? loggedOut,
TResult? Function(AuthGetInfoUser value)? getInfoUser,
}) {
return loggedIn?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(AuthLoggedIn value)? loggedIn,
TResult Function(AuthLoggedOut value)? loggedOut,
TResult Function(AuthGetInfoUser value)? getInfoUser,
required TResult orElse(),
}) {
if (loggedIn != null) {
return loggedIn(this);
}
return orElse();
}
}

abstract class AuthLoggedIn implements AuthEvent {
const factory AuthLoggedIn() = _$AuthLoggedInImpl;
}

/// @nodoc
abstract class _$$AuthLoggedOutImplCopyWith<$Res> {
factory _$$AuthLoggedOutImplCopyWith(
_$AuthLoggedOutImpl value, $Res Function(_$AuthLoggedOutImpl) then) =
__$$AuthLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoggedOutImplCopyWithImpl<$Res>
extends _$AuthEventCopyWithImpl<$Res, _$AuthLoggedOutImpl>
implements _$$AuthLoggedOutImplCopyWith<$Res> {
__$$AuthLoggedOutImplCopyWithImpl(
_$AuthLoggedOutImpl _value, $Res Function(_$AuthLoggedOutImpl) _then)
    : super(_value, _then);
}

/// @nodoc

class _$AuthLoggedOutImpl implements AuthLoggedOut {
const _$AuthLoggedOutImpl();

@override
String toString() {
return 'AuthEvent.loggedOut()';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType && other is _$AuthLoggedOutImpl);
}

@override
int get hashCode => runtimeType.hashCode;

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loggedIn,
required TResult Function() loggedOut,
required TResult Function() getInfoUser,
}) {
return loggedOut();
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loggedIn,
TResult? Function()? loggedOut,
TResult? Function()? getInfoUser,
}) {
return loggedOut?.call();
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loggedIn,
TResult Function()? loggedOut,
TResult Function()? getInfoUser,
required TResult orElse(),
}) {
if (loggedOut != null) {
return loggedOut();
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(AuthLoggedIn value) loggedIn,
required TResult Function(AuthLoggedOut value) loggedOut,
required TResult Function(AuthGetInfoUser value) getInfoUser,
}) {
return loggedOut(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(AuthLoggedIn value)? loggedIn,
TResult? Function(AuthLoggedOut value)? loggedOut,
TResult? Function(AuthGetInfoUser value)? getInfoUser,
}) {
return loggedOut?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(AuthLoggedIn value)? loggedIn,
TResult Function(AuthLoggedOut value)? loggedOut,
TResult Function(AuthGetInfoUser value)? getInfoUser,
required TResult orElse(),
}) {
if (loggedOut != null) {
return loggedOut(this);
}
return orElse();
}
}

abstract class AuthLoggedOut implements AuthEvent {
const factory AuthLoggedOut() = _$AuthLoggedOutImpl;
}

/// @nodoc
abstract class _$$AuthGetInfoUserImplCopyWith<$Res> {
factory _$$AuthGetInfoUserImplCopyWith(_$AuthGetInfoUserImpl value,
$Res Function(_$AuthGetInfoUserImpl) then) =
__$$AuthGetInfoUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthGetInfoUserImplCopyWithImpl<$Res>
extends _$AuthEventCopyWithImpl<$Res, _$AuthGetInfoUserImpl>
implements _$$AuthGetInfoUserImplCopyWith<$Res> {
__$$AuthGetInfoUserImplCopyWithImpl(
_$AuthGetInfoUserImpl _value, $Res Function(_$AuthGetInfoUserImpl) _then)
    : super(_value, _then);
}

/// @nodoc

class _$AuthGetInfoUserImpl implements AuthGetInfoUser {
const _$AuthGetInfoUserImpl();

@override
String toString() {
return 'AuthEvent.getInfoUser()';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType && other is _$AuthGetInfoUserImpl);
}

@override
int get hashCode => runtimeType.hashCode;

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loggedIn,
required TResult Function() loggedOut,
required TResult Function() getInfoUser,
}) {
return getInfoUser();
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loggedIn,
TResult? Function()? loggedOut,
TResult? Function()? getInfoUser,
}) {
return getInfoUser?.call();
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loggedIn,
TResult Function()? loggedOut,
TResult Function()? getInfoUser,
required TResult orElse(),
}) {
if (getInfoUser != null) {
return getInfoUser();
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(AuthLoggedIn value) loggedIn,
required TResult Function(AuthLoggedOut value) loggedOut,
required TResult Function(AuthGetInfoUser value) getInfoUser,
}) {
return getInfoUser(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(AuthLoggedIn value)? loggedIn,
TResult? Function(AuthLoggedOut value)? loggedOut,
TResult? Function(AuthGetInfoUser value)? getInfoUser,
}) {
return getInfoUser?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(AuthLoggedIn value)? loggedIn,
TResult Function(AuthLoggedOut value)? loggedOut,
TResult Function(AuthGetInfoUser value)? getInfoUser,
required TResult orElse(),
}) {
if (getInfoUser != null) {
return getInfoUser(this);
}
return orElse();
}
}

abstract class AuthGetInfoUser implements AuthEvent {
const factory AuthGetInfoUser() = _$AuthGetInfoUserImpl;
}
