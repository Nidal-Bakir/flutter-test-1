import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qit_flutter/config/routes/app_router.dart';

import '../../../../config/routes/routes.dart';

class CreateAccountTextButton extends StatefulWidget {
  const CreateAccountTextButton({Key? key}) : super(key: key);

  @override
  State<CreateAccountTextButton> createState() =>
      _CreateAccountTextButtonState();
}

class _CreateAccountTextButtonState extends State<CreateAccountTextButton> {
  late final TapGestureRecognizer _tapGestureRecognizerForCrateAccount =
      TapGestureRecognizer()..onTap = _onTap;

  @override
  void dispose() {
    super.dispose();
    _tapGestureRecognizerForCrateAccount.dispose();
  }

  void _onTap() {
    HapticFeedback.selectionClick();
    AppRouter.router.navigateTo(context, Routes.register);
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: 'new_to_the_world_of_OIT'.tr(),
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(
              text: 'create_account'.tr(),
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
              recognizer: _tapGestureRecognizerForCrateAccount,
            )
          ]),
    );
  }
}
