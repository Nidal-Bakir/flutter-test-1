import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:qit_flutter/core/auth/repository/auth_repository.dart';
import 'package:qit_flutter/core/error/security_error_flow.dart';

import '../../../error/errors.dart';
import '../../../models/user.dart';

final authNotifierProvider = AsyncNotifierProvider<AuthNotifier, User?>(
  () => AuthNotifier(GetIt.I.get<AuthRepository>()),
);

final securityErrorStreamProvider = StreamProvider<BaseError>((ref) {
  return SecurityErrorFlow().securityErrorFlowStream();
});

final currentUserProvider = Provider<User?>((ref) {
  final authSate = ref.watch(authNotifierProvider);
  return authSate.value;
});

class AuthNotifier extends AsyncNotifier<User?> {
  final AuthRepository _authRepository;

  AuthNotifier(this._authRepository);

  @override
  FutureOr<User?> build() async {
    state = const AsyncValue.loading();
    final user = await _authRepository.getLocalUser();

    if (user != null) {
      checkCurrentUser();
    }

    return user;
  }

  Future<void> checkCurrentUser() async {
    state = const AsyncValue.loading();

    final result = await _authRepository.check();

    result.fold(
      (error) => state = AsyncValue.error(error, StackTrace.current),
      (user) => state = AsyncValue.data(user),
    );
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();

    final result = await _authRepository.login(
      email: email,
      password: password,
    );

    result.fold(
      (error) => state = AsyncValue.error(error, StackTrace.current),
      (user) => state = AsyncValue.data(user),
    );
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConf,
  }) async {
    state = const AsyncValue.loading();

    final result = await _authRepository.register(
      email: email,
      password: password,
      name: name,
      passwordConfirmation: passwordConf,
    );

    result.fold(
      (error) => state = AsyncValue.error(error, StackTrace.current),
      (user) => state = AsyncValue.data(user),
    );
  }

  Future<void> logOut({
    bool terminateAllSessions = false,
  }) async {
    state = const AsyncValue.loading();

    final result = await _authRepository.logout(
        terminateAllSessions: terminateAllSessions);

    result.fold(
      (error) => state = AsyncValue.error(error, StackTrace.current),
      (_) => state = const AsyncValue.data(null),
    );
  }
}
