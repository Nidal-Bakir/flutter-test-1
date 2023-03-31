import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  factory Cart({
    @JsonKey(name: 'id', required: true, nullable: false) required int cartId,
    @JsonKey(required: true, nullable: false, name: 'total')
        required TotalPrice totalPrice,
    @JsonKey(required: true, nullable: false, name: 'items')
        required int itemsCount,
    @JsonKey(required: false, nullable: true)
        required List<CartProduct>? products,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);
}

@freezed
class TotalPrice with _$TotalPrice {
  factory TotalPrice({
    @JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
        required double value,
    @JsonKey(required: true, nullable: false) required String currency,
    @JsonKey(required: true, nullable: false) required String formatted,
  }) = _TotalPrice;

  factory TotalPrice.fromJson(Map<String, Object?> json) =>
      _$TotalPriceFromJson(json);
}

double _valueFromJson(dynamic value) {
  return double.parse(value);
}

@freezed
class CartProduct with _$CartProduct {
  factory CartProduct({
    @JsonKey(name: 'id', required: true, nullable: false)
        required int cartProductId,
    @JsonKey(name: 'product_id', required: true, nullable: false)
        required int productId,
    @JsonKey(name: 'total_quantity', required: true, nullable: false)
        required int totalQuantity,
    @JsonKey(name: 'total', required: true, nullable: false)
        required TotalPrice totalPrice,
    @JsonKey(name: 'unit_price', required: true, nullable: false)
        required TotalPrice unitPrice,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, Object?> json) =>
      _$CartProductFromJson(json);
}
