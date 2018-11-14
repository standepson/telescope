import 'dart:async';
import 'package:flutter/material.dart';
import './galaxy.dart';
import './calendar.dart';
import './home_widget.dart';
import './splash_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  //colors for background
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Navigation Basics',
      theme: new ThemeData(
        fontFamily: 'PrintClearly.ttf',
        primarySwatch: Colors.deepPurple,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => Home()
      },
    );
  }
}
