import 'package:flutter/material.dart';
import 'package:project_trying/Models/userLogin.dart';
import 'package:project_trying/Services/api.services.dart';
import 'package:project_trying/screens/Screens/Login/components/background.dart';
import 'package:project_trying/screens/Screens/Signup/signup_screen.dart';
import 'package:project_trying/screens/components/forgot_password.dart';
import 'package:project_trying/screens/components/rounded_button.dart';
import 'package:project_trying/screens/components/rounded_input_field.dart';
import 'package:project_trying/screens/components/rounded_password_field.dart';
import 'package:project_trying/screens/home.dart';
import 'package:project_trying/screens/homePage.dart';

class Body extends StatelessWidget {
  final UserLogin _userLogin;
  Body(this._userLogin);
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  updatePhone() {
    _userLogin.phoneNumber = phoneController.text;

    print(_userLogin.phoneNumber);
  }

  updatePassword() {
    _userLogin.password = passwordController.text;
    print(_userLogin.password);
  }

  Future<String> login() async {
    var data = _userLogin;
    var registerResponse = await APIServices.login(_userLogin);
    print(registerResponse);
    return registerResponse;
  }

  @override
  Widget build(BuildContext context) {
    phoneController.text = _userLogin.phoneNumber;
    passwordController.text = _userLogin.password;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.05), BlendMode.dstATop),
                  image: AssetImage("assets/images/welcom.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/icon.png",
              height: size.height * 0.20,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              icon: Icons.phone,
              controller: phoneController,
              hintText: "Your Phone",
              onChanged: (value) => {updatePhone()},
            ),
            RoundedPasswordField(
              controller: passwordController,
              onChanged: (value) => {updatePassword()},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                var x = login(); ///// get value and check
                if (x == "Success") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                }
                else
                {

                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
