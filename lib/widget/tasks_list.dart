import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_data.dart';
import 'package:todoey_flutter/widget/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, TaskData taskData, Widget? child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                longPressCallback: () {
                  taskData.deleteTask(task);
                },
                isChecked: task.isDone,
                taskTile: task.name,
                checkboxCallback: (bool? value) {
                  taskData.updateTask(task);
                },
              );
            });
      },
    );
  }
}
