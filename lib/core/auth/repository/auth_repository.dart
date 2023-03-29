import 'package:qit_flutter/core/auth/data/local/auth_local_data_source.dart';
import 'package:qit_flutter/core/auth/data/remote/auth_remote_data_source.dart';
import 'package:qit_flutter/core/error/errors.dart';

import '../../models/user.dart';
import '../../utils/either.dart';

class AuthRepository {
  final AuthLocalDataSource _authLocalDataSource;
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepository(
    this._authLocalDataSource,
    this._authRemoteDataSource,
  );

  Future<User?> getLocalUser() {
    return _authLocalDataSource.getLocalUser();
  }

  Future<void> clearAllUserData() {
    return _authLocalDataSource.clearAllUserData();
  }

  Future<Either<BaseError, User>> login({
    required String email,
    required String password,
  }) async {
    final UserWithToken result;
    try {
      result = await _authRemoteDataSource.login(
        email: email,
        password: password,
      );
    } on BaseError catch (error) {
      return Left(error);
    }

    await _authLocalDataSource.setUserToken(result.token);
    await _authLocalDataSource.setLocalUser(result.user);

    return Right(result.user);
  }

  Future<Either<BaseError, User>> register({
    required String email,
    required String name,
    required String password,
    required String passwordConfirmation,
  }) async {
    final UserWithToken result;
    try {
      result = await _authRemoteDataSource.register(
        email: email,
        name: name,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
    } on BaseError catch (error) {
      return Left(error);
    }

    await _authLocalDataSource.setUserToken(result.token);
    await _authLocalDataSource.setLocalUser(result.user);

    return Right(result.user);
  }

  Future<Either<BaseError, void>> logout({
    bool terminateAllSessions = false,
  }) async {
    try {
      await _authRemoteDataSource.logout(
        terminateAllSessions: terminateAllSessions,
      );
    } on BaseError catch (error) {
      return Left(error);
    }

    await _authLocalDataSource.clearAllUserData();

    return Right(null);
  }

  Future<Either<BaseError, User>> check() async {
    final User updatedUser;
    try {
      updatedUser = await _authRemoteDataSource.check();
    } on BaseError catch (error) {
      return Left(error);
    }

    await _authLocalDataSource.setLocalUser(updatedUser);

    return Right(updatedUser);
  }
}
