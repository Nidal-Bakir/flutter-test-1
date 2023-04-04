import 'dart:async';
import 'dart:collection';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/error/errors.dart';
import '../../../../core/utils/either.dart';
import '../../models/product/product.dart';
import '../../repository/product_repository.dart';
import 'products_state_result_holder.dart';

final productsNotifierProvider = AutoDisposeAsyncNotifierProvider<
    ProductsNotifier, ProductsStateResultHolder>(
  () {
    return ProductsNotifier(GetIt.I.get());
  },
);

class ProductsNotifier
    extends AutoDisposeAsyncNotifier<ProductsStateResultHolder> {
  final ProductsRepository _productsRepository;

  late StreamController<String?> _getProductsCS;

  ProductsNotifier(this._productsRepository) {
    scheduleMicrotask(() => ref.onDispose(() => _getProductsCS.close()));
  }

  @override
  FutureOr<ProductsStateResultHolder> build() async {
    _getProductsCS = StreamController<String?>();
    _registerProductsLoaderStreamHandler();

    state = const AsyncValue.loading();

    final result = await _productsRepository.getProducts();
    if (result.isLeft()) {
      throw result.getLeftValue();
    }

    return ProductsStateResultHolder(
      products: result.getRightValue(),
      canLoadMore: _productsRepository.canLoadMore(),
    );
  }

  void getProducts({String? keyword}) {
    _getProductsCS.sink.add(keyword);
  }

  void _registerProductsLoaderStreamHandler() {
    _getProductsCS.stream
        .throttleTime(const Duration(milliseconds: 100),
            trailing: true, leading: false)
        .exhaustMap((keyword) => _getProducts(keyword: keyword).asStream())
        .listen(
      (result) {
        state = result.fold(
          (error) => AsyncValue.error(error, StackTrace.current),
          (products) => AsyncValue.data(
            ProductsStateResultHolder(
              products: products,
              canLoadMore: _productsRepository.canLoadMore(),
            ),
          ),
        );
      },
    );
  }

  Future<Either<BaseError, UnmodifiableListView<Product>>> _getProducts({
    String? keyword,
  }) {
    state = const AsyncValue.loading();

    return _productsRepository.getProducts(keyword: keyword);
  }
}
