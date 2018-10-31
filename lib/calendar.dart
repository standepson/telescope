import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  createState() => CalendarWidget;
}
class CalendarWidget extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    Center(
      child:Container(
        child: Image.asset('assets/daysOfTheWeekScreens/background.png');
        ,
      ),
    );
  }
}