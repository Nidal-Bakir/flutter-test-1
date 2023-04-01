import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit_flutter/config/routes/app_router.dart';
import 'package:qit_flutter/config/routes/routes.dart';
import 'package:qit_flutter/core/utils/global_function.dart';
import 'package:qit_flutter/core/widgets/sized_box_16_h.dart';

import '../../../widgets/loading_indicator.dart';
import '../../../widgets/qit_logo.dart';
import '../../../widgets/restart_app.dart';
import '../managers/auth_bloc.dart';
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
                              const SizedBox16H(),
                              BlocConsumer<AuthBloc, AuthState>(
                                listener: (context, state) {
                                  state.whenOrNull(
                                    authSuccess: (user) {
                                      RestartApp.restart(context);
                                    },
                                    authFailure: (error) {
                                      showErrorSnackBar(
                                        context,
                                        'error_while_login'.tr(),
                                      );
                                    },
                                  );
                                },
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    inProgress: () => const LoadingIndicator(),
                                    orElse: () => Column(
                                      children: [
                                        ElevatedButton(
                                          child: Text('login'.tr()),
                                          onPressed: () => _onPressed(context),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Flexible(child: Divider()),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
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
                                    ),
                                  );
                                },
                              ),
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

  void _onPressed(BuildContext context) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();
      context.read<AuthBloc>().add(
            AuthEvent.loginRequested(
              email: _email.trim(),
              password: _password.trim(),
            ),
          );
    }
  }
}
