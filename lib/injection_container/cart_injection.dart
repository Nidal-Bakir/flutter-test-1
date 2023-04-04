import 'package:get_it/get_it.dart';

import '../features/cart/data/cart_remote_data_source.dart';
import '../features/cart/repository/cart_repository.dart';

final di = GetIt.I;

void cartInit() {
  // repositories
  di.registerLazySingleton<CartRepository>(
    () => CartRepository(di.get()),
  );

  // data sources
  di.registerLazySingleton<CartRemoteDataSource>(
      () => CartRemoteDataSourceImpl(di.get()));
}
