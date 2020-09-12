import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

//import 'package:flutter/services.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendence',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AttendencePage(),
    );
  }
}

class AttendencePage extends StatefulWidget {
  @override
  _AttendencePageState createState() => _AttendencePageState();
}

class _AttendencePageState extends State<AttendencePage> {
  CalendarController _controller;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              initialCalendarFormat: CalendarFormat.week,
              calendarStyle: CalendarStyle(
                  todayColor: Colors.blue,
                  todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.white,
                  )),
              startingDayOfWeek: StartingDayOfWeek.monday,
              onDaySelected: (date, events) {
                print(date.toIso8601String());
              },
              calendarController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
//testing
