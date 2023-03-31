import 'package:dio/dio.dart';
import 'package:qit_flutter/core/error/errors.dart';

import '../../../models/user.dart';
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
    final Response response;
    try {
      response = await dioClient.get(kCheckUserEndPoint);
    } on DioError catch (error) {
      if (error.response == null) {
        throw ConnectionError(error);
      }
      throw ServerBaseError.fromJson(
        error.response!.data,
        error.response!.statusCode,
      );
    }
    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> json = response.data;
      return User.fromJson(json['user']);
    } else {
      throw ServerBaseError.fromJson(
        response.data,
        response.statusCode,
      );
    }
  }

  @override
  Future<UserWithToken> login({
    required String email,
    required String password,
  }) async {
    var uri = Uri.parse(kLoginUserEndPoint);
    uri = uri.replace(queryParameters: {
      'email': email,
      'password': password,
    });

    final Response response;
    try {
      response = await dioClient.post(uri.toString());
    } on DioError catch (error) {
      if (error.response == null) {
        throw ConnectionError(error);
      }
      throw ServerBaseError.fromJson(
        error.response!.data,
        error.response!.statusCode,
      );
    }

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> json = response.data;
      return UserWithToken(User.fromJson(json['user']), json['token']);
    } else {
      throw ServerBaseError.fromJson(
        response.data,
        response.statusCode,
      );
    }
  }

  @override
  Future<void> logout({bool terminateAllSessions = false}) async {
    var uri = Uri.parse(kLogoutUserEndPoint);
    if (terminateAllSessions) {
      uri = uri.replace(queryParameters: {'all': 1});
    }

    final Response response;
    try {
      response = await dioClient.post(uri.toString());
    } on DioError catch (error) {
      if (error.response == null) {
        throw ConnectionError(error);
      }
      throw ServerBaseError.fromJson(
        error.response!.data,
        error.response!.statusCode,
      );
    }

    if (response.statusCode != 200 || response.statusCode != 201) {
      throw ServerBaseError.fromJson(
        response.data,
        response.statusCode,
      );
    }
  }

  @override
  Future<UserWithToken> register({
    required String email,
    required String name,
    required String password,
    required String passwordConfirmation,
  }) async {
    var uri = Uri.parse(kRegisterUserEndPoint);
    uri = uri.replace(queryParameters: {
      'email': email,
      'name': name,
      'password': password,
      'password_confirmation': passwordConfirmation,
    });

    final Response response;
    try {
      response = await dioClient.post(uri.toString());
    } on DioError catch (error) {
      if (error.response == null) {
        throw ConnectionError(error);
      }
      throw ServerBaseError.fromJson(
        error.response!.data,
        error.response!.statusCode,
      );
    }

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> json = response.data;
      return UserWithToken(User.fromJson(json['user']), json['token']);
    } else {
      throw ServerBaseError.fromJson(
        response.data,
        response.statusCode,
      );
    }
  }
}
