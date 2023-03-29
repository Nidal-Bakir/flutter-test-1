import 'package:easy_localization/easy_localization.dart' as loc;
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final Function(String? password) onSave;

  const PasswordTextField({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  var _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.ltr,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: isPasswordCompliant,
      onSaved: widget.onSave,
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
    );
  }
}

String? isPasswordCompliant(
  String? password,
) {
  if (password == null) {
    return 'invalid_password'.tr();
  }
  if (password.isEmpty || password.length < 8) {
    return 'invalid_password'.tr();
  }
  return null;
}
