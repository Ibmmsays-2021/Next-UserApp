import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Ticket extends StatefulWidget {
  String PlaceName;

  Ticket(this.PlaceName);

  @override
  _TicketState createState() => _TicketState(this.PlaceName);
}

class _TicketState extends State<Ticket> {

  String PlaceName;
  _TicketState(this.PlaceName);
  CalendarFormat format = CalendarFormat.month;
  DateTime focusDay = DateTime.now();
  DateTime selectDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(PlaceName),
        centerTitle:true,
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Field:", style: TextStyle(fontSize: 28, color: Colors.grey)),
                Text(PlaceName, style: TextStyle(fontSize: 25, color: Colors.black)),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text("Date:", style: TextStyle(fontSize: 28, color: Colors.grey)),
                Text("date chosen:", style: TextStyle(fontSize: 25, color: Colors.black)),
              ],
            ),
            SizedBox(height: 50,),

            Center(
              child: Container(
                decoration: BoxDecoration(
                    color:Colors.white,
                    border: Border.all(
                      color: Colors.green[500],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                //color: Colors.black12,
                height: 150,
                width: 300,
                child: Column(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(left: 20,right: 20,top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("11-12",style: TextStyle(fontSize: 18),),
                        Text("Available",style: TextStyle(fontSize: 18)),
                        Text("200EGP",style: TextStyle(fontSize: 18)),


                      ],),
                    ),

                    SizedBox(height: 20,),
                    Divider(color: Colors.black54, indent: 10, endIndent: 10, height: 10, thickness: 1.5),

                    Padding(
                      padding:EdgeInsets.only(left: 20,right: 20,top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("11-12",style: TextStyle(fontSize: 18),),

                        Text("200EGP",style: TextStyle(fontSize: 18),),

                      ],),
                    ),

                  ],
                )
              ),
            ),

            SizedBox(height: 80,),

            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Container(
                      height: 55,
                      width: 120,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        onPressed: (){},
                        color: Colors.green,
                        child: Text("Confirm"),
                        textColor: Colors.white,
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 120,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        onPressed: (){},
                        color: Colors.grey,
                        child: Text("Go Back"),
                        textColor: Colors.white,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
