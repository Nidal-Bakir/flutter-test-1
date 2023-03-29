import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  const ForgetPasswordTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: TextButton(
        onPressed: () {},
        child: Text('forgot_password'.tr(),
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            )),
      ),
    );
  }
}
