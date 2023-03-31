import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product.dart';

part 'product_result_holder.freezed.dart';
part 'product_result_holder.g.dart';

@freezed
class ProductResultHolder with _$ProductResultHolder {
  factory ProductResultHolder({
    @JsonKey(required: true, nullable: false, name: 'data')
        required List<Product> products,
    @JsonKey(required: true, nullable: false) required Links links,
    @JsonKey(required: true, nullable: false, name: 'meta')
        required MetaData metaData,
  }) = _ProductResultHolder;

  factory ProductResultHolder.fromJson(Map<String, Object?> json) =>
      _$ProductResultHolderFromJson(json);
}

@freezed
class Links with _$Links {
  factory Links({
    @JsonKey(required: true, nullable: false) required String first,
    @JsonKey(required: true, nullable: true) required String? last,
    @JsonKey(required: true, nullable: true) required String? prev,
    @JsonKey(required: true, nullable: true) required String? next,
  }) = _Links;

  factory Links.fromJson(Map<String, Object?> json) => _$LinksFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  factory MetaData({
    @JsonKey(required: true, nullable: false, name: 'current_page')
        required int currentPageNumber,
    @JsonKey(required: true, nullable: false, name: 'last_page')
        required int lastPageNumber,
    @JsonKey(required: true, nullable: true)
        required int? from,
    @JsonKey(required: true, nullable: true)
        required int? to,
    @JsonKey(
      required: true,
      nullable: false,
      name: 'per_page',
      fromJson: _perPageProductCountFromJson,
    )
        required int perPageProductCount,
    @JsonKey(required: true, nullable: false, name: 'total')
        required int totalProducts,
  }) = _MetaData;

  factory MetaData.fromJson(Map<String, Object?> json) =>
      _$MetaDataFromJson(json);
}

int _perPageProductCountFromJson(dynamic val) {
  return int.parse(val);
}
