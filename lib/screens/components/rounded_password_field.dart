import 'package:flutter/material.dart';
import 'package:project_trying/screens/components/text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  RoundedPasswordField({Key key, this.onChanged, this.controller})
      : super(key: key);

  @override
  _RoundedPasswordFieldState createState() =>
      _RoundedPasswordFieldState(onChanged, controller);
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool hidePassword = true;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  _RoundedPasswordFieldState(this.onChanged, this.controller);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: Color(0xFF2c2750),
        validator: (input) => input.length < 3
            ? "Password should be more than 3 characters"
            : null,
        obscureText: hidePassword,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Color(0xFF2c2750),
          ),
          suffixIcon: IconButton(
            color: Theme.of(context).accentColor.withOpacity(0.4),
            icon: Icon(hidePassword ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
