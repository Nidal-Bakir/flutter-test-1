import 'package:dio/dio.dart';
import 'package:qit_flutter/core/utils/constants.dart';
import 'package:qit_flutter/features/products/models/product_result_holder/product_result_holder.dart';

import '../../../core/error/errors.dart';
import '../../../core/utils/api_request_handler.dart';

abstract class ProductsRemoteDataSource {
  const ProductsRemoteDataSource();

  /// Get the latest products
  ///
  /// Returns [ProductResultHolder] That holds the latest products with mate data
  /// about the request/Response and pagination info
  ///
  /// Throws [BaseError] :
  /// * [ServerBaseError] in case of error from server
  /// * [ConnectionError] in case of any connection error
  Future<ProductResultHolder> getLatestProducts(int page, [String? keyWords]);
}

class ProductsRemoteDataSourceImpl extends ProductsRemoteDataSource {
  final Dio dioClient;

  const ProductsRemoteDataSourceImpl(this.dioClient);

  @override
  Future<ProductResultHolder> getLatestProducts(int page,
      [String? keyWords]) async {
    final uri = Uri.parse(kProductEndPoint).replace(
      queryParameters: {
        'perpage': kPerPageCount.toString(),
        'page': page.toString(),
        if (keyWords != null || (keyWords?.isNotEmpty ?? false))
          'keyword': keyWords,
      },
    );

    return APIRequestHandler<ProductResultHolder>(
      dioClient: dioClient,
      uri: uri,
      onSuccess: (data) {
        return ProductResultHolder.fromJson(data);
      },
    ).processGET();
  }
}
