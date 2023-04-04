import 'package:get_it/get_it.dart';

import '../features/products/data/products_remote_data_source.dart';
import '../features/products/repository/product_repository.dart';

final di = GetIt.I;

void latestProductsInit() {
  // repositories
  di.registerFactory<ProductsRepository>(
    () => ProductsRepository(di.get()),
  );

  // data sources
  di.registerLazySingleton<ProductsRemoteDataSource>(
      () => ProductsRemoteDataSourceImpl(di.get()));
}
