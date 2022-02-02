import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task.dart';
class TaskData extends ChangeNotifier{
   final List<Task> _tasks = [
    Task(
      name: 'Buy Milk',
    ),
    Task(
      name: 'Buy Eggs',
    ),
    Task(
      name: 'Buy Bread',
    ),
  ];

   UnmodifiableListView<Task> get tasks{
     return UnmodifiableListView(_tasks);
   }
  int get taskCount{
    return _tasks.length;
  }

  void addTask(String taskTitle){
    final Task task =Task(name: taskTitle);
    _tasks.add(task);
    notifyListeners();

  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task){
     task.toggleDone();
     notifyListeners();
  }

}