import 'package:easy_localization/easy_localization.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:qit_flutter/config/routes/app_router.dart';
import 'package:qit_flutter/core/error/errors.dart';
import 'package:qit_flutter/core/utils/global_function.dart';
import 'package:qit_flutter/core/widgets/restart_app.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/auth/presentation/managers/auth_bloc.dart';
import '../../../../core/widgets/no_internet_connection.dart';
import '../managers/products_bloc.dart';
import '../widgets/menu_widget.dart';
import '../widgets/primary_color_background_for_scaffold.dart';
import '../widgets/products_view.dart';

class LatestProductsScreen extends StatelessWidget {
  const LatestProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          authSuccess: (user) {
            if (user == null) {
              // the user logged out
              RestartApp.restart(context);
            }
          },
          authFailure: (error) {
            if (error is UnauthenticatedServerError) {
              AppRouter.router.navigateTo(context, Routes.expiredSessionDialog);
              return;
            }
            if (error is NoInternetConnection) {
              showErrorSnackBar(
                context,
                'please_check_your_internet_connection'.tr(),
              );
            }
            if (error is ServerError) {
              showErrorSnackBar(context, error.message);
            }
          },
        );
      },
      child: BlocProvider<ProductsBloc>(
        create: (context) => GetIt.I.get<ProductsBloc>()
          ..add(const ProductsEvent.productsLoaded()),
        child: Builder(
          builder: (context) {
            final latestProductsBloc = context.read<ProductsBloc>();
            return PrimaryColorBackgroundForScaffold(
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
                    IconButton(
                      onPressed: () {
                        AppRouter.router.navigateTo(
                          context,
                          Routes.productsSearch,
                          transition: TransitionType.inFromBottom,
                        );
                      },
                      icon: const Icon(Icons.shopping_cart_rounded),
                    ),
                  ],
                ),
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: ProductsView(
                    onLoadMore: (context) {
                      latestProductsBloc.add(
                        const ProductsEvent.productsLoaded(),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
