import 'package:flutter/material.dart';
import 'task_screen.dart';

class DayOfTheWeek extends StatelessWidget {
  String _dayName;

  DayOfTheWeek(this._dayName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_dayName),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
              Colors.indigo[900],
              Colors.indigo[600],
              Colors.indigo[300],
              Colors.indigo[100],
            ],
          ),
        ),
        child: new Column(
          children: <Widget>[
            Container(
              child:
              Text(
                _dayName,
                style: TextStyle(fontSize: 60.0),
                textAlign: TextAlign.center,
              ),
            ),
            Task(),
            Task(),
            Task(),
          ],
        ),
      ),
    );
  }
}
