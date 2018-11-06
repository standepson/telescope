import 'package:flutter/material.dart';

class Galaxy extends StatelessWidget {
  var star_size = 20.0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/galaxyScreen/emptyGalaxy.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: new Stack(
          children: <Widget>[
            new Positioned(
              left: 200.0,
              bottom: 300.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 180.0,
              bottom: 200.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 290.0,
              bottom: 270.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 100.0,
              bottom: 400.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 60.0,
              bottom: 230.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 255.0,
              bottom: 155.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 260.0,
              bottom: 330.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 290.0,
              bottom: 410.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 230.0,
              bottom: 510.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 20.0,
              bottom: 480.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 170.0,
              bottom: 450.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 30.0,
              bottom: 340.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size,
                height: star_size,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
