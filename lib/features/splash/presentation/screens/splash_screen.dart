import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit_flutter/config/routes/app_router.dart';
import 'package:qit_flutter/core/auth/presentation/managers/auth_bloc.dart';
import 'package:qit_flutter/core/error/errors.dart';
import 'package:qit_flutter/core/utils/global_function.dart';
import 'package:qit_flutter/core/widgets/qit_logo.dart';

import '../../../../config/routes/routes.dart';

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
            children: [
              const Spacer(flex: 3),
              const QITLogo(
                width: 150,
              ),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(
                    authSuccess: (user) {
                      if (user == null) {
                        AppRouter.router.navigateTo(
                          context,
                          Routes.login,
                          replace: true,
                        );
                      }
                    },
                    authUpdateSuccess: (user) {
                      AppRouter.router.navigateTo(
                        context,
                        Routes.products,
                        replace: true,
                      );
                    },
                    authFailure: (error) {
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
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    authFailure: (error) {
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
                },
              ),
              const Spacer(flex: 3),
              const Padding(
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
