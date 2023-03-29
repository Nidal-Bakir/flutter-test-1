import 'package:dio/dio.dart';
import 'package:qit_flutter/core/error/errors.dart';

import '../../../models/user.dart';
import '../../../utils/constants.dart';

abstract class AuthRemoteDataSource {
  /// login a User
  ///
  /// returns [UserWithToken] : a object holds [User] object with token from server
  ///
  /// Throws [ServerBaseError] in case of error from server
  /// or [ConnectionError] in case of any connection error
  Future<UserWithToken> login({
    required String email,
    required String password,
  });

  /// logout a logged user
  ///
  /// Throws [ServerBaseError] in case of error from server
  /// or [ConnectionError] in case of any connection error
  Future<void> logout({
    bool terminateAllSessions = false,
  });

  /// check the current session token
  ///
  /// Returns [User] if the current session token is valid, if its not valid will
  /// throw [UnauthenticatedServerError].
  ///
  /// Throws [ServerBaseError] in case of error from server
  /// or [ConnectionError] in case of any connection error
  Future<User> check();

  /// register a user
  ///
  /// returns [UserWithToken] : a object holds [User] object with token from server
  ///
  /// Throws [ServerBaseError] in case of error from server
  /// or [ConnectionError] in case of any connection error
  Future<UserWithToken> register({
    required String email,
    required String name,
    required String password,
    required String passwordConfirmation,
  });
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final Dio dioClient;

  AuthRemoteDataSourceImpl(this.dioClient);

  @override
  Future<User> check() async {
    final Response response;
    try {
      response = await dioClient.get(checkUserEndPoint);
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
    var uri = Uri.parse(loginUserEndPoint);
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
    var uri = Uri.parse(logoutUserEndPoint);
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
    var uri = Uri.parse(registerUserEndPoint);
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
