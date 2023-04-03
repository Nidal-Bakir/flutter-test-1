import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../config/routes/routes.dart';
import '../../../utils/global_function.dart';
import '../../../widgets/loading_indicator.dart';
import '../../../widgets/qit_logo.dart';
import '../../../widgets/restart_app.dart';
import '../../../widgets/sized_box_16_h.dart';
import '../managers/auth_provider.dart';
import '../widgets/create_account_text_button.dart';
import '../widgets/email_text_field.dart';
import '../widgets/forget_password_text_button.dart';
import '../widgets/password_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _keyFrom = GlobalKey<FormState>();
  var _email = '';
  var _password = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox16H(),
                const SizedBox16H(),
                const Hero(
                  tag: 'logo',
                  child: QITLogo(
                    width: 150,
                  ),
                ),
                const SizedBox16H(),
                Hero(
                  tag: 'card',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 40.0,
                          horizontal: 40.0,
                        ),
                        child: Form(
                          key: _keyFrom,
                          child: Column(
                            children: [
                              EmailTextField(onSave: (email) {
                                _email = email;
                              }),
                              const SizedBox16H(),
                              PasswordTextField(onSave: (password) {
                                _password = password!;
                              }),
                              const ForgetPasswordTextButton(),
                              _LoginState(
                                onLoginPressed: onLoginPressed,
                              ),
                              const SizedBox16H(),
                              const SizedBox(
                                height: 32.0,
                              ),
                              const CreateAccountTextButton(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox16H(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed(ref) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();
      ref.read(authNotifierProvider.notifier).login(
            email: _email.trim(),
            password: _password.trim(),
          );
    }
  }
}

class _LoginState extends ConsumerWidget {
  final void Function(WidgetRef ref) onLoginPressed;

  const _LoginState({
    required this.onLoginPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authNotifierProvider, (previous, next) {
      next.whenOrNull(
        data: (user) {
          RestartApp.restart(context);
        },
        error: (error, _) {
          showErrorSnackBar(
            context,
            'error_while_login'.tr(),
          );
        },
      );
    });

    final authState = ref.watch(authNotifierProvider);

    return authState.maybeWhen(
      loading: () => const LoadingIndicator(),
      orElse: () {
        return Column(
          children: [
            ElevatedButton(
              child: Text('login'.tr()),
              onPressed: () => _onPressed(ref),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Flexible(child: Divider()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('or'.tr()),
                ),
                const Flexible(child: Divider()),
              ],
            ),
            TextButton(
              child: Text('login_as_guest'.tr()),
              onPressed: () {
                AppRouter.router.navigateTo(
                  context,
                  Routes.products,
                  clearStack: true,
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _onPressed(WidgetRef ref) {
    onLoginPressed(ref);
  }
}
