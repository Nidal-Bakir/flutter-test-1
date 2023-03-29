import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

typedef VoidCallbackWithParam<T> = void Function(T onCallback);

class NameTextField extends StatelessWidget {
  final VoidCallbackWithParam<String> onSave;
  final String hint;
  final String? initName;

  const NameTextField({
    Key? key,
    required this.onSave,
    required this.hint,
    this.initName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initName,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      keyboardType: TextInputType.name,
      validator: isValidName,
      onSaved: (name) => onSave(name!),
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }

  String? isValidName(String? name) {
    if (name == null || name.isEmpty || name.length < 3) {
      return 'invalid_name'.tr();
    }
    return null;
  }
}
