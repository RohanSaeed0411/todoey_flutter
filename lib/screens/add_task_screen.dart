import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';
// import 'package:todoey_flutter/models/task.dart';
// import 'package:flutter/services.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    late String newTaskTitle ;
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
               newTaskTitle = newText;
              },

            ),
            MaterialButton(
              color: Colors.lightBlueAccent,
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                // print(newTaskTitle);
               // for(var task in Provider.of<TaskData>(context).tasks){
               //   print(task.name);
               // }

                  Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
