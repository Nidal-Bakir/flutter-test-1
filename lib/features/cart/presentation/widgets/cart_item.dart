import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit_flutter/features/cart/models/cart.dart';
import 'package:qit_flutter/features/cart/presentation/managers/cart_bloc.dart';

class CartItem extends StatelessWidget {
  final CartProduct cartProduct;

  const CartItem({Key? key, required this.cartProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Dismissible(
        onDismissed: (direction) {
          context.read<CartBloc>().add(
                CartEvent.productRemoved(
                  cartProduct.productId,
                  true,
                ),
              );
        },
        key: ValueKey(cartProduct.productId),
        child: Card(
          elevation: 1.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('${cartProduct.productId} (Name)',
                        style: theme.textTheme.headline6),
                    Text(
                      '${cartProduct.unitPrice.currency} '
                      '${cartProduct.unitPrice.value.toStringAsFixed(2)}',
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Material(
                          child: InkWell(
                            onTap: cartProduct.totalQuantity == 1
                                ? null
                                : () {
                                    context
                                        .read<CartBloc>()
                                        .add(CartEvent.productAdded(
                                          productId: cartProduct.productId,
                                          quantity:
                                              cartProduct.totalQuantity - 1,
                                          locally: true,
                                        ));
                                  },
                            child: const Center(child: Icon(Icons.remove)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        cartProduct.totalQuantity.toString(),
                        style: theme.textTheme.subtitle2,
                      ),
                      const SizedBox(width: 8),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Material(
                          color: theme.colorScheme.primary,
                          child: InkWell(
                            onTap: cartProduct.totalQuantity == 0
                                ? null
                                : () {
                                    context
                                        .read<CartBloc>()
                                        .add(CartEvent.productAdded(
                                          productId: cartProduct.productId,
                                          quantity:
                                              cartProduct.totalQuantity + 1,
                                          locally: true,
                                        ));
                                  },
                            child: const Center(child: Icon(Icons.add)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
