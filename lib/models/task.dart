import 'package:flutter/material.dart';
class Task {
  Task({required this.name,this.isDone=false,});
  late final String name;
  late bool isDone;

  toggleDone(){
    isDone = !isDone;
  }
}