import 'package:flutter/material.dart';
import 'package:project_trying/Models/userLogin.dart';
import 'package:project_trying/screens/Screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage("assets/images/images (1).jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Body(UserLogin("", "")),
      ),
    );
  }
}
