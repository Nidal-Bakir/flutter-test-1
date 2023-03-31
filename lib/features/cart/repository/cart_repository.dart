import 'package:qit_flutter/core/error/errors.dart';
import 'package:qit_flutter/core/utils/either.dart';
import 'package:qit_flutter/features/cart/data/cart_remote_data_source.dart';

import '../models/cart.dart';

class CartRepository {
  final CartRemoteDataSource _cartRemoteDataSource;

  CartRepository(this._cartRemoteDataSource);

  Cart? _cart;

  Future<Either<BaseError, Cart>> getUserCart() async {
    try {
      _cart = await _cartRemoteDataSource.getUserCart();
    } on BaseError catch (error) {
      return Left(error);
    }

    return Right(_cart!);
  }

  Future<Either<BaseError, Cart>> addProductToCart({
    required int productId,
    required int quantity,
  }) async {
    assert(quantity >= 0);

    try {
      _cart = await _cartRemoteDataSource.addProductToCart(
        productId,
        quantity,
      );
    } on BaseError catch (error) {
      return Left(error);
    }

    return Right(_cart!);
  }

  Future<Either<BaseError, Cart>> removeProductFromCart(
    int productId,
  ) async {
    try {
      _cart = await _cartRemoteDataSource.removeProductFromCart(
        productId,
      );
    } on BaseError catch (error) {
      return Left(error);
    }

    return Right(_cart!);
  }

  final _changedProductsQuantity = <int, int>{};

  // final _originalProductQuantity = <int, int>{};

  Cart setProductQuantityLocally({
    required int productId,
    required int quantity,
  }) {
    var cart = _cart;
    assert(cart != null);
    assert(quantity >= 0);

    _changedProductsQuantity[productId] = quantity;

    var productInCart =
        cart!.products!.firstWhere((e) => e.productId == productId);

    final index = cart.products!.indexOf(productInCart);

    final newList = [...cart.products!];

    final totalPrice = cart.totalPrice;
    if (quantity == 0) {
      newList.removeAt(index);

      cart = cart.copyWith(
        products: newList,
        totalPrice: totalPrice.copyWith(
          value: totalPrice.value - productInCart.unitPrice.value,
        ),
      );
    } else {
      final oldQuantity = productInCart.totalQuantity;
      final isAdd = quantity > oldQuantity;

      var productTotalPrice = productInCart.totalPrice;
      productTotalPrice = productTotalPrice.copyWith(
          value: productTotalPrice.value +
              (productInCart.unitPrice.value * (isAdd ? 1 : -1)));

      productInCart = productInCart.copyWith(
          totalPrice: productTotalPrice, totalQuantity: quantity);

      newList[index] = productInCart;

      cart = cart.copyWith(
        products: newList,
        totalPrice: totalPrice.copyWith(
          value: totalPrice.value +
              (productInCart.unitPrice.value * (isAdd ? 1 : -1)),
        ),
      );
    }

    _cart = cart;
    return cart;
  }

  Cart removeProductFromCartLocally(int productId) {
    return setProductQuantityLocally(productId: productId, quantity: 0);
  }

  Future<Either<BaseError, Cart>> saveLocallyChangedCart(
      [bool concurrently = false]) async {
    if (concurrently) {
      // Future.wait(_);
    }
  }
}
