import 'package:flutter/material.dart';
import './day_of_week_screen.dart';

class Calendar extends StatefulWidget {
  @override
  createState() => new CalendarWidget();
}

class CalendarWidget extends State<Calendar> {
  final darkBlue = const Color(0xFF151d4b);
  final mediumBlue = const Color(0xFF677191);
  final blue = const Color(0xFFB0BBCF);
  final lightBlue = const Color(0xFFDEEAF6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 25.0),
          // Add box decoration
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                darkBlue,
                mediumBlue,
                blue,
                lightBlue
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DayOfTheWeek("Sunday"))
                          );
                        },
                        child: Image.asset(
                          'assets/weekCalendarScreen/sundayMoon.png',
                          width: (MediaQuery.of(context).size.width) * .20,
                          height: (MediaQuery.of(context).size.width) * .20,
                        )),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DayOfTheWeek("Monday"))
                          );
                        },
                        child: Image.asset(
                          'assets/weekCalendarScreen/mondayMoon.png',
                          width: (MediaQuery.of(context).size.width) * .20,
                          height: (MediaQuery.of(context).size.width) * .20,))
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DayOfTheWeek("Saturday"))
                          );
                        },
                        child: Image.asset(
                          'assets/weekCalendarScreen/saturdayMoon.png',
                          width: (MediaQuery.of(context).size.width) * .20,
                          height: (MediaQuery.of(context).size.width) * .20,
                        )),
                    FlatButton(
                        onPressed: null,
                        child: Image.asset(
                          'assets/weekCalendarScreen/yourWeek.png',
                          width: (MediaQuery.of(context).size.width) * .30,
                          height: (MediaQuery.of(context).size.width) * .30,
                        )),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DayOfTheWeek("Tuesday"))
                          );
                        },
                        child: Image.asset(
                          'assets/weekCalendarScreen/tuesdayMoon-07.png',
                          width: (MediaQuery.of(context).size.width) * .20,
                          height: (MediaQuery.of(context).size.width) * .20,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB((MediaQuery.of(context).size.width) * .03, 0.0, (MediaQuery.of(context).size.width) * .03, 0.0),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DayOfTheWeek("Friday"))
                          );
                        },
                        child: Image.asset(
                          'assets/weekCalendarScreen/fridayMoon.png',
                          width: (MediaQuery.of(context).size.width) * .20,
                          height: (MediaQuery.of(context).size.width) * .20,)
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DayOfTheWeek("Thursday"))
                          );
                        },
                        child: Image.asset(
                          'assets/weekCalendarScreen/thursdayMoon.png',
                          width: (MediaQuery.of(context).size.width) * .20,
                          height: (MediaQuery.of(context).size.width) * .20,
                        )
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DayOfTheWeek("Wednesday"))
                          );
                        },
                        child: Image.asset(
                          'assets/weekCalendarScreen/wednesdayMoon-07.png',
                          width: (MediaQuery.of(context).size.width) * .20,
                          height: (MediaQuery.of(context).size.width) * .20,)
                    )
                  ],
                ),
              ),
              Image.asset('assets/weekCalendarScreen/key.png', height: (MediaQuery.of(context).size.width) * .40, width: (MediaQuery.of(context).size.width) * .50),
            ],
          ),
        )
    );
  }
}