import 'package:flutter/material.dart';
import './galaxy.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Telescope'),
        ),
      ),
    );
  }
}
