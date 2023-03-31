import 'package:dio/dio.dart';
import 'package:qit_flutter/core/error/errors.dart';

import '../../../models/user.dart';
import '../../../utils/api_request_handler.dart';
import '../../../utils/constants.dart';
import '../../models/user_with_token.dart';

abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();

  /// login a User
  ///
  /// returns [UserWithToken] : a object holds [User] object with token from server
  ///
  /// Throws [BaseError] :
  /// * [ServerBaseError] in case of error from server
  /// * [ConnectionError] in case of any connection error
  Future<UserWithToken> login({
    required String email,
    required String password,
  });

  /// logout a logged user
  ///
  /// Throws [BaseError] :
  /// * [ServerBaseError] in case of error from server
  /// * [ConnectionError] in case of any connection error
  Future<void> logout({
    bool terminateAllSessions = false,
  });

  /// Check the current session token
  ///
  /// Returns [User] if the current session token is valid, if its not valid will
  /// throw [UnauthenticatedServerError].
  ///
  /// Throws [BaseError] :
  /// * [ServerBaseError] in case of error from server
  /// * [ConnectionError] in case of any connection error
  Future<User> check();

  /// Register a user
  ///
  /// Returns [UserWithToken] : a object holds [User] object with token from server
  ///
  /// Throws [BaseError] :
  /// * [ServerBaseError] in case of error from server
  /// * [ConnectionError] in case of any connection error
  Future<UserWithToken> register({
    required String email,
    required String name,
    required String password,
    required String passwordConfirmation,
  });
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final Dio dioClient;

  const AuthRemoteDataSourceImpl(this.dioClient);

  @override
  Future<User> check() async {
    return APIRequestHandler<User>(
      dioClient: dioClient,
      uri: Uri.parse(kCheckUserEndPoint),
      onSuccess: (data) {
        return User.fromJson(data['user']);
      },
    ).processGET();
  }

  @override
  Future<UserWithToken> login({
    required String email,
    required String password,
  }) async {
    final uri = Uri.parse(kLoginUserEndPoint).replace(
      queryParameters: {
        'email': email,
        'password': password,
      },
    );

    return APIRequestHandler<UserWithToken>(
      dioClient: dioClient,
      uri: uri,
      onSuccess: (data) {
        return UserWithToken(User.fromJson(data['user']), data['token']);
      },
    ).processPOST();
  }

  @override
  Future<void> logout({bool terminateAllSessions = false}) async {
    var uri = Uri.parse(kLogoutUserEndPoint);
    if (terminateAllSessions) {
      uri = uri.replace(queryParameters: {'all': 1.toString()});
    }

    return APIRequestHandler<void>(
      dioClient: dioClient,
      uri: uri,
      onSuccess: (data) {
        return;
      },
    ).processPOST();
  }

  @override
  Future<UserWithToken> register({
    required String email,
    required String name,
    required String password,
    required String passwordConfirmation,
  }) async {
    final uri = Uri.parse(kRegisterUserEndPoint).replace(
      queryParameters: {
        'email': email,
        'name': name,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
    );

    return APIRequestHandler<UserWithToken>(
      dioClient: dioClient,
      uri: uri,
      onSuccess: (data) {
        return UserWithToken(User.fromJson(data['user']), data['token']);
      },
    ).processPOST();
  }
}
