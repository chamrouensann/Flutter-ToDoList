import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Rouen pro'),
    Task(name: 'Rouen pro'),
    Task(name: 'Rouen pro'),
  ];
  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}
