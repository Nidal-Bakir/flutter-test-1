import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../core/network/dio_util.dart';

final di = GetIt.I;

Future<void> initDioClient() async {
  final dio = await DioUtil.getInstance();

  di.registerLazySingleton<Dio>(
    () => dio,
    dispose: (_) => DioUtil.reset(),
  );
}
