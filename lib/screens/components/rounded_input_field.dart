import 'package:flutter/material.dart';

import 'package:project_trying/screens/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextInputType keyType;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.controller,
    this.keyType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: Color(0xFF2c2750),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color(0xFF2c2750),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
