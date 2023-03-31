import 'package:dio/dio.dart';

import '../../../core/utils/api_request_handler.dart';
import '../../../core/utils/constants.dart';
import '../models/cart.dart';

abstract class CartRemoteDataSource {
  /// Get the user cart
  ///
  /// Returns [Cart] : a object holds all info about the cart
  ///
  /// Throws [BaseError] :
  /// * [ServerBaseError] in case of error from server
  /// * [ConnectionError] in case of any connection error
  Future<Cart> getUserCart();

  /// Add a product to the user cart
  ///
  /// Returns [Cart] : the result of this operation
  ///
  /// Setting the [quantity] to zero will delete the product from the cart.
  ///
  /// Calling this function with the same [quantity] has no effect. i.e. its not incremental
  ///
  /// Throws [BaseError] :
  /// * [ServerBaseError] in case of error from server
  /// * [ConnectionError] in case of any connection error
  Future<Cart> addProductToCart(int productId, int quantity);

  /// Remove product from the user cart
  ///
  /// Returns [Cart] : the result of this operation
  ///
  /// Throws [BaseError] :
  /// * [ServerBaseError] in case of error from server
  /// * [ConnectionError] in case of any connection error
  Future<Cart> removeProductFromCart(int productId);
}

class CartRemoteDataSourceImpl extends CartRemoteDataSource {
  final Dio dioClient;

  CartRemoteDataSourceImpl(this.dioClient);

  @override
  Future<Cart> getUserCart() async {
    final uri = Uri.parse(kCartEndPoint);

    return APIRequestHandler<Cart>(
      dioClient: dioClient,
      uri: uri,
      onSuccess: (data) {
        return Cart.fromJson(data['data']);
      },
    ).processGET();
  }

  @override
  Future<Cart> addProductToCart(int productId, int quantity) async {
    final uri = Uri.parse(kCartItemEndPoint).replace(
      queryParameters: {
        'product_id': productId.toString(),
        'quantity': quantity.toString()
      },
    );

    return APIRequestHandler<Cart>(
      dioClient: dioClient,
      uri: uri,
      onSuccess: (data) {
        return Cart.fromJson(data['data']);
      },
    ).processPUT();
  }

  @override
  Future<Cart> removeProductFromCart(int productId) async {
    final uri = Uri.parse(kCartItemEndPoint).replace(
      queryParameters: {
        'product_id': productId.toString(),
      },
    );

    return APIRequestHandler<Cart>(
      dioClient: dioClient,
      uri: uri,
      onSuccess: (data) {
        return Cart.fromJson(data['data']);
      },
    ).processDELETE();
  }
}
