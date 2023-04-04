import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:qit_flutter/core/auth/presentation/managers/auth_provider.dart';
import 'package:qit_flutter/features/cart/repository/cart_repository.dart';

import '../../models/cart.dart';

final itemsInCartCountProvider = Provider<int>((ref) {
  final itemsCount = ref.watch(cartNotifierProvider
      .select((data) => data.valueOrNull?.products?.length));
  return itemsCount ?? 0;
});

final cartNotifierProvider = AsyncNotifierProvider<CartNotifier, Cart?>(
  () => CartNotifier(GetIt.I.get<CartRepository>()),
);

class CartNotifier extends AsyncNotifier<Cart?> {
  final CartRepository _cartRepository;

  CartNotifier(this._cartRepository);

  @override
  FutureOr<Cart?> build() async {
    final currentUser = ref.watch(currentUserProvider);
    if (currentUser != null) {
      return null;
    }

    final result = await _cartRepository.getUserCart();
    if (result.isLeft()) {
      throw result.getLeftValue();
    }

    return result.getRightValue();
  }

  void addProduct({
    required int productId,
    required int quantity,
    bool locally = false,
  }) async {
    if (locally) {
      final cart = _cartRepository.setProductQuantityLocally(
          productId: productId, quantity: quantity);
      state = AsyncValue.data(cart);
      return;
    }

    state = const AsyncValue.loading();

    final result = await _cartRepository.addProductToCart(
      productId: productId,
      quantity: quantity,
    );

    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (cart) => AsyncValue.data(cart),
    );
  }

  void removeProduct({
    required int productId,
    bool locally = false,
  }) async {
    if (locally) {
      final cart = _cartRepository.removeProductFromCartLocally(productId);
      state = AsyncValue.data(cart);
      return;
    }

    state = const AsyncValue.loading();

    final result = await _cartRepository.removeProductFromCart(productId);

    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (cart) => AsyncValue.data(cart),
    );
  }

  void loadCart() async {
    state = const AsyncValue.loading();

    final result = await _cartRepository.getUserCart();

    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (cart) => AsyncValue.data(cart),
    );
  }

  Future<void> saveCart() async {
    state = const AsyncValue.loading();

    final result = await _cartRepository.concurrentlySaveLocallyChangedCart();

    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (cart) => AsyncValue.data(cart),
    );
  }
}
