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
    double radius= (MediaQuery.of(context).size.width) * .1666;
    double scrwidth= (MediaQuery.of(context).size.width);
    double center= scrwidth * .5;
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
              new Positioned(
                left: center - .4339* radius,
                top: center - .90097 * radius,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DayOfTheWeek("Sunday"))
                      );
                    },
                    child: Image.asset(
                      'assets/weekCalendarScreen/sundayMoon.png',
                      width: scrwidth * .20,
                      height: scrwidth * .20,
                    )),
              ),
              new Positioned(
                left: center + .4339* radius,
                top: center - .90097 * radius,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DayOfTheWeek("Sunday"))
                      );
                    },
                    child: Image.asset(
                      'assets/weekCalendarScreen/mondayMoon.png',
                      width: scrwidth * .20,
                      height: scrwidth * .20,
                    )),
              ),
              new Positioned(
                left: center - .9749* radius,
                top: center - .2225 * radius,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DayOfTheWeek("Sunday"))
                      );
                    },
                    child: Image.asset(
                      'assets/weekCalendarScreen/saturdayMoon.png',
                      width: scrwidth * .20,
                      height: scrwidth * .20,
                    )),
              ),
              new Positioned(
                left: center,
                top: center,
                child: FlatButton(
                    onPressed: null,
                    child: Image.asset(
                      'assets/weekCalendarScreen/yourWeek.png',
                      width: (MediaQuery.of(context).size.width) * .30,
                      height: (MediaQuery.of(context).size.width) * .30,
                    )),
              ),
              new Positioned(
                left: center + .9749* radius,
                top: center - .2225 * radius,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DayOfTheWeek("Sunday"))
                      );
                    },
                    child: Image.asset(
                      'assets/weekCalendarScreen/tuesdayMoon-07.png',
                      width: scrwidth * .20,
                      height: scrwidth * .20,
                    )),
              ),
              new Positioned(
                left: center - .7818* radius,
                top: center + .6235 * radius,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DayOfTheWeek("Sunday"))
                      );
                    },
                    child: Image.asset(
                      'assets/weekCalendarScreen/fridayMoon.png',
                      width: scrwidth * .20,
                      height: scrwidth * .20,
                    )),
              ),
              new Positioned(
                left: center + .7818* radius,
                top: center + .6235 * radius,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DayOfTheWeek("Sunday"))
                      );
                    },
                    child: Image.asset(
                      'assets/weekCalendarScreen/wednesdayMoon-07.png',
                      width: scrwidth * .20,
                      height: scrwidth * .20,
                    )),
              ),
              new Positioned(
                left: center,
                top: center + radius,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DayOfTheWeek("Sunday"))
                      );
                    },
                    child: Image.asset(
                      'assets/weekCalendarScreen/thursdayMoon.png',
                      width: scrwidth * .20,
                      height: scrwidth * .20,
                    )),
              ),
              Image.asset('assets/weekCalendarScreen/key.png', height: (MediaQuery.of(context).size.width) * .40, width: (MediaQuery.of(context).size.width) * .50),
            ],
          ),
        )
    );
  }
}