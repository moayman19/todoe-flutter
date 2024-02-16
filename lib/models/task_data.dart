import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

final List<Task> _tasks = [
  Task(text: 'to home work'),
  Task(text: 'buy some apples'),
  Task(text: 'study'),
];

UnmodifiableListView<Task> get tasks {
  return UnmodifiableListView(_tasks) ;
}

int get taskCount{
  return _tasks.length;
}

void addTask(String text){
  _tasks.add(Task(text: text));
  notifyListeners();
}

void updateTask(Task task){
  task.toggleDone();
  notifyListeners();
}

void deleteTask(Task task){
  _tasks.remove(task);
  notifyListeners();
}


}
