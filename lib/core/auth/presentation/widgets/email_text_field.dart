import 'package:easy_localization/easy_localization.dart' as loc;
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final Function(String email) onSave;

  final String? initEmail;
  final bool? readOnly;

  const EmailTextField({
    Key? key,
    required this.onSave,
    this.initEmail,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.ltr,
      readOnly: readOnly ?? false,
      initialValue: initEmail,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      keyboardType: TextInputType.emailAddress,
      validator: isValidEmail,
      onSaved: (name) => onSave(name!),
      decoration: InputDecoration(
        hintText: 'email'.tr(),
      ),
    );
  }
}

String? isValidEmail(String? email) {
  if (email == null || email == '') {
    return 'enter_a_email'.tr();
  }
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  if (emailValid) {
    return null;
  }
  return 'not_valid_email_address'.tr();
}
