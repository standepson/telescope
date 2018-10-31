import 'package:flutter/material.dart';

void main() => runApp(new TelescopeApp());

class TelescopeApp extends StatelessWidget {
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
