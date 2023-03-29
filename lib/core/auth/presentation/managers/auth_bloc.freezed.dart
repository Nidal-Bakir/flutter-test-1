// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserLoaded,
    required TResult Function() currentUserChecked,
    required TResult Function(BaseError error) invalidSessionTokenReceived,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(bool terminateAllSessions) logOutRequested,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        registerRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentUserLoaded,
    TResult? Function()? currentUserChecked,
    TResult? Function(BaseError error)? invalidSessionTokenReceived,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(bool terminateAllSessions)? logOutRequested,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserLoaded,
    TResult Function()? currentUserChecked,
    TResult Function(BaseError error)? invalidSessionTokenReceived,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(bool terminateAllSessions)? logOutRequested,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUserLoaded value) currentUserLoaded,
    required TResult Function(_CurrentUserChecked value) currentUserChecked,
    required TResult Function(_InvalidSessionTokenReceived value)
        invalidSessionTokenReceived,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogOutRequested value) logOutRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult? Function(_CurrentUserChecked value)? currentUserChecked,
    TResult? Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogOutRequested value)? logOutRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult Function(_CurrentUserChecked value)? currentUserChecked,
    TResult Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogOutRequested value)? logOutRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    required TResult orElse(),
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
abstract class _$$_CurrentUserLoadedCopyWith<$Res> {
  factory _$$_CurrentUserLoadedCopyWith(_$_CurrentUserLoaded value,
          $Res Function(_$_CurrentUserLoaded) then) =
      __$$_CurrentUserLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CurrentUserLoadedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CurrentUserLoaded>
    implements _$$_CurrentUserLoadedCopyWith<$Res> {
  __$$_CurrentUserLoadedCopyWithImpl(
      _$_CurrentUserLoaded _value, $Res Function(_$_CurrentUserLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CurrentUserLoaded implements _CurrentUserLoaded {
  const _$_CurrentUserLoaded();

  @override
  String toString() {
    return 'AuthEvent.currentUserLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CurrentUserLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserLoaded,
    required TResult Function() currentUserChecked,
    required TResult Function(BaseError error) invalidSessionTokenReceived,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(bool terminateAllSessions) logOutRequested,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        registerRequested,
  }) {
    return currentUserLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentUserLoaded,
    TResult? Function()? currentUserChecked,
    TResult? Function(BaseError error)? invalidSessionTokenReceived,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(bool terminateAllSessions)? logOutRequested,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
  }) {
    return currentUserLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserLoaded,
    TResult Function()? currentUserChecked,
    TResult Function(BaseError error)? invalidSessionTokenReceived,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(bool terminateAllSessions)? logOutRequested,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
    required TResult orElse(),
  }) {
    if (currentUserLoaded != null) {
      return currentUserLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUserLoaded value) currentUserLoaded,
    required TResult Function(_CurrentUserChecked value) currentUserChecked,
    required TResult Function(_InvalidSessionTokenReceived value)
        invalidSessionTokenReceived,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogOutRequested value) logOutRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
  }) {
    return currentUserLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult? Function(_CurrentUserChecked value)? currentUserChecked,
    TResult? Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogOutRequested value)? logOutRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
  }) {
    return currentUserLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult Function(_CurrentUserChecked value)? currentUserChecked,
    TResult Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogOutRequested value)? logOutRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    required TResult orElse(),
  }) {
    if (currentUserLoaded != null) {
      return currentUserLoaded(this);
    }
    return orElse();
  }
}

abstract class _CurrentUserLoaded implements AuthEvent {
  const factory _CurrentUserLoaded() = _$_CurrentUserLoaded;
}

/// @nodoc
abstract class _$$_CurrentUserCheckedCopyWith<$Res> {
  factory _$$_CurrentUserCheckedCopyWith(_$_CurrentUserChecked value,
          $Res Function(_$_CurrentUserChecked) then) =
      __$$_CurrentUserCheckedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CurrentUserCheckedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CurrentUserChecked>
    implements _$$_CurrentUserCheckedCopyWith<$Res> {
  __$$_CurrentUserCheckedCopyWithImpl(
      _$_CurrentUserChecked _value, $Res Function(_$_CurrentUserChecked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CurrentUserChecked implements _CurrentUserChecked {
  const _$_CurrentUserChecked();

  @override
  String toString() {
    return 'AuthEvent.currentUserChecked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CurrentUserChecked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserLoaded,
    required TResult Function() currentUserChecked,
    required TResult Function(BaseError error) invalidSessionTokenReceived,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(bool terminateAllSessions) logOutRequested,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        registerRequested,
  }) {
    return currentUserChecked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentUserLoaded,
    TResult? Function()? currentUserChecked,
    TResult? Function(BaseError error)? invalidSessionTokenReceived,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(bool terminateAllSessions)? logOutRequested,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
  }) {
    return currentUserChecked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserLoaded,
    TResult Function()? currentUserChecked,
    TResult Function(BaseError error)? invalidSessionTokenReceived,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(bool terminateAllSessions)? logOutRequested,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
    required TResult orElse(),
  }) {
    if (currentUserChecked != null) {
      return currentUserChecked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUserLoaded value) currentUserLoaded,
    required TResult Function(_CurrentUserChecked value) currentUserChecked,
    required TResult Function(_InvalidSessionTokenReceived value)
        invalidSessionTokenReceived,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogOutRequested value) logOutRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
  }) {
    return currentUserChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult? Function(_CurrentUserChecked value)? currentUserChecked,
    TResult? Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogOutRequested value)? logOutRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
  }) {
    return currentUserChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult Function(_CurrentUserChecked value)? currentUserChecked,
    TResult Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogOutRequested value)? logOutRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    required TResult orElse(),
  }) {
    if (currentUserChecked != null) {
      return currentUserChecked(this);
    }
    return orElse();
  }
}

abstract class _CurrentUserChecked implements AuthEvent {
  const factory _CurrentUserChecked() = _$_CurrentUserChecked;
}

/// @nodoc
abstract class _$$_InvalidSessionTokenReceivedCopyWith<$Res> {
  factory _$$_InvalidSessionTokenReceivedCopyWith(
          _$_InvalidSessionTokenReceived value,
          $Res Function(_$_InvalidSessionTokenReceived) then) =
      __$$_InvalidSessionTokenReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseError error});
}

/// @nodoc
class __$$_InvalidSessionTokenReceivedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_InvalidSessionTokenReceived>
    implements _$$_InvalidSessionTokenReceivedCopyWith<$Res> {
  __$$_InvalidSessionTokenReceivedCopyWithImpl(
      _$_InvalidSessionTokenReceived _value,
      $Res Function(_$_InvalidSessionTokenReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_InvalidSessionTokenReceived(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseError,
    ));
  }
}

/// @nodoc

class _$_InvalidSessionTokenReceived implements _InvalidSessionTokenReceived {
  const _$_InvalidSessionTokenReceived(this.error);

  @override
  final BaseError error;

  @override
  String toString() {
    return 'AuthEvent.invalidSessionTokenReceived(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidSessionTokenReceived &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidSessionTokenReceivedCopyWith<_$_InvalidSessionTokenReceived>
      get copyWith => __$$_InvalidSessionTokenReceivedCopyWithImpl<
          _$_InvalidSessionTokenReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserLoaded,
    required TResult Function() currentUserChecked,
    required TResult Function(BaseError error) invalidSessionTokenReceived,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(bool terminateAllSessions) logOutRequested,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        registerRequested,
  }) {
    return invalidSessionTokenReceived(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentUserLoaded,
    TResult? Function()? currentUserChecked,
    TResult? Function(BaseError error)? invalidSessionTokenReceived,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(bool terminateAllSessions)? logOutRequested,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
  }) {
    return invalidSessionTokenReceived?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserLoaded,
    TResult Function()? currentUserChecked,
    TResult Function(BaseError error)? invalidSessionTokenReceived,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(bool terminateAllSessions)? logOutRequested,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
    required TResult orElse(),
  }) {
    if (invalidSessionTokenReceived != null) {
      return invalidSessionTokenReceived(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUserLoaded value) currentUserLoaded,
    required TResult Function(_CurrentUserChecked value) currentUserChecked,
    required TResult Function(_InvalidSessionTokenReceived value)
        invalidSessionTokenReceived,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogOutRequested value) logOutRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
  }) {
    return invalidSessionTokenReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult? Function(_CurrentUserChecked value)? currentUserChecked,
    TResult? Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogOutRequested value)? logOutRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
  }) {
    return invalidSessionTokenReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult Function(_CurrentUserChecked value)? currentUserChecked,
    TResult Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogOutRequested value)? logOutRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    required TResult orElse(),
  }) {
    if (invalidSessionTokenReceived != null) {
      return invalidSessionTokenReceived(this);
    }
    return orElse();
  }
}

abstract class _InvalidSessionTokenReceived implements AuthEvent {
  const factory _InvalidSessionTokenReceived(final BaseError error) =
      _$_InvalidSessionTokenReceived;

  BaseError get error;
  @JsonKey(ignore: true)
  _$$_InvalidSessionTokenReceivedCopyWith<_$_InvalidSessionTokenReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginRequestedCopyWith<$Res> {
  factory _$$_LoginRequestedCopyWith(
          _$_LoginRequested value, $Res Function(_$_LoginRequested) then) =
      __$$_LoginRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LoginRequested>
    implements _$$_LoginRequestedCopyWith<$Res> {
  __$$_LoginRequestedCopyWithImpl(
      _$_LoginRequested _value, $Res Function(_$_LoginRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginRequested(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginRequested implements _LoginRequested {
  const _$_LoginRequested({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequested &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginRequestedCopyWith<_$_LoginRequested> get copyWith =>
      __$$_LoginRequestedCopyWithImpl<_$_LoginRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserLoaded,
    required TResult Function() currentUserChecked,
    required TResult Function(BaseError error) invalidSessionTokenReceived,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(bool terminateAllSessions) logOutRequested,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        registerRequested,
  }) {
    return loginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentUserLoaded,
    TResult? Function()? currentUserChecked,
    TResult? Function(BaseError error)? invalidSessionTokenReceived,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(bool terminateAllSessions)? logOutRequested,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
  }) {
    return loginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserLoaded,
    TResult Function()? currentUserChecked,
    TResult Function(BaseError error)? invalidSessionTokenReceived,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(bool terminateAllSessions)? logOutRequested,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUserLoaded value) currentUserLoaded,
    required TResult Function(_CurrentUserChecked value) currentUserChecked,
    required TResult Function(_InvalidSessionTokenReceived value)
        invalidSessionTokenReceived,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogOutRequested value) logOutRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult? Function(_CurrentUserChecked value)? currentUserChecked,
    TResult? Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogOutRequested value)? logOutRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult Function(_CurrentUserChecked value)? currentUserChecked,
    TResult Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogOutRequested value)? logOutRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class _LoginRequested implements AuthEvent {
  const factory _LoginRequested(
      {required final String email,
      required final String password}) = _$_LoginRequested;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginRequestedCopyWith<_$_LoginRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogOutRequestedCopyWith<$Res> {
  factory _$$_LogOutRequestedCopyWith(
          _$_LogOutRequested value, $Res Function(_$_LogOutRequested) then) =
      __$$_LogOutRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool terminateAllSessions});
}

/// @nodoc
class __$$_LogOutRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogOutRequested>
    implements _$$_LogOutRequestedCopyWith<$Res> {
  __$$_LogOutRequestedCopyWithImpl(
      _$_LogOutRequested _value, $Res Function(_$_LogOutRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terminateAllSessions = null,
  }) {
    return _then(_$_LogOutRequested(
      terminateAllSessions: null == terminateAllSessions
          ? _value.terminateAllSessions
          : terminateAllSessions // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LogOutRequested implements _LogOutRequested {
  const _$_LogOutRequested({this.terminateAllSessions = false});

  @override
  @JsonKey()
  final bool terminateAllSessions;

  @override
  String toString() {
    return 'AuthEvent.logOutRequested(terminateAllSessions: $terminateAllSessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogOutRequested &&
            (identical(other.terminateAllSessions, terminateAllSessions) ||
                other.terminateAllSessions == terminateAllSessions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, terminateAllSessions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogOutRequestedCopyWith<_$_LogOutRequested> get copyWith =>
      __$$_LogOutRequestedCopyWithImpl<_$_LogOutRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserLoaded,
    required TResult Function() currentUserChecked,
    required TResult Function(BaseError error) invalidSessionTokenReceived,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(bool terminateAllSessions) logOutRequested,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        registerRequested,
  }) {
    return logOutRequested(terminateAllSessions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentUserLoaded,
    TResult? Function()? currentUserChecked,
    TResult? Function(BaseError error)? invalidSessionTokenReceived,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(bool terminateAllSessions)? logOutRequested,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
  }) {
    return logOutRequested?.call(terminateAllSessions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserLoaded,
    TResult Function()? currentUserChecked,
    TResult Function(BaseError error)? invalidSessionTokenReceived,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(bool terminateAllSessions)? logOutRequested,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
    required TResult orElse(),
  }) {
    if (logOutRequested != null) {
      return logOutRequested(terminateAllSessions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUserLoaded value) currentUserLoaded,
    required TResult Function(_CurrentUserChecked value) currentUserChecked,
    required TResult Function(_InvalidSessionTokenReceived value)
        invalidSessionTokenReceived,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogOutRequested value) logOutRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
  }) {
    return logOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult? Function(_CurrentUserChecked value)? currentUserChecked,
    TResult? Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogOutRequested value)? logOutRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
  }) {
    return logOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult Function(_CurrentUserChecked value)? currentUserChecked,
    TResult Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogOutRequested value)? logOutRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    required TResult orElse(),
  }) {
    if (logOutRequested != null) {
      return logOutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogOutRequested implements AuthEvent {
  const factory _LogOutRequested({final bool terminateAllSessions}) =
      _$_LogOutRequested;

  bool get terminateAllSessions;
  @JsonKey(ignore: true)
  _$$_LogOutRequestedCopyWith<_$_LogOutRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterRequestedCopyWith<$Res> {
  factory _$$_RegisterRequestedCopyWith(_$_RegisterRequested value,
          $Res Function(_$_RegisterRequested) then) =
      __$$_RegisterRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String passwordConfirmation});
}

/// @nodoc
class __$$_RegisterRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RegisterRequested>
    implements _$$_RegisterRequestedCopyWith<$Res> {
  __$$_RegisterRequestedCopyWithImpl(
      _$_RegisterRequested _value, $Res Function(_$_RegisterRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_$_RegisterRequested(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterRequested implements _RegisterRequested {
  const _$_RegisterRequested(
      {required this.name,
      required this.email,
      required this.password,
      required this.passwordConfirmation});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordConfirmation;

  @override
  String toString() {
    return 'AuthEvent.registerRequested(name: $name, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterRequested &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, passwordConfirmation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterRequestedCopyWith<_$_RegisterRequested> get copyWith =>
      __$$_RegisterRequestedCopyWithImpl<_$_RegisterRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserLoaded,
    required TResult Function() currentUserChecked,
    required TResult Function(BaseError error) invalidSessionTokenReceived,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(bool terminateAllSessions) logOutRequested,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        registerRequested,
  }) {
    return registerRequested(name, email, password, passwordConfirmation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentUserLoaded,
    TResult? Function()? currentUserChecked,
    TResult? Function(BaseError error)? invalidSessionTokenReceived,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(bool terminateAllSessions)? logOutRequested,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
  }) {
    return registerRequested?.call(name, email, password, passwordConfirmation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserLoaded,
    TResult Function()? currentUserChecked,
    TResult Function(BaseError error)? invalidSessionTokenReceived,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(bool terminateAllSessions)? logOutRequested,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        registerRequested,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(name, email, password, passwordConfirmation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUserLoaded value) currentUserLoaded,
    required TResult Function(_CurrentUserChecked value) currentUserChecked,
    required TResult Function(_InvalidSessionTokenReceived value)
        invalidSessionTokenReceived,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogOutRequested value) logOutRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
  }) {
    return registerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult? Function(_CurrentUserChecked value)? currentUserChecked,
    TResult? Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogOutRequested value)? logOutRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
  }) {
    return registerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult Function(_CurrentUserChecked value)? currentUserChecked,
    TResult Function(_InvalidSessionTokenReceived value)?
        invalidSessionTokenReceived,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogOutRequested value)? logOutRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(this);
    }
    return orElse();
  }
}

abstract class _RegisterRequested implements AuthEvent {
  const factory _RegisterRequested(
      {required final String name,
      required final String email,
      required final String password,
      required final String passwordConfirmation}) = _$_RegisterRequested;

  String get name;
  String get email;
  String get password;
  String get passwordConfirmation;
  @JsonKey(ignore: true)
  _$$_RegisterRequestedCopyWith<_$_RegisterRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(User? user) authSuccess,
    required TResult Function(User user) authUpdateSuccess,
    required TResult Function(BaseError error) authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(User? user)? authSuccess,
    TResult? Function(User user)? authUpdateSuccess,
    TResult? Function(BaseError error)? authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(User? user)? authSuccess,
    TResult Function(User user)? authUpdateSuccess,
    TResult Function(BaseError error)? authFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AuthSuccess value) authSuccess,
    required TResult Function(_AuthUpdateSuccess value) authUpdateSuccess,
    required TResult Function(_AuthFailure value) authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_AuthSuccess value)? authSuccess,
    TResult? Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult? Function(_AuthFailure value)? authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AuthSuccess value)? authSuccess,
    TResult Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult Function(_AuthFailure value)? authFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InProgressCopyWith<$Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress value, $Res Function(_$_InProgress) then) =
      __$$_InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_InProgress>
    implements _$$_InProgressCopyWith<$Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress _value, $Res Function(_$_InProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProgress implements _InProgress {
  const _$_InProgress();

  @override
  String toString() {
    return 'AuthState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(User? user) authSuccess,
    required TResult Function(User user) authUpdateSuccess,
    required TResult Function(BaseError error) authFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(User? user)? authSuccess,
    TResult? Function(User user)? authUpdateSuccess,
    TResult? Function(BaseError error)? authFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(User? user)? authSuccess,
    TResult Function(User user)? authUpdateSuccess,
    TResult Function(BaseError error)? authFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AuthSuccess value) authSuccess,
    required TResult Function(_AuthUpdateSuccess value) authUpdateSuccess,
    required TResult Function(_AuthFailure value) authFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_AuthSuccess value)? authSuccess,
    TResult? Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult? Function(_AuthFailure value)? authFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AuthSuccess value)? authSuccess,
    TResult Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult Function(_AuthFailure value)? authFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements AuthState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$$_AuthSuccessCopyWith<$Res> {
  factory _$$_AuthSuccessCopyWith(
          _$_AuthSuccess value, $Res Function(_$_AuthSuccess) then) =
      __$$_AuthSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthSuccess>
    implements _$$_AuthSuccessCopyWith<$Res> {
  __$$_AuthSuccessCopyWithImpl(
      _$_AuthSuccess _value, $Res Function(_$_AuthSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AuthSuccess(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AuthSuccess implements _AuthSuccess {
  const _$_AuthSuccess(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.authSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSuccessCopyWith<_$_AuthSuccess> get copyWith =>
      __$$_AuthSuccessCopyWithImpl<_$_AuthSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(User? user) authSuccess,
    required TResult Function(User user) authUpdateSuccess,
    required TResult Function(BaseError error) authFailure,
  }) {
    return authSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(User? user)? authSuccess,
    TResult? Function(User user)? authUpdateSuccess,
    TResult? Function(BaseError error)? authFailure,
  }) {
    return authSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(User? user)? authSuccess,
    TResult Function(User user)? authUpdateSuccess,
    TResult Function(BaseError error)? authFailure,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AuthSuccess value) authSuccess,
    required TResult Function(_AuthUpdateSuccess value) authUpdateSuccess,
    required TResult Function(_AuthFailure value) authFailure,
  }) {
    return authSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_AuthSuccess value)? authSuccess,
    TResult? Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult? Function(_AuthFailure value)? authFailure,
  }) {
    return authSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AuthSuccess value)? authSuccess,
    TResult Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult Function(_AuthFailure value)? authFailure,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccess implements AuthState {
  const factory _AuthSuccess(final User? user) = _$_AuthSuccess;

  User? get user;
  @JsonKey(ignore: true)
  _$$_AuthSuccessCopyWith<_$_AuthSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthUpdateSuccessCopyWith<$Res> {
  factory _$$_AuthUpdateSuccessCopyWith(_$_AuthUpdateSuccess value,
          $Res Function(_$_AuthUpdateSuccess) then) =
      __$$_AuthUpdateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthUpdateSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthUpdateSuccess>
    implements _$$_AuthUpdateSuccessCopyWith<$Res> {
  __$$_AuthUpdateSuccessCopyWithImpl(
      _$_AuthUpdateSuccess _value, $Res Function(_$_AuthUpdateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AuthUpdateSuccess(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AuthUpdateSuccess implements _AuthUpdateSuccess {
  const _$_AuthUpdateSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authUpdateSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUpdateSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthUpdateSuccessCopyWith<_$_AuthUpdateSuccess> get copyWith =>
      __$$_AuthUpdateSuccessCopyWithImpl<_$_AuthUpdateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(User? user) authSuccess,
    required TResult Function(User user) authUpdateSuccess,
    required TResult Function(BaseError error) authFailure,
  }) {
    return authUpdateSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(User? user)? authSuccess,
    TResult? Function(User user)? authUpdateSuccess,
    TResult? Function(BaseError error)? authFailure,
  }) {
    return authUpdateSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(User? user)? authSuccess,
    TResult Function(User user)? authUpdateSuccess,
    TResult Function(BaseError error)? authFailure,
    required TResult orElse(),
  }) {
    if (authUpdateSuccess != null) {
      return authUpdateSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AuthSuccess value) authSuccess,
    required TResult Function(_AuthUpdateSuccess value) authUpdateSuccess,
    required TResult Function(_AuthFailure value) authFailure,
  }) {
    return authUpdateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_AuthSuccess value)? authSuccess,
    TResult? Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult? Function(_AuthFailure value)? authFailure,
  }) {
    return authUpdateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AuthSuccess value)? authSuccess,
    TResult Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult Function(_AuthFailure value)? authFailure,
    required TResult orElse(),
  }) {
    if (authUpdateSuccess != null) {
      return authUpdateSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthUpdateSuccess implements AuthState {
  const factory _AuthUpdateSuccess(final User user) = _$_AuthUpdateSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$$_AuthUpdateSuccessCopyWith<_$_AuthUpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthFailureCopyWith<$Res> {
  factory _$$_AuthFailureCopyWith(
          _$_AuthFailure value, $Res Function(_$_AuthFailure) then) =
      __$$_AuthFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseError error});
}

/// @nodoc
class __$$_AuthFailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthFailure>
    implements _$$_AuthFailureCopyWith<$Res> {
  __$$_AuthFailureCopyWithImpl(
      _$_AuthFailure _value, $Res Function(_$_AuthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AuthFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseError,
    ));
  }
}

/// @nodoc

class _$_AuthFailure implements _AuthFailure {
  const _$_AuthFailure(this.error);

  @override
  final BaseError error;

  @override
  String toString() {
    return 'AuthState.authFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      __$$_AuthFailureCopyWithImpl<_$_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(User? user) authSuccess,
    required TResult Function(User user) authUpdateSuccess,
    required TResult Function(BaseError error) authFailure,
  }) {
    return authFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(User? user)? authSuccess,
    TResult? Function(User user)? authUpdateSuccess,
    TResult? Function(BaseError error)? authFailure,
  }) {
    return authFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(User? user)? authSuccess,
    TResult Function(User user)? authUpdateSuccess,
    TResult Function(BaseError error)? authFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AuthSuccess value) authSuccess,
    required TResult Function(_AuthUpdateSuccess value) authUpdateSuccess,
    required TResult Function(_AuthFailure value) authFailure,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_AuthSuccess value)? authSuccess,
    TResult? Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult? Function(_AuthFailure value)? authFailure,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AuthSuccess value)? authSuccess,
    TResult Function(_AuthUpdateSuccess value)? authUpdateSuccess,
    TResult Function(_AuthFailure value)? authFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure implements AuthState {
  const factory _AuthFailure(final BaseError error) = _$_AuthFailure;

  BaseError get error;
  @JsonKey(ignore: true)
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
