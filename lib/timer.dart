import 'package:flutter/material.dart';
import 'dart:math' as math;

class TimerScreen extends StatefulWidget {
  int _TaskDuration;
  TimerScreen(this._TaskDuration);

  @override
  Timer createState() => Timer();
}

class Timer extends State<TimerScreen>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  AnimationController controller;
  AppLifecycleState _appLifecycleState;
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
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _appLifecycleState = state;
      print("My App State: $_appLifecycleState");
      if (_appLifecycleState == AppLifecycleState.resumed) {
        controller = AnimationController(
          vsync: this,
          duration: Duration(seconds: widget._TaskDuration),
        );
      }
    });
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
                padding: const EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                child: Text(
                  "Your star is growing...",
                  style: TextStyle(
                      fontFamily: 'PrintClearly',
                      fontSize: 40.0,
                      color: Colors.white),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  AnimatedBuilder(
                                    animation: controller,
                                    builder:
                                        (BuildContext context, Widget child) {
                                      return new Text(
                                        timerString,
                                        style: TextStyle(
                                          fontFamily: 'PrintClearly',
                                          fontSize: 80.0,
                                          color: Colors.white),
                                      );
                                    },
                                  )
                                ],
                              )),
                        ])))),
            Container(
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {
                  quitWarning(context);
                },
                child: Text(
                  'EXIT',
                  style: TextStyle(
                      fontFamily: 'PrintClearly',
                      fontSize: 15.0,
                      color: Colors.deepPurple),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                child: Text(
                  "Focus...",
                  style: TextStyle(
                      fontFamily: 'PrintClearly',
                      fontSize: 40.0,
                      color: Colors.white),
                )),
            Container(
                margin: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      child: AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, Widget child) {
                          return new Icon(controller.isAnimating
                              ? Icons.pause
                              : Icons.play_arrow);
                        },
                      ),
                      onPressed: () {
                        if (controller.isAnimating) {
                          controller.stop();
                        } else {
                          controller.reverse(
                              from: controller.value == 0
                                  ? 1.0
                                  : controller.value);
                        }
                      },
                    )
                  ],
                ))
          ])),
    );
  }
}
void quitWarning(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('If you quit now your star will die. Do you really want to quit?', style: TextStyle(
        fontFamily: 'PrintClearly',
        fontSize: 24.0,
        color: Colors.black),),
    actions: <Widget>[
      FlatButton(onPressed: () {
        Navigator.pop(context);
        Navigator.pop(context);
      }, child: Text('Yes, I am an empty shell',style: TextStyle(
  fontFamily: 'PrintClearly',
  fontSize: 16.0,
  color: Colors.deepPurpleAccent)),),
      FlatButton(onPressed: () {
        Navigator.pop(context);
      }, child: Text('No',style: TextStyle(
  fontFamily: 'PrintClearly',
  fontSize: 16.0,
  color: Colors.deepPurpleAccent)),)
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
  );
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
