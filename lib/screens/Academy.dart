import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'BottomNB.dart';
import 'League.dart';
import 'PageDrawer.dart';
import 'PlayGrounds.dart';
import 'ProfilePage.dart';
import 'homePage.dart';

class Academy extends StatefulWidget {
  String title;

  Academy(this.title);
  @override
  _AcademyState createState() => _AcademyState();
}

class _AcademyState extends State<Academy> {
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              child: Text(
                "There is no Acdemics untill this moment but will be in future",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
