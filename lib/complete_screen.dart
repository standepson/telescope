import './main.dart';
import 'package:flutter/material.dart';
import 'task_button.dart';
import './global.dart' as globals;
import 'dart:async';
import 'calendar.dart';

class CompleteScreen extends StatefulWidget {
  @override
  createState() => CompleteScreenWidget();
}

class CompleteScreenWidget extends State<CompleteScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pop(context),

    );
  }
  String congrats;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("You have finished!"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Congratulations! Your task is complete',
                style: TextStyle(
                    fontFamily: 'PrintClearly',
                    fontSize: 25.0,
                    color: Colors.white),
              ),
              Container(
                width:(MediaQuery.of(context).size.width)*.10,
                height:(MediaQuery.of(context).size.width)*.10,
              ),
             Image.asset(
                'assets/timerScreen/StarGrown.png',
                width: (MediaQuery.of(context).size.width)*.33,
              ),
              Container(
                width:(MediaQuery.of(context).size.width)*.10,
                height:(MediaQuery.of(context).size.width)*.10,
              ),
              Text(
                'A star has been added to your galaxy',
                style: TextStyle(
                    fontFamily: 'PrintClearly',
                    fontSize: 25.0,
                    color: Colors.white),
              ),
            ],
          )
      ),
    );
  }
}
