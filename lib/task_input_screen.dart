import 'package:flutter/material.dart';

class TaskInput extends StatefulWidget {
  @override
  TaskEntering createState() => TaskEntering();
}
class TaskEntering extends State<TaskInput> {
  List<DropdownMenuItem<int>> listDrop = [];
  int numDays;

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text('1 day'),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('2 days'),
      value: 2,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('3 days'),
      value: 3,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('4 days'),
      value: 4,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('5 days'),
      value: 5,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('6 days'),
      value: 6,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('7 days'),
      value: 7,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 25.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/inputTaskScreenTitle.png'),
                  Container(height: (MediaQuery.of(context).size.height) * .05),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text('Task Name:',
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
                    child: Text('Number of Hours:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'PrintClearly',
                            color: Colors.white)),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
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
                    child: Text('Number of Days till Deadline:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'PrintClearly',
                            color: Colors.white)),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButton(
                          items: listDrop,
                          value: numDays,
                          hint: Text("select num of days",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'PrintClearly',
                                  color: Colors.white)),
                          onChanged: (value) {
                            numDays = value;
                            setState(() {

                            });
                          })),
                  Container(
                    child: RaisedButton(
                      onPressed: null,
                      child: Text(
                        'Save Task',
                        style: TextStyle(
                            fontFamily: 'PrintClearly',
                            fontSize: 24.0,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
