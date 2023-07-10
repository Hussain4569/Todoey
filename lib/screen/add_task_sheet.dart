import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/provider_list.dart';

class AddTaskSheet extends StatefulWidget {
  @override
  State<AddTaskSheet> createState() => _AddTaskSheetState();
}

class _AddTaskSheetState extends State<AddTaskSheet> {
  String newTask = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 35.0,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                style: TextStyle(fontSize: 20.0),
                onChanged: (value) {
                  newTask = value;
                },
              ),
              const SizedBox(
                height: 25.0,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    elevation: 2.0,
                  ),
                  onPressed: () {
                    Provider.of<ProviderList>(context, listen: false)
                        .addTask(newTask);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
