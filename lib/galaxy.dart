import 'package:flutter/material.dart';
import 'dart:math';
import './global.dart' as globals;

class Galaxy extends StatefulWidget {
  @override
  createState() => GalaxyState();
}

class GalaxyState extends State<Galaxy> {
  var rng = Random();
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: new BoxDecoration(
        color: Colors.black
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            //padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
            child: Stack(
              children: createChildrenTexts(),
            ),
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height) * .80,
          ),
          Container(
            child: FlatButton(
              child: Text(
                'Tap here to adjust your galaxy',
                style: TextStyle(
                    fontFamily: 'PrintClearly',
                    fontSize: 20.0,
                    color: Colors.white),
              ),
              onPressed: _changeOpacity,
            ),
          ),
        ],
      ),
    ));
  }
}
List<Star> createChildrenTexts() {
  globals.rng=Random(globals.seed);
  List<Star> childrenTexts = List<Star>();
  for (int i = 0; i < globals.numOfStarsCompleted; i++) {
    childrenTexts.add(new Star());
  }
  return childrenTexts;
}

class Star extends StatelessWidget {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: globals.rng.nextInt(MediaQuery.of(context).size.width.floor()) * 1.0,
        top: globals.rng.nextInt(MediaQuery.of(context).size.height.floor()) * .87,
        child: AnimatedOpacity(
            child: Image.asset(
              'assets/galaxyScreen/star.png',
              height: globals.rng.nextInt(30) * 1.0 + 5.0,
              width: globals.rng.nextInt(30) * 1.0 + 5.0,
            ),
            opacity: opacityLevel,
            duration: Duration(seconds: 1)));
  }
}
