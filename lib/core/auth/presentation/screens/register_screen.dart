import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/loading_indicator.dart';
import '../../../widgets/qit_logo.dart';
import '../../../widgets/sized_box_16_h.dart';
import '../managers/auth_provider.dart';
import '../widgets/email_text_field.dart';
import '../widgets/name_text_field.dart';
import '../widgets/password_with_confirmation.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _keyFrom = GlobalKey<FormState>();
  var _email = '';
  var _password = '';
  var _name = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: QITLogo(
                    width: 150,
                  ),
                ),
                Hero(
                  tag: 'card',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 32.0,
                    ),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 40.0,
                        ),
                        child: Form(
                          key: _keyFrom,
                          child: Column(
                            children: [
                              Text(
                                'create_account'.tr(),
                                style: theme.textTheme.headline5,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              NameTextField(
                                hint: 'name'.tr(),
                                onSave: (name) {
                                  _name = name;
                                },
                              ),
                              const SizedBox16H(),
                              EmailTextField(onSave: (email) {
                                _email = email;
                              }),
                              const SizedBox16H(),
                              PasswordWithConfirmation(
                                onSave: (String? password) {
                                  _password = password!;
                                },
                              ),
                              const SizedBox16H(),
                              const SizedBox16H(),
                              Consumer(
                                builder: (context, ref, child) {
                                  final authState =
                                      ref.watch(authNotifierProvider);

                                  return authState.maybeWhen(
                                    orElse: () {
                                      return ElevatedButton(
                                        child: Text('create_account'.tr()),
                                        onPressed: () => _onPressed(ref),
                                      );
                                    },
                                    loading: () => const LoadingIndicator(),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onPressed(WidgetRef ref) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();

      ref.read(authNotifierProvider.notifier).register(
            name: _name,
            email: _email,
            password: _password,
            passwordConf: _password,
          );
    }
  }
}
