import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/loading_indicator.dart';
import '../../../../core/widgets/no_internet_connection.dart';
import '../../../../core/widgets/sized_box_16_h.dart';
import '../../../products/presentation/widgets/primary_color_background_for_scaffold.dart';
import '../managers/cart_provider.dart';
import '../widgets/cart_item.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartNotifierProvider);
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () async {
        ref.read(cartNotifierProvider.notifier).saveCart();
        return true;
      },
      child: PrimaryColorBackgroundForScaffold(
        scaffoldWidget: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(
              'cart'.tr(),
              style: theme.textTheme.headline5,
            ),
          ),
          body: Column(
            children: [
              cart.when(
                data: (cart) {
                  if (cart == null) {
                    return const SizedBox.shrink();
                  }

                  if (cart.products == null) {
                    return const SizedBox.shrink();
                  }

                  return Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return CartItem(
                          key: ValueKey(cart.products![index].productId),
                          cartProduct: cart.products![index],
                        );
                      },
                      itemCount: cart.products!.length,
                    ),
                  );
                },
                loading: () => const Center(child: LoadingIndicator()),
                error: (error, _) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (error is NoInternetConnection)
                          Text(
                            'please_check_your_internet_connection'.tr(),
                            style: theme.textTheme.subtitle2,
                          ),
                        if (error is! NoInternetConnection)
                          Text(
                            'an_unexpected_error_occurred'.tr(),
                            style: theme.textTheme.subtitle2,
                          ),
                        const SizedBox16H(),
                        ElevatedButton(
                          onPressed: () {
                            ref.read(cartNotifierProvider.notifier).loadCart();
                          },
                          child: Text('retry'.tr()),
                        )
                      ],
                    ),
                  );
                },
              ),
              Divider(
                  thickness: 5, height: 5, color: theme.colorScheme.primary),
              cart.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                data: (cart) {
                  if (cart == null) {
                    return const SizedBox.shrink();
                  }
                  return SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${'total'.tr()}:',
                            style: theme.textTheme.headline6,
                          ),
                          Text(
                            '${cart.totalPrice.currency} ${cart.totalPrice.value.toStringAsFixed(2)}',
                            style: theme.textTheme.headline6,
                          ),
                          // Text(),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
