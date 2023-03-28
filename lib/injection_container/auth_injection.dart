import 'package:get_it/get_it.dart';

final di = GetIt.I;
void authInit() {
  // blocs
  // di.registerFactory<AuthBloc>(() => AuthBloc(di.get(), di.get()));

  // repositories
  // di.registerLazySingleton<AuthRepository>(
  //         () => AuthRepository(di.get(), di.get()));

  // data sources
  // di.registerLazySingleton<AuthRemoteDataSource>(
  //         () => AuthRemoteDataSourceImp());
  // di.registerLazySingleton<AuthLocalDataSource>(
  //         () => AuthLocalDataSourceImpl());
}
