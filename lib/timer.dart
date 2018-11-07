import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with TickerProviderStateMixin {
  AnimationController controller;

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 70),
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Container(
        // Add box decoration
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.indigo[900],
                Colors.indigo[600],
                Colors.indigo[300],
                Colors.indigo[100],
              ],
            ),
          ),
          padding: const EdgeInsets.all(32.0),
          child: Column(children: <Widget>[
            Container(
                padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                child:Text(
                  "Your star is growing...",
                  style: themeData.textTheme.display1,
                  textAlign: TextAlign.justify,
                )),
            Expanded(
                child: Align(
                    alignment: FractionalOffset.center,
                    child: AspectRatio(
                        aspectRatio: 1.0,
                        child: Stack(children: <Widget>[
                          Positioned.fill(
                              child: AnimatedBuilder(
                                  animation: controller,
                                  builder:
                                      (BuildContext context, Widget child) {
                                    return new CustomPaint(
                                        painter: TimerPainter(
                                          animation: controller,
                                          backgroundColor: Colors.white,
                                          color: themeData.indicatorColor,
                                        ));
                                  })),
                          Align(
                              alignment: FractionalOffset.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  AnimatedBuilder(
                                    animation: controller,
                                    builder: (BuildContext context, Widget child){
                                      return new Text(
                                        timerString,
                                        style: themeData.textTheme.display4,
                                      );
                                    },
                                  )
                                ],
                              )
                          ),
                        ])))),
            Container(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                child: Text(
                  "Focus...",
                  style: themeData.textTheme.display1,
                )),
            Container(
                margin: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      child: AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, Widget child){
                          return new Icon(controller.isAnimating ? Icons.pause : Icons.play_arrow);
                        },
                      ),
                      onPressed: () {
                        /*if (controller.isAnimating) {
                                    controller.stop();
                                  }
                                  else {
                                    controller.reverse(from: controller.value == 0 ? 1.0 : controller.value);
                                  }
                                  */
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Monday()),
                        );
                      },
                    )
                  ],
                )

            )
          ])),
    );


  }
}

class TimerPainter extends CustomPainter {
  TimerPainter({
    this.animation,
    this.backgroundColor,
    this.color,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor, color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * math.pi;
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(TimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}
