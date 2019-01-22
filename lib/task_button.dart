import 'package:flutter/material.dart';
import './timer.dart';

class Task extends StatelessWidget {
  String _taskName;
  String get taskName => _taskName;
  int _taskDuration;
  int get taskDuration => _taskDuration;
  Task(this._taskName, this._taskDuration);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TimerScreen(_taskDuration))
        );
      },
      child: Text(
        _taskName + ": " + _taskDuration.toString() + " minutes",
        style: TextStyle(fontFamily: 'PrintClearly', fontSize: 40.0, color: Colors.white),
      ),
    );
  }
}
