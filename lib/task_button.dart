import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  String _TaskName;
  int _TaskTime;
  Task(this._TaskName, this._TaskTime);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
      onPressed: null,
      child: Text(
        _TaskName + ": " + _TaskTime.toString() + " minutes",
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}