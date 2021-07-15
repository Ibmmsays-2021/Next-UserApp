import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Academy.dart';

import 'League.dart';
import 'PageDrawer.dart';
import 'PlayGrounds.dart';

class HomePage extends StatefulWidget {
  String title;

  HomePage(this.title);

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: PageDrawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            //buildCard(),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 390,
                  height: 139,
                  child: Image(
                    image: AssetImage(
                        "assets/images/277b054f052a4c57970ffa5655b65d3e.jpg"),
                    height: 220,
                    width: 370,
                    fit: BoxFit.cover,
                  ),
                ),

                /* Positioned(
                    top: 30,
                    //right: 16,
                    left: 16,
                    child: IconButton(
                      onPressed:(){

                      },icon: Icon(Icons.menu,color: Colors.black,size: 30,),)
                ),*/
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PlayGrounds("");
                    }));
                  },
                  child: SmallbuildCard(
                      "Reservation",
                      "assets/images/reservation-icon-18.jpg",
                      "assets/images/ball&ground.jpg")),
            ),

            SizedBox(
              height: 5,
            ),

            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Academy("");
                    }));
                  },
                  child: SmallbuildCard(
                      "Academy",
                      "assets/images/academy-icon-5.jpg",
                      "assets/images/academy3.jpg")),
            ),

            SizedBox(
              height: 5,
            ),

            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return League("");
                  }));
                },
                child: SmallbuildCard(
                  "League",
                  "assets/images/world-cup.png",
                  "assets/images/cardimage.jpg",
                ),
              ),
            ),
            Container(
              width: 390,
              height: 206.5,
              child: Image(
                image: AssetImage("assets/images/kora.jpg"),
                height: 240,
                width: 370,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget SmallbuildCard(String name, String path, String MainImagePath) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.green,
      border: Border.all(
        color: Colors.green[500],
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(2),
      ),
    ),
    child: Row(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              image: AssetImage(MainImagePath),
              height: 120,
              width: 250,
              fit: BoxFit.cover,
            ),
            Positioned(
                top: 30,
                right: 25,
                left: 25,
                child: Text(
                  name,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ))
          ],
        ),
        Container(
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: Colors.green[500],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Image(
              image: AssetImage(path),
              height: 120,
              width: 90,
            )),
        /* Container(
          color: Colors.green,
          height: 120,
          width: 100,
          child: Image(
            image: AssetImage(path
            ),
            height: 120,
            width: 90,
          ) ,
        )*/
      ],
    ),
  );
}
