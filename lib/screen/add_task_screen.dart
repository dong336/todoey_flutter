import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              foregroundColor: Colors.white,
            ),
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
