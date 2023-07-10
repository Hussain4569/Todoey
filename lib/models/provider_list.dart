import 'package:flutter/widgets.dart';
import 'package:todoey/models/task.dart';

class ProviderList extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String newTask) {
    tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void updateIsDone(int idx) {
    tasks[idx].toggleDone();
    notifyListeners();
  }

  void deleteTask(int idx) {
    tasks.removeAt(idx);
    notifyListeners();
  }
}
