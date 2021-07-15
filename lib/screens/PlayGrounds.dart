import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_trying/Models/categories%20.dart';
import 'package:project_trying/Services/api.services.dart';
import 'package:project_trying/screens/RelatedPG.dart';
import 'FilterScreen.dart';
import 'Sorting.dart';

class PlayGrounds extends StatefulWidget {
  String title;

  PlayGrounds(this.title);
  @override
  State<StatefulWidget> createState() {
    return _PlayGroundsState();
  }
}

class _PlayGroundsState extends State<PlayGrounds> {
  String searchText;
  List<Categories> categories;
  getCategories() {
    APIServices.getCategories().then((response) {
      categories = response;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 7, right: 7, bottom: 7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Sorting();
                        });
                    //Navigator.push(context,MaterialPageRoute(builder: (context){return Sorting();}));
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.sort,
                        color: Colors.indigo,
                        size: 30,
                      ),
                      Text(
                        "Sorting",
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FilterSCreen();
                    }));
                  },
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.filter_list,
                          color: Colors.indigo,
                          size: 30,
                        ),
                        Text(
                          "Filter",
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),

            //buildImageCard(),
            SizedBox(height: 12),

            Expanded(
              child: ListView(
                children: <Widget>[
                  buildCard("EL-Madf3aya", "assets/images/academy-image.jpg",
                      "Helioplios", "200", "5"),
                  SizedBox(height: 6),
                  buildCard("Gardinia", "assets/images/academy-image.jpg",
                      "Nasr City", "250", "4"),
                  SizedBox(height: 6),
                  buildCard("EL-Madf3aya", "assets/images/academy-image.jpg",
                      "Helioplios", "200", "5"),
                  SizedBox(height: 6),
                  buildCard("Gardinia", "assets/images/cardimage.jpg",
                      "Nasr City", "250", "4"),
                  SizedBox(height: 6),
                  buildCard("EL-Madf3aya", "assets/images/academy-image.jpg",
                      "Helioplios", "200", "5")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String placeName, String path, String location, String price,
      String noOfFields) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RelatedPG(placeName),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(path),
            height: 170,
            width: 440,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 16,
            right: 16,
            left: 16,
            child: Text(
              placeName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Positioned(
            top: 45,
            right: 16,
            left: 16,
            child: Text(
              location,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 70,
            right: 16,
            child: Row(
              children: [
                Positioned(
                  top: 70,
                  right: 16,
                  child: Text(
                    price,
                    style: TextStyle(
                      backgroundColor: Colors.greenAccent,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 18,
                  child: Text(
                    "EGP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Row(
              children: [
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    noOfFields,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Positioned(
                  bottom: 16,
                  left: 18,
                  child: Text(
                    'Fields',
                    style: TextStyle(
                      textBaseline: TextBaseline.ideographic,
                      color: Colors.white,
                      fontSize: 19,
                    ),
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
