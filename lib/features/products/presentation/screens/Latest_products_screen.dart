import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_flutter/features/cart/presentation/managers/cart_provider.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../config/routes/routes.dart';
import '../../../../core/auth/presentation/managers/auth_provider.dart';
import '../../../../core/error/errors.dart';
import '../managers/products_provider.dart';
import '../widgets/menu_widget.dart';
import '../widgets/primary_color_background_for_scaffold.dart';
import '../widgets/products_view.dart';

class LatestProductsScreen extends StatelessWidget {
  const LatestProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Consumer(
        builder: (context, ref, child) {
          ref.listen(securityErrorStreamProvider, (previous, next) {
            next.whenData((error) {
              if (error is UnauthenticatedServerError) {
                AppRouter.router
                    .navigateTo(context, Routes.expiredSessionDialog);

                return;
              }
            });
          });

          return child!;
        },
        child: PrimaryColorBackgroundForScaffold(
          scaffoldWidget: Scaffold(
            backgroundColor: Colors.transparent,
            drawer: const Drawer(child: MenuScreen()),
            appBar: AppBar(
              title: Text(
                'QIT',
                style: theme.textTheme.headline5,
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    AppRouter.router.navigateTo(
                      context,
                      Routes.productsSearch,
                      transition: TransitionType.fadeIn,
                    );
                  },
                  icon: const Icon(Icons.search_rounded),
                ),
                Consumer(
                  builder: (context, ref, child) {
                    final itemsCount = ref.watch(itemsInCartCountProvider);

                    return Stack(
                      alignment: AlignmentDirectional.centerStart,
                      clipBehavior: Clip.antiAlias,
                      children: [
                        IconButton(
                          onPressed: () {
                            AppRouter.router.navigateTo(
                              context,
                              Routes.cart,
                              transition: TransitionType.inFromBottom,
                            );
                          },
                          icon: const Icon(Icons.shopping_cart_rounded),
                        ),
                        if (itemsCount != 0)
                          Positioned.directional(
                            textDirection: Directionality.of(context),
                            top: 2,
                            end: 2,
                            child: IgnorePointer(
                              child: Material(
                                color: Colors.red[600],
                                type: MaterialType.circle,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(itemsCount.toString()),
                                ),
                              ),
                            ),
                          )
                      ],
                    );
                  },
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: ProductsView(
                onLoadMore: (ref) {
                  ref.read(productsNotifierProvider.notifier).getProducts();
                },
              ),
            ),
          ),
        ));
  }
}
