part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.currentUserLoaded() = _CurrentUserLoaded;

  const factory AuthEvent.currentUserChecked() = _CurrentUserChecked;

  const factory AuthEvent.invalidSessionTokenReceived(BaseError error) =
      _InvalidSessionTokenReceived;

  const factory AuthEvent.loginRequested({
    required String email,
    required String password,
  }) = _LoginRequested;

  const factory AuthEvent.logOutRequested({
    @Default(false) bool terminateAllSessions,
  }) = _LogOutRequested;

  const factory AuthEvent.registerRequested({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) = _RegisterRequested;
}
