import 'package:flutter/material.dart';
import 'dart:math';

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
      padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/galaxyBackground.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
            child: Stack(
              children: <Widget>[
                Positioned(
                    left: rng.nextInt(50) * 1.0,
                    right: rng.nextInt(50) * 1.0,
                    child: AnimatedOpacity(
                        child: Image.asset(
                          'assets/galaxyScreen/star.png',
                          height: rng.nextInt(30) * 1.0,
                          width: rng.nextInt(30) * 1.0,
                        ),
                        opacity: opacityLevel,
                        duration: Duration(seconds: 1))),
                Positioned(
                    left: rng.nextInt(100) * 1.0,
                    right: rng.nextInt(100) * 1.0,
                    child: AnimatedOpacity(
                        child: Image.asset(
                          'assets/galaxyScreen/star.png',
                          height: rng.nextInt(30) * 1.0,
                          width: rng.nextInt(30) * 1.0,
                        ),
                        opacity: opacityLevel,
                        duration: Duration(seconds: 1)))
              ],
            ),
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height) * .80,
          ),
          Container(
            child: FlatButton(
              child: Text(
                'Tap here to your galaxy', style: TextStyle(fontFamily: 'PrintClearly', fontSize: 20.0, color: Colors.white),
              ),
              onPressed: _changeOpacity,
            ),
          ),
        ],
      ),
    ));
  }
}
