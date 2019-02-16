import 'package:flutter/material.dart';
import './global.dart' as globals;
import './task_button.dart';

final nameController = TextEditingController();
final hoursController = TextEditingController();

class TaskInput extends StatefulWidget {
  @override
  TaskEntering createState() => TaskEntering();
}

class TaskEntering extends State<TaskInput> {
  List<DropdownMenuItem<int>> listDrop = [];

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
      resizeToAvoidBottomPadding: false,
        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(
                  'assets/taskInputBackground.png', ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/inputTaskScreenTitle.png'),
                  Container(height: (MediaQuery.of(context).size.height) * .05),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text('TASK NAME:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'PrintClearly',
                            color: const Color(0xFFDEEAF6))),
                  ),
                  TextField(
                    style: new TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'PrintClearly'),
                    controller: nameController,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'PrintClearly',
                          color: Colors.white),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white)
                      ),
                      hintText: 'enter name',
                    ),
                  ),
                  Container(height: (MediaQuery.of(context).size.height) * .01),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text('TIME NEEDED TO COMPLETE TASK:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'PrintClearly',
                                color: Colors.white)),
                  ),
                  TextField(
                    style: new TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'PrintClearly'),
                    controller: hoursController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'PrintClearly',
                          color: Colors.white),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white)
                      ),
                      hintText: 'enter number',
                    ),
                  ),
                  Container(height: (MediaQuery.of(context).size.height) * .01),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text('DAYS UNTILL DEADLINE:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'PrintClearly',
                            color: Colors.white)),
                  ),
                  new Theme(
                    data: Theme.of(context).copyWith(
                        canvasColor: Theme.of(context).primaryColor
                    ),
                      child:DropdownButton(
                          style: new TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'PrintClearly'),
                          items: listDrop,
                          value: globals.numDays,
                          hint: Text("select num of days",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'PrintClearly',
                                  color: Colors.white)),
                          onChanged: (value) {
                            globals.numDays = value;
                            setState(() {});
                          })
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () =>  setState(() {_saveTask(context);}),
                      child: Text(
                        'Save Task',
                        style: TextStyle(
                            fontFamily: 'PrintClearly',
                            fontSize: 24.0,
                            color: Colors.deepPurple),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}

void _saveTask (BuildContext context) {
  if (nameController.text == '' || hoursController.text == '' || globals.numDays == null) {
    nameController.clear();
    hoursController.clear();
    globals.numDays = null;
    final scaffoldErrorMessage = Scaffold.of(context);
    scaffoldErrorMessage.showSnackBar(
      SnackBar(
        content: const Text('Please fill out all fields'),
      ),
    );
    return;
  }
  var now = new DateTime.now();
  int timeEachDay = ((60*double.tryParse(hoursController.text)) / globals.numDays).ceil();
  if (timeEachDay <= 0 || timeEachDay >= 1439) {
    nameController.clear();
    hoursController.clear();
    globals.numDays = null;
    final scaffoldErrorMessage = Scaffold.of(context);
    scaffoldErrorMessage.showSnackBar(
      SnackBar(
        content: const Text('Please enter a valid time'),
      ),
    );
    return;
  }
  for (int i = 0; i < globals.numDays; i++) {
    globals.weeklyTask[((now.add(new Duration(days: i))).weekday) - 1].add(Task(nameController.text, timeEachDay));
    }
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Task saved successfully'),
    ),
  );

  nameController.clear();
  hoursController.clear();
  globals.numDays = null;
}
