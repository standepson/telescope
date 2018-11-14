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
                // Colors are easy thanks to Flutter's Colors class.
                darkBlue,
                mediumBlue,
                blue,
                lightBlue
              ],
            ),
          ),
          child: Column(

          ),
        )
    );
  }
}