import 'package:flutter/material.dart';

class Galaxy extends StatelessWidget {
  var star_size_small = 20.0;
  //var star_size_medium = 30.0;
  //var star_size_large = 40;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.black
        ),
        child: new Stack(
          children: <Widget>[
            new Positioned(
              left: 120.0,
              bottom: 300.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 180.0,
              bottom: 200.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 300.0,
              bottom: 270.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 100.0,
              bottom: 420.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 60.0,
              bottom: 230.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 255.0,
              bottom: 155.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 260.0,
              bottom: 330.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 290.0,
              bottom: 410.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 230.0,
              bottom: 500.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 20.0,
              bottom: 100.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 180.0,
              bottom: 400.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 30.0,
              bottom: 340.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 90.0,
              bottom: 50.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 170.0,
              bottom: 75.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 110.0,
              bottom: 165.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 170.0,
              bottom: 135.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 10.0,
              bottom: 10.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 10.0,
              bottom: 10.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 200.0,
              bottom: 20.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 350.0,
              bottom: 10.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 350.0,
              bottom: 10.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
            new Positioned(
              left: 300.0,
              bottom: 50.0,
              child: new Image.asset(
                'assets/galaxyScreen/star.png',
                width: star_size_small,
                height: star_size_small,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
