import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/provider_list.dart';
import 'add_task_sheet.dart';
import '../components/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskSheet());
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30.0, top: 80.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 50.0,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${context.watch<ProviderList>().tasks.length} Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                height: 100.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0)),
                ),
                child: TasksList()),
          )
        ],
      ),
    );
  }
}
