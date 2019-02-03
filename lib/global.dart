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
List<int> seedNum = [];
int seed;
var rng;
int numDays;
int selectedDayOfTheWeek;
var todayDay;
var lastSavedDay = DateTime(2019,2,1,0,0,0,0,0);
