import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../config/routes/routes.dart';
import '../../../../core/auth/presentation/managers/auth_provider.dart';
import '../../../../core/error/errors.dart';
import '../../../../core/utils/global_function.dart';
import '../../../../core/widgets/qit_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Spacer(flex: 3),
              QITLogo(
                width: 150,
              ),
              _UserAuthState(),
              Spacer(flex: 3),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'QIT App 2022 all right reserved ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _UserAuthState extends ConsumerWidget {
  const _UserAuthState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authNotifierProvider, (previous, next) {
      next.whenOrNull(
        data: (user) {
          if (user == null) {
            AppRouter.router.navigateTo(
              context,
              Routes.login,
              replace: true,
            );
          } else {
            AppRouter.router.navigateTo(
              context,
              Routes.products,
              replace: true,
            );
          }
        },
        error: (error, _) {
          if (error is UnauthenticatedServerError) {
            AppRouter.router.navigateTo(
              context,
              Routes.login,
              replace: true,
            );
          } else {
            showErrorSnackBar(
              context,
              'an_unexpected_error_occurred'.tr(),
            );
          }
        },
      );
    });

    final authState = ref.watch(authNotifierProvider);
    return authState.maybeWhen(
      error: (error, _) {
        if (error is! UnauthenticatedServerError) {
          return ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.replay_rounded),
          );
        }
        return const SizedBox.shrink();
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
