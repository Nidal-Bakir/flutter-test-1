import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xxtea/xxtea.dart';

final di = GetIt.I;

void initDioClient() {
  final token = di.get<SharedPreferences>().getString('token');
  Map<String, dynamic>? headers = {};
  if (token != null) {
    headers["authorization"] = xxtea.decryptToString(token, 'TOKEN_QIT_48@G%');
  }
  di.registerLazySingleton<Dio>(() => Dio(BaseOptions(headers: headers)));
}
