import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

import '../../repository/product_repository.dart';
import 'products_state_result_holder.dart';

// final searchProductsRepositoryProvider =
//     Provider((ref) => GetIt.I.get<ProductsRepository>());
//
// final latestProductsRepositoryProvider =
//     Provider((ref) => GetIt.I.get<ProductsRepository>());
//
// final productsProvider = AutoDisposeAsyncNotifierProviderFamily<
//     ProductsNotifier,
//     ProductsStateResult,
//     ProductsRepository>(() => ProductsNotifier());
//
// class ProductsNotifier extends AutoDisposeFamilyAsyncNotifier<
//     ProductsStateResult, ProductsRepository> {
//   late final ProductsRepository _productsRepository;
//
//   late StreamController<String?> _getProductsCS;
//
//   ProductsNotifier() {
//     ref.onDispose(() {
//       _getProductsCS.close();
//     });
//   }
//
//   @override
//   FutureOr<ProductsStateResult> build(arg) async {
//     _productsRepository = arg;
//
//     _getProductsCS = StreamController<String?>();
//     _getProductsCS.stream
//         .throttleTime(const Duration(milliseconds: 100),
//             trailing: true, leading: false)
//         .exhaustMap((keyword) => _getProducts(keyword: keyword).asStream());
//
//     state = const AsyncValue.loading();
//
//     final result = await _productsRepository.getProducts();
//     if (result.isLeft()) {
//       throw result.getLeftValue();
//     }
//
//     return ProductsStateResult(
//       products: result.getRightValue(),
//       canLoadMore: _productsRepository.canLoadMore(),
//     );
//   }
//
//   void getProducts({String? keyword}) {
//     _getProductsCS.sink.add(keyword);
//   }
//
//   Future<void> _getProducts({String? keyword}) async {
//     state = const AsyncValue.loading();
//
//     final result = await _productsRepository.getProducts(keyword: keyword);
//
//     state = result.fold(
//       (error) => AsyncValue.error(error, StackTrace.current),
//       (products) => AsyncValue.data(
//         ProductsStateResult(
//           products: products,
//           canLoadMore: _productsRepository.canLoadMore(),
//         ),
//       ),
//     );
//   }
// }

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
    ref.onDispose(() {
      _getProductsCS.close();
    });
  }

  @override
  FutureOr<ProductsStateResultHolder> build() async {
    _getProductsCS = StreamController<String?>();
    _getProductsCS.stream
        .throttleTime(const Duration(milliseconds: 100),
            trailing: true, leading: false)
        .exhaustMap((keyword) => _getProducts(keyword: keyword).asStream());

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

  Future<void> _getProducts({String? keyword}) async {
    state = const AsyncValue.loading();

    final result = await _productsRepository.getProducts(keyword: keyword);

    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (products) => AsyncValue.data(
        ProductsStateResultHolder(
          products: products,
          canLoadMore: _productsRepository.canLoadMore(),
        ),
      ),
    );
  }
}
