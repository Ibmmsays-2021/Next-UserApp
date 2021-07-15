import 'package:flutter/material.dart';
import 'package:project_trying/screens/Screens/Login/login_screen.dart';
import 'package:project_trying/screens/Screens/Signup/signup_screen.dart';
import 'package:project_trying/screens/Screens/Welcome/components/background.dart';
import 'package:project_trying/screens/components/already_have_an_account_acheck.dart';
import 'package:project_trying/screens/components/rounded_button.dart';
import 'package:project_trying/screens/components/rounded_button_with_image.dart';
import 'package:project_trying/screens/home.dart';
import 'package:project_trying/screens/homePage.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
                  child: Image.asset(
                    "assets/images/Yellow .png",
                    width: 250,
                    height: 250,
                  ),
                )
              ],
            ),
            RoundedButton(
              text: "Continue Without Login",
              color: Colors.green,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "LOG IN",
              color: Colors.green,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
              child: AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
