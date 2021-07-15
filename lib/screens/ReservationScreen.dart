import 'package:flutter/material.dart';
import 'package:project_trying/screens/buildCard.dart';
import 'package:table_calendar/table_calendar.dart';
import 'PlayGrounds.dart';
import 'Ticket.dart';

class ReservationScreen extends StatefulWidget {
  String placeName, path, location, price, noOfFields;

  ReservationScreen(
      this.placeName, this.path, this.location, this.price, this.noOfFields);

  @override
  _ReservationScreenState createState() => _ReservationScreenState(
      this.placeName, this.path, this.location, this.price, this.noOfFields);
}

class _ReservationScreenState extends State<ReservationScreen> {
  String placeName, path, location, price, noOfFields;

  _ReservationScreenState(
      this.placeName, this.path, this.location, this.price, this.noOfFields);

  PlayGrounds x = new PlayGrounds("");

  CalendarFormat format = CalendarFormat.month;
  DateTime focusDay = DateTime.now();
  DateTime selectDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Choose Date&Time"),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: ListView(
        children: <Widget>[
          BuildCard(
            placeName: placeName,
            path: path,
            location: location,
            price: price,
            noOfFields: noOfFields,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TableCalendar(
              focusedDay: focusDay,
              firstDay: DateTime(2010),
              lastDay: DateTime(2050),
              calendarFormat: format,
              calendarStyle: CalendarStyle(outsideDaysVisible: false),
              onDaySelected: (DateTime sDay, DateTime fDay) {
                setState(() {
                  selectDay = sDay;
                  focusDay = fDay;
                });
                print(focusDay);
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectDay, date);
              },
              headerStyle: HeaderStyle(titleCentered: true),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("9-10 AM"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.teal, onPrimary: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("9-10 AM"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.teal, onPrimary: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("10-11 AM"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.teal, onPrimary: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("11-12 AM"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("12-1 PM"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("1-2 PM"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("2-3 PM"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("3-4 PM"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("4-5 PM"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("5-6 PM"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                        )),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Divider(
              color: Colors.black54,
              indent: 10,
              endIndent: 10,
              height: 10,
              thickness: 1.5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.sports_soccer, color: Colors.teal, size: 45),
                Icon(Icons.wash, color: Colors.teal, size: 45),
                Icon(Icons.wc, color: Colors.teal, size: 45),
                Icon(Icons.wash, color: Colors.teal, size: 45),
                Icon(Icons.vpn_key, color: Colors.teal, size: 45),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            // ignore: deprecated_member_use
            child: Container(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Ticket(placeName);
                  }));
                },
                color: Colors.green,
                child: Text(
                  "Reserve",
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
