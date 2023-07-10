import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/provider_list.dart';

import '../models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderList>(
        builder: (context, tasksData, child) => ListView.builder(
              itemBuilder: (context, idx) {
                return TaskTile(
                  taskTitle: tasksData.tasks[idx].name,
                  isChecked: tasksData.tasks[idx].isDone,
                  checkCallback: (bool? checkboxState) {
                    Provider.of<ProviderList>(context, listen: false)
                        .updateIsDone(idx);
                  },
                  longPressCallback: () {
                    Provider.of<ProviderList>(context, listen: false)
                        .deleteTask(idx);
                  },
                );
              },
              itemCount: tasksData.tasks.length,
            ));
  }
}
