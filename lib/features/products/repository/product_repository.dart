import 'dart:collection';

import 'package:qit_flutter/core/error/errors.dart';
import 'package:qit_flutter/core/utils/either.dart';
import 'package:qit_flutter/features/products/data/products_remote_data_source.dart';
import 'package:qit_flutter/features/products/models/product_result_holder/product_result_holder.dart';

import '../models/product/product.dart';

class ProductsRepository {
  final ProductsRemoteDataSource _productsRemoteDataSource;

  ProductsRepository(this._productsRemoteDataSource);

  ProductResultHolder? _productResultHolder;
  String? _keyword;

  Future<Either<BaseError, UnmodifiableListView<Product>>> getProducts(
      {String? keyword}) async {
    if (_keyword != keyword) {
      _productResultHolder = null;
      _keyword = keyword;
    }

    final int page;

    if (_productResultHolder == null) {
      page = 1;
    } else {
      if (_productResultHolder?.links.next == null) {
        return Right(
          _productResultHolder!.products as UnmodifiableListView<Product>,
        );
      }
      page = _productResultHolder!.metaData.currentPageNumber + 1;
    }

    final ProductResultHolder resultFromServer;
    try {
      resultFromServer =
          await _productsRemoteDataSource.getLatestProducts(page, keyword);
    } on BaseError catch (error) {
      return Left(error);
    }

    if (_productResultHolder == null) {
      _productResultHolder = resultFromServer;
    } else {
      _productResultHolder = resultFromServer.copyWith(products: [
        ..._productResultHolder!.products,
        ...resultFromServer.products
      ]);
    }

    return Right(
      _productResultHolder!.products as UnmodifiableListView<Product>,
    );
  }

  bool canLoadMore() {
    return (_productResultHolder?.links.next != null);
  }
}
