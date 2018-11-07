import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home_State();
  }
}

class _Home_State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App'),
      ),
      bottomNavigationBar: new BottomNavigationBar(currentIndex: 0, items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Test1'),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.mail),
          title: new Text('Test2'),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          title: new Text('Test3'),
        ),
      ]),
    );
  }
}
