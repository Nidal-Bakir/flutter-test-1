import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qit_flutter/core/error/errors.dart';
import 'package:qit_flutter/core/models/user.dart';

import '../../../error/security_error_flow.dart';
import '../../repository/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SecurityErrorFlow _securityErrorFlow;
  final AuthRepository _authRepository;

  AuthBloc(this._securityErrorFlow, this._authRepository)
      : super(const AuthState.inProgress()) {
    errorFlowStreamSubscription =
        _securityErrorFlow.securityErrorFlowStream().listen((error) {
      if (error is UnauthenticatedServerError) {
        add(AuthEvent.invalidSessionTokenReceived(error));
      }
    });

    on<AuthEvent>((event, emit) async {
      await event.map(
        currentUserLoaded: (event) => _onCurrentUserLoaded(event, emit),
        currentUserChecked: (event) => _onCurrentUserChecked(event, emit),
        invalidSessionTokenReceived: (event) =>
            _onInvalidSessionTokenReceived(event, emit),
        loginRequested: (event) => _onLoginRequested(event, emit),
        logOutRequested: (event) => _onLogOutRequested(event, emit),
        registerRequested: (event) => _onRegisterRequested(event, emit),
      );
    });
  }

  User? _currentPopulatedUser;

  /// Returns the current populated user by auth bloc
  User? getCurrentUser() => _currentPopulatedUser;

  late final StreamSubscription errorFlowStreamSubscription;

  @override
  Future<void> close() async {
    await errorFlowStreamSubscription.cancel();
    await super.close();
  }

  Future<void> _onCurrentUserLoaded(
    _CurrentUserLoaded event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());

    final user = await _authRepository.getLocalUser();
    emit(AuthState.authSuccess(user));

    _currentPopulatedUser = user;

    if (user != null) {
      add(const AuthEvent.currentUserChecked());
    }
  }

  Future<void> _onCurrentUserChecked(
    _CurrentUserChecked event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());

    final result = await _authRepository.check();

    result.fold(
      (error) {
        emit(AuthState.authFailure(error));
      },
      (user) {
        _currentPopulatedUser = user;
        emit(AuthState.authUpdateSuccess(user));
      },
    );
  }

  Future<void> _onInvalidSessionTokenReceived(
    _InvalidSessionTokenReceived event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());

    await _authRepository.clearAllUserData();

    _currentPopulatedUser = null;

    emit(AuthState.authFailure(event.error));
  }

  Future<void> _onLoginRequested(
    _LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());

    final result = await _authRepository.login(
      email: event.email,
      password: event.password,
    );

    result.fold(
      (error) => emit(AuthState.authFailure(error)),
      (user) {
        _currentPopulatedUser = user;
        emit(AuthState.authSuccess(user));
      },
    );
  }

  Future<void> _onLogOutRequested(
    _LogOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());

    final result = await _authRepository.logout(
      terminateAllSessions: event.terminateAllSessions,
    );

    result.fold(
      (error) => emit(AuthState.authFailure(error)),
      (user) {
        _currentPopulatedUser = null;
        emit(const AuthState.authSuccess(null));
      },
    );
  }

  Future<void> _onRegisterRequested(
    _RegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());

    final result = await _authRepository.register(
      email: event.email,
      name: event.name,
      password: event.password,
      passwordConfirmation: event.passwordConfirmation,
    );

    result.fold(
      (error) => emit(AuthState.authFailure(error)),
      (user) {
        _currentPopulatedUser = user;
        emit(AuthState.authSuccess(user));
      },
    );
  }
}
