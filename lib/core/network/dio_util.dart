import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:qit_flutter/core/error/errors.dart';
import 'package:qit_flutter/core/utils/constants.dart';

import '../auth/data/local/auth_local_data_source.dart';
import '../error/security_error_flow.dart';

class DioUtil {
  static Dio? _instance;

  static Future<Dio> getInstance() async {
    _instance ??= await createDioInstance();
    return _instance!;
  }

  static void reset() {
    _instance = null;
  }

  static Future<Dio> createDioInstance() async {
    final token = await GetIt.I.get<AuthLocalDataSource>().getUserToken();

    Map<String, dynamic>? headers = {};
    if (token != null) {
      headers["authorization"] = 'Bearer $token';
    }
    headers['Accept'] = 'application/json';

    final dio = Dio(BaseOptions(headers: headers));

    dio.interceptors.clear();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioError e, handler) async {
          if (e.response == null) {
            return;
          }
          final statusCode = e.response!.statusCode;
          if (statusCode != 401) {
            handler.next(e);
            return;
          }

          //catch the 401
          if (e.requestOptions.path.contains(kUserApiUrl)) {
            // the Auth Bloc will handle this automatically
            return;
          }
          final error = ServerBaseError.fromJson(
            jsonDecode(e.response!.data),
            statusCode,
          );
          SecurityErrorFlow().riseSecurityError(error);
        },
      ),
    );

    return dio;
  }
}
