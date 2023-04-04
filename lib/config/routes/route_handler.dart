import 'package:easy_localization/easy_localization.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_flutter/core/auth/presentation/managers/auth_provider.dart';
import 'package:qit_flutter/core/auth/presentation/screens/login_screen.dart';
import 'package:qit_flutter/core/auth/presentation/screens/register_screen.dart';
import 'package:qit_flutter/core/widgets/loading_indicator.dart';
import 'package:qit_flutter/core/widgets/restart_app.dart';

import '../../features/cart/presentation/screens/cart_screen.dart';
import '../../features/products/models/product/product.dart';
import '../../features/products/presentation/screens/Latest_products_screen.dart';
import '../../features/products/presentation/screens/product_screen.dart';
import '../../features/products/presentation/screens/search_products_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

final rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const SplashScreen();
});

final loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LogInScreen();
});

final registerHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const RegisterScreen();
});

final productsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LatestProductsScreen();
});

final cartHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const AuthGuard(
    guardedChild: CartScreen(),
  );
});

final productsSearchHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const SearchProductsScreen();
});

final productHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  final product = context!.settings!.arguments as Product;

  return ProductScreen(product: product);
});

final logoutDialogHandler = Handler(
    type: HandlerType.function,
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      final textTheme = Theme.of(context!).textTheme;

      bool terminateAllSessions = false;
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("logout".tr(), style: textTheme.headline6),
            content: StatefulBuilder(
              builder: (BuildContext context,
                  void Function(void Function()) setState) {
                return CheckboxListTile(
                  title: Text(
                    'terminate_all_sessions'.tr(),
                    // style: textTheme.b,
                  ),
                  onChanged: (value) {
                    setState(() {
                      terminateAllSessions = value!;
                    });
                  },
                  value: terminateAllSessions,
                );
              },
            ),
            actions: <Widget>[
              Consumer(
                builder: (context, ref, child) {
                  ref.listen(authNotifierProvider, (previous, next) {
                    next.whenData((value) => RestartApp.restart(context));
                  });

                  final authState = ref.watch(authNotifierProvider);

                  return authState.maybeWhen(
                    loading: () => const LoadingIndicator(),
                    orElse: () {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                        child: TextButton(
                          onPressed: () {
                            ref.read(authNotifierProvider.notifier).logOut(
                                terminateAllSessions: terminateAllSessions);
                          },
                          child: Text(
                            "logout_action".tr().toUpperCase(),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          );
        },
      );
      return;
    });

final expiredSessionDialogHandler = Handler(
    type: HandlerType.function,
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      final textTheme = Theme.of(context!).textTheme;

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "expired_session".tr(),
              style: textTheme.headline6,
            ),
            content: Text(
              'You_need_to_login'.tr(),
              // style: textTheme.b,
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("okay".tr()),
              ),
            ],
          );
        },
      ).then((value) => RestartApp.restart(context));
      return;
    });

class AuthGuard extends ConsumerWidget {
  final Widget guardedChild;

  const AuthGuard({
    required this.guardedChild,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.read(currentUserProvider);
    if (currentUser == null) {
      return const LogInScreen();
    }
    return guardedChild;
  }
}
