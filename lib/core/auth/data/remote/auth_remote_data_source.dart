import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:qit_flutter/core/error/errors.dart';

import '../../../models/user.dart';
import '../../../utils/constants.dart';

abstract class AuthRemoteDataSource {
  Future<UserWithToken> login({
    required String email,
    required String password,
  });

  Future<void> logout({
    bool terminateAllSessions = false,
  });

  Future<User?> check();

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
    } catch (e) {
      throw ConnectionError(e);
    }
    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> json = jsonDecode(response.data);
      return User.fromJson(json['user']);
    } else {
      throw ServerBaseError.fromJson(
        jsonDecode(response.data),
        response.statusCode,
      );
    }
  }

  @override
  Future<UserWithToken> login({
    required String email,
    required String password,
  }) async {
    final Response response;
    try {
      response = await dioClient.post(loginUserEndPoint,
          data: json.encode({
            'email': email,
            'password': password,
          }));
    } catch (e) {
      throw ConnectionError(e);
    }

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> json = jsonDecode(response.data);
      return UserWithToken(User.fromJson(json['user']), json['token']);
    } else {
      throw ServerBaseError.fromJson(
        jsonDecode(response.data),
        response.statusCode,
      );
    }
  }

  @override
  Future<void> logout({bool terminateAllSessions = false}) async {
    final Response response;
    try {
      response = await dioClient.post(
        logoutUserEndPoint,
        data: json.encode({'all': terminateAllSessions}),
      );
    } catch (e) {
      throw ConnectionError(e);
    }

    if (response.statusCode != 200 || response.statusCode != 201) {
      throw ServerBaseError.fromJson(
        jsonDecode(response.data),
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
    final Response response;
    try {
      response = await dioClient.post(
        registerUserEndPoint,
        data: json.encode({
          'email': email,
          'name': name,
          'password': password,
          'password_confirmation': passwordConfirmation,
        }),
      );
    } catch (e) {
      throw ConnectionError(e);
    }

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> json = jsonDecode(response.data);
      return UserWithToken(User.fromJson(json['user']), json['token']);
    } else {
      throw ServerBaseError.fromJson(
        jsonDecode(response.data),
        response.statusCode,
      );
    }
  }
}
