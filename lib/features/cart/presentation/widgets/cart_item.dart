import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/cart.dart';
import '../managers/cart_provider.dart';

class CartItem extends StatelessWidget {
  final CartProduct cartProduct;

  const CartItem({Key? key, required this.cartProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Consumer(
        builder: (context, ref, child) {
          return Dismissible(
            key: ValueKey(cartProduct.productId),
            onDismissed: (_) {
              ref.read(cartNotifierProvider.notifier).removeProduct(
                  productId: cartProduct.productId, locally: true);
            },
            child: child!,
          );
        },
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
                      DecrementQuantityButton(
                        productId: cartProduct.productId,
                        totalQuantity: cartProduct.totalQuantity,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        cartProduct.totalQuantity.toString(),
                        style: theme.textTheme.subtitle2,
                      ),
                      const SizedBox(width: 8),
                      IncrementQuantityButton(
                        productId: cartProduct.productId,
                        totalQuantity: cartProduct.totalQuantity,
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

class IncrementQuantityButton extends ConsumerWidget {
  final int totalQuantity;
  final int productId;

  const IncrementQuantityButton({
    required this.totalQuantity,
    required this.productId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Material(
        color: theme.colorScheme.primary,
        child: InkWell(
          onTap: () {
            ref.read(cartNotifierProvider.notifier).addProduct(
                productId: productId,
                quantity: totalQuantity + 1,
                locally: true);
          },
          child: const Center(child: Icon(Icons.add)),
        ),
      ),
    );
  }
}

class DecrementQuantityButton extends ConsumerWidget {
  final int totalQuantity;
  final int productId;

  const DecrementQuantityButton({
    required this.totalQuantity,
    required this.productId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Material(
        child: InkWell(
          onTap: totalQuantity == 1
              ? null
              : () {
                  ref.read(cartNotifierProvider.notifier).addProduct(
                      productId: productId,
                      quantity: totalQuantity - 1,
                      locally: true);
                },
          child: const Center(child: Icon(Icons.add)),
        ),
      ),
    );
  }
}
