import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(

      builder: (BuildContext context, value, Widget? child) {
        return ListView.builder(itemBuilder: (context,index){
          final task = value.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (newValue) {
             value.updateTask(task);
            },
            longPressCallback: (){
              value.deleteTask(task);
          },
          );
        },
          itemCount: value.taskCount,
        );
      },

    );
}
}