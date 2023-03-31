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

    _originalProductQuantity.clear();
    _cart!.products?.forEach((e) {
      _originalProductQuantity[e.productId] = e.productId;
    });
    _changedProductsQuantity.clear();

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

  final _originalProductQuantity = <int, int>{};

  /// mimic the server behavior, so we do not send request to the server on every
  /// quantity increase/decrease. i.e. change now save later (optimistic approach)
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

    final newProductsList = [...cart.products!];

    final totalPrice = cart.totalPrice;
    if (quantity == 0) {
      newProductsList.removeAt(index);

      cart = cart.copyWith(
        products: newProductsList,
        totalPrice: totalPrice.copyWith(
          value: totalPrice.value -
              (productInCart.unitPrice.value * productInCart.totalQuantity),
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

      newProductsList[index] = productInCart;

      cart = cart.copyWith(
        products: newProductsList,
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

  Future<Either<BaseError, Cart?>> concurrentlySaveLocallyChangedCart() async {
    if (_cart == null || _changedProductsQuantity.isEmpty) {
      return Right(_cart);
    }

    // in case if the quantity increased then decreased again and vise versa
    // in this case its redundant to send this info to the server because
    // the quantity still equal the original value
    _changedProductsQuantity.removeWhere(
      (key, value) => _originalProductQuantity[key] == value,
    );

    final listOfKeys = _changedProductsQuantity.keys.toList(growable: false);

    final resultList = await Future.wait([
      for (final productId in listOfKeys)
        addProductToCart(
          productId: productId,
          quantity: _changedProductsQuantity[productId]!,
        )
    ]);

    BaseError? baseError;
    Cart? savedCart;

    for (int i = 0; i < resultList.length; i++) {
      resultList[i].fold((error) {
        baseError = error;
      }, (cart) {
        _changedProductsQuantity.remove(listOfKeys[i]);
        savedCart = cart;
      });
    }

    if (baseError != null) {
      return Left(baseError!);
    } else {
      savedCart ??= _cart;
      _cart = savedCart;

      _changedProductsQuantity.clear();
      _originalProductQuantity.clear();
      _cart!.products?.forEach((e) {
        _originalProductQuantity[e.productId] = e.productId;
      });

      return Right(savedCart!);
    }
  }
}
