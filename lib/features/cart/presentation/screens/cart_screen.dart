import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit_flutter/core/widgets/loading_indicator.dart';
import 'package:qit_flutter/core/widgets/no_internet_connection.dart';
import 'package:qit_flutter/core/widgets/sized_box_16_h.dart';
import 'package:qit_flutter/features/cart/presentation/managers/cart_bloc.dart';
import 'package:qit_flutter/features/cart/presentation/widgets/cart_item.dart';

import '../../../products/presentation/widgets/primary_color_background_for_scaffold.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const CartEvent.cartLoaded());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryColorBackgroundForScaffold(
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
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return state.when(
                  loadSuccess: (cart) {
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
                  inProgress: () => const Center(child: LoadingIndicator()),
                  loadFailure: (error) {
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
                              context
                                  .read<CartBloc>()
                                  .add(const CartEvent.cartLoaded());
                            },
                            child: Text('retry'.tr()),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            Divider(thickness: 5, height: 5, color: theme.colorScheme.primary),
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  loadSuccess: (cart) {
                    return SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total:',
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
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
