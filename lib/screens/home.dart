import 'package:flutter/material.dart';
import 'package:project_trying/screens/Academy.dart';
import 'package:project_trying/screens/League.dart';
import 'package:project_trying/screens/PageDrawer.dart';
import 'package:project_trying/screens/PlayGrounds.dart';
import 'package:project_trying/screens/ProfilePage.dart';
import 'package:project_trying/screens/homePage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<String> _appbarName = [
    'HomePage',
    'Reservation',
    'Academy',
    'League',
    'Profile'
  ];
  List<Widget> _children = [
    HomePage(""),
    PlayGrounds(""),
    Academy(""),
    League(""),
    ProfilePage(),
  ];
  Icon cusTcon = Icon(Icons.search);
  Widget cuSearchBar = Text("Fields");
  String searchText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50.0,
        title: cuSearchBar,
        backgroundColor: Colors.green,
        actions: <Widget>[
          SizedBox(
            width: 20,
          ),
          IconButton(
            icon: cusTcon,
            onPressed: () {
              setState(() {
                if (this.cusTcon.icon == Icons.search) {
                  this.cusTcon = Icon(Icons.cancel);
                  this.cuSearchBar = TextField(
                    onChanged: (text) {
                      searchText = text;
                      debugPrint(searchText);
                    },
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Search"),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  );
                } else {
                  this.cusTcon = Icon(Icons.search);
                  this.cuSearchBar = Text("Fields");
                }
              });
            },
          )
        ],
      ),
      drawer: PageDrawer(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.green,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
            backgroundColor: Color(0xff05131A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_outlined),
            label: "Reservation",
            backgroundColor: Color(0xff05131A),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pending_actions,
            ),
            label: "Academy",
            backgroundColor: Color(0xff05131A),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports,
            ),
            label: "League",
            backgroundColor: Color(0xff05131A),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
            backgroundColor: Color(0xff05131A),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
