import 'package:easy_localization/easy_localization.dart' as loc;
import 'package:flutter/material.dart';

import 'password_text_field.dart';

class PasswordWithConfirmation extends StatefulWidget {
  final Function(String? password) onSave;
  final double heightBetweenTextFormFields;

  const PasswordWithConfirmation(
      {Key? key, required this.onSave, this.heightBetweenTextFormFields = 16})
      : super(key: key);

  @override
  State<PasswordWithConfirmation> createState() =>
      _PasswordWithConfirmationState();
}

class _PasswordWithConfirmationState extends State<PasswordWithConfirmation> {
  var _obscureText = true;
  var _obscureText2 = true;
  var _password1 = '';
  var _password2 = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          textDirection: TextDirection.ltr,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (password1) {
            _password1 = password1 ?? '';
            return isPasswordCompliantAndEqualToPassword2(
              password1,
              _password2,
            );
          },
          keyboardType: TextInputType.visiblePassword,
          obscureText: _obscureText,
          decoration: InputDecoration(
            hintText: 'password'.tr(),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              icon: Icon(
                _obscureText
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded,
              ),
            ),
          ),
        ),
        SizedBox(
          height: widget.heightBetweenTextFormFields,
        ),
        TextFormField(
          textDirection: TextDirection.ltr,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (password2) {
            _password2 = password2 ?? '';
            return isPasswordCompliantAndEqualToPassword2(
              password2,
              _password1,
            );
          },
          onSaved: widget.onSave,
          keyboardType: TextInputType.visiblePassword,
          obscureText: _obscureText2,
          decoration: InputDecoration(
            hintText: 're_password'.tr(),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText2 = !_obscureText2;
                });
              },
              icon: Icon(
                _obscureText2
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String? isPasswordCompliantAndEqualToPassword2(
    String? password1,
    String? password2,
  ) {
    final isValidPassword = isPasswordCompliant(password1);
    if (isValidPassword == null) {
      if (password1 != password2) {
        return 'the_tow_passwords_not_match_each_other'.tr();
      } else {
        return null;
      }
    } else {
      return isValidPassword;
    }
  }
}
