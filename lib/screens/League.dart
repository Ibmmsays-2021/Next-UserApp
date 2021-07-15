import 'package:flutter/material.dart';
import 'Academy.dart';
import 'PageDrawer.dart';
import 'PlayGrounds.dart';
import 'ProfilePage.dart';
import 'homePage.dart';

class League extends StatefulWidget {
  String title;

  League(this.title);
  @override
  _leagueState createState() => _leagueState();
}

class _leagueState extends State<League> {
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
                "There is no Leagues untill this moment but will be in future",
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
