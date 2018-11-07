import 'package:flutter/material.dart';
import './galaxy.dart';
import './task_input_screen.dart';
import './placeholder.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home_State();
  }
}

class _Home_State extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    Galaxy(),
    TaskEntering()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Calendar'),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Galaxy'),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person),
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
