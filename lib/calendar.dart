import 'package:flutter/material.dart';

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
                    onPressed: null,
                    child: Image.asset(
                      'assets/weekCalendarScreen/sundayMoon.png',
                      width: 80.0,
                      height: 80.0,
                    )),
                FlatButton(
                    onPressed: null,
                    child: Image.asset(
                        'assets/weekCalendarScreen/mondayMoon.png',
                        width: 80.0,
                        height: 80.0))
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    onPressed: null,
                    child: Image.asset(
                      'assets/weekCalendarScreen/saturdayMoon.png',
                      width: 80.0,
                      height: 80.0,
                    )),
                FlatButton(
                    onPressed: null,
                    child: Image.asset(
                      'assets/weekCalendarScreen/yourWeek.png',
                      width: 150.0,
                      height: 150.0,
                    )),
                FlatButton(
                    onPressed: null,
                    child: Image.asset(
                      'assets/weekCalendarScreen/tuesdayMoon-07.png',
                      width: 80.0,
                      height: 80.0,
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    onPressed: null,
                    child: Image.asset(
                        'assets/weekCalendarScreen/fridayMoon.png',
                    width: 80.0,
                    height: 80.0,)
                ),
                FlatButton(
                    onPressed: null,
                    child: Image.asset(
                        'assets/weekCalendarScreen/thursdayMoon.png',
                    width: 85.0,
                    height: 85.0
                    )
                ),
               FlatButton(
                   onPressed: null,
                   child: Image.asset(
                       'assets/weekCalendarScreen/wednesdayMoon-07.png',
                   width: 85.0,
                   height: 85.0,)
               )
              ],
            ),
          ),
          Image.asset('assets/weekCalendarScreen/key.png', height: 150.0, width: 200.0,),
        ],
      ),
    )
    );
  }
}
