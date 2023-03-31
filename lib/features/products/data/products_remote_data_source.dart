import 'package:dio/dio.dart';
import 'package:qit_flutter/core/utils/constants.dart';
import 'package:qit_flutter/features/products/models/product_result_holder.dart';

import '../../../core/error/errors.dart';

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
    var uri = Uri.parse(kProductEndPoint);
    uri = uri.replace(queryParameters: {
      'perpage': kPerPageCount.toString(),
      'page': page.toString(),
      if (keyWords != null || (keyWords?.isNotEmpty ?? false))
        'keyword': keyWords,
    });

    final Response response;
    try {
      response = await dioClient.get(uri.toString());
    } on DioError catch (error) {
      if (error.response == null) {
        throw ConnectionError(error);
      }
      throw ServerBaseError.fromJson(
        error.response!.data,
        error.response!.statusCode,
      );
    }

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> json = response.data;
      return ProductResultHolder.fromJson(json);
    } else {
      throw ServerBaseError.fromJson(
        response.data,
        response.statusCode,
      );
    }
  }
}
