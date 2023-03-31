import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:qit_flutter/features/cart/models/cart.dart';

final _chageProcutquantity = <int, int>{};
final _removedProducts = <int>{};

Cart addProductToCartLocally(
    {required int productId, required int quantity, required Cart? cart2}) {
  var cart = cart2;
  assert(cart != null);
  assert(quantity >= 0);

  _chageProcutquantity[productId] = quantity;

  var productInCart =
      cart!.products!.firstWhere((e) => e.productId == productId);

  final index = cart.products!.indexOf(productInCart);

  final newList = [...cart.products!];

  final totalPrice = cart.totalPrice;
  if (quantity == 0) {
    newList.removeAt(index);

    cart = cart.copyWith(
      products: newList,
      totalPrice: totalPrice.copyWith(
        value: totalPrice.value - productInCart.unitPrice.value,
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

    newList[index] = productInCart;

    cart = cart.copyWith(
      products: newList,
      totalPrice: totalPrice.copyWith(
        value: totalPrice.value +
            (productInCart.unitPrice.value * (isAdd ? 1 : -1)),
      ),
    );
  }

  return cart;
}

void main() {
  test('description', () async {
    final p = Cart.fromJson(jsonDecode(s)['data']);
    final p2 = addProductToCartLocally(productId: 2, quantity: 2, cart2: p);
    // print(
    //     p.products!.firstWhere((element) => element.productId == 2).totalPrice);
    // print(p2.products!
    //     .firstWhere((element) => element.productId == 2)
    //     .totalPrice);

    print(p.totalPrice);
    print(p2.totalPrice);
  });
}

String s = '''
{
    "data": {
        "id": 1,
        "total": {
            "value": "22233.35",
            "currency": "SYP",
            "formatted": "SYP22,233"
        },
        "items": 3,
        "products": [
            {
                "id": 20,
                "product_id": 1,
                "total": {
                    "value": "3764.33",
                    "currency": "SYP",
                    "formatted": "SYP3,764"
                },
                "unit_price": {
                    "value": "3764.33",
                    "currency": "SYP",
                    "formatted": "SYP3,764"
                },
                "total_quantity": 1
            },
            {
                "id": 21,
                "product_id": 2,
                "total": {
                    "value": "9872.22",
                    "currency": "SYP",
                    "formatted": "SYP9,872"
                },
                "unit_price": {
                    "value": "3290.74",
                    "currency": "SYP",
                    "formatted": "SYP3,291"
                },
                "total_quantity": 3
            },
            {
                "id": 22,
                "product_id": 3,
                "total": {
                    "value": "8596.80",
                    "currency": "SYP",
                    "formatted": "SYP8,597"
                },
                "unit_price": {
                    "value": "2865.60",
                    "currency": "SYP",
                    "formatted": "SYP2,866"
                },
                "total_quantity": 3
            }
        ]
    }
}
''';
