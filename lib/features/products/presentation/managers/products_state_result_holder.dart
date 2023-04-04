import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/product/product.dart';

part 'products_state_result_holder.freezed.dart';

@freezed
class ProductsStateResultHolder with _$ProductsStateResultHolder {
  factory ProductsStateResultHolder({
    required UnmodifiableListView<Product> products,
    required bool canLoadMore,
  }) = _ProductsStateResultHolder;
}
