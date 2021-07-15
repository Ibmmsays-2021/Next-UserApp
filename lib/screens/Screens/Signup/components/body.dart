import 'package:flutter/material.dart';
import 'package:project_trying/Models/userRegistartion.dart';
import 'package:project_trying/Services/api.services.dart';
import 'package:project_trying/screens/Screens/Signup/components/background.dart';
import 'package:project_trying/screens/components/rounded_button.dart';
import 'package:project_trying/screens/components/rounded_input_field.dart';
import 'package:project_trying/screens/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  final UserRegistartion _userReg;
  Body(this._userReg);

  var nameController = TextEditingController();
  var adressController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPaswordController = TextEditingController();
  updateName() {
    _userReg.name = nameController.text;

    print(_userReg.name);
  }

  updateAdress() {
    _userReg.address = adressController.text;
    print(_userReg.address);
  }

  updateEmail() {
    _userReg.email = emailController.text;
    print(_userReg.email);
  }

  updatePassword() {
    _userReg.password = passwordController.text;
    print(_userReg.password);
  }

  updateConfirmPassword() {
    _userReg.rePassword = confirmPaswordController.text;
    print(_userReg.rePassword);
  }

  void register() async {
    var data = _userReg;
    var registerResponse = await APIServices.register(_userReg);
    print(registerResponse);
  }

  @override
  Widget build(BuildContext context) {
    nameController.text = _userReg.name;
    confirmPaswordController.text = _userReg.name;
    passwordController.text = _userReg.name;
    emailController.text = _userReg.name;
    adressController.text = _userReg.name;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/logo.jpeg",
              height: size.height * 0.20,
            ),
            RoundedInputField(
              controller: nameController,
              icon: Icons.person,
              hintText: "Name",
              onChanged: (value) => {_userReg.name = value},
            ),
            RoundedInputField(
              controller: adressController,
              icon: Icons.location_city,
              hintText: "adress",
              onChanged: (value) => updateAdress(),
            ),
            RoundedInputField(
              controller: emailController,
              icon: Icons.phone,
              hintText: "Phone",
              onChanged: (value) => updateEmail(),
            ),
            RoundedPasswordField(
              controller: passwordController,
              onChanged: (value) => updatePassword(),
            ),
            RoundedPasswordField(
              controller: confirmPaswordController,
              onChanged: (value) => updateConfirmPassword(),
            ),
            RoundedButton(
              text: "Create",
              press: register,
            ),
            SizedBox(height: size.height * 0.06),
          ],
        ),
      ),
    );
  }
}
