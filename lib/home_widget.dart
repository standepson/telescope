import 'package:flutter/material.dart';
import './galaxy.dart';
import './task_input_screen.dart';
import './placeholder.dart';
import './calendar.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home_State();
  }
}

class _Home_State extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Calendar(),
    Galaxy(),
    TaskEntering()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today),
              title: new Text('Calendar', style: TextStyle(fontFamily: 'PrintClearly.ttf'),),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.star),
              title: new Text('Galaxy'),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.add),
              title: new Text('Task input'),
            ),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
