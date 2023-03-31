import 'package:dio/dio.dart';

import '../error/errors.dart';

class APIRequestHandler<T> {
  final T Function(dynamic data) onSuccess;
  final Uri uri;
  final Dio dioClient;

  APIRequestHandler({
    required this.onSuccess,
    required this.uri,
    required this.dioClient,
  });

  Future<T> processGET() {
    return _process('GET');
  }

  Future<T> processPOST() {
    return _process('POST');
  }

  Future<T> processPUT() {
    return _process('PUT');
  }

  Future<T> processDELETE() {
    return _process('DELETE');
  }

  Future<T> processPATCH() {
    return _process('PATCH');
  }

  Future<T> _process(String method) async {
    final Response response;
    try {
      response = await dioClient.request(
        uri.toString(),
        options: Options(method: method),
      );
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
      return onSuccess(json);
    } else {
      throw ServerBaseError.fromJson(
        response.data,
        response.statusCode,
      );
    }
  }
}
