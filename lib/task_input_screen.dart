import 'package:flutter/material.dart';
import './global.dart' as globals;
import './task_button.dart';
import 'package:flutter_duration_picker/flutter_duration_picker.dart';

final nameController = TextEditingController();
Duration _duration = Duration(hours: 0, minutes: 0);

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
    return Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            child: Image.asset(
              'assets/taskInputBackground.png',
              fit: BoxFit.fill,
            ),),
          Center(
            child: ListView(
              physics: PageScrollPhysics(),
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/inputTaskScreenTitle.png'),
                    Container(height: (MediaQuery
                        .of(context)
                        .size
                        .height) * .05),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: Text('TASK NAME:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25.0,
                              fontFamily: 'PrintClearly',
                              color: const Color(0xFFDEEAF6))),
                    ),
                    TextField(
                      style: new TextStyle(color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'PrintClearly'),
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
                    Container(height: (MediaQuery
                        .of(context)
                        .size
                        .height) * .01),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: Text('TIME NEEDED TO COMPLETE TASK:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25.0,
                              fontFamily: 'PrintClearly',
                              color: Colors.white)),
                    ),
                    new Container(
                        child: DurationPicker(
                          duration: _duration,
                          onChange: (val) {
                            this.setState(() => _duration = val);
                          },
                          snapToMins: 1.0,
                        )),
                    Container(height: (MediaQuery
                        .of(context)
                        .size
                        .height) * .01),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: Text('DAYS UNTILL DEADLINE:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25.0,
                              fontFamily: 'PrintClearly',
                              color: Colors.white)),
                    ),
                    new Theme(
                        data: Theme.of(context).copyWith(
                            canvasColor: Theme
                                .of(context)
                                .primaryColor
                        ),
                        child: DropdownButton(
                            style: new TextStyle(color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'PrintClearly'),
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
                        onPressed: () =>
                            setState(() {
                              _saveTask(context);
                            }),
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
                )
              ],
            ),
          )
        ]);
  }
}

void _saveTask (BuildContext context) {
  if (nameController.text == '' || _duration.inMinutes == 0 || globals.numDays == null) {
    nameController.clear();
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
  int timeEachDay = ((_duration.inMinutes) / globals.numDays).ceil();
  print(timeEachDay);
  if (timeEachDay <= 0 || timeEachDay >= 1439) {
    nameController.clear();
    globals.numDays = null;
    final scaffoldErrorMessage = Scaffold.of(context);
    scaffoldErrorMessage.showSnackBar(
      SnackBar(
        content: const Text('Please enter a valid time'),
      ),
    );
    return;
  }
  for (int i = 0; i <= globals.numDays; i++) {
    globals.weeklyTask[((now.add(new Duration(days: i))).weekday) - 1].add(Task(nameController.text, timeEachDay));
    }
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Task saved successfully'),
    ),
  );
  _duration = Duration(hours: 0, days: 0);
  nameController.clear();
  globals.numDays = null;
}
