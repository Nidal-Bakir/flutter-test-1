import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qit_flutter/core/utils/constants.dart';

void main() {
  test('description', () async {
    var uri = Uri.parse(registerUserEndPoint);
    uri = uri.replace(queryParameters: {
      'email': 'nidal@g.com',
      'name': 'nidal',
      'password': '123456',
      'password_confirmation': '123456',
    });

    // print(uri.toString());
    final dio = Dio();

    final response;
    try {
      response = await dio.post(
        uri.toString(),
        options: Options(headers: {
          'Accept': 'application/json',
        }),
      );
    } on DioError catch (e) {
      print(e.response?.data);
      return;
    }

    print(response.requestOptions.path);
    print(response.requestOptions.queryParameters);
    print(response.requestOptions.headers);
    print(response.statusCode);
    print(response.data);
  });
}
