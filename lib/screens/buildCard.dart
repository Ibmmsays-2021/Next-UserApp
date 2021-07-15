import 'package:flutter/material.dart';
import 'package:project_trying/screens/ReservationScreen.dart';

class BuildCard extends StatelessWidget {
  final String placeName;
  final String path;
  final String location;
  final String price;
  final String noOfFields;
  const BuildCard(
      {Key key,
      @required this.placeName,
      @required this.path,
      @required this.location,
      @required this.price,
      @required this.noOfFields})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                ReservationScreen(placeName, path, location, price, noOfFields),
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
                    '',
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
