import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../repository/product_repository.dart';
import 'products_state_result.dart';

final searchProductsProvider = AsyncNotifierProvider.autoDispose<
    SearchProductsNotifier, ProductsStateResult>(() {
  return SearchProductsNotifier(GetIt.I.get<ProductsRepository>());
});

class SearchProductsNotifier
    extends AutoDisposeAsyncNotifier<ProductsStateResult> {
  final ProductsRepository _productsRepository;

  SearchProductsNotifier(this._productsRepository);

  @override
  FutureOr<ProductsStateResult> build() async {
    state = const AsyncValue.loading();

    final result = await _productsRepository.getProducts();
    if (result.isLeft()) {
      throw result.getLeftValue();
    }

    return ProductsStateResult(
      products: result.getRightValue(),
      canLoadMore: _productsRepository.canLoadMore(),
    );
  }

  Future<void> getProducts({required String? keyword}) async {
    state = const AsyncValue.loading();

    final result = await _productsRepository.getProducts(keyword: keyword);

    result.fold(
      (error) => state = AsyncValue.error(error, StackTrace.current),
      (products) => state = AsyncValue.data(
        ProductsStateResult(
          products: products,
          canLoadMore: _productsRepository.canLoadMore(),
        ),
      ),
    );
  }
}
