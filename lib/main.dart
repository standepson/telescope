import 'dart:async';
import 'package:flutter/material.dart';
import './galaxy.dart';
import './calendar.dart';
import './home_widget.dart';
import './splash_screen.dart';
import './global.dart' as globals;
import 'dart:math';
import 'package:flutter/services.dart';

void main()async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  createState() => MyAppState();
}

class MyAppState extends State<MyApp> with TickerProviderStateMixin, WidgetsBindingObserver {
  AppLifecycleState _appLifecycleState;
  var rng = Random();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _appLifecycleState = state;
      if (_appLifecycleState == AppLifecycleState.resumed) {
        globals.todayDay = DateTime.now();
      }
      if (globals.todayDay.weekday != globals.lastSavedDay.weekday) {
        int difference = globals.todayDay.weekday -
            globals.lastSavedDay.weekday;
        if (difference >= 7) {
          globals.weeklyTask.removeRange(0, globals.weeklyTask.length);
        } else {
          for (int i = 0; i <= difference; i++) {
            globals.weeklyTask[((globals.lastSavedDay.weekday - 1) + i) % 7]
                .removeRange(0,
                globals.weeklyTask[((globals.lastSavedDay.weekday - 1) + i) % 7]
                    .length);
          }
        }
        globals.lastSavedDay = DateTime.now();
      }});
    }
  @override
  Widget build(BuildContext context) {
    if(globals.seedNum.length < 1) {
      globals.seedNum.add(rng.nextInt(10000));
      globals.seed = globals.seedNum[0];
    }
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

