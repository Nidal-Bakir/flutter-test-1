part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.inProgress() = _InProgress;

  const factory AuthState.authSuccess(User? user) = _AuthSuccess;

  const factory AuthState.authUpdateSuccess(User user) = _AuthUpdateSuccess;

  const factory AuthState.authFailure(BaseError error) = _AuthFailure;
}
