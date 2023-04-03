import 'package:get_it/get_it.dart';

import '../core/auth/data/local/auth_local_data_source.dart';
import '../core/auth/data/remote/auth_remote_data_source.dart';
import '../core/auth/repository/auth_repository.dart';

final di = GetIt.I;

void authInit() {
  // repositories
  di.registerLazySingleton<AuthRepository>(
    () => AuthRepository(di.get(), di.get()),
  );

  // data sources
  di.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(di.get()));

  di.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(di.get()));
}
