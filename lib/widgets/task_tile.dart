import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
   TaskTile({Key? key,required this.taskTitle,required this.isChecked,required this.checkboxCallback,required this.longPressCallback}) : super(key: key);

  late bool isChecked;
  final String taskTitle;
  void Function (bool?)checkboxCallback;
  void Function () longPressCallback;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,

        onChanged: checkboxCallback,
      ),
    );
  }
}

