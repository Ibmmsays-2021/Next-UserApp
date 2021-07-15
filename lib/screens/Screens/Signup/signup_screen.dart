import 'package:flutter/material.dart';
import 'package:project_trying/Models/userRegistartion.dart';
import 'package:project_trying/screens/Screens/Signup/components/body.dart';

class SignUpScreen extends StatelessWidget {
  UserRegistartion _userReg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage("assets/images/image_by_url.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Body(UserRegistartion("", "", "", "", "")),
      ),
    );
  }
}
