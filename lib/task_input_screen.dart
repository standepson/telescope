import 'package:flutter/material.dart';

class TaskEntering extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(
                    "assets/daysOfTheWeekScreens/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 25.0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/inputTaskScreenTitle.png'),
                  Container(height: (MediaQuery.of(context).size.height) * .05),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child:
                    Text('Task Name:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'PrintClearly',
                            color: Colors.white)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'PrintClearly',
                          color: Colors.white),
                      border: InputBorder.none,
                      hintText: 'enter name',
                    ),
                  ),
                  Container(height: (MediaQuery.of(context).size.height) * .01),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child:
                    Text('Number of Hours:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'PrintClearly',
                            color: Colors.white)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'PrintClearly',
                          color: Colors.white),
                      border: InputBorder.none,
                      hintText: 'enter number',
                    ),
                  ),
                  Container(height: (MediaQuery.of(context).size.height) * .01),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child:
                    Text('Deadline Date:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'PrintClearly',
                            color: Colors.white)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'PrintClearly',
                          color: Colors.white),
                      border: InputBorder.none,
                      hintText: ' select date',
                    ),
                  ),
                  RaisedButton(color: Colors.white, onPressed: null, child: Text('Add Task'))
                ],
              ),
            )));
  }
}
