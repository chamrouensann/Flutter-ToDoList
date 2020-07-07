import 'package:flutter/material.dart';
import 'tasks_title.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTitle(
                taskTitless: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkBoxCallback: (checkBoxState) {
//              setState(() {
//                widget.tasks[index].toggleDone();
//              });
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
