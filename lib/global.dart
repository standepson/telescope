library my_prj.globals;
import './task_button.dart';
import 'dart:math';

List<List> weeklyTask = [mondayTasks, tuesdayTasks, wednesdayTasks, thursdayTasks, fridayTasks, saturdayTasks,sundayTasks];
List<Task> sundayTasks = [];
List<Task> mondayTasks = [];
List<Task> tuesdayTasks = [];
List<Task> wednesdayTasks = [];
List<Task> thursdayTasks = [];
List<Task> fridayTasks = [];
List<Task> saturdayTasks = [];

int numOfStarsCompleted = 50;
var rng = Random(seed);
int seed;
int numDays;
int selectedDayOfTheWeek;
