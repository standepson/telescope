import 'package:flutter/material.dart';
import './galaxy.dart';
import './calendar.dart';
import './home_widget.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  //colors for background
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Navigation Basics',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}
