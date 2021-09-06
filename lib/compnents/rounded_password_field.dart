import 'package:flutter/material.dart';
import '../constants.dart';
import '../compnents/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        onChanged: onChanged!,
        textDirection: TextDirection.rtl,
        decoration: const InputDecoration(
          hintTextDirection: TextDirection.rtl,
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor,
          ),
          hintText: 'الرقم السري',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
