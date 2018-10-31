import 'package:flutter/material.dart';

class Galaxy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/galaxyscreen/emptyGalaxy.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
