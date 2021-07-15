import 'package:flutter/material.dart';
import 'package:project_trying/screens/buildCard.dart';

class RelatedPG extends StatefulWidget {
  String title;

  RelatedPG(this.title);

  @override
  _RelatedPGState createState() => _RelatedPGState(title);
}

class _RelatedPGState extends State<RelatedPG> {
  String title;

  _RelatedPGState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: BuildCard(
                    location: 'El madf3ya 1',
                    path: 'assets/images/ball&ground.jpg',
                    placeName: 'Nasr City',
                    noOfFields: '5x5',
                    price: '250',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: BuildCard(
                    location: 'El madf3ya 2',
                    path: 'assets/images/academy3.jpg',
                    placeName: 'Nasr City',
                    noOfFields: '7x7',
                    price: '300',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: BuildCard(
                    location: 'El madf3ya 3',
                    path: 'assets/images/ball.jpg',
                    placeName: 'Nasr City',
                    noOfFields: '11x11',
                    price: '400',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: BuildCard(
                    location: 'El madf3ya 4',
                    path: 'assets/images/kora-pg.jpg',
                    placeName: 'Nasr City',
                    noOfFields: '11x11',
                    price: '400',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: BuildCard(
                    location: 'El madf3ya 5 ',
                    path: 'assets/images/cardimage.jpg',
                    placeName: 'Nasr City',
                    noOfFields: '11x11',
                    price: '400',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
