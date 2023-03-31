// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'total', 'items'],
  );
  return _$_Cart(
    cartId: json['id'] as int,
    totalPrice: TotalPrice.fromJson(json['total'] as Map<String, dynamic>),
    itemsCount: json['items'] as int,
    products: (json['products'] as List<dynamic>?)
        ?.map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'id': instance.cartId,
      'total': instance.totalPrice,
      'items': instance.itemsCount,
      'products': instance.products,
    };

_$_TotalPrice _$$_TotalPriceFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['value', 'currency', 'formatted'],
  );
  return _$_TotalPrice(
    value: _valueFromJson(json['value']),
    currency: json['currency'] as String,
    formatted: json['formatted'] as String,
  );
}

Map<String, dynamic> _$$_TotalPriceToJson(_$_TotalPrice instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
      'formatted': instance.formatted,
    };

_$_CartProduct _$$_CartProductFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'product_id',
      'total_quantity',
      'total',
      'unit_price'
    ],
  );
  return _$_CartProduct(
    cartProductId: json['id'] as int,
    productId: json['product_id'] as int,
    totalQuantity: json['total_quantity'] as int,
    totalPrice: TotalPrice.fromJson(json['total'] as Map<String, dynamic>),
    unitPrice: TotalPrice.fromJson(json['unit_price'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$_CartProductToJson(_$_CartProduct instance) =>
    <String, dynamic>{
      'id': instance.cartProductId,
      'product_id': instance.productId,
      'total_quantity': instance.totalQuantity,
      'total': instance.totalPrice,
      'unit_price': instance.unitPrice,
    };
