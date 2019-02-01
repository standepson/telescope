import 'package:flutter/material.dart';
import './day_of_week_screen.dart';
import './task_button.dart';
import './global.dart' as globals;

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
    double radius= (MediaQuery.of(context).size.width) * .33;
    double scrwidth= (MediaQuery.of(context).size.width);
    double center= scrwidth * .5;
    double centery;
    if((MediaQuery.of(context).size.height)< 1.4* scrwidth ){
      centery = (MediaQuery.of(context).size.height) *.5 ;
    }
    else {
      centery=center;
    }
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 15.0),
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
          child: new Stack(
              children: <Widget>[
                new Positioned(
                  left: center - .4339* radius - scrwidth * .1,
                  top: centery - .90097 * radius - scrwidth * .1,
                  child: FlatButton(
                      onPressed: () {
                        globals.selectedDayOfTheWeek = 6;
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DayOfTheWeek("Sunday", globals.sundayTasks))
                        );
                      },
                      child: Image.asset(
                        'assets/weekCalendarScreen/sundayMoon.png',
                        width: scrwidth * .20,
                        height: scrwidth * .20,
                      )),
                ),
                new Positioned(
                  left: center + .4339* radius - scrwidth * .1,
                  top: centery - .90097 * radius - scrwidth * .1,
                  child: FlatButton(
                      onPressed: () {
                        globals.selectedDayOfTheWeek = 0;
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DayOfTheWeek("Monday",globals.mondayTasks))
                        );
                      },
                      child: Image.asset(
                        'assets/weekCalendarScreen/mondayMoon.png',
                        width: scrwidth * .20,
                        height: scrwidth * .20,
                      )),
                ),
                new Positioned(
                  left: center - .9749* radius - scrwidth * .1,
                  top: centery - .2225 * radius - scrwidth * .1,
                  child: FlatButton(
                      onPressed: () {
                        globals.selectedDayOfTheWeek = 5;
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DayOfTheWeek("Saturday", globals.tuesdayTasks))
                        );
                      },
                      child: Image.asset(
                        'assets/weekCalendarScreen/saturdayMoon.png',
                        width: scrwidth * .20,
                        height: scrwidth * .20,
                      )),
                ),
                new Positioned(
                  left: center - scrwidth * .16304347,
                  top: centery - scrwidth * .15,
                  child: FlatButton(
                      onPressed: null,
                      child: Image.asset(
                        'assets/weekCalendarScreen/yourWeek.png',
                        width: (MediaQuery.of(context).size.width) * .30,
                        height: (MediaQuery.of(context).size.width) * .30,
                      )),
                ),
                new Positioned(
                  left: center + .9749* radius - scrwidth * .1,
                  top: centery - .2225 * radius - scrwidth * .1,
                  child: FlatButton(
                      onPressed: () {
                        globals.selectedDayOfTheWeek = 1;
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DayOfTheWeek("Tuesday",globals.tuesdayTasks))
                        );
                      },
                      child: Image.asset(
                        'assets/weekCalendarScreen/tuesdayMoon-07.png',
                        width: scrwidth * .20,
                        height: scrwidth * .20,
                      )),
                ),
                new Positioned(
                  left: center - .7818* radius - scrwidth * .1,
                  top: centery + .6235 * radius - scrwidth * .1,
                  child: FlatButton(
                      onPressed: () {
                        globals.selectedDayOfTheWeek = 4;
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DayOfTheWeek("Friday",globals.fridayTasks))
                        );
                      },
                      child: Image.asset(
                        'assets/weekCalendarScreen/fridayMoon.png',
                        width: scrwidth * .20,
                        height: scrwidth * .20,
                      )),
                ),
                new Positioned(
                  left: center + .7818* radius - scrwidth * .1,
                  top: centery + .6235 * radius - scrwidth * .1,
                  child: FlatButton(
                      onPressed: () {
                        globals.selectedDayOfTheWeek = 2;
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DayOfTheWeek("Wednesday",globals.wednesdayTasks))
                        );
                      },
                      child: Image.asset(
                        'assets/weekCalendarScreen/wednesdayMoon-07.png',
                        width: scrwidth * .20,
                        height: scrwidth * .20,
                      )),
                ),
                new Positioned(
                  left: center - scrwidth * .1,
                  top: centery + radius - scrwidth * .1,
                  child: FlatButton(
                      onPressed: () {
                        globals.selectedDayOfTheWeek = 3;
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DayOfTheWeek("Thursday",globals.thursdayTasks))
                        );
                      },
                      child: Image.asset(
                        'assets/weekCalendarScreen/thursdayMoon.png',
                        width: scrwidth * .20,
                        height: scrwidth * .20,
                      )),
                ),
                new Positioned(
                  left: center - scrwidth * .25,
                  top: centery*2,
                  child: new Image.asset('assets/weekCalendarScreen/key.png', height: scrwidth * .40, width: scrwidth * .50),
                ),
               ],
           ),
        )
    );
  }
}