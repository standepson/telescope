import 'package:flutter/material.dart';

class TaskEntering extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Enter new task", ),
        backgroundColor: Colors.deepPurple,
      ),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/daysOfTheWeekScreens/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Task name:',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Number of hours:',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Deadline date:',
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}


