import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final Function press;
  const ForgotPassword({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: press,
          child: Text(
            "Forgot Password?",
            style: TextStyle(
              color: Color(0xFF2c2750),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
