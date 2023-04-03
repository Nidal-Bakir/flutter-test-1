import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/product/product.dart';

part 'products_state_result.freezed.dart';

@freezed
class ProductsStateResult with _$ProductsStateResult {
  factory ProductsStateResult({
    required UnmodifiableListView<Product> products,
    required bool canLoadMore,
  }) = _ProductsStateResult;
}
