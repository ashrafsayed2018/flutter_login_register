import 'package:flutter/material.dart';
import './text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  const RoundedInputField(
      {Key? key, this.hintText, this.icon = Icons.email, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        onChanged: onChanged!,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          hintText: hintText!,
          hintTextDirection: TextDirection.rtl,
          icon: Icon(icon),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
