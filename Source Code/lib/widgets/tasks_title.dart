import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitless;
  final Function checkBoxCallback;
  TasksTitle({this.isChecked, this.taskTitless, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitless,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkBoxCallback(newValue);
        },
      ),
    );
  }
}
