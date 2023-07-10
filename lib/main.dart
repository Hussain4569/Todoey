import 'package:flutter/material.dart';
import 'package:todoey/models/provider_list.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screen/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderList>(
      create: (context) => ProviderList(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
